;******************************************************************************
;* TI ARM G3 C/C++ Codegen                                            PC v18.12.3.LTS *
;* Date/Time created: Wed Oct 30 15:50:55 2019                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=off --code_state=16 --diag_wrap=off --embedded_constants=on --endian=little --float_support=FPv4SPD16 --hll_source=on --object_format=elf --silicon_version=7M4 --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=on 
	.thumb

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../startup_ccs.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM G3 C/C++ Codegen PC v18.12.3.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\armst\workspace_v9_292\C00_Blank\Debug")
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("__STACK_TOP")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("__STACK_TOP")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../startup_ccs.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x34)
	.dwattr $C$DW$1, DW_AT_decl_column(0x11)

	.global	g_pfnVectors
	.sect	".intvecs"
	.align	4
	.elfsym	g_pfnVectors,SYM_SIZE(620)
g_pfnVectors:
	.bits	__STACK_TOP,32		; g_pfnVectors[0] @ 0
	.bits	ResetISR,32		; g_pfnVectors[1] @ 32
	.bits	NmiSR,32		; g_pfnVectors[2] @ 64
	.bits	FaultISR,32		; g_pfnVectors[3] @ 96
	.bits	IntDefaultHandler,32		; g_pfnVectors[4] @ 128
	.bits	IntDefaultHandler,32		; g_pfnVectors[5] @ 160
	.bits	IntDefaultHandler,32		; g_pfnVectors[6] @ 192
	.bits		0,32
			; g_pfnVectors[7] @ 224
	.bits		0,32
			; g_pfnVectors[8] @ 256
	.bits		0,32
			; g_pfnVectors[9] @ 288
	.bits		0,32
			; g_pfnVectors[10] @ 320
	.bits	IntDefaultHandler,32		; g_pfnVectors[11] @ 352
	.bits	IntDefaultHandler,32		; g_pfnVectors[12] @ 384
	.bits		0,32
			; g_pfnVectors[13] @ 416
	.bits	IntDefaultHandler,32		; g_pfnVectors[14] @ 448
	.bits	IntDefaultHandler,32		; g_pfnVectors[15] @ 480
	.bits	IntDefaultHandler,32		; g_pfnVectors[16] @ 512
	.bits	IntDefaultHandler,32		; g_pfnVectors[17] @ 544
	.bits	IntDefaultHandler,32		; g_pfnVectors[18] @ 576
	.bits	IntDefaultHandler,32		; g_pfnVectors[19] @ 608
	.bits	IntDefaultHandler,32		; g_pfnVectors[20] @ 640
	.bits	IntDefaultHandler,32		; g_pfnVectors[21] @ 672
	.bits	IntDefaultHandler,32		; g_pfnVectors[22] @ 704
	.bits	IntDefaultHandler,32		; g_pfnVectors[23] @ 736
	.bits	IntDefaultHandler,32		; g_pfnVectors[24] @ 768
	.bits	IntDefaultHandler,32		; g_pfnVectors[25] @ 800
	.bits	IntDefaultHandler,32		; g_pfnVectors[26] @ 832
	.bits	IntDefaultHandler,32		; g_pfnVectors[27] @ 864
	.bits	IntDefaultHandler,32		; g_pfnVectors[28] @ 896
	.bits	IntDefaultHandler,32		; g_pfnVectors[29] @ 928
	.bits	IntDefaultHandler,32		; g_pfnVectors[30] @ 960
	.bits	IntDefaultHandler,32		; g_pfnVectors[31] @ 992
	.bits	IntDefaultHandler,32		; g_pfnVectors[32] @ 1024
	.bits	IntDefaultHandler,32		; g_pfnVectors[33] @ 1056
	.bits	IntDefaultHandler,32		; g_pfnVectors[34] @ 1088
	.bits	IntDefaultHandler,32		; g_pfnVectors[35] @ 1120
	.bits	IntDefaultHandler,32		; g_pfnVectors[36] @ 1152
	.bits	IntDefaultHandler,32		; g_pfnVectors[37] @ 1184
	.bits	IntDefaultHandler,32		; g_pfnVectors[38] @ 1216
	.bits	IntDefaultHandler,32		; g_pfnVectors[39] @ 1248
	.bits	IntDefaultHandler,32		; g_pfnVectors[40] @ 1280
	.bits	IntDefaultHandler,32		; g_pfnVectors[41] @ 1312
	.bits	IntDefaultHandler,32		; g_pfnVectors[42] @ 1344
	.bits	IntDefaultHandler,32		; g_pfnVectors[43] @ 1376
	.bits	IntDefaultHandler,32		; g_pfnVectors[44] @ 1408
	.bits	IntDefaultHandler,32		; g_pfnVectors[45] @ 1440
	.bits	IntDefaultHandler,32		; g_pfnVectors[46] @ 1472
	.bits	IntDefaultHandler,32		; g_pfnVectors[47] @ 1504
	.bits	IntDefaultHandler,32		; g_pfnVectors[48] @ 1536
	.bits	IntDefaultHandler,32		; g_pfnVectors[49] @ 1568
	.bits	IntDefaultHandler,32		; g_pfnVectors[50] @ 1600
	.bits	IntDefaultHandler,32		; g_pfnVectors[51] @ 1632
	.bits	IntDefaultHandler,32		; g_pfnVectors[52] @ 1664
	.bits	IntDefaultHandler,32		; g_pfnVectors[53] @ 1696
	.bits	IntDefaultHandler,32		; g_pfnVectors[54] @ 1728
	.bits	IntDefaultHandler,32		; g_pfnVectors[55] @ 1760
	.bits	IntDefaultHandler,32		; g_pfnVectors[56] @ 1792
	.bits		0,32
			; g_pfnVectors[57] @ 1824
	.bits		0,32
			; g_pfnVectors[58] @ 1856
	.bits	IntDefaultHandler,32		; g_pfnVectors[59] @ 1888
	.bits	IntDefaultHandler,32		; g_pfnVectors[60] @ 1920
	.bits	IntDefaultHandler,32		; g_pfnVectors[61] @ 1952
	.bits	IntDefaultHandler,32		; g_pfnVectors[62] @ 1984
	.bits	IntDefaultHandler,32		; g_pfnVectors[63] @ 2016
	.bits	IntDefaultHandler,32		; g_pfnVectors[64] @ 2048
	.bits	IntDefaultHandler,32		; g_pfnVectors[65] @ 2080
	.bits	IntDefaultHandler,32		; g_pfnVectors[66] @ 2112
	.bits	IntDefaultHandler,32		; g_pfnVectors[67] @ 2144
	.bits		0,32
			; g_pfnVectors[68] @ 2176
	.bits		0,32
			; g_pfnVectors[69] @ 2208
	.bits	IntDefaultHandler,32		; g_pfnVectors[70] @ 2240
	.bits	IntDefaultHandler,32		; g_pfnVectors[71] @ 2272
	.bits	IntDefaultHandler,32		; g_pfnVectors[72] @ 2304
	.bits	IntDefaultHandler,32		; g_pfnVectors[73] @ 2336
	.bits	IntDefaultHandler,32		; g_pfnVectors[74] @ 2368
	.bits	IntDefaultHandler,32		; g_pfnVectors[75] @ 2400
	.bits	IntDefaultHandler,32		; g_pfnVectors[76] @ 2432
	.bits	IntDefaultHandler,32		; g_pfnVectors[77] @ 2464
	.bits	IntDefaultHandler,32		; g_pfnVectors[78] @ 2496
	.bits	IntDefaultHandler,32		; g_pfnVectors[79] @ 2528
	.bits		0,32
			; g_pfnVectors[80] @ 2560
	.bits		0,32
			; g_pfnVectors[81] @ 2592
	.bits		0,32
			; g_pfnVectors[82] @ 2624
	.bits		0,32
			; g_pfnVectors[83] @ 2656
	.bits	IntDefaultHandler,32		; g_pfnVectors[84] @ 2688
	.bits	IntDefaultHandler,32		; g_pfnVectors[85] @ 2720
	.bits	IntDefaultHandler,32		; g_pfnVectors[86] @ 2752
	.bits	IntDefaultHandler,32		; g_pfnVectors[87] @ 2784
	.bits		0,32
			; g_pfnVectors[88] @ 2816
	.bits		0,32
			; g_pfnVectors[89] @ 2848
	.bits		0,32
			; g_pfnVectors[90] @ 2880
	.bits		0,32
			; g_pfnVectors[91] @ 2912
	.bits		0,32
			; g_pfnVectors[92] @ 2944
	.bits		0,32
			; g_pfnVectors[93] @ 2976
	.bits		0,32
			; g_pfnVectors[94] @ 3008
	.bits		0,32
			; g_pfnVectors[95] @ 3040
	.bits		0,32
			; g_pfnVectors[96] @ 3072
	.bits		0,32
			; g_pfnVectors[97] @ 3104
	.bits		0,32
			; g_pfnVectors[98] @ 3136
	.bits		0,32
			; g_pfnVectors[99] @ 3168
	.bits		0,32
			; g_pfnVectors[100] @ 3200
	.bits		0,32
			; g_pfnVectors[101] @ 3232
	.bits		0,32
			; g_pfnVectors[102] @ 3264
	.bits		0,32
			; g_pfnVectors[103] @ 3296
	.bits		0,32
			; g_pfnVectors[104] @ 3328
	.bits		0,32
			; g_pfnVectors[105] @ 3360
	.bits		0,32
			; g_pfnVectors[106] @ 3392
	.bits		0,32
			; g_pfnVectors[107] @ 3424
	.bits	IntDefaultHandler,32		; g_pfnVectors[108] @ 3456
	.bits	IntDefaultHandler,32		; g_pfnVectors[109] @ 3488
	.bits	IntDefaultHandler,32		; g_pfnVectors[110] @ 3520
	.bits	IntDefaultHandler,32		; g_pfnVectors[111] @ 3552
	.bits	IntDefaultHandler,32		; g_pfnVectors[112] @ 3584
	.bits	IntDefaultHandler,32		; g_pfnVectors[113] @ 3616
	.bits	IntDefaultHandler,32		; g_pfnVectors[114] @ 3648
	.bits	IntDefaultHandler,32		; g_pfnVectors[115] @ 3680
	.bits	IntDefaultHandler,32		; g_pfnVectors[116] @ 3712
	.bits	IntDefaultHandler,32		; g_pfnVectors[117] @ 3744
	.bits	IntDefaultHandler,32		; g_pfnVectors[118] @ 3776
	.bits	IntDefaultHandler,32		; g_pfnVectors[119] @ 3808
	.bits	IntDefaultHandler,32		; g_pfnVectors[120] @ 3840
	.bits	IntDefaultHandler,32		; g_pfnVectors[121] @ 3872
	.bits	IntDefaultHandler,32		; g_pfnVectors[122] @ 3904
	.bits		0,32
			; g_pfnVectors[123] @ 3936
	.bits		0,32
			; g_pfnVectors[124] @ 3968
	.bits	IntDefaultHandler,32		; g_pfnVectors[125] @ 4000
	.bits	IntDefaultHandler,32		; g_pfnVectors[126] @ 4032
	.bits	IntDefaultHandler,32		; g_pfnVectors[127] @ 4064
	.bits	IntDefaultHandler,32		; g_pfnVectors[128] @ 4096
	.bits	IntDefaultHandler,32		; g_pfnVectors[129] @ 4128
	.bits		0,32
			; g_pfnVectors[130] @ 4160
	.bits		0,32
			; g_pfnVectors[131] @ 4192
	.bits	IntDefaultHandler,32		; g_pfnVectors[132] @ 4224
	.bits	IntDefaultHandler,32		; g_pfnVectors[133] @ 4256
	.bits	IntDefaultHandler,32		; g_pfnVectors[134] @ 4288
	.bits	IntDefaultHandler,32		; g_pfnVectors[135] @ 4320
	.bits	IntDefaultHandler,32		; g_pfnVectors[136] @ 4352
	.bits	IntDefaultHandler,32		; g_pfnVectors[137] @ 4384
	.bits	IntDefaultHandler,32		; g_pfnVectors[138] @ 4416
	.bits	IntDefaultHandler,32		; g_pfnVectors[139] @ 4448
	.bits	IntDefaultHandler,32		; g_pfnVectors[140] @ 4480
	.bits	IntDefaultHandler,32		; g_pfnVectors[141] @ 4512
	.bits	IntDefaultHandler,32		; g_pfnVectors[142] @ 4544
	.bits	IntDefaultHandler,32		; g_pfnVectors[143] @ 4576
	.bits	IntDefaultHandler,32		; g_pfnVectors[144] @ 4608
	.bits	IntDefaultHandler,32		; g_pfnVectors[145] @ 4640
	.bits	IntDefaultHandler,32		; g_pfnVectors[146] @ 4672
	.bits	IntDefaultHandler,32		; g_pfnVectors[147] @ 4704
	.bits	IntDefaultHandler,32		; g_pfnVectors[148] @ 4736
	.bits	IntDefaultHandler,32		; g_pfnVectors[149] @ 4768
	.bits	IntDefaultHandler,32		; g_pfnVectors[150] @ 4800
	.bits	IntDefaultHandler,32		; g_pfnVectors[151] @ 4832
	.bits	IntDefaultHandler,32		; g_pfnVectors[152] @ 4864
	.bits	IntDefaultHandler,32		; g_pfnVectors[153] @ 4896
	.bits	IntDefaultHandler,32		; g_pfnVectors[154] @ 4928

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("g_pfnVectors")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("g_pfnVectors")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr g_pfnVectors]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("../startup_ccs.c")
	.dwattr $C$DW$2, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$2, DW_AT_decl_column(0x0f)

;	C:\ti\ccs920\ccs\tools\compiler\ti-cgt-arm_18.12.3.LTS\bin\armopt.exe C:\\Users\\armst\\AppData\\Local\\Temp\\{2CD97AE2-DA5D-4474-9E27-FCCE8F161FF4} C:\\Users\\armst\\AppData\\Local\\Temp\\{E834234B-F864-4D54-9DCF-1FCBE791C6C9} 
	.sect	".text:ResetISR"
	.clink
	.thumbfunc ResetISR
	.thumb
	.global	ResetISR

$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("ResetISR")
	.dwattr $C$DW$3, DW_AT_low_pc(ResetISR)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("ResetISR")
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_TI_begin_file("../startup_ccs.c")
	.dwattr $C$DW$3, DW_AT_TI_begin_line(0xe9)
	.dwattr $C$DW$3, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$3, DW_AT_decl_file("../startup_ccs.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccs.c",line 234,column 1,is_stmt,address ResetISR,isa 1

	.dwfde $C$DW$CIE, ResetISR

;*****************************************************************************
;* FUNCTION NAME: ResetISR                                                   *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         : LR                                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
ResetISR:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
    .global _c_int00
    b.w     _c_int00
$C$DW$4	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$4, DW_AT_low_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_return

        BX        LR                    ; [DPU_V7M3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$3, DW_AT_TI_end_file("../startup_ccs.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0xf1)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text:NmiSR"
	.clink
	.thumbfunc NmiSR
	.thumb

$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("NmiSR")
	.dwattr $C$DW$5, DW_AT_low_pc(NmiSR)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("NmiSR")
	.dwattr $C$DW$5, DW_AT_TI_begin_file("../startup_ccs.c")
	.dwattr $C$DW$5, DW_AT_TI_begin_line(0xfb)
	.dwattr $C$DW$5, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$5, DW_AT_decl_file("../startup_ccs.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$5, DW_AT_decl_column(0x01)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccs.c",line 252,column 1,is_stmt,address NmiSR,isa 1

	.dwfde $C$DW$CIE, NmiSR

;*****************************************************************************
;* FUNCTION NAME: NmiSR                                                      *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
NmiSR:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L1||
;*
;*   Loop source line                : 256
;*   Loop closing brace source line  : 258
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L1||:    
	.dwpsn	file "../startup_ccs.c",line 256,column 11,is_stmt,isa 1
        B         ||$C$L1||             ; [DPU_V7M3_PIPE] |256| 
        ; BRANCH OCCURS {||$C$L1||}      ; [] |256| 
	.dwattr $C$DW$5, DW_AT_TI_end_file("../startup_ccs.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x103)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5

	.sect	".text:IntDefaultHandler"
	.clink
	.thumbfunc IntDefaultHandler
	.thumb

$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("IntDefaultHandler")
	.dwattr $C$DW$6, DW_AT_low_pc(IntDefaultHandler)
	.dwattr $C$DW$6, DW_AT_high_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("IntDefaultHandler")
	.dwattr $C$DW$6, DW_AT_TI_begin_file("../startup_ccs.c")
	.dwattr $C$DW$6, DW_AT_TI_begin_line(0x11f)
	.dwattr $C$DW$6, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$6, DW_AT_decl_file("../startup_ccs.c")
	.dwattr $C$DW$6, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$6, DW_AT_decl_column(0x01)
	.dwattr $C$DW$6, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccs.c",line 288,column 1,is_stmt,address IntDefaultHandler,isa 1

	.dwfde $C$DW$CIE, IntDefaultHandler

;*****************************************************************************
;* FUNCTION NAME: IntDefaultHandler                                          *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
IntDefaultHandler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L2||
;*
;*   Loop source line                : 292
;*   Loop closing brace source line  : 294
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L2||:    
	.dwpsn	file "../startup_ccs.c",line 292,column 11,is_stmt,isa 1
        B         ||$C$L2||             ; [DPU_V7M3_PIPE] |292| 
        ; BRANCH OCCURS {||$C$L2||}      ; [] |292| 
	.dwattr $C$DW$6, DW_AT_TI_end_file("../startup_ccs.c")
	.dwattr $C$DW$6, DW_AT_TI_end_line(0x127)
	.dwattr $C$DW$6, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$6

	.sect	".text:FaultISR"
	.clink
	.thumbfunc FaultISR
	.thumb

$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("FaultISR")
	.dwattr $C$DW$7, DW_AT_low_pc(FaultISR)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("FaultISR")
	.dwattr $C$DW$7, DW_AT_TI_begin_file("../startup_ccs.c")
	.dwattr $C$DW$7, DW_AT_TI_begin_line(0x10d)
	.dwattr $C$DW$7, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$7, DW_AT_decl_file("../startup_ccs.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$7, DW_AT_decl_column(0x01)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../startup_ccs.c",line 270,column 1,is_stmt,address FaultISR,isa 1

	.dwfde $C$DW$CIE, FaultISR

;*****************************************************************************
;* FUNCTION NAME: FaultISR                                                   *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         :                                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
FaultISR:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L3||
;*
;*   Loop source line                : 274
;*   Loop closing brace source line  : 276
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L3||:    
	.dwpsn	file "../startup_ccs.c",line 274,column 11,is_stmt,isa 1
        B         ||$C$L3||             ; [DPU_V7M3_PIPE] |274| 
        ; BRANCH OCCURS {||$C$L3||}      ; [] |274| 
	.dwattr $C$DW$7, DW_AT_TI_end_file("../startup_ccs.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x115)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	__STACK_TOP

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "TI", Tag_File, 1, Tag_LPM_INFO(1)
	.battr "TI", Tag_File, 1, Tag_PORTS_INIT_INFO("012345678901ABCDEFGHIJ00000000000000000000000000000000000000000000")
	.battr "aeabi", Tag_File, 1, Tag_ABI_PCS_wchar_t(2)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_rounding(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_denormal(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_exceptions(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_number_model(1)
	.battr "aeabi", Tag_File, 1, Tag_ABI_enum_size(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_optimization_goals(4)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_optimization_goals(0)
	.battr "TI", Tag_File, 1, Tag_Bitfield_layout(2)
	.battr "aeabi", Tag_File, 1, Tag_ABI_VFP_args(3)
	.battr "TI", Tag_File, 1, Tag_FP_interface(1)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x10)
$C$DW$8	.dwtag  DW_TAG_member
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$8, DW_AT_name("__max_align1")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("__max_align1")
	.dwattr $C$DW$8, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$8, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$8, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$8, DW_AT_decl_column(0x0c)

$C$DW$9	.dwtag  DW_TAG_member
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$9, DW_AT_name("__max_align2")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("__max_align2")
	.dwattr $C$DW$9, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$9, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$9, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$9, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$21

$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("__max_align_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x03)

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)


$C$DW$T$24	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwendtag $C$DW$T$24

$C$DW$T$25	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_address_class(0x20)

$C$DW$T$26	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)


$C$DW$T$27	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x26c)
$C$DW$10	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$10, DW_AT_upper_bound(0x9a)

	.dwendtag $C$DW$T$27

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("__int8_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$28, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x16)

$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("__int_least8_t")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$29, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x12)

$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x28)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x19)

$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("int8_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x13)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("__uint8_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x18)

$C$DW$T$33	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$33, DW_AT_name("__sa_family_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x13)

$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("__uint_least8_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x13)

$C$DW$T$35	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$35, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x1a)

$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x14)

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)

$C$DW$T$37	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$37, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x11)

$C$DW$T$38	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$38, DW_AT_name("__int_least16_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x13)

$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$39, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x1a)

$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("int16_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x14)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)

$C$DW$T$41	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$41, DW_AT_name("___wchar_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x1a)

$C$DW$T$42	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$42, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x19)

$C$DW$T$43	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$43, DW_AT_name("__mode_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x14)

$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("__uint_least16_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x14)

$C$DW$T$45	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$45, DW_AT_name("__char16_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x1a)

$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x1a)

$C$DW$T$47	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$47, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x15)

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)

$C$DW$T$48	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$48, DW_AT_name("_Mbstatet")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x0d)

$C$DW$T$49	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$49, DW_AT_name("__mbstate_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x91)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x13)

$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("__accmode_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x0e)

$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("__cpulevel_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x0e)

$C$DW$T$52	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$52, DW_AT_name("__cpusetid_t")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x0e)

$C$DW$T$53	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$53, DW_AT_name("__cpuwhich_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x0e)

$C$DW$T$54	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$54, DW_AT_name("__ct_rune_t")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x0e)

$C$DW$T$55	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$55, DW_AT_name("__rune_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x15)

$C$DW$T$56	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$56, DW_AT_name("__wint_t")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$56, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x15)

$C$DW$T$57	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$57, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x0f)

$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("__blksize_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x13)

$C$DW$T$59	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$59, DW_AT_name("__clockid_t")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x13)

$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("__critical_t")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x13)

$C$DW$T$61	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$61, DW_AT_name("__int_fast16_t")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x55)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x13)

$C$DW$T$62	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$62, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x19)

$C$DW$T$63	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$63, DW_AT_name("__int_fast32_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x13)

$C$DW$T$64	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$64, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$64, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x19)

$C$DW$T$65	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$65, DW_AT_name("__int_fast8_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$65, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x13)

$C$DW$T$66	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$66, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$66, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x18)

$C$DW$T$67	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$67, DW_AT_name("__int_least32_t")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$67, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x13)

$C$DW$T$68	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$68, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x1a)

$C$DW$T$69	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$69, DW_AT_name("__intfptr_t")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$69, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x13)

$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("__intptr_t")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$70, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x13)

$C$DW$T$71	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$71, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$71, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x15)

$C$DW$T$72	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$72, DW_AT_name("__lwpid_t")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$72, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x13)

$C$DW$T$73	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$73, DW_AT_name("__pid_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$73, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x13)

$C$DW$T$74	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$74, DW_AT_name("__ptrdiff_t")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$74, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x13)

$C$DW$T$75	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$75, DW_AT_name("__register_t")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$75, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x13)

$C$DW$T$76	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$76, DW_AT_name("__segsz_t")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$76, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x13)

$C$DW$T$77	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$77, DW_AT_name("__ssize_t")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$77, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x13)

$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("int32_t")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$78, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x14)

$C$DW$T$79	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$79, DW_AT_name("__nl_item")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$79, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x0e)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)

$C$DW$T$80	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$80, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$80, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x17)

$C$DW$T$81	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$81, DW_AT_name("__clock_t")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$81, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x14)

$C$DW$T$82	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$82, DW_AT_name("__fflags_t")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$82, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x14)

$C$DW$T$83	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$83, DW_AT_name("__fixpt_t")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$83, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x14)

$C$DW$T$84	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$84, DW_AT_name("__gid_t")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$84, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x14)

$C$DW$T$85	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$85, DW_AT_name("__size_t")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$85, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x14)

$C$DW$T$86	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$86, DW_AT_name("__socklen_t")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$86, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x14)

$C$DW$T$87	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$87, DW_AT_name("__time_t")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$87, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x19)

$C$DW$T$88	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$88, DW_AT_name("__u_register_t")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$88, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x14)

$C$DW$T$89	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$89, DW_AT_name("__uid_t")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$89, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x14)

$C$DW$T$90	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$90, DW_AT_name("__uint_fast16_t")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$90, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x14)

$C$DW$T$91	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$91, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$91, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x1a)

$C$DW$T$92	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$92, DW_AT_name("__uint_fast32_t")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$92, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x14)

$C$DW$T$93	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$93, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$93, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x1a)

$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("__uint_fast8_t")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$94, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x14)

$C$DW$T$95	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$95, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$95, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x19)

$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("__uint_least32_t")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$96, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x14)

$C$DW$T$97	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$97, DW_AT_name("__char32_t")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$97, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x1a)

$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$98, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x1a)

$C$DW$T$99	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$99, DW_AT_name("__uintfptr_t")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$99, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x14)

$C$DW$T$100	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$100, DW_AT_name("__uintptr_t")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$100, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x14)

$C$DW$T$101	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$101, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$101, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x16)

$C$DW$T$102	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$102, DW_AT_name("__vm_offset_t")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$102, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x14)

$C$DW$T$103	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$103, DW_AT_name("__vm_paddr_t")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$103, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x73)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x14)

$C$DW$T$104	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$104, DW_AT_name("__vm_size_t")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$104, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0x74)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x14)

$C$DW$T$105	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$105, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$105, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x15)

$C$DW$T$107	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$107, DW_AT_name("__useconds_t")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$107, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x16)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)

$C$DW$T$108	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$108, DW_AT_name("__key_t")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$108, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x0f)

$C$DW$T$109	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$109, DW_AT_name("__suseconds_t")
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$109, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$109, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x0f)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)

$C$DW$T$110	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$110, DW_AT_name("__int64_t")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$110, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x14)

$C$DW$T$111	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$111, DW_AT_name("__blkcnt_t")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$111, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$111, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x13)

$C$DW$T$112	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$112, DW_AT_name("__id_t")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$112, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x13)

$C$DW$T$113	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$113, DW_AT_name("__int_fast64_t")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$113, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x13)

$C$DW$T$114	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$114, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$114, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x19)

$C$DW$T$115	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$115, DW_AT_name("__int_least64_t")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$115, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x13)

$C$DW$T$116	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$116, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$116, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x1a)

$C$DW$T$117	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$117, DW_AT_name("__intmax_t")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$117, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x13)

$C$DW$T$118	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$118, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$T$118, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$118, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x15)

$C$DW$T$119	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$119, DW_AT_name("__off64_t")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$119, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x13)

$C$DW$T$120	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$120, DW_AT_name("__off_t")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$120, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$120, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x13)

$C$DW$T$121	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$121, DW_AT_name("__rlim_t")
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$121, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$121, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$121, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$121, DW_AT_decl_column(0x13)

$C$DW$T$122	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$122, DW_AT_name("int64_t")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$122, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$122, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$122, DW_AT_decl_column(0x14)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)

$C$DW$T$123	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$123, DW_AT_name("__uint64_t")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$123, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$123, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$123, DW_AT_decl_column(0x1c)

$C$DW$T$124	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$124, DW_AT_name("__dev_t")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$124, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x14)

$C$DW$T$125	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$125, DW_AT_name("__fsblkcnt_t")
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$125, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$125, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$125, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$125, DW_AT_decl_column(0x14)

$C$DW$T$126	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$126, DW_AT_name("__fsfilcnt_t")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$126, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x14)

$C$DW$T$127	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$127, DW_AT_name("__ino_t")
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$127, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$127, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$127, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$127, DW_AT_decl_column(0x14)

$C$DW$T$128	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$128, DW_AT_name("__nlink_t")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$128, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x14)

$C$DW$T$129	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$129, DW_AT_name("__uint_fast64_t")
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$129, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$129, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$129, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$129, DW_AT_decl_column(0x14)

$C$DW$T$130	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$130, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$130, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$130, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x1a)

$C$DW$T$131	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$131, DW_AT_name("__uint_least64_t")
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$131, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$131, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$131, DW_AT_decl_column(0x14)

$C$DW$T$132	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$132, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$T$132, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$132, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$132, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$132, DW_AT_decl_column(0x1a)

$C$DW$T$133	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$133, DW_AT_name("__uintmax_t")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$133, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$133, DW_AT_decl_line(0x67)
	.dwattr $C$DW$T$133, DW_AT_decl_column(0x14)

$C$DW$T$134	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$134, DW_AT_name("__rman_res_t")
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$134, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$134, DW_AT_decl_line(0x99)
	.dwattr $C$DW$T$134, DW_AT_decl_column(0x19)

$C$DW$T$135	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$135, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$135, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$135, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$135, DW_AT_decl_column(0x16)

$C$DW$T$136	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$136, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$136, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$136, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$136, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$136, DW_AT_decl_column(0x15)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)

$C$DW$T$137	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$137, DW_AT_name("__float_t")
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$137, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$137, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$137, DW_AT_decl_column(0x10)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)

$C$DW$T$138	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$138, DW_AT_name("__double_t")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$138, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$138, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$138, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$138, DW_AT_decl_column(0x11)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)


$C$DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$19, DW_AT_name("__mq")
	.dwattr $C$DW$T$19, DW_AT_declaration
	.dwattr $C$DW$T$19, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$19

$C$DW$T$139	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$139, DW_AT_address_class(0x20)

$C$DW$T$140	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$140, DW_AT_name("__mqd_t")
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$T$140, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$140, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$140, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$140, DW_AT_decl_column(0x16)


$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("__timer")
	.dwattr $C$DW$T$20, DW_AT_declaration
	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

$C$DW$T$141	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$141, DW_AT_address_class(0x20)

$C$DW$T$142	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$142, DW_AT_name("__timer_t")
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$142, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$142, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$142, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$142, DW_AT_decl_column(0x19)


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("__va_list_t")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x04)
$C$DW$11	.dwtag  DW_TAG_member
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$11, DW_AT_name("__ap")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("__ap")
	.dwattr $C$DW$11, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$11, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$11, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$11, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$22, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$22

$C$DW$T$143	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$143, DW_AT_name("__va_list")
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$143, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$143, DW_AT_decl_file("C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$143, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$T$143, DW_AT_decl_column(0x03)

	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 14
	.dwcfi	cfa_register, 13
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 4
	.dwcfi	same_value, 5
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	same_value, 80
	.dwcfi	same_value, 81
	.dwcfi	same_value, 82
	.dwcfi	same_value, 83
	.dwcfi	same_value, 84
	.dwcfi	same_value, 85
	.dwcfi	same_value, 86
	.dwcfi	same_value, 87
	.dwcfi	same_value, 88
	.dwcfi	same_value, 89
	.dwcfi	same_value, 90
	.dwcfi	same_value, 91
	.dwcfi	same_value, 92
	.dwcfi	same_value, 93
	.dwcfi	same_value, 94
	.dwcfi	same_value, 95
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$12	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$12, DW_AT_name("A1")
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg0]

$C$DW$13	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$13, DW_AT_name("A2")
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg1]

$C$DW$14	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$14, DW_AT_name("A3")
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg2]

$C$DW$15	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$15, DW_AT_name("A4")
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg3]

$C$DW$16	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$16, DW_AT_name("V1")
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg4]

$C$DW$17	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$17, DW_AT_name("V2")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg5]

$C$DW$18	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$18, DW_AT_name("V3")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg6]

$C$DW$19	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$19, DW_AT_name("V4")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg7]

$C$DW$20	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$20, DW_AT_name("V5")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg8]

$C$DW$21	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$21, DW_AT_name("V6")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg9]

$C$DW$22	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$22, DW_AT_name("V7")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg10]

$C$DW$23	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$23, DW_AT_name("V8")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg11]

$C$DW$24	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$24, DW_AT_name("V9")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg12]

$C$DW$25	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$25, DW_AT_name("SP")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg13]

$C$DW$26	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$26, DW_AT_name("LR")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg14]

$C$DW$27	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$27, DW_AT_name("PC")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg15]

$C$DW$28	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$28, DW_AT_name("SR")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg17]

$C$DW$29	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$29, DW_AT_name("AP")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg7]

$C$DW$30	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$30, DW_AT_name("D0")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_regx 0x40]

$C$DW$31	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$31, DW_AT_name("D0_hi")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_regx 0x41]

$C$DW$32	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$32, DW_AT_name("D1")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_regx 0x42]

$C$DW$33	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$33, DW_AT_name("D1_hi")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_regx 0x43]

$C$DW$34	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$34, DW_AT_name("D2")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_regx 0x44]

$C$DW$35	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$35, DW_AT_name("D2_hi")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_regx 0x45]

$C$DW$36	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$36, DW_AT_name("D3")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_regx 0x46]

$C$DW$37	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$37, DW_AT_name("D3_hi")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_regx 0x47]

$C$DW$38	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$38, DW_AT_name("D4")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_regx 0x48]

$C$DW$39	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$39, DW_AT_name("D4_hi")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_regx 0x49]

$C$DW$40	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$40, DW_AT_name("D5")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$41	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$41, DW_AT_name("D5_hi")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_regx 0x4b]

$C$DW$42	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$42, DW_AT_name("D6")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$43	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$43, DW_AT_name("D6_hi")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$44	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$44, DW_AT_name("D7")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$45	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$45, DW_AT_name("D7_hi")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_regx 0x4f]

$C$DW$46	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$46, DW_AT_name("D8")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_regx 0x50]

$C$DW$47	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$47, DW_AT_name("D8_hi")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_regx 0x51]

$C$DW$48	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$48, DW_AT_name("D9")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_regx 0x52]

$C$DW$49	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$49, DW_AT_name("D9_hi")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_regx 0x53]

$C$DW$50	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$50, DW_AT_name("D10")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_regx 0x54]

$C$DW$51	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$51, DW_AT_name("D10_hi")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_regx 0x55]

$C$DW$52	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$52, DW_AT_name("D11")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_regx 0x56]

$C$DW$53	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$53, DW_AT_name("D11_hi")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_regx 0x57]

$C$DW$54	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$54, DW_AT_name("D12")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_regx 0x58]

$C$DW$55	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$55, DW_AT_name("D12_hi")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_regx 0x59]

$C$DW$56	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$56, DW_AT_name("D13")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_regx 0x5a]

$C$DW$57	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$57, DW_AT_name("D13_hi")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_regx 0x5b]

$C$DW$58	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$58, DW_AT_name("D14")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_regx 0x5c]

$C$DW$59	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$59, DW_AT_name("D14_hi")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_regx 0x5d]

$C$DW$60	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$60, DW_AT_name("D15")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_regx 0x5e]

$C$DW$61	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$61, DW_AT_name("D15_hi")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_regx 0x5f]

$C$DW$62	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$62, DW_AT_name("FPEXC")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg18]

$C$DW$63	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$63, DW_AT_name("FPSCR")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU

