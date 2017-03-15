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
# Function plus100
plus100:
	sw	$31, -4($29)
	addi	$29, $29, -8
	ori	$10, $2, 0
# was:	ori	_param_x_1_, 2, 0
# 	ori	_plus_L_3_,_param_x_1_,0
	ori	$11, $0, 100
# was:	ori	_plus_R_4_, 0, 100
	add	$2, $10, $11
# was:	add	_plus100res_2_, _plus_L_3_, _plus_R_4_
# 	ori	2,_plus100res_2_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function plus
plus:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_x_5_,2,0
# 	ori	_param_y_6_,3,0
# 	ori	_plus_L_8_,_param_x_5_,0
# 	ori	_plus_R_9_,_param_y_6_,0
	add	$2, $2, $3
# was:	add	_plusres_7_, _plus_L_8_, _plus_R_9_
# 	ori	2,_plusres_7_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$21, -28($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -32
	jal	getint
# was:	jal	getint, 2
	ori	$10, $2, 0
# was:	ori	_letBind_11_, 2, 0
# 	ori	_size_reg_13_,_letBind_11_,0
	addi	$10, $10, -1
# was:	addi	_size_reg_13_, _size_reg_13_, -1
	bgez	$10, _safe_lab_14_
# was:	bgez	_size_reg_13_, _safe_lab_14_
	ori	$5, $0, 6
# was:	ori	5, 0, 6
	j	_IllegalArrSizeError_
_safe_lab_14_:
	addi	$10, $10, 1
# was:	addi	_size_reg_13_, _size_reg_13_, 1
	ori	$17, $28, 0
# was:	ori	_letBind_12_, 28, 0
	sll	$11, $10, 2
# was:	sll	_tmp_20_, _size_reg_13_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_20_, _tmp_20_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_20_
	sw	$10, 0($17)
# was:	sw	_size_reg_13_, 0(_letBind_12_)
	addi	$11, $17, 4
# was:	addi	_addr_reg_15_, _letBind_12_, 4
	ori	$13, $0, 0
# was:	ori	_i_reg_16_, 0, 0
_loop_beg_17_:
	sub	$12, $13, $10
# was:	sub	_tmp_reg_19_, _i_reg_16_, _size_reg_13_
	bgez	$12, _loop_end_18_
# was:	bgez	_tmp_reg_19_, _loop_end_18_
	sw	$13, 0($11)
# was:	sw	_i_reg_16_, 0(_addr_reg_15_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_15_, _addr_reg_15_, 4
	addi	$13, $13, 1
# was:	addi	_i_reg_16_, _i_reg_16_, 1
	j	_loop_beg_17_
_loop_end_18_:
	ori	$19, $17, 0
# was:	ori	_arr_reg_22_, _letBind_12_, 0
	lw	$18, 0($19)
# was:	lw	_size_reg_23_, 0(_arr_reg_22_)
	ori	$16, $28, 0
# was:	ori	_letBind_21_, 28, 0
	sll	$10, $18, 2
# was:	sll	_tmp_30_, _size_reg_23_, 2
	addi	$10, $10, 4
# was:	addi	_tmp_30_, _tmp_30_, 4
	add	$28, $28, $10
# was:	add	28, 28, _tmp_30_
	sw	$18, 0($16)
# was:	sw	_size_reg_23_, 0(_letBind_21_)
	addi	$21, $16, 4
# was:	addi	_arr2_reg_24_, _letBind_21_, 4
	ori	$20, $0, 0
# was:	ori	_i_reg_25_, 0, 0
	addi	$19, $19, 4
# was:	addi	_arr_reg_22_, _arr_reg_22_, 4
_loop_beg_27_:
	sub	$2, $20, $18
# was:	sub	_tmp_reg_26_, _i_reg_25_, _size_reg_23_
	bgez	$2, _loop_end_28_
# was:	bgez	_tmp_reg_26_, _loop_end_28_
	addi	$20, $20, 1
# was:	addi	_i_reg_25_, _i_reg_25_, 1
	lw	$2, 0($19)
# was:	lw	_tmp_reg_26_, 0(_arr_reg_22_)
	addi	$19, $19, 4
# was:	addi	_arr_reg_22_, _arr_reg_22_, 4
# 	ori	2,_tmp_reg_26_,0
	jal	plus100
# was:	jal	plus100, 2
# 	ori	_tmp_reg_29_,2,0
# 	ori	_tmp_reg_26_,_tmp_reg_29_,0
	sw	$2, 0($21)
# was:	sw	_tmp_reg_26_, 0(_arr2_reg_24_)
	addi	$21, $21, 4
# was:	addi	_arr2_reg_24_, _arr2_reg_24_, 4
	j	_loop_beg_27_
_loop_end_28_:
	ori	$18, $17, 0
# was:	ori	_arr_reg_32_, _letBind_12_, 0
	lw	$19, 0($18)
# was:	lw	_size_reg_33_, 0(_arr_reg_32_)
	ori	$2, $0, 0
# was:	ori	_letBind_31_, 0, 0
	addi	$18, $18, 4
# was:	addi	_arr_reg_32_, _arr_reg_32_, 4
	ori	$17, $0, 0
# was:	ori	_ind_var_34_, 0, 0
_loop_beg_36_:
	sub	$3, $17, $19
# was:	sub	_tmp_reg_35_, _ind_var_34_, _size_reg_33_
	bgez	$3, _loop_end_37_
# was:	bgez	_tmp_reg_35_, _loop_end_37_
	lw	$3, 0($18)
# was:	lw	_tmp_reg_35_, 0(_arr_reg_32_)
	addi	$18, $18, 4
# was:	addi	_arr_reg_32_, _arr_reg_32_, 4
# 	ori	2,_letBind_31_,0
# 	ori	3,_tmp_reg_35_,0
	jal	plus
# was:	jal	plus, 2 3
# 	ori	_tmp_reg_38_,2,0
# 	ori	_letBind_31_,_tmp_reg_38_,0
	addi	$17, $17, 1
# was:	addi	_ind_var_34_, _ind_var_34_, 1
	j	_loop_beg_36_
_loop_end_37_:
	ori	$18, $16, 0
# was:	ori	_arr_reg_40_, _letBind_21_, 0
	lw	$16, 0($18)
# was:	lw	_size_reg_41_, 0(_arr_reg_40_)
	ori	$17, $28, 0
# was:	ori	_letBind_39_, 28, 0
	addi	$10, $16, 3
# was:	addi	_tmp_48_, _size_reg_41_, 3
	sra	$10, $10, 2
# was:	sra	_tmp_48_, _tmp_48_, 2
	sll	$10, $10, 2
# was:	sll	_tmp_48_, _tmp_48_, 2
	addi	$10, $10, 4
# was:	addi	_tmp_48_, _tmp_48_, 4
	add	$28, $28, $10
# was:	add	28, 28, _tmp_48_
	sw	$16, 0($17)
# was:	sw	_size_reg_41_, 0(_letBind_39_)
	addi	$20, $17, 4
# was:	addi	_arr2_reg_42_, _letBind_39_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_43_, 0, 0
	addi	$18, $18, 4
# was:	addi	_arr_reg_40_, _arr_reg_40_, 4
_loop_beg_45_:
	sub	$2, $19, $16
# was:	sub	_tmp_reg_44_, _i_reg_43_, _size_reg_41_
	bgez	$2, _loop_end_46_
# was:	bgez	_tmp_reg_44_, _loop_end_46_
	addi	$19, $19, 1
# was:	addi	_i_reg_43_, _i_reg_43_, 1
	lw	$2, 0($18)
# was:	lw	_tmp_reg_44_, 0(_arr_reg_40_)
	addi	$18, $18, 4
# was:	addi	_arr_reg_40_, _arr_reg_40_, 4
# 	ori	2,_tmp_reg_44_,0
	jal	chr
# was:	jal	chr, 2
# 	ori	_tmp_reg_47_,2,0
# 	ori	_tmp_reg_44_,_tmp_reg_47_,0
	sb	$2, 0($20)
# was:	sb	_tmp_reg_44_, 0(_arr2_reg_42_)
	addi	$20, $20, 1
# was:	addi	_arr2_reg_42_, _arr2_reg_42_, 1
	j	_loop_beg_45_
_loop_end_46_:
	ori	$11, $0, 1
# was:	ori	_arr_ind_52_, 0, 1
	addi	$10, $17, 4
# was:	addi	_arr_reg_53_, _letBind_39_, 4
	lw	$12, 0($17)
# was:	lw	_size_reg_54_, 0(_letBind_39_)
	bgez	$11, _safe_lab_57_
# was:	bgez	_arr_ind_52_, _safe_lab_57_
_error_lab_56_:
	ori	$5, $0, 10
# was:	ori	5, 0, 10
	j	_IllegalArrSizeError_
_safe_lab_57_:
	sub	$12, $11, $12
# was:	sub	_tmp_reg_55_, _arr_ind_52_, _size_reg_54_
	bgez	$12, _error_lab_56_
# was:	bgez	_tmp_reg_55_, _error_lab_56_
	add	$10, $10, $11
# was:	add	_arr_reg_53_, _arr_reg_53_, _arr_ind_52_
	lb	$2, 0($10)
# was:	lb	_arg_51_, 0(_arr_reg_53_)
# 	ori	2,_arg_51_,0
	jal	ord
# was:	jal	ord, 2
# 	ori	_tmp_50_,2,0
# 	ori	_letBind_49_,_tmp_50_,0
# 	ori	2,_letBind_49_,0
	jal	putint
# was:	jal	putint, 2
	ori	$16, $17, 0
# was:	ori	_tmp_58_, _letBind_39_, 0
# 	ori	_mainres_10_,_tmp_58_,0
	ori	$2, $16, 0
# was:	ori	2, _tmp_58_, 0
	jal	putstring
# was:	jal	putstring, 2
	ori	$2, $16, 0
# was:	ori	2, _mainres_10_, 0
	addi	$29, $29, 32
	lw	$21, -28($29)
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
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