.text

ARRAY_WIDTH = 3
ARRAY_HEIGHT = 3
SIZEOF_WORD = 4
main:

	# $t0 = &array
	# $t1 = row
	# $t2 = col
	# $t3 = address calculations


row_loop_init:

li	$t1, 0				# int row = 0

row_loop_cond:
bge	$t1, ARRAY_HEIGHT, row_loop_end	# if (row >ARRAY_HEIGHT) exit loop
row_loop_body:

# -------------------

col_loop_init:
li	$t2, 0				# int col = 0
col_loop_cond:
bge	$t2, ARRAY_WIDTH, col_loop_end	# if (col > ARRAY_WIDTH) exit loop
col_loop_body:

# $t1 row 
# $t2 col 

la	$t3, array

# offset = (row * totals + col) * size of each element

mul	$t4, $t1, ARRAY_WIDTH  # row * total_columns 
add	$t4, $t4, $t2		# row * total_columns + col
mul	$t4, $t4, 4	# (row * total columns + col) * 4

add	$t3, $t3, $t4	# BASE_ADDRESS + OFFSET

# $t3 = &arr[row][col]

lw	$t5, ($t3) # &arr[row][col]

li	$v0, 1
move	$a0, $t5
syscall

li	$v0, 11
li	$a0, '\n'
syscall




col_loop_step:
addi	$t2, $t2, 1
b col_loop_cond
col_loop_end:


# --------------------

row_loop_step:
addi	$t1, $t1, 1
b row_loop_cond
row_loop_end:

jr $ra


.data

array:
.word 1, 2, 3
.word 4, 5, 6
.word 7, 8, 9







#la $t0, array				# $t0 = &array
# (row * num_cols + col) * ?
#mul	$t3, $t1, ARRAY_WIDTH		
#add	$t3, $t3, $t2
#mul	$t3, $t3, SIZEOF_WORD

#add	$t0, $t0, $t3

#lw	$t4, ($t0)

#li	$v0, 1
#move	$a0, $t4
#syscall

#li	$v0, 11
#li	$a0, '\n'
#syscall