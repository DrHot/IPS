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
# Function plus5
plus5:
	sw	$31, -4($29)
	addi	$29, $29, -8
	ori	$10, $2, 0
# was:	ori	_param_x_1_, 2, 0
# 	ori	_plus_L_3_,_param_x_1_,0
	ori	$11, $0, 5
# was:	ori	_plus_R_4_, 0, 5
	add	$2, $10, $11
# was:	add	_plus5res_2_, _plus_L_3_, _plus_R_4_
# 	ori	2,_plus5res_2_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function mul2
mul2:
	sw	$31, -4($29)
	addi	$29, $29, -8
	ori	$10, $2, 0
# was:	ori	_param_x_5_, 2, 0
	ori	$11, $10, 0
# was:	ori	_plus_L_7_, _param_x_5_, 0
# 	ori	_plus_R_8_,_param_x_5_,0
	add	$2, $11, $10
# was:	add	_mul2res_6_, _plus_L_7_, _plus_R_8_
# 	ori	2,_mul2res_6_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function testcomp
testcomp:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_x_9_,2,0
# 	ori	_arg_12_,_param_x_9_,0
# 	ori	2,_arg_12_,0
	jal	write_int_arr
# was:	jal	write_int_arr, 2
# 	ori	_arg_11_,2,0
# 	ori	2,_arg_11_,0
	jal	write_int_arr
# was:	jal	write_int_arr, 2
# 	ori	_testcompres_10_,2,0
# 	ori	2,_testcompres_10_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function write_int
write_int:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$16, $2, 0
# was:	ori	_param_x_13_, 2, 0
# 	ori	_tmp_15_,_param_x_13_,0
# 	ori	_write_intres_14_,_tmp_15_,0
	ori	$2, $16, 0
# was:	ori	2, _write_intres_14_, 0
	jal	putint
# was:	jal	putint, 2
	ori	$2, $16, 0
# was:	ori	2, _write_intres_14_, 0
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
# was:	ori	_param_x_16_, 2, 0
# 	ori	_arr_reg_18_,_param_x_16_,0
	lw	$16, 0($17)
# was:	lw	_size_reg_19_, 0(_arr_reg_18_)
	ori	$18, $28, 0
# was:	ori	_write_int_arrres_17_, 28, 0
	sll	$10, $16, 2
# was:	sll	_tmp_26_, _size_reg_19_, 2
	addi	$10, $10, 4
# was:	addi	_tmp_26_, _tmp_26_, 4
	add	$28, $28, $10
# was:	add	28, 28, _tmp_26_
	sw	$16, 0($18)
# was:	sw	_size_reg_19_, 0(_write_int_arrres_17_)
	addi	$19, $18, 4
# was:	addi	_arr2_reg_20_, _write_int_arrres_17_, 4
	ori	$20, $0, 0
# was:	ori	_i_reg_21_, 0, 0
	addi	$17, $17, 4
# was:	addi	_arr_reg_18_, _arr_reg_18_, 4
_loop_beg_23_:
	sub	$2, $20, $16
# was:	sub	_tmp_reg_22_, _i_reg_21_, _size_reg_19_
	bgez	$2, _loop_end_24_
# was:	bgez	_tmp_reg_22_, _loop_end_24_
	addi	$20, $20, 1
# was:	addi	_i_reg_21_, _i_reg_21_, 1
	lw	$2, 0($17)
# was:	lw	_tmp_reg_22_, 0(_arr_reg_18_)
	addi	$17, $17, 4
# was:	addi	_arr_reg_18_, _arr_reg_18_, 4
# 	ori	2,_tmp_reg_22_,0
	jal	write_int
# was:	jal	write_int, 2
# 	ori	_tmp_reg_25_,2,0
# 	ori	_tmp_reg_22_,_tmp_reg_25_,0
	sw	$2, 0($19)
# was:	sw	_tmp_reg_22_, 0(_arr2_reg_20_)
	addi	$19, $19, 4
# was:	addi	_arr2_reg_20_, _arr2_reg_20_, 4
	j	_loop_beg_23_
_loop_end_24_:
	ori	$2, $18, 0
# was:	ori	2, _write_int_arrres_17_, 0
	addi	$29, $29, 28
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function boo
boo:
	sw	$31, -4($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
	ori	$16, $2, 0
# was:	ori	_param_a_27_, 2, 0
	ori	$11, $0, 5
# was:	ori	_plus_L_31_, 0, 5
	ori	$10, $0, 3
# was:	ori	_plus_R_32_, 0, 3
	add	$0, $11, $10
# was:	add	_letBind_30_, _plus_L_31_, _plus_R_32_
# 	ori	_arr_reg_33_,_param_a_27_,0
	lw	$18, 0($16)
# was:	lw	_size_reg_34_, 0(_arr_reg_33_)
	ori	$17, $28, 0
# was:	ori	_letBind_29_, 28, 0
	sll	$10, $18, 2
# was:	sll	_tmp_41_, _size_reg_34_, 2
	addi	$10, $10, 4
# was:	addi	_tmp_41_, _tmp_41_, 4
	add	$28, $28, $10
# was:	add	28, 28, _tmp_41_
	sw	$18, 0($17)
# was:	sw	_size_reg_34_, 0(_letBind_29_)
	addi	$19, $17, 4
# was:	addi	_arr2_reg_35_, _letBind_29_, 4
	ori	$20, $0, 0
# was:	ori	_i_reg_36_, 0, 0
	addi	$16, $16, 4
# was:	addi	_arr_reg_33_, _arr_reg_33_, 4
_loop_beg_38_:
	sub	$2, $20, $18
# was:	sub	_tmp_reg_37_, _i_reg_36_, _size_reg_34_
	bgez	$2, _loop_end_39_
# was:	bgez	_tmp_reg_37_, _loop_end_39_
	addi	$20, $20, 1
# was:	addi	_i_reg_36_, _i_reg_36_, 1
	lw	$2, 0($16)
# was:	lw	_tmp_reg_37_, 0(_arr_reg_33_)
	addi	$16, $16, 4
# was:	addi	_arr_reg_33_, _arr_reg_33_, 4
# 	ori	2,_tmp_reg_37_,0
	jal	plus5
# was:	jal	plus5, 2
# 	ori	_tmp_reg_40_,2,0
# 	ori	_tmp_reg_37_,_tmp_reg_40_,0
	sw	$2, 0($19)
# was:	sw	_tmp_reg_37_, 0(_arr2_reg_35_)
	addi	$19, $19, 4
# was:	addi	_arr2_reg_35_, _arr2_reg_35_, 4
	j	_loop_beg_38_
_loop_end_39_:
# 	ori	_boores_28_,_letBind_29_,0
	ori	$2, $17, 0
# was:	ori	2, _boores_28_, 0
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
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
	jal	getint
# was:	jal	getint, 2
# 	ori	_letBind_43_,2,0
	ori	$11, $2, 0
# was:	ori	_size_reg_45_, _letBind_43_, 0
	addi	$11, $11, -1
# was:	addi	_size_reg_45_, _size_reg_45_, -1
	bgez	$11, _safe_lab_46_
# was:	bgez	_size_reg_45_, _safe_lab_46_
	ori	$5, $0, 15
# was:	ori	5, 0, 15
	j	_IllegalArrSizeError_
_safe_lab_46_:
	addi	$11, $11, 1
# was:	addi	_size_reg_45_, _size_reg_45_, 1
	ori	$10, $28, 0
# was:	ori	_letBind_44_, 28, 0
	sll	$12, $11, 2
# was:	sll	_tmp_52_, _size_reg_45_, 2
	addi	$12, $12, 4
# was:	addi	_tmp_52_, _tmp_52_, 4
	add	$28, $28, $12
# was:	add	28, 28, _tmp_52_
	sw	$11, 0($10)
# was:	sw	_size_reg_45_, 0(_letBind_44_)
	addi	$13, $10, 4
# was:	addi	_addr_reg_47_, _letBind_44_, 4
	ori	$14, $0, 0
# was:	ori	_i_reg_48_, 0, 0
_loop_beg_49_:
	sub	$12, $14, $11
# was:	sub	_tmp_reg_51_, _i_reg_48_, _size_reg_45_
	bgez	$12, _loop_end_50_
# was:	bgez	_tmp_reg_51_, _loop_end_50_
	sw	$14, 0($13)
# was:	sw	_i_reg_48_, 0(_addr_reg_47_)
	addi	$13, $13, 4
# was:	addi	_addr_reg_47_, _addr_reg_47_, 4
	addi	$14, $14, 1
# was:	addi	_i_reg_48_, _i_reg_48_, 1
	j	_loop_beg_49_
_loop_end_50_:
# 	ori	_plus_L_55_,_letBind_43_,0
	ori	$11, $2, 0
# was:	ori	_plus_R_56_, _letBind_43_, 0
	add	$0, $2, $11
# was:	add	_letBind_54_, _plus_L_55_, _plus_R_56_
	ori	$11, $2, 0
# was:	ori	_plus_L_59_, _letBind_43_, 0
# 	ori	_plus_R_60_,_letBind_43_,0
	add	$11, $11, $2
# was:	add	_plus_L_57_, _plus_L_59_, _plus_R_60_
# 	ori	_plus_R_58_,_letBind_43_,0
	add	$0, $11, $2
# was:	add	_letBind_53_, _plus_L_57_, _plus_R_58_
# 	ori	_arg_62_,_letBind_44_,0
	ori	$2, $10, 0
# was:	ori	2, _arg_62_, 0
	jal	boo
# was:	jal	boo, 2
	ori	$16, $2, 0
# was:	ori	_letBind_61_, 2, 0
# 	ori	_arr_reg_64_,_letBind_61_,0
	lw	$17, 0($16)
# was:	lw	_size_reg_65_, 0(_arr_reg_64_)
	ori	$18, $28, 0
# was:	ori	_letBind_63_, 28, 0
	sll	$10, $17, 2
# was:	sll	_tmp_72_, _size_reg_65_, 2
	addi	$10, $10, 4
# was:	addi	_tmp_72_, _tmp_72_, 4
	add	$28, $28, $10
# was:	add	28, 28, _tmp_72_
	sw	$17, 0($18)
# was:	sw	_size_reg_65_, 0(_letBind_63_)
	addi	$19, $18, 4
# was:	addi	_arr2_reg_66_, _letBind_63_, 4
	ori	$20, $0, 0
# was:	ori	_i_reg_67_, 0, 0
	addi	$16, $16, 4
# was:	addi	_arr_reg_64_, _arr_reg_64_, 4
_loop_beg_69_:
	sub	$2, $20, $17
# was:	sub	_tmp_reg_68_, _i_reg_67_, _size_reg_65_
	bgez	$2, _loop_end_70_
# was:	bgez	_tmp_reg_68_, _loop_end_70_
	addi	$20, $20, 1
# was:	addi	_i_reg_67_, _i_reg_67_, 1
	lw	$2, 0($16)
# was:	lw	_tmp_reg_68_, 0(_arr_reg_64_)
	addi	$16, $16, 4
# was:	addi	_arr_reg_64_, _arr_reg_64_, 4
# 	ori	2,_tmp_reg_68_,0
	jal	mul2
# was:	jal	mul2, 2
# 	ori	_tmp_reg_71_,2,0
# 	ori	_tmp_reg_68_,_tmp_reg_71_,0
	sw	$2, 0($19)
# was:	sw	_tmp_reg_68_, 0(_arr2_reg_66_)
	addi	$19, $19, 4
# was:	addi	_arr2_reg_66_, _arr2_reg_66_, 4
	j	_loop_beg_69_
_loop_end_70_:
# 	ori	_arg_73_,_letBind_63_,0
	ori	$2, $18, 0
# was:	ori	2, _arg_73_, 0
	jal	write_int_arr
# was:	jal	write_int_arr, 2
# 	ori	_mainres_42_,2,0
# 	ori	2,_mainres_42_,0
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