	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$11, _true
# was:	la	_true_addr, _true
	ori	$10, $0, 4
# was:	ori	_true_init, 0, 4
	sw	$10, 0($11)
# was:	sw	_true_init, 0(_true_addr)
	la	$10, _false
# was:	la	_false_addr, _false
	ori	$11, $0, 5
# was:	ori	_false_init, 0, 5
	sw	$11, 0($10)
# was:	sw	_false_init, 0(_false_addr)
	jal	main
_stop_:
	ori	$2, $0, 10
	syscall
# Function main
main:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$11, $0, 3
# was:	ori	_n_reg_6_, 0, 3
	ori	$12, $0, 2
# was:	ori	_a_reg_7_, 0, 2
	ori	$10, $28, 0
# was:	ori	_letBind_2_, 28, 0
	sll	$13, $11, 2
# was:	sll	_tmp_8_, _n_reg_6_, 2
	addi	$13, $13, 4
# was:	addi	_tmp_8_, _tmp_8_, 4
	add	$28, $28, $13
# was:	add	28, 28, _tmp_8_
	sw	$11, 0($10)
# was:	sw	_n_reg_6_, 0(_letBind_2_)
	addi	$13, $10, 4
# was:	addi	_x_reg_4_, _letBind_2_, 4
	ori	$14, $0, 0
# was:	ori	_i_reg_5_, 0, 0
_loop_beg_9_:
	sub	$15, $14, $11
# was:	sub	_t_reg_3_, _i_reg_5_, _n_reg_6_
	bgez	$15, _loop_end_10_
# was:	bgez	_t_reg_3_, _loop_end_10_
	addi	$14, $14, 1
# was:	addi	_i_reg_5_, _i_reg_5_, 1
	sw	$12, 0($13)
# was:	sw	_a_reg_7_, 0(_x_reg_4_)
	addi	$13, $13, 4
# was:	addi	_x_reg_4_, _x_reg_4_, 4
	j	_loop_beg_9_
_loop_end_10_:
	ori	$12, $0, 1
# was:	ori	_arr_ind_12_, 0, 1
	addi	$11, $10, 4
# was:	addi	_arr_reg_13_, _letBind_2_, 4
	lw	$10, 0($10)
# was:	lw	_size_reg_14_, 0(_letBind_2_)
	bgez	$12, _safe_lab_17_
# was:	bgez	_arr_ind_12_, _safe_lab_17_
_error_lab_16_:
	ori	$5, $0, 3
# was:	ori	5, 0, 3
	j	_IllegalArrSizeError_
_safe_lab_17_:
	sub	$10, $12, $10
# was:	sub	_tmp_reg_15_, _arr_ind_12_, _size_reg_14_
	bgez	$10, _error_lab_16_
# was:	bgez	_tmp_reg_15_, _error_lab_16_
	sll	$12, $12, 2
# was:	sll	_arr_ind_12_, _arr_ind_12_, 2
	add	$11, $11, $12
# was:	add	_arr_reg_13_, _arr_reg_13_, _arr_ind_12_
	lw	$16, 0($11)
# was:	lw	_tmp_11_, 0(_arr_reg_13_)
# 	ori	_mainres_1_,_tmp_11_,0
	ori	$2, $16, 0
# was:	ori	2, _mainres_1_, 0
	jal	putint
# was:	jal	putint, 2
	ori	$2, $16, 0
# was:	ori	2, _mainres_1_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
ord:
	jr	$31
chr:
	andi	$2, $2, 255
	jr	$31
putint:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 1
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getint:
	ori	$2, $0, 5
	syscall
	jr	$31
putchar:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 11
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getchar:
	addi	$29, $29, -8
	sw	$4, 0($29)
	sw	$5, 4($29)
	ori	$2, $0, 12
	syscall
	ori	$5, $2, 0
	ori	$2, $0, 4
	la	$4, _cr_
	syscall
	ori	$2, $5, 0
	lw	$4, 0($29)
	lw	$5, 4($29)
	addi	$29, $29, 8
	jr	$31
putstring:
	addi	$29, $29, -16
	sw	$2, 0($29)
	sw	$4, 4($29)
	sw	$5, 8($29)
	sw	$6, 12($29)
	lw	$4, 0($2)
	addi	$5, $2, 4
	add	$6, $5, $4
	ori	$2, $0, 11
putstring_begin:
	sub	$4, $5, $6
	bgez	$4, putstring_done
	lb	$4, 0($5)
	syscall
	addi	$5, $5, 1
	j	putstring_begin
putstring_done:
	lw	$2, 0($29)
	lw	$4, 4($29)
	lw	$5, 8($29)
	lw	$6, 12($29)
	addi	$29, $29, 16
	jr	$31
_IllegalArrSizeError_:
	la	$4, _IllegalArrSizeString_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
	.data	
_cr_:
	.asciiz	"\n"
_space_:
	.asciiz	" "
_IllegalArrSizeString_:
	.asciiz	"Error: Array size less or equal to 0 at line "
# String Literals
	.align	2
_true:
	.space	4
	.asciiz	"true"
	.align	2
_false:
	.space	4
	.asciiz	"false"
	.align	2
_heap_:
	.space	100000