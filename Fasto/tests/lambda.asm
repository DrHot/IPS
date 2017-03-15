	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$11, _a__str__41_
# was:	la	_a__str__41__addr, _a__str__41_
	ori	$10, $0, 1
# was:	ori	_a__str__41__init, 0, 1
	sw	$10, 0($11)
# was:	sw	_a__str__41__init, 0(_a__str__41__addr)
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
# Function write_int
write_int:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$16, $2, 0
# was:	ori	_param_x_1_, 2, 0
# 	ori	_tmp_3_,_param_x_1_,0
# 	ori	_write_intres_2_,_tmp_3_,0
	ori	$2, $16, 0
# was:	ori	2, _write_intres_2_, 0
	jal	putint
# was:	jal	putint, 2
	ori	$2, $16, 0
# was:	ori	2, _write_intres_2_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function write_int_arr
write_int_arr:
	sw	$31, -4($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
	ori	$17, $2, 0
# was:	ori	_param_x_4_, 2, 0
# 	ori	_arr_reg_6_,_param_x_4_,0
	lw	$16, 0($17)
# was:	lw	_size_reg_7_, 0(_arr_reg_6_)
	ori	$18, $28, 0
# was:	ori	_write_int_arrres_5_, 28, 0
	sll	$10, $16, 2
# was:	sll	_tmp_14_, _size_reg_7_, 2
	addi	$10, $10, 4
# was:	addi	_tmp_14_, _tmp_14_, 4
	add	$28, $28, $10
# was:	add	28, 28, _tmp_14_
	sw	$16, 0($18)
# was:	sw	_size_reg_7_, 0(_write_int_arrres_5_)
	addi	$19, $18, 4
# was:	addi	_arr2_reg_8_, _write_int_arrres_5_, 4
	ori	$20, $0, 0
# was:	ori	_i_reg_9_, 0, 0
	addi	$17, $17, 4
# was:	addi	_arr_reg_6_, _arr_reg_6_, 4
_loop_beg_11_:
	sub	$2, $20, $16
# was:	sub	_tmp_reg_10_, _i_reg_9_, _size_reg_7_
	bgez	$2, _loop_end_12_
# was:	bgez	_tmp_reg_10_, _loop_end_12_
	addi	$20, $20, 1
# was:	addi	_i_reg_9_, _i_reg_9_, 1
	lw	$2, 0($17)
# was:	lw	_tmp_reg_10_, 0(_arr_reg_6_)
	addi	$17, $17, 4
# was:	addi	_arr_reg_6_, _arr_reg_6_, 4
# 	ori	2,_tmp_reg_10_,0
	jal	write_int
# was:	jal	write_int, 2
# 	ori	_tmp_reg_13_,2,0
# 	ori	_tmp_reg_10_,_tmp_reg_13_,0
	sw	$2, 0($19)
# was:	sw	_tmp_reg_10_, 0(_arr2_reg_8_)
	addi	$19, $19, 4
# was:	addi	_arr2_reg_8_, _arr2_reg_8_, 4
	j	_loop_beg_11_
_loop_end_12_:
	ori	$2, $18, 0
# was:	ori	2, _write_int_arrres_5_, 0
	addi	$29, $29, 28
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	jal	getint
# was:	jal	getint, 2
	ori	$11, $2, 0
# was:	ori	_letBind_16_, 2, 0
# 	ori	_size_reg_18_,_letBind_16_,0
	addi	$11, $11, -1
# was:	addi	_size_reg_18_, _size_reg_18_, -1
	bgez	$11, _safe_lab_19_
# was:	bgez	_size_reg_18_, _safe_lab_19_
	ori	$5, $0, 7
# was:	ori	5, 0, 7
	j	_IllegalArrSizeError_
_safe_lab_19_:
	addi	$11, $11, 1
# was:	addi	_size_reg_18_, _size_reg_18_, 1
	ori	$10, $28, 0
# was:	ori	_letBind_17_, 28, 0
	sll	$12, $11, 2
# was:	sll	_tmp_25_, _size_reg_18_, 2
	addi	$12, $12, 4
# was:	addi	_tmp_25_, _tmp_25_, 4
	add	$28, $28, $12
# was:	add	28, 28, _tmp_25_
	sw	$11, 0($10)
# was:	sw	_size_reg_18_, 0(_letBind_17_)
	addi	$14, $10, 4
# was:	addi	_addr_reg_20_, _letBind_17_, 4
	ori	$13, $0, 0
# was:	ori	_i_reg_21_, 0, 0
_loop_beg_22_:
	sub	$12, $13, $11
# was:	sub	_tmp_reg_24_, _i_reg_21_, _size_reg_18_
	bgez	$12, _loop_end_23_
# was:	bgez	_tmp_reg_24_, _loop_end_23_
	sw	$13, 0($14)
# was:	sw	_i_reg_21_, 0(_addr_reg_20_)
	addi	$14, $14, 4
# was:	addi	_addr_reg_20_, _addr_reg_20_, 4
	addi	$13, $13, 1
# was:	addi	_i_reg_21_, _i_reg_21_, 1
	j	_loop_beg_22_
_loop_end_23_:
# 	ori	_arr_reg_28_,_letBind_17_,0
	lw	$11, 0($10)
# was:	lw	_size_reg_29_, 0(_arr_reg_28_)
	ori	$2, $28, 0
# was:	ori	_arg_27_, 28, 0
	sll	$12, $11, 2
# was:	sll	_tmp_38_, _size_reg_29_, 2
	addi	$12, $12, 4
# was:	addi	_tmp_38_, _tmp_38_, 4
	add	$28, $28, $12
# was:	add	28, 28, _tmp_38_
	sw	$11, 0($2)
# was:	sw	_size_reg_29_, 0(_arg_27_)
	addi	$13, $2, 4
# was:	addi	_arr2_reg_30_, _arg_27_, 4
	ori	$12, $0, 0
# was:	ori	_i_reg_31_, 0, 0
	addi	$10, $10, 4
# was:	addi	_arr_reg_28_, _arr_reg_28_, 4
_loop_beg_33_:
	sub	$15, $12, $11
# was:	sub	_tmp_reg_32_, _i_reg_31_, _size_reg_29_
	bgez	$15, _loop_end_34_
# was:	bgez	_tmp_reg_32_, _loop_end_34_
	addi	$12, $12, 1
# was:	addi	_i_reg_31_, _i_reg_31_, 1
	lw	$15, 0($10)
# was:	lw	_tmp_reg_32_, 0(_arr_reg_28_)
	addi	$10, $10, 4
# was:	addi	_arr_reg_28_, _arr_reg_28_, 4
# 	ori	_plus_L_36_,_tmp_reg_32_,0
	ori	$14, $0, 2
# was:	ori	_plus_R_37_, 0, 2
	add	$15, $15, $14
# was:	add	_fun_arg_res_35_, _plus_L_36_, _plus_R_37_
# 	ori	_tmp_reg_32_,_fun_arg_res_35_,0
	sw	$15, 0($13)
# was:	sw	_tmp_reg_32_, 0(_arr2_reg_30_)
	addi	$13, $13, 4
# was:	addi	_arr2_reg_30_, _arr2_reg_30_, 4
	j	_loop_beg_33_
_loop_end_34_:
# 	ori	2,_arg_27_,0
	jal	write_int_arr
# was:	jal	write_int_arr, 2
	ori	$16, $2, 0
# was:	ori	_letBind_26_, 2, 0
	la	$2, _a__str__41_
# was:	la	_tmp_40_, _a__str__41_
# _a__str__41_: string "\n"
# 	ori	_letBind_39_,_tmp_40_,0
# 	ori	2,_tmp_40_,0
	jal	putstring
# was:	jal	putstring, 2
# 	ori	_arr_reg_43_,_letBind_26_,0
	lw	$10, 0($16)
# was:	lw	_size_reg_44_, 0(_arr_reg_43_)
	ori	$13, $0, 0
# was:	ori	_arg_42_, 0, 0
	addi	$16, $16, 4
# was:	addi	_arr_reg_43_, _arr_reg_43_, 4
	ori	$11, $0, 0
# was:	ori	_ind_var_45_, 0, 0
_loop_beg_47_:
	sub	$12, $11, $10
# was:	sub	_tmp_reg_46_, _ind_var_45_, _size_reg_44_
	bgez	$12, _loop_end_48_
# was:	bgez	_tmp_reg_46_, _loop_end_48_
	lw	$12, 0($16)
# was:	lw	_tmp_reg_46_, 0(_arr_reg_43_)
	addi	$16, $16, 4
# was:	addi	_arr_reg_43_, _arr_reg_43_, 4
# 	ori	_plus_L_50_,_arg_42_,0
# 	ori	_plus_R_51_,_tmp_reg_46_,0
	add	$13, $13, $12
# was:	add	_fun_arg_res_49_, _plus_L_50_, _plus_R_51_
# 	ori	_arg_42_,_fun_arg_res_49_,0
	addi	$11, $11, 1
# was:	addi	_ind_var_45_, _ind_var_45_, 1
	j	_loop_beg_47_
_loop_end_48_:
	ori	$2, $13, 0
# was:	ori	2, _arg_42_, 0
	jal	write_int
# was:	jal	write_int, 2
# 	ori	_mainres_15_,2,0
# 	ori	2,_mainres_15_,0
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
_a__str__41_:
	.space	4
	.asciiz	"\n"
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