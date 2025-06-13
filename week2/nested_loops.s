main:

main__while1:
	#$t0 = n
	#t1 = how_many
	# while (n <= how_many) {
	bgt	$t0, $t1, main__while1_end
	#$t2 total
	#t3 = j



	li	$t2, 0   # total = 0
	li	$t3, 1   # j = 1

main__while2:
	# while (j <= n) {
	bgt	$t3, $t0, main__while2_end
	#t4 = i
	li	$t4, 1

main__while3:
	#while (i <= j)
	bgt	$t4, $t3, main__while3_end

	add	$t2, $t2, $t4  #total = total + i;
	add	$t4, $t4, 1    #i = i + 1;

	#at the end of while loops - always loop back.!!
	b	main__while3

main__while3_end:
	addi	$t3, $t3, 1 #j = j + 1;

	b	main__while2
main__while2_end:
	#printf("%d\n", total);

	
	addi	$t0, $t0, 1 #n = n + 1;

	b	main__while1
main__while1_end: