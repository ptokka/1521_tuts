.text

main:
li	$t0, 6	# x = 5


# if ($t0 == 5), if statement is true, jump to branch
beq	$t0, 5, if_x_eq_5_or_x_eq_11
# if ($t0 == 5), if statement is true, jump to branch
beq	$t0, 11, if_x_eq_5_or_x_eq_11

# both checks failed, if statement isn't true
b	else_if

if_x_eq_5_or_x_eq_11:
	# if statement is true
	li	$v0, 4	# we want to print string
	la	$a0, yay
	syscall
	b end_if
else_if:
	# if statement is false
	li	$v0, 4	# we want to print string
	la	$a0, nay
	syscall
	b end_if

end_if:

	jr $ra
	# returning/getting out

.data

yay: .asciiz "yay\n"
nay: .asciiz "nay\n"
