	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$11, _Maxacha_78_
# was:	la	_Maxacha_78__addr, _Maxacha_78_
	ori	$10, $0, 10
# was:	ori	_Maxacha_78__init, 0, 10
	sw	$10, 0($11)
# was:	sw	_Maxacha_78__init, 0(_Maxacha_78__addr)
	la	$11, _a__str__75_
# was:	la	_a__str__75__addr, _a__str__75_
	ori	$10, $0, 1
# was:	ori	_a__str__75__init, 0, 1
	sw	$10, 0($11)
# was:	sw	_a__str__75__init, 0(_a__str__75__addr)
	la	$11, _Sumaa___70_
# was:	la	_Sumaa___70__addr, _Sumaa___70_
	ori	$10, $0, 5
# was:	ori	_Sumaa___70__init, 0, 5
	sw	$10, 0($11)
# was:	sw	_Sumaa___70__init, 0(_Sumaa___70__addr)
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
# Function read_chr
read_chr:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_i_5_,2,0
	jal	getchar
# was:	jal	getchar, 2
# 	ori	_read_chrres_6_,2,0
# 	ori	2,_read_chrres_6_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function plus
plus:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_x_7_,2,0
# 	ori	_param_y_8_,3,0
# 	ori	_plus_L_10_,_param_x_7_,0
# 	ori	_plus_R_11_,_param_y_8_,0
	add	$2, $2, $3
# was:	add	_plusres_9_, _plus_L_10_, _plus_R_11_
# 	ori	2,_plusres_9_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function max_chr
max_chr:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_a_12_,2,0
# 	ori	_param_b_13_,3,0
# 	ori	_lt_L_19_,_param_a_12_,0
# 	ori	_lt_R_20_,_param_b_13_,0
	slt	$10, $2, $3
# was:	slt	_cond_18_, _lt_L_19_, _lt_R_20_
	bne	$10, $0, _then_15_
# was:	bne	_cond_18_, 0, _then_15_
	j	_else_16_
_then_15_:
	ori	$2, $3, 0
# was:	ori	_max_chrres_14_, _param_b_13_, 0
	j	_endif_17_
_else_16_:
# 	ori	_max_chrres_14_,_param_a_12_,0
_endif_17_:
# 	ori	2,_max_chrres_14_,0
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
# was:	ori	_letBind_22_, 2, 0
# 	ori	_size_reg_24_,_letBind_22_,0
	addi	$10, $10, -1
# was:	addi	_size_reg_24_, _size_reg_24_, -1
	bgez	$10, _safe_lab_25_
# was:	bgez	_size_reg_24_, _safe_lab_25_
	ori	$5, $0, 10
# was:	ori	5, 0, 10
	j	_IllegalArrSizeError_
_safe_lab_25_:
	addi	$10, $10, 1
# was:	addi	_size_reg_24_, _size_reg_24_, 1
	ori	$16, $28, 0
# was:	ori	_letBind_23_, 28, 0
	sll	$11, $10, 2
# was:	sll	_tmp_31_, _size_reg_24_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_31_, _tmp_31_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_31_
	sw	$10, 0($16)
# was:	sw	_size_reg_24_, 0(_letBind_23_)
	addi	$13, $16, 4
# was:	addi	_addr_reg_26_, _letBind_23_, 4
	ori	$12, $0, 0
# was:	ori	_i_reg_27_, 0, 0
_loop_beg_28_:
	sub	$11, $12, $10
# was:	sub	_tmp_reg_30_, _i_reg_27_, _size_reg_24_
	bgez	$11, _loop_end_29_
# was:	bgez	_tmp_reg_30_, _loop_end_29_
	sw	$12, 0($13)
# was:	sw	_i_reg_27_, 0(_addr_reg_26_)
	addi	$13, $13, 4
# was:	addi	_addr_reg_26_, _addr_reg_26_, 4
	addi	$12, $12, 1
# was:	addi	_i_reg_27_, _i_reg_27_, 1
	j	_loop_beg_28_
_loop_end_29_:
	ori	$19, $16, 0
# was:	ori	_arr_reg_33_, _letBind_23_, 0
	lw	$18, 0($19)
# was:	lw	_size_reg_34_, 0(_arr_reg_33_)
	ori	$17, $28, 0
# was:	ori	_letBind_32_, 28, 0
	sll	$10, $18, 2
# was:	sll	_tmp_41_, _size_reg_34_, 2
	addi	$10, $10, 4
# was:	addi	_tmp_41_, _tmp_41_, 4
	add	$28, $28, $10
# was:	add	28, 28, _tmp_41_
	sw	$18, 0($17)
# was:	sw	_size_reg_34_, 0(_letBind_32_)
	addi	$21, $17, 4
# was:	addi	_arr2_reg_35_, _letBind_32_, 4
	ori	$20, $0, 0
# was:	ori	_i_reg_36_, 0, 0
	addi	$19, $19, 4
# was:	addi	_arr_reg_33_, _arr_reg_33_, 4
_loop_beg_38_:
	sub	$2, $20, $18
# was:	sub	_tmp_reg_37_, _i_reg_36_, _size_reg_34_
	bgez	$2, _loop_end_39_
# was:	bgez	_tmp_reg_37_, _loop_end_39_
	addi	$20, $20, 1
# was:	addi	_i_reg_36_, _i_reg_36_, 1
	lw	$2, 0($19)
# was:	lw	_tmp_reg_37_, 0(_arr_reg_33_)
	addi	$19, $19, 4
# was:	addi	_arr_reg_33_, _arr_reg_33_, 4
# 	ori	2,_tmp_reg_37_,0
	jal	plus100
# was:	jal	plus100, 2
# 	ori	_tmp_reg_40_,2,0
# 	ori	_tmp_reg_37_,_tmp_reg_40_,0
	sw	$2, 0($21)
# was:	sw	_tmp_reg_37_, 0(_arr2_reg_35_)
	addi	$21, $21, 4
# was:	addi	_arr2_reg_35_, _arr2_reg_35_, 4
	j	_loop_beg_38_
_loop_end_39_:
	ori	$19, $17, 0
# was:	ori	_arr_reg_43_, _letBind_32_, 0
	lw	$20, 0($19)
# was:	lw	_size_reg_44_, 0(_arr_reg_43_)
	ori	$17, $0, 0
# was:	ori	_letBind_42_, 0, 0
	addi	$19, $19, 4
# was:	addi	_arr_reg_43_, _arr_reg_43_, 4
	ori	$18, $0, 0
# was:	ori	_ind_var_45_, 0, 0
_loop_beg_47_:
	sub	$3, $18, $20
# was:	sub	_tmp_reg_46_, _ind_var_45_, _size_reg_44_
	bgez	$3, _loop_end_48_
# was:	bgez	_tmp_reg_46_, _loop_end_48_
	lw	$3, 0($19)
# was:	lw	_tmp_reg_46_, 0(_arr_reg_43_)
	addi	$19, $19, 4
# was:	addi	_arr_reg_43_, _arr_reg_43_, 4
	ori	$2, $17, 0
# was:	ori	2, _letBind_42_, 0
# 	ori	3,_tmp_reg_46_,0
	jal	plus
# was:	jal	plus, 2 3
	ori	$17, $2, 0
# was:	ori	_tmp_reg_49_, 2, 0
# 	ori	_letBind_42_,_tmp_reg_49_,0
	addi	$18, $18, 1
# was:	addi	_ind_var_45_, _ind_var_45_, 1
	j	_loop_beg_47_
_loop_end_48_:
	ori	$18, $16, 0
# was:	ori	_arr_reg_51_, _letBind_23_, 0
	lw	$19, 0($18)
# was:	lw	_size_reg_52_, 0(_arr_reg_51_)
	ori	$16, $28, 0
# was:	ori	_letBind_50_, 28, 0
	addi	$10, $19, 3
# was:	addi	_tmp_59_, _size_reg_52_, 3
	sra	$10, $10, 2
# was:	sra	_tmp_59_, _tmp_59_, 2
	sll	$10, $10, 2
# was:	sll	_tmp_59_, _tmp_59_, 2
	addi	$10, $10, 4
# was:	addi	_tmp_59_, _tmp_59_, 4
	add	$28, $28, $10
# was:	add	28, 28, _tmp_59_
	sw	$19, 0($16)
# was:	sw	_size_reg_52_, 0(_letBind_50_)
	addi	$20, $16, 4
# was:	addi	_arr2_reg_53_, _letBind_50_, 4
	ori	$21, $0, 0
# was:	ori	_i_reg_54_, 0, 0
	addi	$18, $18, 4
# was:	addi	_arr_reg_51_, _arr_reg_51_, 4
_loop_beg_56_:
	sub	$2, $21, $19
# was:	sub	_tmp_reg_55_, _i_reg_54_, _size_reg_52_
	bgez	$2, _loop_end_57_
# was:	bgez	_tmp_reg_55_, _loop_end_57_
	addi	$21, $21, 1
# was:	addi	_i_reg_54_, _i_reg_54_, 1
	lw	$2, 0($18)
# was:	lw	_tmp_reg_55_, 0(_arr_reg_51_)
	addi	$18, $18, 4
# was:	addi	_arr_reg_51_, _arr_reg_51_, 4
# 	ori	2,_tmp_reg_55_,0
	jal	read_chr
# was:	jal	read_chr, 2
# 	ori	_tmp_reg_58_,2,0
# 	ori	_tmp_reg_55_,_tmp_reg_58_,0
	sb	$2, 0($20)
# was:	sb	_tmp_reg_55_, 0(_arr2_reg_53_)
	addi	$20, $20, 1
# was:	addi	_arr2_reg_53_, _arr2_reg_53_, 1
	j	_loop_beg_56_
_loop_end_57_:
	ori	$20, $16, 0
# was:	ori	_arr_reg_61_, _letBind_50_, 0
	lw	$19, 0($20)
# was:	lw	_size_reg_62_, 0(_arr_reg_61_)
	ori	$18, $0, 97
# was:	ori	_letBind_60_, 0, 97
	addi	$20, $20, 4
# was:	addi	_arr_reg_61_, _arr_reg_61_, 4
	ori	$21, $0, 0
# was:	ori	_ind_var_63_, 0, 0
_loop_beg_65_:
	sub	$3, $21, $19
# was:	sub	_tmp_reg_64_, _ind_var_63_, _size_reg_62_
	bgez	$3, _loop_end_66_
# was:	bgez	_tmp_reg_64_, _loop_end_66_
	lb	$3, 0($20)
# was:	lb	_tmp_reg_64_, 0(_arr_reg_61_)
	addi	$20, $20, 1
# was:	addi	_arr_reg_61_, _arr_reg_61_, 1
	ori	$2, $18, 0
# was:	ori	2, _letBind_60_, 0
# 	ori	3,_tmp_reg_64_,0
	jal	max_chr
# was:	jal	max_chr, 2 3
	ori	$18, $2, 0
# was:	ori	_tmp_reg_67_, 2, 0
# 	ori	_letBind_60_,_tmp_reg_67_,0
	addi	$21, $21, 1
# was:	addi	_ind_var_63_, _ind_var_63_, 1
	j	_loop_beg_65_
_loop_end_66_:
	la	$2, _Sumaa___70_
# was:	la	_tmp_69_, _Sumaa___70_
# _Sumaa___70_: string "Sum: "
# 	ori	_letBind_68_,_tmp_69_,0
# 	ori	2,_tmp_69_,0
	jal	putstring
# was:	jal	putstring, 2
# 	ori	_tmp_72_,_letBind_42_,0
	ori	$2, $17, 0
# was:	ori	_letBind_71_, _tmp_72_, 0
# 	ori	2,_letBind_71_,0
	jal	putint
# was:	jal	putint, 2
	la	$2, _a__str__75_
# was:	la	_tmp_74_, _a__str__75_
# _a__str__75_: string "\n"
# 	ori	_letBind_73_,_tmp_74_,0
# 	ori	2,_tmp_74_,0
	jal	putstring
# was:	jal	putstring, 2
	la	$2, _Maxacha_78_
# was:	la	_tmp_77_, _Maxacha_78_
# _Maxacha_78_: string "Max char: "
# 	ori	_letBind_76_,_tmp_77_,0
# 	ori	2,_tmp_77_,0
	jal	putstring
# was:	jal	putstring, 2
# 	ori	_tmp_80_,_letBind_60_,0
# 	ori	_letBind_79_,_tmp_80_,0
	ori	$2, $18, 0
# was:	ori	2, _letBind_79_, 0
	jal	putchar
# was:	jal	putchar, 2
# 	ori	_mainres_21_,_letBind_50_,0
	ori	$2, $16, 0
# was:	ori	2, _mainres_21_, 0
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
_Maxacha_78_:
	.space	4
	.asciiz	"Max char: "
	.align	2
_a__str__75_:
	.space	4
	.asciiz	"\n"
	.align	2
_Sumaa___70_:
	.space	4
	.asciiz	"Sum: "
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