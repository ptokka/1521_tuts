.text

main:

# $t0
# $t1 = base address of our array
# $t2 = offset 
# $t3 = &arr[i]
# $t4 = arr[i]
#arr[i] = base address + offset



while_init:	# initialisation of our index
li	$t0, 0 # int i = 0;

while_cond: 	# our condition
bge $t0, 10, while_end

while_body:	#body

la	$t1, numbers
mul	$t2, $t0, 4	# $t2 = i * 4
add	$t3, $t1, $t2  # $t3 = &numbers[i]
lw 	$t4, ($t3)

# $t4 -3

bge	$t4, 0, else	# if (!numbers[i] < 0) condition is false

if_less_than_0: 

	# if (i < N_SIZE)
add	$t4, $t4, 42

sw	$t4, ($t3)

# if (numbers[i] < 0)
else:

li	$v0, 1	# specify to print an integer
move	$a0, $t4	# move our numbers[i] into $a0
syscall # print("%d", numbers[i])

li $v0, 11
li $a0, '\n'
syscall


while_step:	# increment our variables

addi	$t0, $t0, 1
b while_cond
while_end:	# defining the end of the loop


jr $ra	

.data
numbers: 
	.word 0, 1, 2, -3, 4, -5, 6, -7, 8, 9
