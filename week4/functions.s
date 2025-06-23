

#int add(int x, int y) {
#	return x + y;
#}


#int main(void) {
#	int num = add(2, 3);
#	printf("%d\n", num);
#	return 0;
#}

.text

add:

add_prologue:

# save the state of our $ra
push	$ra

add_body:

add	$v0, $a0, $a1

# whatever we return, needs to be stored in $v0

add_epilogue:
pop	$ra
jr	$ra

main:

push	$ra

main_epilogue:




li	$a0, 7
li	$a1, 9

jal	add	# add(7, 9)

move	$a0, $v0
li	$v0, 1		# print_int
syscall


li	$v0, 11
li	$a0, '\n'
syscall

main_prologue:
# restore the state of our $ra
pop	$ra

li	$v0, 0
jr	$ra


.data

