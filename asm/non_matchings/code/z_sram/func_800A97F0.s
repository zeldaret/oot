.rdata
glabel D_80140E3C
    .asciz "ＲＥＡＤ=%d(%x)  ＣＯＰＹ=%d(%x)\n"
    # EUC-JP: ＲＥＡＤ=%d(%x) ＣＯＰＹ=%d
    .balign 4

glabel D_80140E60
    .asciz "f_64dd[%d]=%d\n"
    .balign 4

glabel D_80140E70
    .asciz "heart_status[%d]=%d\n"
    .balign 4

glabel D_80140E88
    .asciz "ＣＯＰＹ終了\n"
    # EUC-JP: ＣＯＰＹ終了 | Copy end
    .balign 4

.text
glabel func_800A97F0
/* B20990 800A97F0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B20994 800A97F4 AFB3002C */  sw    $s3, 0x2c($sp)
/* B20998 800A97F8 3C010001 */  lui   $at, (0x00018000 >> 16) # lui $at, 1
/* B2099C 800A97FC 00809825 */  move  $s3, $a0
/* B209A0 800A9800 AFB20028 */  sw    $s2, 0x28($sp)
/* B209A4 800A9804 AFB10024 */  sw    $s1, 0x24($sp)
/* B209A8 800A9808 34218000 */  ori   $at, (0x00018000 & 0xFFFF) # ori $at, $at, 0x8000
/* B209AC 800A980C AFBF0034 */  sw    $ra, 0x34($sp)
/* B209B0 800A9810 AFB40030 */  sw    $s4, 0x30($sp)
/* B209B4 800A9814 AFB00020 */  sw    $s0, 0x20($sp)
/* B209B8 800A9818 02618821 */  addu  $s1, $s3, $at
/* B209BC 800A981C 86274A5E */  lh    $a3, 0x4a5e($s1)
/* B209C0 800A9820 00A09025 */  move  $s2, $a1
/* B209C4 800A9824 86254A46 */  lh    $a1, 0x4a46($s1)
/* B209C8 800A9828 3C148013 */  lui   $s4, %hi(D_8012A4E0) # $s4, 0x8013
/* B209CC 800A982C 2694A4E0 */  addiu $s4, %lo(D_8012A4E0) # addiu $s4, $s4, -0x5b20
/* B209D0 800A9830 0007C040 */  sll   $t8, $a3, 1
/* B209D4 800A9834 0298C821 */  addu  $t9, $s4, $t8
/* B209D8 800A9838 00057040 */  sll   $t6, $a1, 1
/* B209DC 800A983C 97280000 */  lhu   $t0, ($t9)
/* B209E0 800A9840 028E7821 */  addu  $t7, $s4, $t6
/* B209E4 800A9844 95E60000 */  lhu   $a2, ($t7)
/* B209E8 800A9848 3C048014 */  lui   $a0, %hi(D_80140E3C) # $a0, 0x8014
/* B209EC 800A984C 24840E3C */  addiu $a0, %lo(D_80140E3C) # addiu $a0, $a0, 0xe3c
/* B209F0 800A9850 0C00084C */  jal   osSyncPrintf
/* B209F4 800A9854 AFA80010 */   sw    $t0, 0x10($sp)
/* B209F8 800A9858 86294A46 */  lh    $t1, 0x4a46($s1)
/* B209FC 800A985C 8E4C0000 */  lw    $t4, ($s2)
/* B20A00 800A9860 3C048016 */  lui   $a0, %hi(gSaveContext) # $a0, 0x8016
/* B20A04 800A9864 00095040 */  sll   $t2, $t1, 1
/* B20A08 800A9868 028A5821 */  addu  $t3, $s4, $t2
/* B20A0C 800A986C 95700000 */  lhu   $s0, ($t3)
/* B20A10 800A9870 2484E660 */  addiu $a0, %lo(gSaveContext) # addiu $a0, $a0, -0x19a0
/* B20A14 800A9874 24061354 */  li    $a2, 4948
/* B20A18 800A9878 0C01A508 */  jal   MemCopy
/* B20A1C 800A987C 01902821 */   addu  $a1, $t4, $s0
/* B20A20 800A9880 862D4A5E */  lh    $t5, 0x4a5e($s1)
/* B20A24 800A9884 8E580000 */  lw    $t8, ($s2)
/* B20A28 800A9888 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B20A2C 800A988C 000D7040 */  sll   $t6, $t5, 1
/* B20A30 800A9890 028E7821 */  addu  $t7, $s4, $t6
/* B20A34 800A9894 95F00000 */  lhu   $s0, ($t7)
/* B20A38 800A9898 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B20A3C 800A989C 24061354 */  li    $a2, 4948
/* B20A40 800A98A0 0C01A508 */  jal   MemCopy
/* B20A44 800A98A4 03102021 */   addu  $a0, $t8, $s0
/* B20A48 800A98A8 86394A5E */  lh    $t9, 0x4a5e($s1)
/* B20A4C 800A98AC 8E4A0000 */  lw    $t2, ($s2)
/* B20A50 800A98B0 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B20A54 800A98B4 00194040 */  sll   $t0, $t9, 1
/* B20A58 800A98B8 02884821 */  addu  $t1, $s4, $t0
/* B20A5C 800A98BC 95300006 */  lhu   $s0, 6($t1)
/* B20A60 800A98C0 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B20A64 800A98C4 24061354 */  li    $a2, 4948
/* B20A68 800A98C8 0C01A508 */  jal   MemCopy
/* B20A6C 800A98CC 01502021 */   addu  $a0, $t2, $s0
/* B20A70 800A98D0 3C040800 */  lui   $a0, 0x800
/* B20A74 800A98D4 8E450000 */  lw    $a1, ($s2)
/* B20A78 800A98D8 34068000 */  li    $a2, 32768
/* B20A7C 800A98DC 0C02A7A8 */  jal   Sram_ReadWrite
/* B20A80 800A98E0 24070001 */   li    $a3, 1
/* B20A84 800A98E4 86224A5E */  lh    $v0, 0x4a5e($s1)
/* B20A88 800A98E8 8E4C0000 */  lw    $t4, ($s2)
/* B20A8C 800A98EC 3C010001 */  lui   $at, (0x0001C9F6 >> 16) # lui $at, 1
/* B20A90 800A98F0 00021040 */  sll   $v0, $v0, 1
/* B20A94 800A98F4 02825821 */  addu  $t3, $s4, $v0
/* B20A98 800A98F8 95700000 */  lhu   $s0, ($t3)
/* B20A9C 800A98FC 02622021 */  addu  $a0, $s3, $v0
/* B20AA0 800A9900 3421C9F6 */  ori   $at, (0x0001C9F6 & 0xFFFF) # ori $at, $at, 0xc9f6
/* B20AA4 800A9904 01902821 */  addu  $a1, $t4, $s0
/* B20AA8 800A9908 24A50022 */  addiu $a1, $a1, 0x22
/* B20AAC 800A990C 00812021 */  addu  $a0, $a0, $at
/* B20AB0 800A9910 0C01A508 */  jal   MemCopy
/* B20AB4 800A9914 24060002 */   li    $a2, 2
/* B20AB8 800A9918 862D4A5E */  lh    $t5, 0x4a5e($s1)
/* B20ABC 800A991C 8E4F0000 */  lw    $t7, ($s2)
/* B20AC0 800A9920 3C010001 */  lui   $at, (0x0001C9FC >> 16) # lui $at, 1
/* B20AC4 800A9924 000D70C0 */  sll   $t6, $t5, 3
/* B20AC8 800A9928 026E2021 */  addu  $a0, $s3, $t6
/* B20ACC 800A992C 3421C9FC */  ori   $at, (0x0001C9FC & 0xFFFF) # ori $at, $at, 0xc9fc
/* B20AD0 800A9930 01F02821 */  addu  $a1, $t7, $s0
/* B20AD4 800A9934 24A50024 */  addiu $a1, $a1, 0x24
/* B20AD8 800A9938 00812021 */  addu  $a0, $a0, $at
/* B20ADC 800A993C 0C01A508 */  jal   MemCopy
/* B20AE0 800A9940 24060008 */   li    $a2, 8
/* B20AE4 800A9944 86384A5E */  lh    $t8, 0x4a5e($s1)
/* B20AE8 800A9948 8E480000 */  lw    $t0, ($s2)
/* B20AEC 800A994C 3C010001 */  lui   $at, (0x0001CA14 >> 16) # lui $at, 1
/* B20AF0 800A9950 0018C840 */  sll   $t9, $t8, 1
/* B20AF4 800A9954 02792021 */  addu  $a0, $s3, $t9
/* B20AF8 800A9958 3421CA14 */  ori   $at, (0x0001CA14 & 0xFFFF) # ori $at, $at, 0xca14
/* B20AFC 800A995C 01102821 */  addu  $a1, $t0, $s0
/* B20B00 800A9960 24A5002E */  addiu $a1, $a1, 0x2e
/* B20B04 800A9964 00812021 */  addu  $a0, $a0, $at
/* B20B08 800A9968 0C01A508 */  jal   MemCopy
/* B20B0C 800A996C 24060002 */   li    $a2, 2
/* B20B10 800A9970 86294A5E */  lh    $t1, 0x4a5e($s1)
/* B20B14 800A9974 8E4B0000 */  lw    $t3, ($s2)
/* B20B18 800A9978 3C010001 */  lui   $at, (0x0001CA1C >> 16) # lui $at, 1
/* B20B1C 800A997C 00095080 */  sll   $t2, $t1, 2
/* B20B20 800A9980 026A2021 */  addu  $a0, $s3, $t2
/* B20B24 800A9984 3421CA1C */  ori   $at, (0x0001CA1C & 0xFFFF) # ori $at, $at, 0xca1c
/* B20B28 800A9988 01702821 */  addu  $a1, $t3, $s0
/* B20B2C 800A998C 24A500A4 */  addiu $a1, $a1, 0xa4
/* B20B30 800A9990 00812021 */  addu  $a0, $a0, $at
/* B20B34 800A9994 0C01A508 */  jal   MemCopy
/* B20B38 800A9998 24060004 */   li    $a2, 4
/* B20B3C 800A999C 862C4A5E */  lh    $t4, 0x4a5e($s1)
/* B20B40 800A99A0 8E4E0000 */  lw    $t6, ($s2)
/* B20B44 800A99A4 3C010001 */  lui   $at, (0x0001CA28 >> 16) # lui $at, 1
/* B20B48 800A99A8 000C6840 */  sll   $t5, $t4, 1
/* B20B4C 800A99AC 026D2021 */  addu  $a0, $s3, $t5
/* B20B50 800A99B0 3421CA28 */  ori   $at, (0x0001CA28 & 0xFFFF) # ori $at, $at, 0xca28
/* B20B54 800A99B4 01D02821 */  addu  $a1, $t6, $s0
/* B20B58 800A99B8 24A5002C */  addiu $a1, $a1, 0x2c
/* B20B5C 800A99BC 00812021 */  addu  $a0, $a0, $at
/* B20B60 800A99C0 0C01A508 */  jal   MemCopy
/* B20B64 800A99C4 24060002 */   li    $a2, 2
/* B20B68 800A99C8 862F4A5E */  lh    $t7, 0x4a5e($s1)
/* B20B6C 800A99CC 8E580000 */  lw    $t8, ($s2)
/* B20B70 800A99D0 3C010001 */  lui   $at, (0x0001CA2E >> 16) # lui $at, 1
/* B20B74 800A99D4 3421CA2E */  ori   $at, (0x0001CA2E & 0xFFFF) # ori $at, $at, 0xca2e
/* B20B78 800A99D8 026F2021 */  addu  $a0, $s3, $t7
/* B20B7C 800A99DC 03102821 */  addu  $a1, $t8, $s0
/* B20B80 800A99E0 24A500CF */  addiu $a1, $a1, 0xcf
/* B20B84 800A99E4 00812021 */  addu  $a0, $a0, $at
/* B20B88 800A99E8 0C01A508 */  jal   MemCopy
/* B20B8C 800A99EC 24060001 */   li    $a2, 1
/* B20B90 800A99F0 86394A5E */  lh    $t9, 0x4a5e($s1)
/* B20B94 800A99F4 8E490000 */  lw    $t1, ($s2)
/* B20B98 800A99F8 3C010001 */  lui   $at, (0x0001CA32 >> 16) # lui $at, 1
/* B20B9C 800A99FC 00194040 */  sll   $t0, $t9, 1
/* B20BA0 800A9A00 02682021 */  addu  $a0, $s3, $t0
/* B20BA4 800A9A04 3421CA32 */  ori   $at, (0x0001CA32 & 0xFFFF) # ori $at, $at, 0xca32
/* B20BA8 800A9A08 01302821 */  addu  $a1, $t1, $s0
/* B20BAC 800A9A0C 24A50030 */  addiu $a1, $a1, 0x30
/* B20BB0 800A9A10 00812021 */  addu  $a0, $a0, $at
/* B20BB4 800A9A14 0C01A508 */  jal   MemCopy
/* B20BB8 800A9A18 24060002 */   li    $a2, 2
/* B20BBC 800A9A1C 3C108016 */  lui   $s0, %hi(gSaveContext+0x1354) # $s0, 0x8016
/* B20BC0 800A9A20 8E10F9B4 */  lw    $s0, %lo(gSaveContext+0x1354)($s0)
/* B20BC4 800A9A24 3C060002 */  lui   $a2, 2
/* B20BC8 800A9A28 3C048014 */  lui   $a0, %hi(D_80140E60) # $a0, 0x8014
/* B20BCC 800A9A2C 00105040 */  sll   $t2, $s0, 1
/* B20BD0 800A9A30 026A5821 */  addu  $t3, $s3, $t2
/* B20BD4 800A9A34 00CB3021 */  addu  $a2, $a2, $t3
/* B20BD8 800A9A38 84C6CA28 */  lh    $a2, -0x35d8($a2)
/* B20BDC 800A9A3C 24840E60 */  addiu $a0, %lo(D_80140E60) # addiu $a0, $a0, 0xe60
/* B20BE0 800A9A40 0C00084C */  jal   osSyncPrintf
/* B20BE4 800A9A44 02002825 */   move  $a1, $s0
/* B20BE8 800A9A48 3C108016 */  lui   $s0, %hi(gSaveContext+0x1354) # $s0, 0x8016
/* B20BEC 800A9A4C 8E10F9B4 */  lw    $s0, %lo(gSaveContext+0x1354)($s0)
/* B20BF0 800A9A50 3C060002 */  lui   $a2, 2
/* B20BF4 800A9A54 3C048014 */  lui   $a0, %hi(D_80140E70) # $a0, 0x8014
/* B20BF8 800A9A58 02706021 */  addu  $t4, $s3, $s0
/* B20BFC 800A9A5C 00CC3021 */  addu  $a2, $a2, $t4
/* B20C00 800A9A60 80C6CA2E */  lb    $a2, -0x35d2($a2)
/* B20C04 800A9A64 24840E70 */  addiu $a0, %lo(D_80140E70) # addiu $a0, $a0, 0xe70
/* B20C08 800A9A68 0C00084C */  jal   osSyncPrintf
/* B20C0C 800A9A6C 02002825 */   move  $a1, $s0
/* B20C10 800A9A70 3C048014 */  lui   $a0, %hi(D_80140E88) # $a0, 0x8014
/* B20C14 800A9A74 0C00084C */  jal   osSyncPrintf
/* B20C18 800A9A78 24840E88 */   addiu $a0, %lo(D_80140E88) # addiu $a0, $a0, 0xe88
/* B20C1C 800A9A7C 8FBF0034 */  lw    $ra, 0x34($sp)
/* B20C20 800A9A80 8FB00020 */  lw    $s0, 0x20($sp)
/* B20C24 800A9A84 8FB10024 */  lw    $s1, 0x24($sp)
/* B20C28 800A9A88 8FB20028 */  lw    $s2, 0x28($sp)
/* B20C2C 800A9A8C 8FB3002C */  lw    $s3, 0x2c($sp)
/* B20C30 800A9A90 8FB40030 */  lw    $s4, 0x30($sp)
/* B20C34 800A9A94 03E00008 */  jr    $ra
/* B20C38 800A9A98 27BD0038 */   addiu $sp, $sp, 0x38

