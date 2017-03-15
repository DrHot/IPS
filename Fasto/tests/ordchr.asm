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
# Function read_char
read_char:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_i_1_,2,0
	jal	getchar
# was:	jal	getchar, 2
# 	ori	_read_charres_2_,2,0
# 	ori	2,_read_charres_2_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function read_string
read_string:
	sw	$31, -4($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
	ori	$10, $2, 0
# was:	ori	_param_n_3_, 2, 0
# 	ori	_size_reg_12_,_param_n_3_,0
	addi	$10, $10, -1
# was:	addi	_size_reg_12_, _size_reg_12_, -1
	bgez	$10, _safe_lab_13_
# was:	bgez	_size_reg_12_, _safe_lab_13_
	ori	$5, $0, 3
# was:	ori	5, 0, 3
	j	_IllegalArrSizeError_
_safe_lab_13_:
	addi	$10, $10, 1
# was:	addi	_size_reg_12_, _size_reg_12_, 1
	ori	$16, $28, 0
# was:	ori	_arr_reg_5_, 28, 0
	sll	$11, $10, 2
# was:	sll	_tmp_19_, _size_reg_12_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_19_, _tmp_19_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_19_
	sw	$10, 0($16)
# was:	sw	_size_reg_12_, 0(_arr_reg_5_)
	addi	$12, $16, 4
# was:	addi	_addr_reg_14_, _arr_reg_5_, 4
	ori	$13, $0, 0
# was:	ori	_i_reg_15_, 0, 0
_loop_beg_16_:
	sub	$11, $13, $10
# was:	sub	_tmp_reg_18_, _i_reg_15_, _size_reg_12_
	bgez	$11, _loop_end_17_
# was:	bgez	_tmp_reg_18_, _loop_end_17_
	sw	$13, 0($12)
# was:	sw	_i_reg_15_, 0(_addr_reg_14_)
	addi	$12, $12, 4
# was:	addi	_addr_reg_14_, _addr_reg_14_, 4
	addi	$13, $13, 1
# was:	addi	_i_reg_15_, _i_reg_15_, 1
	j	_loop_beg_16_
_loop_end_17_:
	lw	$18, 0($16)
# was:	lw	_size_reg_6_, 0(_arr_reg_5_)
	ori	$17, $28, 0
# was:	ori	_read_stringres_4_, 28, 0
	addi	$10, $18, 3
# was:	addi	_tmp_21_, _size_reg_6_, 3
	sra	$10, $10, 2
# was:	sra	_tmp_21_, _tmp_21_, 2
	sll	$10, $10, 2
# was:	sll	_tmp_21_, _tmp_21_, 2
	addi	$10, $10, 4
# was:	addi	_tmp_21_, _tmp_21_, 4
	add	$28, $28, $10
# was:	add	28, 28, _tmp_21_
	sw	$18, 0($17)
# was:	sw	_size_reg_6_, 0(_read_stringres_4_)
	addi	$19, $17, 4
# was:	addi	_arr2_reg_7_, _read_stringres_4_, 4
	ori	$20, $0, 0
# was:	ori	_i_reg_8_, 0, 0
	addi	$16, $16, 4
# was:	addi	_arr_reg_5_, _arr_reg_5_, 4
_loop_beg_10_:
	sub	$2, $20, $18
# was:	sub	_tmp_reg_9_, _i_reg_8_, _size_reg_6_
	bgez	$2, _loop_end_11_
# was:	bgez	_tmp_reg_9_, _loop_end_11_
	addi	$20, $20, 1
# was:	addi	_i_reg_8_, _i_reg_8_, 1
	lw	$2, 0($16)
# was:	lw	_tmp_reg_9_, 0(_arr_reg_5_)
	addi	$16, $16, 4
# was:	addi	_arr_reg_5_, _arr_reg_5_, 4
# 	ori	2,_tmp_reg_9_,0
	jal	read_char
# was:	jal	read_char, 2
# 	ori	_tmp_reg_20_,2,0
# 	ori	_tmp_reg_9_,_tmp_reg_20_,0
	sb	$2, 0($19)
# was:	sb	_tmp_reg_9_, 0(_arr2_reg_7_)
	addi	$19, $19, 1
# was:	addi	_arr2_reg_7_, _arr2_reg_7_, 1
	j	_loop_beg_10_
_loop_end_11_:
	ori	$2, $17, 0
# was:	ori	2, _read_stringres_4_, 0
	addi	$29, $29, 28
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function add_one
add_one:
	sw	$31, -4($29)
	addi	$29, $29, -8
	ori	$10, $2, 0
# was:	ori	_param_x_22_, 2, 0
# 	ori	_plus_L_24_,_param_x_22_,0
	ori	$11, $0, 1
# was:	ori	_plus_R_25_, 0, 1
	add	$2, $10, $11
# was:	add	_add_oneres_23_, _plus_L_24_, _plus_R_25_
# 	ori	2,_add_oneres_23_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
	jal	getint
# was:	jal	getint, 2
# 	ori	_letBind_27_,2,0
# 	ori	_arg_29_,_letBind_27_,0
# 	ori	2,_arg_29_,0
	jal	read_string
# was:	jal	read_string, 2
	ori	$17, $2, 0
# was:	ori	_letBind_28_, 2, 0
# 	ori	_arr_reg_45_,_letBind_28_,0
	lw	$18, 0($17)
# was:	lw	_size_reg_46_, 0(_arr_reg_45_)
	ori	$16, $28, 0
# was:	ori	_arr_reg_38_, 28, 0
	sll	$10, $18, 2
# was:	sll	_tmp_53_, _size_reg_46_, 2
	addi	$10, $10, 4
# was:	addi	_tmp_53_, _tmp_53_, 4
	add	$28, $28, $10
# was:	add	28, 28, _tmp_53_
	sw	$18, 0($16)
# was:	sw	_size_reg_46_, 0(_arr_reg_38_)
	addi	$20, $16, 4
# was:	addi	_arr2_reg_47_, _arr_reg_38_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_48_, 0, 0
	addi	$17, $17, 4
# was:	addi	_arr_reg_45_, _arr_reg_45_, 4
_loop_beg_50_:
	sub	$2, $19, $18
# was:	sub	_tmp_reg_49_, _i_reg_48_, _size_reg_46_
	bgez	$2, _loop_end_51_
# was:	bgez	_tmp_reg_49_, _loop_end_51_
	addi	$19, $19, 1
# was:	addi	_i_reg_48_, _i_reg_48_, 1
	lb	$2, 0($17)
# was:	lb	_tmp_reg_49_, 0(_arr_reg_45_)
	addi	$17, $17, 1
# was:	addi	_arr_reg_45_, _arr_reg_45_, 1
# 	ori	2,_tmp_reg_49_,0
	jal	ord
# was:	jal	ord, 2
# 	ori	_tmp_reg_52_,2,0
# 	ori	_tmp_reg_49_,_tmp_reg_52_,0
	sw	$2, 0($20)
# was:	sw	_tmp_reg_49_, 0(_arr2_reg_47_)
	addi	$20, $20, 4
# was:	addi	_arr2_reg_47_, _arr2_reg_47_, 4
	j	_loop_beg_50_
_loop_end_51_:
	lw	$19, 0($16)
# was:	lw	_size_reg_39_, 0(_arr_reg_38_)
	ori	$17, $28, 0
# was:	ori	_arr_reg_31_, 28, 0
	sll	$10, $19, 2
# was:	sll	_tmp_55_, _size_reg_39_, 2
	addi	$10, $10, 4
# was:	addi	_tmp_55_, _tmp_55_, 4
	add	$28, $28, $10
# was:	add	28, 28, _tmp_55_
	sw	$19, 0($17)
# was:	sw	_size_reg_39_, 0(_arr_reg_31_)
	addi	$20, $17, 4
# was:	addi	_arr2_reg_40_, _arr_reg_31_, 4
	ori	$18, $0, 0
# was:	ori	_i_reg_41_, 0, 0
	addi	$16, $16, 4
# was:	addi	_arr_reg_38_, _arr_reg_38_, 4
_loop_beg_43_:
	sub	$2, $18, $19
# was:	sub	_tmp_reg_42_, _i_reg_41_, _size_reg_39_
	bgez	$2, _loop_end_44_
# was:	bgez	_tmp_reg_42_, _loop_end_44_
	addi	$18, $18, 1
# was:	addi	_i_reg_41_, _i_reg_41_, 1
	lw	$2, 0($16)
# was:	lw	_tmp_reg_42_, 0(_arr_reg_38_)
	addi	$16, $16, 4
# was:	addi	_arr_reg_38_, _arr_reg_38_, 4
# 	ori	2,_tmp_reg_42_,0
	jal	add_one
# was:	jal	add_one, 2
# 	ori	_tmp_reg_54_,2,0
# 	ori	_tmp_reg_42_,_tmp_reg_54_,0
	sw	$2, 0($20)
# was:	sw	_tmp_reg_42_, 0(_arr2_reg_40_)
	addi	$20, $20, 4
# was:	addi	_arr2_reg_40_, _arr2_reg_40_, 4
	j	_loop_beg_43_
_loop_end_44_:
	lw	$16, 0($17)
# was:	lw	_size_reg_32_, 0(_arr_reg_31_)
	ori	$18, $28, 0
# was:	ori	_letBind_30_, 28, 0
	addi	$10, $16, 3
# was:	addi	_tmp_57_, _size_reg_32_, 3
	sra	$10, $10, 2
# was:	sra	_tmp_57_, _tmp_57_, 2
	sll	$10, $10, 2
# was:	sll	_tmp_57_, _tmp_57_, 2
	addi	$10, $10, 4
# was:	addi	_tmp_57_, _tmp_57_, 4
	add	$28, $28, $10
# was:	add	28, 28, _tmp_57_
	sw	$16, 0($18)
# was:	sw	_size_reg_32_, 0(_letBind_30_)
	addi	$19, $18, 4
# was:	addi	_arr2_reg_33_, _letBind_30_, 4
	ori	$20, $0, 0
# was:	ori	_i_reg_34_, 0, 0
	addi	$17, $17, 4
# was:	addi	_arr_reg_31_, _arr_reg_31_, 4
_loop_beg_36_:
	sub	$2, $20, $16
# was:	sub	_tmp_reg_35_, _i_reg_34_, _size_reg_32_
	bgez	$2, _loop_end_37_
# was:	bgez	_tmp_reg_35_, _loop_end_37_
	addi	$20, $20, 1
# was:	addi	_i_reg_34_, _i_reg_34_, 1
	lw	$2, 0($17)
# was:	lw	_tmp_reg_35_, 0(_arr_reg_31_)
	addi	$17, $17, 4
# was:	addi	_arr_reg_31_, _arr_reg_31_, 4
# 	ori	2,_tmp_reg_35_,0
	jal	chr
# was:	jal	chr, 2
# 	ori	_tmp_reg_56_,2,0
# 	ori	_tmp_reg_35_,_tmp_reg_56_,0
	sb	$2, 0($19)
# was:	sb	_tmp_reg_35_, 0(_arr2_reg_33_)
	addi	$19, $19, 1
# was:	addi	_arr2_reg_33_, _arr2_reg_33_, 1
	j	_loop_beg_36_
_loop_end_37_:
	ori	$16, $18, 0
# was:	ori	_tmp_58_, _letBind_30_, 0
# 	ori	_mainres_26_,_tmp_58_,0
	ori	$2, $16, 0
# was:	ori	2, _tmp_58_, 0
	jal	putstring
# was:	jal	putstring, 2
	ori	$2, $16, 0
# was:	ori	2, _mainres_26_, 0
	addi	$29, $29, 28
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