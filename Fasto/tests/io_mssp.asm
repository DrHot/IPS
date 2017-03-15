	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$11, _aaMSSPa_204_
# was:	la	_aaMSSPa_204__addr, _aaMSSPa_204_
	ori	$10, $0, 18
# was:	ori	_aaMSSPa_204__init, 0, 18
	sw	$10, 0($11)
# was:	sw	_aaMSSPa_204__init, 0(_aaMSSPa_204__addr)
	la	$11, _aaa__st_55_
# was:	la	_aaa__st_55__addr, _aaa__st_55_
	ori	$10, $0, 3
# was:	ori	_aaa__st_55__init, 0, 3
	sw	$10, 0($11)
# was:	sw	_aaa__st_55__init, 0(_aaa__st_55__addr)
	la	$11, _aaa__st_42_
# was:	la	_aaa__st_42__addr, _aaa__st_42_
	ori	$10, $0, 3
# was:	ori	_aaa__st_42__init, 0, 3
	sw	$10, 0($11)
# was:	sw	_aaa__st_42__init, 0(_aaa__st_42__addr)
	la	$11, _a__str__14_
# was:	la	_a__str__14__addr, _a__str__14_
	ori	$10, $0, 1
# was:	ori	_a__str__14__init, 0, 1
	sw	$10, 0($11)
# was:	sw	_a__str__14__init, 0(_a__str__14__addr)
	la	$11, _aa__str_10_
# was:	la	_aa__str_10__addr, _aa__str_10_
	ori	$10, $0, 2
# was:	ori	_aa__str_10__init, 0, 2
	sw	$10, 0($11)
# was:	sw	_aa__str_10__init, 0(_aa__str_10__addr)
	la	$11, _Introdu_5_
# was:	la	_Introdu_5__addr, _Introdu_5_
	ori	$10, $0, 17
# was:	ori	_Introdu_5__init, 0, 17
	sw	$10, 0($11)
# was:	sw	_Introdu_5__init, 0(_Introdu_5__addr)
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
# Function read_int
read_int:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$16, $2, 0
# was:	ori	_param_i_1_, 2, 0
	la	$2, _Introdu_5_
# was:	la	_tmp_4_, _Introdu_5_
# _Introdu_5_: string "Introduce number "
# 	ori	_letBind_3_,_tmp_4_,0
# 	ori	2,_tmp_4_,0
	jal	putstring
# was:	jal	putstring, 2
# 	ori	_tmp_7_,_param_i_1_,0
	ori	$2, $16, 0
# was:	ori	_letBind_6_, _tmp_7_, 0
# 	ori	2,_letBind_6_,0
	jal	putint
# was:	jal	putint, 2
	la	$2, _aa__str_10_
# was:	la	_tmp_9_, _aa__str_10_
# _aa__str_10_: string ": "
# 	ori	_letBind_8_,_tmp_9_,0
# 	ori	2,_tmp_9_,0
	jal	putstring
# was:	jal	putstring, 2
	jal	getint
# was:	jal	getint, 2
	ori	$16, $2, 0
# was:	ori	_letBind_11_, 2, 0
	la	$2, _a__str__14_
# was:	la	_tmp_13_, _a__str__14_
# _a__str__14_: string "\n"
# 	ori	_letBind_12_,_tmp_13_,0
# 	ori	2,_tmp_13_,0
	jal	putstring
# was:	jal	putstring, 2
# 	ori	_read_intres_2_,_letBind_11_,0
	ori	$2, $16, 0
# was:	ori	2, _read_intres_2_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function read_int_arr
read_int_arr:
	sw	$31, -4($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
	ori	$10, $2, 0
# was:	ori	_param_n_15_, 2, 0
# 	ori	_size_reg_18_,_param_n_15_,0
	addi	$10, $10, -1
# was:	addi	_size_reg_18_, _size_reg_18_, -1
	bgez	$10, _safe_lab_19_
# was:	bgez	_size_reg_18_, _safe_lab_19_
	ori	$5, $0, 10
# was:	ori	5, 0, 10
	j	_IllegalArrSizeError_
_safe_lab_19_:
	addi	$10, $10, 1
# was:	addi	_size_reg_18_, _size_reg_18_, 1
	ori	$17, $28, 0
# was:	ori	_letBind_17_, 28, 0
	sll	$11, $10, 2
# was:	sll	_tmp_25_, _size_reg_18_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_25_, _tmp_25_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_25_
	sw	$10, 0($17)
# was:	sw	_size_reg_18_, 0(_letBind_17_)
	addi	$11, $17, 4
# was:	addi	_addr_reg_20_, _letBind_17_, 4
	ori	$13, $0, 0
# was:	ori	_i_reg_21_, 0, 0
_loop_beg_22_:
	sub	$12, $13, $10
# was:	sub	_tmp_reg_24_, _i_reg_21_, _size_reg_18_
	bgez	$12, _loop_end_23_
# was:	bgez	_tmp_reg_24_, _loop_end_23_
	sw	$13, 0($11)
# was:	sw	_i_reg_21_, 0(_addr_reg_20_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_20_, _addr_reg_20_, 4
	addi	$13, $13, 1
# was:	addi	_i_reg_21_, _i_reg_21_, 1
	j	_loop_beg_22_
_loop_end_23_:
# 	ori	_arr_reg_26_,_letBind_17_,0
	lw	$16, 0($17)
# was:	lw	_size_reg_27_, 0(_arr_reg_26_)
	ori	$18, $28, 0
# was:	ori	_read_int_arrres_16_, 28, 0
	sll	$10, $16, 2
# was:	sll	_tmp_34_, _size_reg_27_, 2
	addi	$10, $10, 4
# was:	addi	_tmp_34_, _tmp_34_, 4
	add	$28, $28, $10
# was:	add	28, 28, _tmp_34_
	sw	$16, 0($18)
# was:	sw	_size_reg_27_, 0(_read_int_arrres_16_)
	addi	$19, $18, 4
# was:	addi	_arr2_reg_28_, _read_int_arrres_16_, 4
	ori	$20, $0, 0
# was:	ori	_i_reg_29_, 0, 0
	addi	$17, $17, 4
# was:	addi	_arr_reg_26_, _arr_reg_26_, 4
_loop_beg_31_:
	sub	$2, $20, $16
# was:	sub	_tmp_reg_30_, _i_reg_29_, _size_reg_27_
	bgez	$2, _loop_end_32_
# was:	bgez	_tmp_reg_30_, _loop_end_32_
	addi	$20, $20, 1
# was:	addi	_i_reg_29_, _i_reg_29_, 1
	lw	$2, 0($17)
# was:	lw	_tmp_reg_30_, 0(_arr_reg_26_)
	addi	$17, $17, 4
# was:	addi	_arr_reg_26_, _arr_reg_26_, 4
# 	ori	2,_tmp_reg_30_,0
	jal	read_int
# was:	jal	read_int, 2
# 	ori	_tmp_reg_33_,2,0
# 	ori	_tmp_reg_30_,_tmp_reg_33_,0
	sw	$2, 0($19)
# was:	sw	_tmp_reg_30_, 0(_arr2_reg_28_)
	addi	$19, $19, 4
# was:	addi	_arr2_reg_28_, _arr2_reg_28_, 4
	j	_loop_beg_31_
_loop_end_32_:
	ori	$2, $18, 0
# was:	ori	2, _read_int_arrres_16_, 0
	addi	$29, $29, 28
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function write_int
write_int:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$16, $2, 0
# was:	ori	_param_i_35_, 2, 0
# 	ori	_tmp_37_,_param_i_35_,0
# 	ori	_write_intres_36_,_tmp_37_,0
	ori	$2, $16, 0
# was:	ori	2, _write_intres_36_, 0
	jal	putint
# was:	jal	putint, 2
	ori	$2, $16, 0
# was:	ori	2, _write_intres_36_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function write_int_arr
write_int_arr:
	sw	$31, -4($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -24
	ori	$17, $2, 0
# was:	ori	_param_arr_38_, 2, 0
	la	$2, _aaa__st_42_
# was:	la	_tmp_41_, _aaa__st_42_
# _aaa__st_42_: string " { "
# 	ori	_letBind_40_,_tmp_41_,0
# 	ori	2,_tmp_41_,0
	jal	putstring
# was:	jal	putstring, 2
# 	ori	_arr_reg_44_,_param_arr_38_,0
	lw	$16, 0($17)
# was:	lw	_size_reg_45_, 0(_arr_reg_44_)
	ori	$10, $28, 0
# was:	ori	_letBind_43_, 28, 0
	sll	$11, $16, 2
# was:	sll	_tmp_52_, _size_reg_45_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_52_, _tmp_52_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_52_
	sw	$16, 0($10)
# was:	sw	_size_reg_45_, 0(_letBind_43_)
	addi	$18, $10, 4
# was:	addi	_arr2_reg_46_, _letBind_43_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_47_, 0, 0
	addi	$17, $17, 4
# was:	addi	_arr_reg_44_, _arr_reg_44_, 4
_loop_beg_49_:
	sub	$2, $19, $16
# was:	sub	_tmp_reg_48_, _i_reg_47_, _size_reg_45_
	bgez	$2, _loop_end_50_
# was:	bgez	_tmp_reg_48_, _loop_end_50_
	addi	$19, $19, 1
# was:	addi	_i_reg_47_, _i_reg_47_, 1
	lw	$2, 0($17)
# was:	lw	_tmp_reg_48_, 0(_arr_reg_44_)
	addi	$17, $17, 4
# was:	addi	_arr_reg_44_, _arr_reg_44_, 4
# 	ori	2,_tmp_reg_48_,0
	jal	write_int
# was:	jal	write_int, 2
# 	ori	_tmp_reg_51_,2,0
# 	ori	_tmp_reg_48_,_tmp_reg_51_,0
	sw	$2, 0($18)
# was:	sw	_tmp_reg_48_, 0(_arr2_reg_46_)
	addi	$18, $18, 4
# was:	addi	_arr2_reg_46_, _arr2_reg_46_, 4
	j	_loop_beg_49_
_loop_end_50_:
	la	$2, _aaa__st_55_
# was:	la	_tmp_54_, _aaa__st_55_
# _aaa__st_55_: string " }\n"
# 	ori	_letBind_53_,_tmp_54_,0
# 	ori	2,_tmp_54_,0
	jal	putstring
# was:	jal	putstring, 2
	ori	$2, $0, 1
# was:	ori	_write_int_arrres_39_, 0, 1
# 	ori	2,_write_int_arrres_39_,0
	addi	$29, $29, 24
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function max
max:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_x_56_,2,0
# 	ori	_param_y_57_,3,0
# 	ori	_lt_L_63_,_param_x_56_,0
# 	ori	_lt_R_64_,_param_y_57_,0
	slt	$10, $2, $3
# was:	slt	_cond_62_, _lt_L_63_, _lt_R_64_
	bne	$10, $0, _then_59_
# was:	bne	_cond_62_, 0, _then_59_
	j	_else_60_
_then_59_:
	ori	$2, $3, 0
# was:	ori	_maxres_58_, _param_y_57_, 0
	j	_endif_61_
_else_60_:
# 	ori	_maxres_58_,_param_x_56_,0
_endif_61_:
# 	ori	2,_maxres_58_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function mapper
mapper:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$16, $2, 0
# was:	ori	_param_x_65_, 2, 0
# 	ori	_arg_68_,_param_x_65_,0
	ori	$3, $0, 0
# was:	ori	_arg_69_, 0, 0
	ori	$2, $16, 0
# was:	ori	2, _arg_68_, 0
# 	ori	3,_arg_69_,0
	jal	max
# was:	jal	max, 2 3
# 	ori	_letBind_67_,2,0
	ori	$12, $0, 4
# was:	ori	_size_reg_70_, 0, 4
	ori	$10, $28, 0
# was:	ori	_mapperres_66_, 28, 0
	sll	$11, $12, 2
# was:	sll	_tmp_73_, _size_reg_70_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_73_, _tmp_73_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_73_
	sw	$12, 0($10)
# was:	sw	_size_reg_70_, 0(_mapperres_66_)
	addi	$11, $10, 4
# was:	addi	_addr_reg_71_, _mapperres_66_, 4
# 	ori	_tmp_reg_72_,_letBind_67_,0
	sw	$2, 0($11)
# was:	sw	_tmp_reg_72_, 0(_addr_reg_71_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_71_, _addr_reg_71_, 4
# 	ori	_tmp_reg_72_,_letBind_67_,0
	sw	$2, 0($11)
# was:	sw	_tmp_reg_72_, 0(_addr_reg_71_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_71_, _addr_reg_71_, 4
# 	ori	_tmp_reg_72_,_letBind_67_,0
	sw	$2, 0($11)
# was:	sw	_tmp_reg_72_, 0(_addr_reg_71_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_71_, _addr_reg_71_, 4
	ori	$2, $16, 0
# was:	ori	_tmp_reg_72_, _param_x_65_, 0
	sw	$2, 0($11)
# was:	sw	_tmp_reg_72_, 0(_addr_reg_71_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_71_, _addr_reg_71_, 4
	ori	$2, $10, 0
# was:	ori	2, _mapperres_66_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function reducer
reducer:
	sw	$31, -4($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -24
	ori	$18, $2, 0
# was:	ori	_param_a_74_, 2, 0
	ori	$17, $3, 0
# was:	ori	_param_b_75_, 3, 0
	ori	$11, $0, 0
# was:	ori	_arr_ind_80_, 0, 0
	addi	$10, $18, 4
# was:	addi	_arr_reg_81_, _param_a_74_, 4
	lw	$12, 0($18)
# was:	lw	_size_reg_82_, 0(_param_a_74_)
	bgez	$11, _safe_lab_85_
# was:	bgez	_arr_ind_80_, _safe_lab_85_
_error_lab_84_:
	ori	$5, $0, 28
# was:	ori	5, 0, 28
	j	_IllegalArrSizeError_
_safe_lab_85_:
	sub	$12, $11, $12
# was:	sub	_tmp_reg_83_, _arr_ind_80_, _size_reg_82_
	bgez	$12, _error_lab_84_
# was:	bgez	_tmp_reg_83_, _error_lab_84_
	sll	$11, $11, 2
# was:	sll	_arr_ind_80_, _arr_ind_80_, 2
	add	$10, $10, $11
# was:	add	_arr_reg_81_, _arr_reg_81_, _arr_ind_80_
	lw	$2, 0($10)
# was:	lw	_arg_79_, 0(_arr_reg_81_)
	ori	$11, $0, 0
# was:	ori	_arr_ind_87_, 0, 0
	addi	$10, $17, 4
# was:	addi	_arr_reg_88_, _param_b_75_, 4
	lw	$12, 0($17)
# was:	lw	_size_reg_89_, 0(_param_b_75_)
	bgez	$11, _safe_lab_92_
# was:	bgez	_arr_ind_87_, _safe_lab_92_
_error_lab_91_:
	ori	$5, $0, 28
# was:	ori	5, 0, 28
	j	_IllegalArrSizeError_
_safe_lab_92_:
	sub	$12, $11, $12
# was:	sub	_tmp_reg_90_, _arr_ind_87_, _size_reg_89_
	bgez	$12, _error_lab_91_
# was:	bgez	_tmp_reg_90_, _error_lab_91_
	sll	$11, $11, 2
# was:	sll	_arr_ind_87_, _arr_ind_87_, 2
	add	$10, $10, $11
# was:	add	_arr_reg_88_, _arr_reg_88_, _arr_ind_87_
	lw	$3, 0($10)
# was:	lw	_arg_86_, 0(_arr_reg_88_)
# 	ori	2,_arg_79_,0
# 	ori	3,_arg_86_,0
	jal	max
# was:	jal	max, 2 3
# 	ori	_arg_78_,2,0
	ori	$10, $0, 2
# was:	ori	_arr_ind_96_, 0, 2
	addi	$11, $18, 4
# was:	addi	_arr_reg_97_, _param_a_74_, 4
	lw	$12, 0($18)
# was:	lw	_size_reg_98_, 0(_param_a_74_)
	bgez	$10, _safe_lab_101_
# was:	bgez	_arr_ind_96_, _safe_lab_101_
_error_lab_100_:
	ori	$5, $0, 28
# was:	ori	5, 0, 28
	j	_IllegalArrSizeError_
_safe_lab_101_:
	sub	$12, $10, $12
# was:	sub	_tmp_reg_99_, _arr_ind_96_, _size_reg_98_
	bgez	$12, _error_lab_100_
# was:	bgez	_tmp_reg_99_, _error_lab_100_
	sll	$10, $10, 2
# was:	sll	_arr_ind_96_, _arr_ind_96_, 2
	add	$11, $11, $10
# was:	add	_arr_reg_97_, _arr_reg_97_, _arr_ind_96_
	lw	$11, 0($11)
# was:	lw	_plus_L_94_, 0(_arr_reg_97_)
	ori	$10, $0, 1
# was:	ori	_arr_ind_102_, 0, 1
	addi	$12, $17, 4
# was:	addi	_arr_reg_103_, _param_b_75_, 4
	lw	$13, 0($17)
# was:	lw	_size_reg_104_, 0(_param_b_75_)
	bgez	$10, _safe_lab_107_
# was:	bgez	_arr_ind_102_, _safe_lab_107_
_error_lab_106_:
	ori	$5, $0, 28
# was:	ori	5, 0, 28
	j	_IllegalArrSizeError_
_safe_lab_107_:
	sub	$13, $10, $13
# was:	sub	_tmp_reg_105_, _arr_ind_102_, _size_reg_104_
	bgez	$13, _error_lab_106_
# was:	bgez	_tmp_reg_105_, _error_lab_106_
	sll	$10, $10, 2
# was:	sll	_arr_ind_102_, _arr_ind_102_, 2
	add	$12, $12, $10
# was:	add	_arr_reg_103_, _arr_reg_103_, _arr_ind_102_
	lw	$10, 0($12)
# was:	lw	_plus_R_95_, 0(_arr_reg_103_)
	add	$3, $11, $10
# was:	add	_arg_93_, _plus_L_94_, _plus_R_95_
# 	ori	2,_arg_78_,0
# 	ori	3,_arg_93_,0
	jal	max
# was:	jal	max, 2 3
	ori	$16, $2, 0
# was:	ori	_letBind_77_, 2, 0
	ori	$10, $0, 1
# was:	ori	_arr_ind_110_, 0, 1
	addi	$11, $18, 4
# was:	addi	_arr_reg_111_, _param_a_74_, 4
	lw	$12, 0($18)
# was:	lw	_size_reg_112_, 0(_param_a_74_)
	bgez	$10, _safe_lab_115_
# was:	bgez	_arr_ind_110_, _safe_lab_115_
_error_lab_114_:
	ori	$5, $0, 29
# was:	ori	5, 0, 29
	j	_IllegalArrSizeError_
_safe_lab_115_:
	sub	$12, $10, $12
# was:	sub	_tmp_reg_113_, _arr_ind_110_, _size_reg_112_
	bgez	$12, _error_lab_114_
# was:	bgez	_tmp_reg_113_, _error_lab_114_
	sll	$10, $10, 2
# was:	sll	_arr_ind_110_, _arr_ind_110_, 2
	add	$11, $11, $10
# was:	add	_arr_reg_111_, _arr_reg_111_, _arr_ind_110_
	lw	$2, 0($11)
# was:	lw	_arg_109_, 0(_arr_reg_111_)
	ori	$10, $0, 3
# was:	ori	_arr_ind_119_, 0, 3
	addi	$11, $18, 4
# was:	addi	_arr_reg_120_, _param_a_74_, 4
	lw	$12, 0($18)
# was:	lw	_size_reg_121_, 0(_param_a_74_)
	bgez	$10, _safe_lab_124_
# was:	bgez	_arr_ind_119_, _safe_lab_124_
_error_lab_123_:
	ori	$5, $0, 29
# was:	ori	5, 0, 29
	j	_IllegalArrSizeError_
_safe_lab_124_:
	sub	$12, $10, $12
# was:	sub	_tmp_reg_122_, _arr_ind_119_, _size_reg_121_
	bgez	$12, _error_lab_123_
# was:	bgez	_tmp_reg_122_, _error_lab_123_
	sll	$10, $10, 2
# was:	sll	_arr_ind_119_, _arr_ind_119_, 2
	add	$11, $11, $10
# was:	add	_arr_reg_120_, _arr_reg_120_, _arr_ind_119_
	lw	$12, 0($11)
# was:	lw	_plus_L_117_, 0(_arr_reg_120_)
	ori	$10, $0, 1
# was:	ori	_arr_ind_125_, 0, 1
	addi	$11, $17, 4
# was:	addi	_arr_reg_126_, _param_b_75_, 4
	lw	$13, 0($17)
# was:	lw	_size_reg_127_, 0(_param_b_75_)
	bgez	$10, _safe_lab_130_
# was:	bgez	_arr_ind_125_, _safe_lab_130_
_error_lab_129_:
	ori	$5, $0, 29
# was:	ori	5, 0, 29
	j	_IllegalArrSizeError_
_safe_lab_130_:
	sub	$13, $10, $13
# was:	sub	_tmp_reg_128_, _arr_ind_125_, _size_reg_127_
	bgez	$13, _error_lab_129_
# was:	bgez	_tmp_reg_128_, _error_lab_129_
	sll	$10, $10, 2
# was:	sll	_arr_ind_125_, _arr_ind_125_, 2
	add	$11, $11, $10
# was:	add	_arr_reg_126_, _arr_reg_126_, _arr_ind_125_
	lw	$10, 0($11)
# was:	lw	_plus_R_118_, 0(_arr_reg_126_)
	add	$3, $12, $10
# was:	add	_arg_116_, _plus_L_117_, _plus_R_118_
# 	ori	2,_arg_109_,0
# 	ori	3,_arg_116_,0
	jal	max
# was:	jal	max, 2 3
	ori	$19, $2, 0
# was:	ori	_letBind_108_, 2, 0
	ori	$10, $0, 2
# was:	ori	_arr_ind_135_, 0, 2
	addi	$11, $18, 4
# was:	addi	_arr_reg_136_, _param_a_74_, 4
	lw	$12, 0($18)
# was:	lw	_size_reg_137_, 0(_param_a_74_)
	bgez	$10, _safe_lab_140_
# was:	bgez	_arr_ind_135_, _safe_lab_140_
_error_lab_139_:
	ori	$5, $0, 30
# was:	ori	5, 0, 30
	j	_IllegalArrSizeError_
_safe_lab_140_:
	sub	$12, $10, $12
# was:	sub	_tmp_reg_138_, _arr_ind_135_, _size_reg_137_
	bgez	$12, _error_lab_139_
# was:	bgez	_tmp_reg_138_, _error_lab_139_
	sll	$10, $10, 2
# was:	sll	_arr_ind_135_, _arr_ind_135_, 2
	add	$11, $11, $10
# was:	add	_arr_reg_136_, _arr_reg_136_, _arr_ind_135_
	lw	$10, 0($11)
# was:	lw	_plus_L_133_, 0(_arr_reg_136_)
	ori	$11, $0, 3
# was:	ori	_arr_ind_141_, 0, 3
	addi	$12, $17, 4
# was:	addi	_arr_reg_142_, _param_b_75_, 4
	lw	$13, 0($17)
# was:	lw	_size_reg_143_, 0(_param_b_75_)
	bgez	$11, _safe_lab_146_
# was:	bgez	_arr_ind_141_, _safe_lab_146_
_error_lab_145_:
	ori	$5, $0, 30
# was:	ori	5, 0, 30
	j	_IllegalArrSizeError_
_safe_lab_146_:
	sub	$13, $11, $13
# was:	sub	_tmp_reg_144_, _arr_ind_141_, _size_reg_143_
	bgez	$13, _error_lab_145_
# was:	bgez	_tmp_reg_144_, _error_lab_145_
	sll	$11, $11, 2
# was:	sll	_arr_ind_141_, _arr_ind_141_, 2
	add	$12, $12, $11
# was:	add	_arr_reg_142_, _arr_reg_142_, _arr_ind_141_
	lw	$11, 0($12)
# was:	lw	_plus_R_134_, 0(_arr_reg_142_)
	add	$2, $10, $11
# was:	add	_arg_132_, _plus_L_133_, _plus_R_134_
	ori	$10, $0, 2
# was:	ori	_arr_ind_148_, 0, 2
	addi	$11, $17, 4
# was:	addi	_arr_reg_149_, _param_b_75_, 4
	lw	$12, 0($17)
# was:	lw	_size_reg_150_, 0(_param_b_75_)
	bgez	$10, _safe_lab_153_
# was:	bgez	_arr_ind_148_, _safe_lab_153_
_error_lab_152_:
	ori	$5, $0, 30
# was:	ori	5, 0, 30
	j	_IllegalArrSizeError_
_safe_lab_153_:
	sub	$12, $10, $12
# was:	sub	_tmp_reg_151_, _arr_ind_148_, _size_reg_150_
	bgez	$12, _error_lab_152_
# was:	bgez	_tmp_reg_151_, _error_lab_152_
	sll	$10, $10, 2
# was:	sll	_arr_ind_148_, _arr_ind_148_, 2
	add	$11, $11, $10
# was:	add	_arr_reg_149_, _arr_reg_149_, _arr_ind_148_
	lw	$3, 0($11)
# was:	lw	_arg_147_, 0(_arr_reg_149_)
# 	ori	2,_arg_132_,0
# 	ori	3,_arg_147_,0
	jal	max
# was:	jal	max, 2 3
# 	ori	_letBind_131_,2,0
	ori	$11, $0, 3
# was:	ori	_arr_ind_157_, 0, 3
	addi	$10, $18, 4
# was:	addi	_arr_reg_158_, _param_a_74_, 4
	lw	$12, 0($18)
# was:	lw	_size_reg_159_, 0(_param_a_74_)
	bgez	$11, _safe_lab_162_
# was:	bgez	_arr_ind_157_, _safe_lab_162_
_error_lab_161_:
	ori	$5, $0, 31
# was:	ori	5, 0, 31
	j	_IllegalArrSizeError_
_safe_lab_162_:
	sub	$12, $11, $12
# was:	sub	_tmp_reg_160_, _arr_ind_157_, _size_reg_159_
	bgez	$12, _error_lab_161_
# was:	bgez	_tmp_reg_160_, _error_lab_161_
	sll	$11, $11, 2
# was:	sll	_arr_ind_157_, _arr_ind_157_, 2
	add	$10, $10, $11
# was:	add	_arr_reg_158_, _arr_reg_158_, _arr_ind_157_
	lw	$12, 0($10)
# was:	lw	_plus_L_155_, 0(_arr_reg_158_)
	ori	$11, $0, 3
# was:	ori	_arr_ind_163_, 0, 3
	addi	$10, $17, 4
# was:	addi	_arr_reg_164_, _param_b_75_, 4
	lw	$13, 0($17)
# was:	lw	_size_reg_165_, 0(_param_b_75_)
	bgez	$11, _safe_lab_168_
# was:	bgez	_arr_ind_163_, _safe_lab_168_
_error_lab_167_:
	ori	$5, $0, 31
# was:	ori	5, 0, 31
	j	_IllegalArrSizeError_
_safe_lab_168_:
	sub	$13, $11, $13
# was:	sub	_tmp_reg_166_, _arr_ind_163_, _size_reg_165_
	bgez	$13, _error_lab_167_
# was:	bgez	_tmp_reg_166_, _error_lab_167_
	sll	$11, $11, 2
# was:	sll	_arr_ind_163_, _arr_ind_163_, 2
	add	$10, $10, $11
# was:	add	_arr_reg_164_, _arr_reg_164_, _arr_ind_163_
	lw	$10, 0($10)
# was:	lw	_plus_R_156_, 0(_arr_reg_164_)
	add	$10, $12, $10
# was:	add	_letBind_154_, _plus_L_155_, _plus_R_156_
	ori	$13, $0, 4
# was:	ori	_size_reg_169_, 0, 4
	ori	$12, $28, 0
# was:	ori	_reducerres_76_, 28, 0
	sll	$11, $13, 2
# was:	sll	_tmp_172_, _size_reg_169_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_172_, _tmp_172_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_172_
	sw	$13, 0($12)
# was:	sw	_size_reg_169_, 0(_reducerres_76_)
	addi	$11, $12, 4
# was:	addi	_addr_reg_170_, _reducerres_76_, 4
# 	ori	_tmp_reg_171_,_letBind_77_,0
	sw	$16, 0($11)
# was:	sw	_tmp_reg_171_, 0(_addr_reg_170_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_170_, _addr_reg_170_, 4
	ori	$16, $19, 0
# was:	ori	_tmp_reg_171_, _letBind_108_, 0
	sw	$16, 0($11)
# was:	sw	_tmp_reg_171_, 0(_addr_reg_170_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_170_, _addr_reg_170_, 4
	ori	$16, $2, 0
# was:	ori	_tmp_reg_171_, _letBind_131_, 0
	sw	$16, 0($11)
# was:	sw	_tmp_reg_171_, 0(_addr_reg_170_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_170_, _addr_reg_170_, 4
	ori	$16, $10, 0
# was:	ori	_tmp_reg_171_, _letBind_154_, 0
	sw	$16, 0($11)
# was:	sw	_tmp_reg_171_, 0(_addr_reg_170_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_170_, _addr_reg_170_, 4
	ori	$2, $12, 0
# was:	ori	2, _reducerres_76_, 0
	addi	$29, $29, 24
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function mssp
mssp:
	sw	$31, -4($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
# 	ori	_param_n_173_,2,0
# 	ori	_arg_176_,_param_n_173_,0
# 	ori	2,_arg_176_,0
	jal	read_int_arr
# was:	jal	read_int_arr, 2
	ori	$17, $2, 0
# was:	ori	_letBind_175_, 2, 0
# 	ori	_arr_reg_178_,_letBind_175_,0
	lw	$18, 0($17)
# was:	lw	_size_reg_179_, 0(_arr_reg_178_)
	ori	$16, $28, 0
# was:	ori	_letBind_177_, 28, 0
	sll	$10, $18, 2
# was:	sll	_tmp_186_, _size_reg_179_, 2
	addi	$10, $10, 4
# was:	addi	_tmp_186_, _tmp_186_, 4
	add	$28, $28, $10
# was:	add	28, 28, _tmp_186_
	sw	$18, 0($16)
# was:	sw	_size_reg_179_, 0(_letBind_177_)
	addi	$20, $16, 4
# was:	addi	_arr2_reg_180_, _letBind_177_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_181_, 0, 0
	addi	$17, $17, 4
# was:	addi	_arr_reg_178_, _arr_reg_178_, 4
_loop_beg_183_:
	sub	$2, $19, $18
# was:	sub	_tmp_reg_182_, _i_reg_181_, _size_reg_179_
	bgez	$2, _loop_end_184_
# was:	bgez	_tmp_reg_182_, _loop_end_184_
	addi	$19, $19, 1
# was:	addi	_i_reg_181_, _i_reg_181_, 1
	lw	$2, 0($17)
# was:	lw	_tmp_reg_182_, 0(_arr_reg_178_)
	addi	$17, $17, 4
# was:	addi	_arr_reg_178_, _arr_reg_178_, 4
# 	ori	2,_tmp_reg_182_,0
	jal	mapper
# was:	jal	mapper, 2
# 	ori	_tmp_reg_185_,2,0
# 	ori	_tmp_reg_182_,_tmp_reg_185_,0
	sw	$2, 0($20)
# was:	sw	_tmp_reg_182_, 0(_arr2_reg_180_)
	addi	$20, $20, 4
# was:	addi	_arr2_reg_180_, _arr2_reg_180_, 4
	j	_loop_beg_183_
_loop_end_184_:
	ori	$11, $0, 4
# was:	ori	_size_reg_188_, 0, 4
	ori	$10, $28, 0
# was:	ori	_letBind_187_, 28, 0
	sll	$12, $11, 2
# was:	sll	_tmp_191_, _size_reg_188_, 2
	addi	$12, $12, 4
# was:	addi	_tmp_191_, _tmp_191_, 4
	add	$28, $28, $12
# was:	add	28, 28, _tmp_191_
	sw	$11, 0($10)
# was:	sw	_size_reg_188_, 0(_letBind_187_)
	addi	$11, $10, 4
# was:	addi	_addr_reg_189_, _letBind_187_, 4
	ori	$12, $0, 0
# was:	ori	_tmp_reg_190_, 0, 0
	sw	$12, 0($11)
# was:	sw	_tmp_reg_190_, 0(_addr_reg_189_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_189_, _addr_reg_189_, 4
	ori	$12, $0, 0
# was:	ori	_tmp_reg_190_, 0, 0
	sw	$12, 0($11)
# was:	sw	_tmp_reg_190_, 0(_addr_reg_189_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_189_, _addr_reg_189_, 4
	ori	$12, $0, 0
# was:	ori	_tmp_reg_190_, 0, 0
	sw	$12, 0($11)
# was:	sw	_tmp_reg_190_, 0(_addr_reg_189_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_189_, _addr_reg_189_, 4
	ori	$12, $0, 0
# was:	ori	_tmp_reg_190_, 0, 0
	sw	$12, 0($11)
# was:	sw	_tmp_reg_190_, 0(_addr_reg_189_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_189_, _addr_reg_189_, 4
	ori	$17, $16, 0
# was:	ori	_arr_reg_192_, _letBind_177_, 0
	lw	$16, 0($17)
# was:	lw	_size_reg_193_, 0(_arr_reg_192_)
# 	ori	_msspres_174_,_letBind_187_,0
	addi	$17, $17, 4
# was:	addi	_arr_reg_192_, _arr_reg_192_, 4
	ori	$18, $0, 0
# was:	ori	_ind_var_194_, 0, 0
_loop_beg_196_:
	sub	$3, $18, $16
# was:	sub	_tmp_reg_195_, _ind_var_194_, _size_reg_193_
	bgez	$3, _loop_end_197_
# was:	bgez	_tmp_reg_195_, _loop_end_197_
	lw	$3, 0($17)
# was:	lw	_tmp_reg_195_, 0(_arr_reg_192_)
	addi	$17, $17, 4
# was:	addi	_arr_reg_192_, _arr_reg_192_, 4
	ori	$2, $10, 0
# was:	ori	2, _msspres_174_, 0
# 	ori	3,_tmp_reg_195_,0
	jal	reducer
# was:	jal	reducer, 2 3
	ori	$10, $2, 0
# was:	ori	_tmp_reg_198_, 2, 0
# 	ori	_msspres_174_,_tmp_reg_198_,0
	addi	$18, $18, 1
# was:	addi	_ind_var_194_, _ind_var_194_, 1
	j	_loop_beg_196_
_loop_end_197_:
	ori	$2, $10, 0
# was:	ori	2, _msspres_174_, 0
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
	ori	$2, $0, 8
# was:	ori	_arg_201_, 0, 8
# 	ori	2,_arg_201_,0
	jal	mssp
# was:	jal	mssp, 2
	ori	$16, $2, 0
# was:	ori	_letBind_200_, 2, 0
	la	$2, _aaMSSPa_204_
# was:	la	_tmp_203_, _aaMSSPa_204_
# _aaMSSPa_204_: string "\n\nMSSP result is: "
# 	ori	_letBind_202_,_tmp_203_,0
# 	ori	2,_tmp_203_,0
	jal	putstring
# was:	jal	putstring, 2
	ori	$11, $0, 0
# was:	ori	_arr_ind_206_, 0, 0
	addi	$10, $16, 4
# was:	addi	_arr_reg_207_, _letBind_200_, 4
	lw	$12, 0($16)
# was:	lw	_size_reg_208_, 0(_letBind_200_)
	bgez	$11, _safe_lab_211_
# was:	bgez	_arr_ind_206_, _safe_lab_211_
_error_lab_210_:
	ori	$5, $0, 44
# was:	ori	5, 0, 44
	j	_IllegalArrSizeError_
_safe_lab_211_:
	sub	$12, $11, $12
# was:	sub	_tmp_reg_209_, _arr_ind_206_, _size_reg_208_
	bgez	$12, _error_lab_210_
# was:	bgez	_tmp_reg_209_, _error_lab_210_
	sll	$11, $11, 2
# was:	sll	_arr_ind_206_, _arr_ind_206_, 2
	add	$10, $10, $11
# was:	add	_arr_reg_207_, _arr_reg_207_, _arr_ind_206_
	lw	$16, 0($10)
# was:	lw	_tmp_205_, 0(_arr_reg_207_)
# 	ori	_mainres_199_,_tmp_205_,0
	ori	$2, $16, 0
# was:	ori	2, _mainres_199_, 0
	jal	putint
# was:	jal	putint, 2
	ori	$2, $16, 0
# was:	ori	2, _mainres_199_, 0
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
_aaMSSPa_204_:
	.space	4
	.asciiz	"\n\nMSSP result is: "
	.align	2
_aaa__st_55_:
	.space	4
	.asciiz	" }\n"
	.align	2
_aaa__st_42_:
	.space	4
	.asciiz	" { "
	.align	2
_a__str__14_:
	.space	4
	.asciiz	"\n"
	.align	2
_aa__str_10_:
	.space	4
	.asciiz	": "
	.align	2
_Introdu_5_:
	.space	4
	.asciiz	"Introduce number "
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