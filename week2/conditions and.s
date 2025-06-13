
.text

main:

li	$t0, 11

rem	$t1, $t0, 7	# $t1 = $t0 % 7
bne	$t1, 0, main_print_nay


rem	$t1, $t0, 11	# $t1 = $t0 % 11
bne	$t1, 0, main_print_nay


# if (x % 7 == 0) 
# if (x % 7 == 11)
b main_print_yay

# what's happened here? what does this infer about x?

main_print_yay:
	li	$v0, 4	# we want to print string
	la	$a0, yay
	syscall
	b end_if
main_print_nay:
	li	$v0, 4	# we want to print string
	la	$a0, nay
	syscall
	b end_if

end_if:

jr $ra



.data
yay: .asciiz "yay\n"
nay: .asciiz "nay\n"