glabel EnGo_Init
/* 015BC 80A3FB2C 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 015C0 80A3FB30 3C0F80A4 */  lui     $t7, %hi(D_80A41B9C)       ## $t7 = 80A40000
/* 015C4 80A3FB34 AFBF002C */  sw      $ra, 0x002C($sp)
/* 015C8 80A3FB38 AFB00028 */  sw      $s0, 0x0028($sp)
/* 015CC 80A3FB3C AFA5005C */  sw      $a1, 0x005C($sp)
/* 015D0 80A3FB40 25EF1B9C */  addiu   $t7, $t7, %lo(D_80A41B9C)  ## $t7 = 80A41B9C
/* 015D4 80A3FB44 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A41B9C
/* 015D8 80A3FB48 27AE0044 */  addiu   $t6, $sp, 0x0044           ## $t6 = FFFFFFEC
/* 015DC 80A3FB4C 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80A41BA0
/* 015E0 80A3FB50 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFEC
/* 015E4 80A3FB54 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80A41BA4
/* 015E8 80A3FB58 3C0980A4 */  lui     $t1, %hi(D_80A41BA8)       ## $t1 = 80A40000
/* 015EC 80A3FB5C 25291BA8 */  addiu   $t1, $t1, %lo(D_80A41BA8)  ## $t1 = 80A41BA8
/* 015F0 80A3FB60 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF0
/* 015F4 80A3FB64 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF4
/* 015F8 80A3FB68 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80A41BA8
/* 015FC 80A3FB6C 27A80038 */  addiu   $t0, $sp, 0x0038           ## $t0 = FFFFFFE0
/* 01600 80A3FB70 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80A41BAC
/* 01604 80A3FB74 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE0
/* 01608 80A3FB78 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80A41BB0
/* 0160C 80A3FB7C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01610 80A3FB80 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 01614 80A3FB84 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 01618 80A3FB88 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 0161C 80A3FB8C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01620 80A3FB90 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 01624 80A3FB94 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFE4
/* 01628 80A3FB98 0C00AC78 */  jal     ActorShape_Init

/* 0162C 80A3FB9C AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFE8
/* 01630 80A3FBA0 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 01634 80A3FBA4 24C6FEF0 */  addiu   $a2, $a2, 0xFEF0           ## $a2 = 0600FEF0
/* 01638 80A3FBA8 8FA4005C */  lw      $a0, 0x005C($sp)
/* 0163C 80A3FBAC 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 01640 80A3FBB0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01644 80A3FBB4 AFA00010 */  sw      $zero, 0x0010($sp)
/* 01648 80A3FBB8 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0164C 80A3FBBC 0C0291BE */  jal     SkelAnime_InitFlex
/* 01650 80A3FBC0 AFA00018 */  sw      $zero, 0x0018($sp)
/* 01654 80A3FBC4 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 01658 80A3FBC8 AFA50030 */  sw      $a1, 0x0030($sp)
/* 0165C 80A3FBCC 0C0170D9 */  jal     Collider_InitCylinder

/* 01660 80A3FBD0 8FA4005C */  lw      $a0, 0x005C($sp)
/* 01664 80A3FBD4 3C0780A4 */  lui     $a3, %hi(D_80A41B00)       ## $a3 = 80A40000
/* 01668 80A3FBD8 8FA50030 */  lw      $a1, 0x0030($sp)
/* 0166C 80A3FBDC 24E71B00 */  addiu   $a3, $a3, %lo(D_80A41B00)  ## $a3 = 80A41B00
/* 01670 80A3FBE0 8FA4005C */  lw      $a0, 0x005C($sp)
/* 01674 80A3FBE4 0C01712B */  jal     Collider_SetCylinder

/* 01678 80A3FBE8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0167C 80A3FBEC 0C016C80 */  jal     DamageTable_Get

/* 01680 80A3FBF0 24040016 */  addiu   $a0, $zero, 0x0016         ## $a0 = 00000016
/* 01684 80A3FBF4 3C0680A4 */  lui     $a2, %hi(D_80A41B2C)       ## $a2 = 80A40000
/* 01688 80A3FBF8 24C61B2C */  addiu   $a2, $a2, %lo(D_80A41B2C)  ## $a2 = 80A41B2C
/* 0168C 80A3FBFC 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 01690 80A3FC00 0C0187BF */  jal     func_80061EFC
/* 01694 80A3FC04 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 01698 80A3FC08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0169C 80A3FC0C 0C28FBA3 */  jal     func_80A3EE8C
/* 016A0 80A3FC10 8FA5005C */  lw      $a1, 0x005C($sp)
/* 016A4 80A3FC14 14400005 */  bne     $v0, $zero, .L80A3FC2C
/* 016A8 80A3FC18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016AC 80A3FC1C 0C00B55C */  jal     Actor_Kill

/* 016B0 80A3FC20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016B4 80A3FC24 10000091 */  beq     $zero, $zero, .L80A3FE6C
/* 016B8 80A3FC28 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A3FC2C:
/* 016BC 80A3FC2C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 016C0 80A3FC30 24010090 */  addiu   $at, $zero, 0x0090         ## $at = 00000090
/* 016C4 80A3FC34 304200F0 */  andi    $v0, $v0, 0x00F0           ## $v0 = 00000000
/* 016C8 80A3FC38 1040000A */  beq     $v0, $zero, .L80A3FC64
/* 016CC 80A3FC3C 00000000 */  nop
/* 016D0 80A3FC40 10410008 */  beq     $v0, $at, .L80A3FC64
/* 016D4 80A3FC44 00000000 */  nop
/* 016D8 80A3FC48 8E0C0004 */  lw      $t4, 0x0004($s0)           ## 00000004
/* 016DC 80A3FC4C 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 016E0 80A3FC50 01816824 */  and     $t5, $t4, $at
/* 016E4 80A3FC54 2401FFDF */  addiu   $at, $zero, 0xFFDF         ## $at = FFFFFFDF
/* 016E8 80A3FC58 AE0D0004 */  sw      $t5, 0x0004($s0)           ## 00000004
/* 016EC 80A3FC5C 01A17824 */  and     $t7, $t5, $at
/* 016F0 80A3FC60 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
.L80A3FC64:
/* 016F4 80A3FC64 0C28FB78 */  jal     func_80A3EDE0
/* 016F8 80A3FC68 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 016FC 80A3FC6C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 01700 80A3FC70 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 01704 80A3FC74 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 01708 80A3FC78 304200F0 */  andi    $v0, $v0, 0x00F0           ## $v0 = 00000000
/* 0170C 80A3FC7C 24180006 */  addiu   $t8, $zero, 0x0006         ## $t8 = 00000006
/* 01710 80A3FC80 28410071 */  slti    $at, $v0, 0x0071
/* 01714 80A3FC84 A218001F */  sb      $t8, 0x001F($s0)           ## 0000001F
/* 01718 80A3FC88 A60001E0 */  sh      $zero, 0x01E0($s0)         ## 000001E0
/* 0171C 80A3FC8C 14200006 */  bne     $at, $zero, .L80A3FCA8
/* 01720 80A3FC90 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 01724 80A3FC94 24010090 */  addiu   $at, $zero, 0x0090         ## $at = 00000090
/* 01728 80A3FC98 1041005C */  beq     $v0, $at, .L80A3FE0C
/* 0172C 80A3FC9C 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 01730 80A3FCA0 1000006F */  beq     $zero, $zero, .L80A3FE60
/* 01734 80A3FCA4 00000000 */  nop
.L80A3FCA8:
/* 01738 80A3FCA8 2C410071 */  sltiu   $at, $v0, 0x0071
/* 0173C 80A3FCAC 1020006C */  beq     $at, $zero, .L80A3FE60
/* 01740 80A3FCB0 0002C880 */  sll     $t9, $v0,  2
/* 01744 80A3FCB4 3C0180A4 */  lui     $at, %hi(jtbl_80A420E4)       ## $at = 80A40000
/* 01748 80A3FCB8 00390821 */  addu    $at, $at, $t9
/* 0174C 80A3FCBC 8C3920E4 */  lw      $t9, %lo(jtbl_80A420E4)($at)
/* 01750 80A3FCC0 03200008 */  jr      $t9
/* 01754 80A3FCC4 00000000 */  nop
glabel L80A3FCC8
/* 01758 80A3FCC8 3C053C03 */  lui     $a1, 0x3C03                ## $a1 = 3C030000
/* 0175C 80A3FCCC 34A5126F */  ori     $a1, $a1, 0x126F           ## $a1 = 3C03126F
/* 01760 80A3FCD0 0C00B58B */  jal     Actor_SetScale

/* 01764 80A3FCD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01768 80A3FCD8 3C088012 */  lui     $t0, %hi(gBitFlags+4)
/* 0176C 80A3FCDC 3C098012 */  lui     $t1, %hi(gEquipShifts+2)
/* 01770 80A3FCE0 912971F2 */  lbu     $t1, %lo(gEquipShifts+2)($t1)
/* 01774 80A3FCE4 8D087124 */  lw      $t0, %lo(gBitFlags+4)($t0)
/* 01778 80A3FCE8 3C0B8016 */  lui     $t3, %hi(gSaveContext+0x9c)
/* 0177C 80A3FCEC 956BE6FC */  lhu     $t3, %lo(gSaveContext+0x9c)($t3)
/* 01780 80A3FCF0 01285004 */  sllv    $t2, $t0, $t1
/* 01784 80A3FCF4 3C0144AF */  lui     $at, 0x44AF                ## $at = 44AF0000
/* 01788 80A3FCF8 014B6024 */  and     $t4, $t2, $t3
/* 0178C 80A3FCFC 1180000A */  beq     $t4, $zero, .L80A3FD28
/* 01790 80A3FD00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01794 80A3FD04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01798 80A3FD08 0C28FD2F */  jal     func_80A3F4BC
/* 0179C 80A3FD0C 8FA5005C */  lw      $a1, 0x005C($sp)
/* 017A0 80A3FD10 3C0580A4 */  lui     $a1, %hi(func_80A40218)    ## $a1 = 80A40000
/* 017A4 80A3FD14 24A50218 */  addiu   $a1, $a1, %lo(func_80A40218) ## $a1 = 80A40218
/* 017A8 80A3FD18 0C28F95C */  jal     func_80A3E570
/* 017AC 80A3FD1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017B0 80A3FD20 10000052 */  beq     $zero, $zero, .L80A3FE6C
/* 017B4 80A3FD24 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A3FD28:
/* 017B8 80A3FD28 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
/* 017BC 80A3FD2C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 017C0 80A3FD30 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
/* 017C4 80A3FD34 3C0580A4 */  lui     $a1, %hi(func_80A4011C)    ## $a1 = 80A40000
/* 017C8 80A3FD38 24A5011C */  addiu   $a1, $a1, %lo(func_80A4011C) ## $a1 = 80A4011C
/* 017CC 80A3FD3C E60600BC */  swc1    $f6, 0x00BC($s0)           ## 000000BC
/* 017D0 80A3FD40 0C28F95C */  jal     func_80A3E570
/* 017D4 80A3FD44 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 017D8 80A3FD48 10000048 */  beq     $zero, $zero, .L80A3FE6C
/* 017DC 80A3FD4C 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80A3FD50
/* 017E0 80A3FD50 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 017E4 80A3FD54 0C028800 */  jal     SkelAnime_GetFrameCount

/* 017E8 80A3FD58 24844930 */  addiu   $a0, $a0, 0x4930           ## $a0 = 06004930
/* 017EC 80A3FD5C 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 017F0 80A3FD60 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 017F4 80A3FD64 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 017F8 80A3FD68 46805420 */  cvt.s.w $f16, $f10
/* 017FC 80A3FD6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01800 80A3FD70 0C00B58B */  jal     Actor_SetScale

/* 01804 80A3FD74 E6100164 */  swc1    $f16, 0x0164($s0)          ## 00000164
/* 01808 80A3FD78 3C0580A4 */  lui     $a1, %hi(func_80A4020C)    ## $a1 = 80A40000
/* 0180C 80A3FD7C 24A5020C */  addiu   $a1, $a1, %lo(func_80A4020C) ## $a1 = 80A4020C
/* 01810 80A3FD80 0C28F95C */  jal     func_80A3E570
/* 01814 80A3FD84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01818 80A3FD88 10000038 */  beq     $zero, $zero, .L80A3FE6C
/* 0181C 80A3FD8C 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80A3FD90
/* 01820 80A3FD90 3C0D8016 */  lui     $t5, %hi(gSaveContext+0xf14)
/* 01824 80A3FD94 95ADF574 */  lhu     $t5, %lo(gSaveContext+0xf14)($t5)
/* 01828 80A3FD98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0182C 80A3FD9C 31AE0800 */  andi    $t6, $t5, 0x0800           ## $t6 = 00000000
/* 01830 80A3FDA0 51C00004 */  beql    $t6, $zero, .L80A3FDB4
/* 01834 80A3FDA4 3C053C75 */  lui     $a1, 0x3C75                ## $a1 = 3C750000
/* 01838 80A3FDA8 0C28FD2F */  jal     func_80A3F4BC
/* 0183C 80A3FDAC 8FA5005C */  lw      $a1, 0x005C($sp)
/* 01840 80A3FDB0 3C053C75 */  lui     $a1, 0x3C75                ## $a1 = 3C750000
.L80A3FDB4:
/* 01844 80A3FDB4 34A5C28F */  ori     $a1, $a1, 0xC28F           ## $a1 = 3C75C28F
/* 01848 80A3FDB8 0C00B58B */  jal     Actor_SetScale

/* 0184C 80A3FDBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01850 80A3FDC0 3C0580A4 */  lui     $a1, %hi(func_80A40218)    ## $a1 = 80A40000
/* 01854 80A3FDC4 24A50218 */  addiu   $a1, $a1, %lo(func_80A40218) ## $a1 = 80A40218
/* 01858 80A3FDC8 0C28F95C */  jal     func_80A3E570
/* 0185C 80A3FDCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01860 80A3FDD0 10000026 */  beq     $zero, $zero, .L80A3FE6C
/* 01864 80A3FDD4 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80A3FDD8
/* 01868 80A3FDD8 3C0144AF */  lui     $at, 0x44AF                ## $at = 44AF0000
/* 0186C 80A3FDDC 44819000 */  mtc1    $at, $f18                  ## $f18 = 1400.00
/* 01870 80A3FDE0 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 01874 80A3FDE4 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 01878 80A3FDE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0187C 80A3FDEC 0C00B58B */  jal     Actor_SetScale

/* 01880 80A3FDF0 E61200BC */  swc1    $f18, 0x00BC($s0)          ## 000000BC
/* 01884 80A3FDF4 3C0580A4 */  lui     $a1, %hi(func_80A3FEB4)    ## $a1 = 80A40000
/* 01888 80A3FDF8 24A5FEB4 */  addiu   $a1, $a1, %lo(func_80A3FEB4) ## $a1 = 80A3FEB4
/* 0188C 80A3FDFC 0C28F95C */  jal     func_80A3E570
/* 01890 80A3FE00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01894 80A3FE04 10000019 */  beq     $zero, $zero, .L80A3FE6C
/* 01898 80A3FE08 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A3FE0C:
/* 0189C 80A3FE0C 3C053E23 */  lui     $a1, 0x3E23                ## $a1 = 3E230000
/* 018A0 80A3FE10 A20F001F */  sb      $t7, 0x001F($s0)           ## 0000001F
/* 018A4 80A3FE14 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3E23D70A
/* 018A8 80A3FE18 0C00B58B */  jal     Actor_SetScale

/* 018AC 80A3FE1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018B0 80A3FE20 3C0580A4 */  lui     $a1, %hi(func_80A40218)    ## $a1 = 80A40000
/* 018B4 80A3FE24 24A50218 */  addiu   $a1, $a1, %lo(func_80A40218) ## $a1 = 80A40218
/* 018B8 80A3FE28 0C28F95C */  jal     func_80A3E570
/* 018BC 80A3FE2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018C0 80A3FE30 1000000E */  beq     $zero, $zero, .L80A3FE6C
/* 018C4 80A3FE34 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80A3FE38
/* 018C8 80A3FE38 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 018CC 80A3FE3C 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 018D0 80A3FE40 0C00B58B */  jal     Actor_SetScale

/* 018D4 80A3FE44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018D8 80A3FE48 3C0580A4 */  lui     $a1, %hi(func_80A40218)    ## $a1 = 80A40000
/* 018DC 80A3FE4C 24A50218 */  addiu   $a1, $a1, %lo(func_80A40218) ## $a1 = 80A40218
/* 018E0 80A3FE50 0C28F95C */  jal     func_80A3E570
/* 018E4 80A3FE54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018E8 80A3FE58 10000004 */  beq     $zero, $zero, .L80A3FE6C
/* 018EC 80A3FE5C 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80A3FE60
.L80A3FE60:
/* 018F0 80A3FE60 0C00B55C */  jal     Actor_Kill

/* 018F4 80A3FE64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018F8 80A3FE68 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A3FE6C:
/* 018FC 80A3FE6C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01900 80A3FE70 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 01904 80A3FE74 03E00008 */  jr      $ra
/* 01908 80A3FE78 00000000 */  nop
