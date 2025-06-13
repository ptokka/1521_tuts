.text

main: 

# $t0 = i

for_init:
	li	$t0, 0		# int i = 0
for_cond:
	bge	$t0, 5, for_end # if ($t0 >= 5) get out, go to end
for_body:

	li	$v0, 1		# print integer syscall
	move	$a0, $t0	# param = i
	syscall

	li	$v0, 11		# print character syscall
	li	$a0, '\n'
	syscall

for_step:

	addi	$t0, $t0, 1	# $t0 = $t0 + 1
	b	for_cond	# after incrementing, check condition again
for_end:


jr	$ra
# continue here

.data 

