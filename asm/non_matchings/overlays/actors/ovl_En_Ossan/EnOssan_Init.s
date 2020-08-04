.rdata
glabel D_80AC8EF0
    .asciz "コキリの店  "
    .balign 4

glabel D_80AC8F00
    .asciz "薬屋        "
    .balign 4

glabel D_80AC8F10
    .asciz "夜の店      "
    .balign 4

glabel D_80AC8F20
    .asciz "路地裏の店  "
    .balign 4

glabel D_80AC8F30
    .asciz "盾の店      "
    .balign 4

glabel D_80AC8F40
    .asciz "大人の店    "
    .balign 4

glabel D_80AC8F50
    .asciz "タロンの店  "
    .balign 4

glabel D_80AC8F60
    .asciz "ゾーラの店  "
    .balign 4

glabel D_80AC8F70
    .asciz "ゴロン夜の店"
    .balign 4

glabel D_80AC8F80
    .asciz "インゴーの店"
    .balign 4

glabel D_80AC8F90
    .asciz "お面屋      "
    .balign 4

glabel D_80AC8FA0
    .asciz "\x1b[41;37m"
    .balign 4

glabel D_80AC8FAC
    .asciz "引数がおかしいよ(arg_data=%d)！！\n"
    .balign 4

glabel D_80AC8FD0
    .asciz "\x1b[m"
    .balign 4

glabel D_80AC8FD4
    .asciz "0"
    .balign 4

glabel D_80AC8FD8
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC8FE8
    .asciz "\x1b[41;37m"
    .balign 4

glabel D_80AC8FF4
    .asciz "バンクが無いよ！！(%s)\n"
    .balign 4

glabel D_80AC900C
    .asciz "\x1b[m"
    .balign 4

glabel D_80AC9010
    .asciz "0"
    .balign 4

glabel D_80AC9014
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC9024
    .asciz "\x1b[41;37m"
    .balign 4

glabel D_80AC9030
    .asciz "予備バンクが無いよ！！(%s)\n"
    .balign 4

glabel D_80AC904C
    .asciz "\x1b[m"
    .balign 4

glabel D_80AC9050
    .asciz "0"
    .balign 4

glabel D_80AC9054
    .asciz "../z_en_oB1.c"
    .balign 4

.text
glabel EnOssan_Init
/* 007D0 80AC3470 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 007D4 80AC3474 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 007D8 80AC3478 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 007DC 80AC347C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 007E0 80AC3480 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 007E4 80AC3484 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 007E8 80AC3488 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
/* 007EC 80AC348C 14E3000D */  bne     $a3, $v1, .L80AC34C4       
/* 007F0 80AC3490 3C048016 */  lui     $a0, %hi(gSaveContext)
/* 007F4 80AC3494 2484E660 */  addiu   $a0, %lo(gSaveContext)
/* 007F8 80AC3498 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 8015E664
/* 007FC 80AC349C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00800 80AC34A0 24020011 */  addiu   $v0, $zero, 0x0011         ## $v0 = 00000011
/* 00804 80AC34A4 11C00003 */  beq     $t6, $zero, .L80AC34B4     
/* 00808 80AC34A8 240F0009 */  addiu   $t7, $zero, 0x0009         ## $t7 = 00000009
/* 0080C 80AC34AC 10000001 */  beq     $zero, $zero, .L80AC34B4   
/* 00810 80AC34B0 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
.L80AC34B4:
/* 00814 80AC34B4 10410003 */  beq     $v0, $at, .L80AC34C4       
/* 00818 80AC34B8 00000000 */  nop
/* 0081C 80AC34BC A60F001C */  sh      $t7, 0x001C($s0)           ## 0000001C
/* 00820 80AC34C0 8603001C */  lh      $v1, 0x001C($s0)           ## 0000001C
.L80AC34C4:
/* 00824 80AC34C4 3C048016 */  lui     $a0, %hi(gSaveContext)
/* 00828 80AC34C8 2861000B */  slti    $at, $v1, 0x000B           
/* 0082C 80AC34CC 14200017 */  bne     $at, $zero, .L80AC352C     
/* 00830 80AC34D0 2484E660 */  addiu   $a0, %lo(gSaveContext)
/* 00834 80AC34D4 04630016 */  bgezl   $v1, .L80AC3530            
/* 00838 80AC34D8 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 0083C 80AC34DC 0C00B55C */  jal     Actor_Kill
              
/* 00840 80AC34E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00844 80AC34E4 3C0480AD */  lui     $a0, %hi(D_80AC8FA0)       ## $a0 = 80AD0000
/* 00848 80AC34E8 0C00084C */  jal     osSyncPrintf
              
/* 0084C 80AC34EC 24848FA0 */  addiu   $a0, $a0, %lo(D_80AC8FA0)  ## $a0 = 80AC8FA0
/* 00850 80AC34F0 3C0480AD */  lui     $a0, %hi(D_80AC8FAC)       ## $a0 = 80AD0000
/* 00854 80AC34F4 24848FAC */  addiu   $a0, $a0, %lo(D_80AC8FAC)  ## $a0 = 80AC8FAC
/* 00858 80AC34F8 0C00084C */  jal     osSyncPrintf
              
/* 0085C 80AC34FC 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00860 80AC3500 3C0480AD */  lui     $a0, %hi(D_80AC8FD0)       ## $a0 = 80AD0000
/* 00864 80AC3504 0C00084C */  jal     osSyncPrintf
              
/* 00868 80AC3508 24848FD0 */  addiu   $a0, $a0, %lo(D_80AC8FD0)  ## $a0 = 80AC8FD0
/* 0086C 80AC350C 3C0480AD */  lui     $a0, %hi(D_80AC8FD4)       ## $a0 = 80AD0000
/* 00870 80AC3510 3C0580AD */  lui     $a1, %hi(D_80AC8FD8)       ## $a1 = 80AD0000
/* 00874 80AC3514 24A58FD8 */  addiu   $a1, $a1, %lo(D_80AC8FD8)  ## $a1 = 80AC8FD8
/* 00878 80AC3518 24848FD4 */  addiu   $a0, $a0, %lo(D_80AC8FD4)  ## $a0 = 80AC8FD4
/* 0087C 80AC351C 0C0007FC */  jal     __assert
              
/* 00880 80AC3520 240604DE */  addiu   $a2, $zero, 0x04DE         ## $a2 = 000004DE
/* 00884 80AC3524 10000075 */  beq     $zero, $zero, .L80AC36FC   
/* 00888 80AC3528 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC352C:
/* 0088C 80AC352C 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
.L80AC3530:
/* 00890 80AC3530 5461000A */  bnel    $v1, $at, .L80AC355C       
/* 00894 80AC3534 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00898 80AC3538 94980F06 */  lhu     $t8, 0x0F06($a0)           ## 00000F06
/* 0089C 80AC353C 33190040 */  andi    $t9, $t8, 0x0040           ## $t9 = 00000000
/* 008A0 80AC3540 57200006 */  bnel    $t9, $zero, .L80AC355C     
/* 008A4 80AC3544 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 008A8 80AC3548 0C00B55C */  jal     Actor_Kill
              
/* 008AC 80AC354C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008B0 80AC3550 1000006A */  beq     $zero, $zero, .L80AC36FC   
/* 008B4 80AC3554 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 008B8 80AC3558 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80AC355C:
/* 008BC 80AC355C 5461000F */  bnel    $v1, $at, .L80AC359C       
/* 008C0 80AC3560 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 008C4 80AC3564 8C880004 */  lw      $t0, 0x0004($a0)           ## 00000004
/* 008C8 80AC3568 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 008CC 80AC356C 24020011 */  addiu   $v0, $zero, 0x0011         ## $v0 = 00000011
/* 008D0 80AC3570 11000003 */  beq     $t0, $zero, .L80AC3580     
/* 008D4 80AC3574 00000000 */  nop
/* 008D8 80AC3578 10000001 */  beq     $zero, $zero, .L80AC3580   
/* 008DC 80AC357C 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
.L80AC3580:
/* 008E0 80AC3580 54410006 */  bnel    $v0, $at, .L80AC359C       
/* 008E4 80AC3584 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 008E8 80AC3588 0C00B55C */  jal     Actor_Kill
              
/* 008EC 80AC358C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008F0 80AC3590 1000005A */  beq     $zero, $zero, .L80AC36FC   
/* 008F4 80AC3594 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 008F8 80AC3598 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L80AC359C:
/* 008FC 80AC359C 14610009 */  bne     $v1, $at, .L80AC35C4       
/* 00900 80AC35A0 00000000 */  nop
/* 00904 80AC35A4 94890ED8 */  lhu     $t1, 0x0ED8($a0)           ## 00000ED8
/* 00908 80AC35A8 312A0020 */  andi    $t2, $t1, 0x0020           ## $t2 = 00000000
/* 0090C 80AC35AC 15400005 */  bne     $t2, $zero, .L80AC35C4     
/* 00910 80AC35B0 00000000 */  nop
/* 00914 80AC35B4 0C00B55C */  jal     Actor_Kill
              
/* 00918 80AC35B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0091C 80AC35BC 1000004F */  beq     $zero, $zero, .L80AC36FC   
/* 00920 80AC35C0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC35C4:
/* 00924 80AC35C4 00670019 */  multu   $v1, $a3                   
/* 00928 80AC35C8 3C0C80AD */  lui     $t4, %hi(D_80AC8940)       ## $t4 = 80AD0000
/* 0092C 80AC35CC 258C8940 */  addiu   $t4, $t4, %lo(D_80AC8940)  ## $t4 = 80AC8940
/* 00930 80AC35D0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00934 80AC35D4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00938 80AC35D8 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 0093C 80AC35DC 00812021 */  addu    $a0, $a0, $at              
/* 00940 80AC35E0 00005812 */  mflo    $t3                        
/* 00944 80AC35E4 016C3021 */  addu    $a2, $t3, $t4              
/* 00948 80AC35E8 84C50000 */  lh      $a1, 0x0000($a2)           ## 00000000
/* 0094C 80AC35EC 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00950 80AC35F0 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 00954 80AC35F4 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00958 80AC35F8 A20201E8 */  sb      $v0, 0x01E8($s0)           ## 000001E8
/* 0095C 80AC35FC 820D01E8 */  lb      $t5, 0x01E8($s0)           ## 000001E8
/* 00960 80AC3600 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00964 80AC3604 05A10019 */  bgez    $t5, .L80AC366C            
/* 00968 80AC3608 00000000 */  nop
/* 0096C 80AC360C 0C00B55C */  jal     Actor_Kill
              
/* 00970 80AC3610 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00974 80AC3614 3C0480AD */  lui     $a0, %hi(D_80AC8FE8)       ## $a0 = 80AD0000
/* 00978 80AC3618 0C00084C */  jal     osSyncPrintf
              
/* 0097C 80AC361C 24848FE8 */  addiu   $a0, $a0, %lo(D_80AC8FE8)  ## $a0 = 80AC8FE8
/* 00980 80AC3620 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00984 80AC3624 3C0580AD */  lui     $a1, %hi(D_80AC8914)       ## $a1 = 80AD0000
/* 00988 80AC3628 3C0480AD */  lui     $a0, %hi(D_80AC8FF4)       ## $a0 = 80AD0000
/* 0098C 80AC362C 000E7880 */  sll     $t7, $t6,  2               
/* 00990 80AC3630 00AF2821 */  addu    $a1, $a1, $t7              
/* 00994 80AC3634 8CA58914 */  lw      $a1, %lo(D_80AC8914)($a1)  
/* 00998 80AC3638 0C00084C */  jal     osSyncPrintf
              
/* 0099C 80AC363C 24848FF4 */  addiu   $a0, $a0, %lo(D_80AC8FF4)  ## $a0 = 80AC8FF4
/* 009A0 80AC3640 3C0480AD */  lui     $a0, %hi(D_80AC900C)       ## $a0 = 80AD0000
/* 009A4 80AC3644 0C00084C */  jal     osSyncPrintf
              
/* 009A8 80AC3648 2484900C */  addiu   $a0, $a0, %lo(D_80AC900C)  ## $a0 = 80AC900C
/* 009AC 80AC364C 3C0480AD */  lui     $a0, %hi(D_80AC9010)       ## $a0 = 80AD0000
/* 009B0 80AC3650 3C0580AD */  lui     $a1, %hi(D_80AC9014)       ## $a1 = 80AD0000
/* 009B4 80AC3654 24A59014 */  addiu   $a1, $a1, %lo(D_80AC9014)  ## $a1 = 80AC9014
/* 009B8 80AC3658 24849010 */  addiu   $a0, $a0, %lo(D_80AC9010)  ## $a0 = 80AC9010
/* 009BC 80AC365C 0C0007FC */  jal     __assert
              
/* 009C0 80AC3660 24060504 */  addiu   $a2, $zero, 0x0504         ## $a2 = 00000504
/* 009C4 80AC3664 10000025 */  beq     $zero, $zero, .L80AC36FC   
/* 009C8 80AC3668 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC366C:
/* 009CC 80AC366C 0C2B0CEC */  jal     func_80AC33B0              
/* 009D0 80AC3670 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 009D4 80AC3674 14400019 */  bne     $v0, $zero, .L80AC36DC     
/* 009D8 80AC3678 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009DC 80AC367C 0C00B55C */  jal     Actor_Kill
              
/* 009E0 80AC3680 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009E4 80AC3684 3C0480AD */  lui     $a0, %hi(D_80AC9024)       ## $a0 = 80AD0000
/* 009E8 80AC3688 0C00084C */  jal     osSyncPrintf
              
/* 009EC 80AC368C 24849024 */  addiu   $a0, $a0, %lo(D_80AC9024)  ## $a0 = 80AC9024
/* 009F0 80AC3690 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 009F4 80AC3694 3C0580AD */  lui     $a1, %hi(D_80AC8914)       ## $a1 = 80AD0000
/* 009F8 80AC3698 3C0480AD */  lui     $a0, %hi(D_80AC9030)       ## $a0 = 80AD0000
/* 009FC 80AC369C 0018C880 */  sll     $t9, $t8,  2               
/* 00A00 80AC36A0 00B92821 */  addu    $a1, $a1, $t9              
/* 00A04 80AC36A4 8CA58914 */  lw      $a1, %lo(D_80AC8914)($a1)  
/* 00A08 80AC36A8 0C00084C */  jal     osSyncPrintf
              
/* 00A0C 80AC36AC 24849030 */  addiu   $a0, $a0, %lo(D_80AC9030)  ## $a0 = 80AC9030
/* 00A10 80AC36B0 3C0480AD */  lui     $a0, %hi(D_80AC904C)       ## $a0 = 80AD0000
/* 00A14 80AC36B4 0C00084C */  jal     osSyncPrintf
              
/* 00A18 80AC36B8 2484904C */  addiu   $a0, $a0, %lo(D_80AC904C)  ## $a0 = 80AC904C
/* 00A1C 80AC36BC 3C0480AD */  lui     $a0, %hi(D_80AC9050)       ## $a0 = 80AD0000
/* 00A20 80AC36C0 3C0580AD */  lui     $a1, %hi(D_80AC9054)       ## $a1 = 80AD0000
/* 00A24 80AC36C4 24A59054 */  addiu   $a1, $a1, %lo(D_80AC9054)  ## $a1 = 80AC9054
/* 00A28 80AC36C8 24849050 */  addiu   $a0, $a0, %lo(D_80AC9050)  ## $a0 = 80AC9050
/* 00A2C 80AC36CC 0C0007FC */  jal     __assert
              
/* 00A30 80AC36D0 2406050F */  addiu   $a2, $zero, 0x050F         ## $a2 = 0000050F
/* 00A34 80AC36D4 10000009 */  beq     $zero, $zero, .L80AC36FC   
/* 00A38 80AC36D8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC36DC:
/* 00A3C 80AC36DC 3C0580AD */  lui     $a1, %hi(D_80AC8D64)       ## $a1 = 80AD0000
/* 00A40 80AC36E0 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00A44 80AC36E4 24A58D64 */  addiu   $a1, $a1, %lo(D_80AC8D64)  ## $a1 = 80AC8D64
/* 00A48 80AC36E8 3C0580AC */  lui     $a1, %hi(func_80AC7094)    ## $a1 = 80AC0000
/* 00A4C 80AC36EC 24A57094 */  addiu   $a1, $a1, %lo(func_80AC7094) ## $a1 = 80AC7094
/* 00A50 80AC36F0 0C2B0B28 */  jal     func_80AC2CA0              
/* 00A54 80AC36F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A58 80AC36F8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC36FC:
/* 00A5C 80AC36FC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00A60 80AC3700 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00A64 80AC3704 03E00008 */  jr      $ra                        
/* 00A68 80AC3708 00000000 */  nop
