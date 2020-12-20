glabel func_809B71F0
/* 00EA0 809B71F0 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 00EA4 809B71F4 AFB7003C */  sw      $s7, 0x003C($sp)
/* 00EA8 809B71F8 0080B825 */  or      $s7, $a0, $zero            ## $s7 = 00000000
/* 00EAC 809B71FC AFBF0044 */  sw      $ra, 0x0044($sp)
/* 00EB0 809B7200 AFBE0040 */  sw      $s8, 0x0040($sp)
/* 00EB4 809B7204 AFB60038 */  sw      $s6, 0x0038($sp)
/* 00EB8 809B7208 AFB50034 */  sw      $s5, 0x0034($sp)
/* 00EBC 809B720C AFB40030 */  sw      $s4, 0x0030($sp)
/* 00EC0 809B7210 AFB3002C */  sw      $s3, 0x002C($sp)
/* 00EC4 809B7214 AFB20028 */  sw      $s2, 0x0028($sp)
/* 00EC8 809B7218 AFB10024 */  sw      $s1, 0x0024($sp)
/* 00ECC 809B721C AFB00020 */  sw      $s0, 0x0020($sp)
/* 00ED0 809B7220 3C0143A5 */  lui     $at, 0x43A5                ## $at = 43A50000
/* 00ED4 809B7224 44813000 */  mtc1    $at, $f6                   ## $f6 = 330.00
/* 00ED8 809B7228 C6E4000C */  lwc1    $f4, 0x000C($s7)           ## 0000000C
/* 00EDC 809B722C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00EE0 809B7230 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00EE4 809B7234 46062200 */  add.s   $f8, $f4, $f6
/* 00EE8 809B7238 24840028 */  addiu   $a0, $a0, 0x0028           ## $a0 = 00000028
/* 00EEC 809B723C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00EF0 809B7240 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 00EF4 809B7244 44054000 */  mfc1    $a1, $f8
/* 00EF8 809B7248 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 00EFC 809B724C E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 00F00 809B7250 26F40024 */  addiu   $s4, $s7, 0x0024           ## $s4 = 00000024
/* 00F04 809B7254 8E8F0000 */  lw      $t7, 0x0000($s4)           ## 00000024
/* 00F08 809B7258 26F002FC */  addiu   $s0, $s7, 0x02FC           ## $s0 = 000002FC
/* 00F0C 809B725C 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 00F10 809B7260 AE0F0000 */  sw      $t7, 0x0000($s0)           ## 000002FC
/* 00F14 809B7264 8E8E0004 */  lw      $t6, 0x0004($s4)           ## 00000028
/* 00F18 809B7268 0311C021 */  addu    $t8, $t8, $s1
/* 00F1C 809B726C AE0E0004 */  sw      $t6, 0x0004($s0)           ## 00000300
/* 00F20 809B7270 8E8F0008 */  lw      $t7, 0x0008($s4)           ## 0000002C
/* 00F24 809B7274 AE0F0008 */  sw      $t7, 0x0008($s0)           ## 00000304
/* 00F28 809B7278 8F181DE4 */  lw      $t8, 0x1DE4($t8)           ## 00011DE4
/* 00F2C 809B727C 3319000F */  andi    $t9, $t8, 0x000F           ## $t9 = 00000000
/* 00F30 809B7280 1720001A */  bne     $t9, $zero, .L809B72EC
/* 00F34 809B7284 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 00F38 809B7288 44816000 */  mtc1    $at, $f12                  ## $f12 = 180.00
/* 00F3C 809B728C 0C00CFC8 */  jal     Rand_CenteredFloat

/* 00F40 809B7290 00000000 */  nop
/* 00F44 809B7294 C6F00310 */  lwc1    $f16, 0x0310($s7)          ## 00000310
/* 00F48 809B7298 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 00F4C 809B729C 44816000 */  mtc1    $at, $f12                  ## $f12 = 180.00
/* 00F50 809B72A0 46008480 */  add.s   $f18, $f16, $f0
/* 00F54 809B72A4 0C00CFC8 */  jal     Rand_CenteredFloat

/* 00F58 809B72A8 E6F20310 */  swc1    $f18, 0x0310($s7)          ## 00000310
/* 00F5C 809B72AC C6E40314 */  lwc1    $f4, 0x0314($s7)           ## 00000314
/* 00F60 809B72B0 C6EC0310 */  lwc1    $f12, 0x0310($s7)          ## 00000310
/* 00F64 809B72B4 46002180 */  add.s   $f6, $f4, $f0
/* 00F68 809B72B8 0C0329C8 */  jal     Math_SinF
/* 00F6C 809B72BC E6E60314 */  swc1    $f6, 0x0314($s7)           ## 00000314
/* 00F70 809B72C0 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00F74 809B72C4 44814000 */  mtc1    $at, $f8                   ## $f8 = 80.00
/* 00F78 809B72C8 C6EC0314 */  lwc1    $f12, 0x0314($s7)          ## 00000314
/* 00F7C 809B72CC 46080282 */  mul.s   $f10, $f0, $f8
/* 00F80 809B72D0 0C0329DD */  jal     Math_CosF
/* 00F84 809B72D4 E6EA0308 */  swc1    $f10, 0x0308($s7)          ## 00000308
/* 00F88 809B72D8 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00F8C 809B72DC 44818000 */  mtc1    $at, $f16                  ## $f16 = 80.00
/* 00F90 809B72E0 00000000 */  nop
/* 00F94 809B72E4 46100482 */  mul.s   $f18, $f0, $f16
/* 00F98 809B72E8 E6F2030C */  swc1    $f18, 0x030C($s7)          ## 0000030C
.L809B72EC:
/* 00F9C 809B72EC 3C0143E0 */  lui     $at, 0x43E0                ## $at = 43E00000
/* 00FA0 809B72F0 44813000 */  mtc1    $at, $f6                   ## $f6 = 448.00
/* 00FA4 809B72F4 C6E40300 */  lwc1    $f4, 0x0300($s7)           ## 00000300
/* 00FA8 809B72F8 C6EA02FC */  lwc1    $f10, 0x02FC($s7)          ## 000002FC
/* 00FAC 809B72FC C6F00308 */  lwc1    $f16, 0x0308($s7)          ## 00000308
/* 00FB0 809B7300 46062201 */  sub.s   $f8, $f4, $f6
/* 00FB4 809B7304 C6E6030C */  lwc1    $f6, 0x030C($s7)           ## 0000030C
/* 00FB8 809B7308 C6E40304 */  lwc1    $f4, 0x0304($s7)           ## 00000304
/* 00FBC 809B730C 46105480 */  add.s   $f18, $f10, $f16
/* 00FC0 809B7310 E6E80300 */  swc1    $f8, 0x0300($s7)           ## 00000300
/* 00FC4 809B7314 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00FC8 809B7318 46062200 */  add.s   $f8, $f4, $f6
/* 00FCC 809B731C E6F202FC */  swc1    $f18, 0x02FC($s7)          ## 000002FC
/* 00FD0 809B7320 8EE70068 */  lw      $a3, 0x0068($s7)           ## 00000068
/* 00FD4 809B7324 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000002FC
/* 00FD8 809B7328 E6E80304 */  swc1    $f8, 0x0304($s7)           ## 00000304
/* 00FDC 809B732C 26E501F4 */  addiu   $a1, $s7, 0x01F4           ## $a1 = 000001F4
/* 00FE0 809B7330 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00FE4 809B7334 E7A00014 */  swc1    $f0, 0x0014($sp)
/* 00FE8 809B7338 0C00CEBB */  jal     func_80033AEC
/* 00FEC 809B733C E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00FF0 809B7340 26F00090 */  addiu   $s0, $s7, 0x0090           ## $s0 = 00000090
/* 00FF4 809B7344 26110164 */  addiu   $s1, $s0, 0x0164           ## $s1 = 000001F4
/* 00FF8 809B7348 26120158 */  addiu   $s2, $s0, 0x0158           ## $s2 = 000001E8
/* 00FFC 809B734C 24130090 */  addiu   $s3, $zero, 0x0090         ## $s3 = 00000090
/* 01000 809B7350 27BE006C */  addiu   $s8, $sp, 0x006C           ## $s8 = FFFFFFF4
.L809B7354:
/* 01004 809B7354 02202025 */  or      $a0, $s1, $zero            ## $a0 = 000001F4
/* 01008 809B7358 02402825 */  or      $a1, $s2, $zero            ## $a1 = 000001E8
/* 0100C 809B735C 03C03025 */  or      $a2, $s8, $zero            ## $a2 = FFFFFFF4
/* 01010 809B7360 0C00D611 */  jal     func_80035844
/* 01014 809B7364 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01018 809B7368 C60C0164 */  lwc1    $f12, 0x0164($s0)          ## 000001F4
/* 0101C 809B736C C60E0168 */  lwc1    $f14, 0x0168($s0)          ## 000001F8
/* 01020 809B7370 8E06016C */  lw      $a2, 0x016C($s0)           ## 000001FC
/* 01024 809B7374 0C034261 */  jal     Matrix_Translate
/* 01028 809B7378 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0102C 809B737C 87A4006C */  lh      $a0, 0x006C($sp)
/* 01030 809B7380 87A5006E */  lh      $a1, 0x006E($sp)
/* 01034 809B7384 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01038 809B7388 0C034421 */  jal     Matrix_RotateRPY
/* 0103C 809B738C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01040 809B7390 3C04809C */  lui     $a0, %hi(D_809B8080)       ## $a0 = 809C0000
/* 01044 809B7394 24848080 */  addiu   $a0, $a0, %lo(D_809B8080)  ## $a0 = 809B8080
/* 01048 809B7398 0C0346BD */  jal     Matrix_MultVec3f
/* 0104C 809B739C 02402825 */  or      $a1, $s2, $zero            ## $a1 = 000001E8
/* 01050 809B73A0 2673FFF4 */  addiu   $s3, $s3, 0xFFF4           ## $s3 = 00000084
/* 01054 809B73A4 2610FFF4 */  addiu   $s0, $s0, 0xFFF4           ## $s0 = 00000084
/* 01058 809B73A8 2631FFF4 */  addiu   $s1, $s1, 0xFFF4           ## $s1 = 000001E8
/* 0105C 809B73AC 0661FFE9 */  bgez    $s3, .L809B7354
/* 01060 809B73B0 2652FFF4 */  addiu   $s2, $s2, 0xFFF4           ## $s2 = 000001DC
/* 01064 809B73B4 26F00158 */  addiu   $s0, $s7, 0x0158           ## $s0 = 00000158
/* 01068 809B73B8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000158
/* 0106C 809B73BC 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000024
/* 01070 809B73C0 03C03025 */  or      $a2, $s8, $zero            ## $a2 = FFFFFFF4
/* 01074 809B73C4 0C00D611 */  jal     func_80035844
/* 01078 809B73C8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0107C 809B73CC C6EC0024 */  lwc1    $f12, 0x0024($s7)          ## 00000024
/* 01080 809B73D0 C6EE0028 */  lwc1    $f14, 0x0028($s7)          ## 00000028
/* 01084 809B73D4 8EE6002C */  lw      $a2, 0x002C($s7)           ## 0000002C
/* 01088 809B73D8 0C034261 */  jal     Matrix_Translate
/* 0108C 809B73DC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01090 809B73E0 86E7031C */  lh      $a3, 0x031C($s7)           ## 0000031C
/* 01094 809B73E4 240800B6 */  addiu   $t0, $zero, 0x00B6         ## $t0 = 000000B6
/* 01098 809B73E8 AFA80010 */  sw      $t0, 0x0010($sp)
/* 0109C 809B73EC 26E400B6 */  addiu   $a0, $s7, 0x00B6           ## $a0 = 000000B6
/* 010A0 809B73F0 87A5006E */  lh      $a1, 0x006E($sp)
/* 010A4 809B73F4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 010A8 809B73F8 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 010AC 809B73FC 87A5006C */  lh      $a1, 0x006C($sp)
/* 010B0 809B7400 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 010B4 809B7404 86E7031C */  lh      $a3, 0x031C($s7)           ## 0000031C
/* 010B8 809B7408 00A12821 */  addu    $a1, $a1, $at
/* 010BC 809B740C 00052C00 */  sll     $a1, $a1, 16
/* 010C0 809B7410 240900B6 */  addiu   $t1, $zero, 0x00B6         ## $t1 = 000000B6
/* 010C4 809B7414 AFA90010 */  sw      $t1, 0x0010($sp)
/* 010C8 809B7418 00052C03 */  sra     $a1, $a1, 16
/* 010CC 809B741C 26E400B4 */  addiu   $a0, $s7, 0x00B4           ## $a0 = 000000B4
/* 010D0 809B7420 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 010D4 809B7424 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 010D8 809B7428 86E400B4 */  lh      $a0, 0x00B4($s7)           ## 000000B4
/* 010DC 809B742C 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 010E0 809B7430 86E500B6 */  lh      $a1, 0x00B6($s7)           ## 000000B6
/* 010E4 809B7434 00812021 */  addu    $a0, $a0, $at
/* 010E8 809B7438 00042400 */  sll     $a0, $a0, 16
/* 010EC 809B743C 00042403 */  sra     $a0, $a0, 16
/* 010F0 809B7440 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 010F4 809B7444 0C034421 */  jal     Matrix_RotateRPY
/* 010F8 809B7448 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 010FC 809B744C 3C04809C */  lui     $a0, %hi(D_809B8080)       ## $a0 = 809C0000
/* 01100 809B7450 24848080 */  addiu   $a0, $a0, %lo(D_809B8080)  ## $a0 = 809B8080
/* 01104 809B7454 0C0346BD */  jal     Matrix_MultVec3f
/* 01108 809B7458 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000158
/* 0110C 809B745C 02E08025 */  or      $s0, $s7, $zero            ## $s0 = 00000000
/* 01110 809B7460 26F10164 */  addiu   $s1, $s7, 0x0164           ## $s1 = 00000164
/* 01114 809B7464 26F20158 */  addiu   $s2, $s7, 0x0158           ## $s2 = 00000158
/* 01118 809B7468 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 0111C 809B746C 02E09825 */  or      $s3, $s7, $zero            ## $s3 = 00000000
/* 01120 809B7470 26F502AA */  addiu   $s5, $s7, 0x02AA           ## $s5 = 000002AA
/* 01124 809B7474 26F602A8 */  addiu   $s6, $s7, 0x02A8           ## $s6 = 000002A8
.L809B7478:
/* 01128 809B7478 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000158
/* 0112C 809B747C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000164
/* 01130 809B7480 03C03025 */  or      $a2, $s8, $zero            ## $a2 = FFFFFFF4
/* 01134 809B7484 0C00D611 */  jal     func_80035844
/* 01138 809B7488 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0113C 809B748C C60C0158 */  lwc1    $f12, 0x0158($s0)          ## 00000158
/* 01140 809B7490 C60E015C */  lwc1    $f14, 0x015C($s0)          ## 0000015C
/* 01144 809B7494 8E060160 */  lw      $a2, 0x0160($s0)           ## 00000160
/* 01148 809B7498 0C034261 */  jal     Matrix_Translate
/* 0114C 809B749C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01150 809B74A0 86E7031C */  lh      $a3, 0x031C($s7)           ## 0000031C
/* 01154 809B74A4 240A00B6 */  addiu   $t2, $zero, 0x00B6         ## $t2 = 000000B6
/* 01158 809B74A8 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 0115C 809B74AC 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 000002AA
/* 01160 809B74B0 87A5006E */  lh      $a1, 0x006E($sp)
/* 01164 809B74B4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 01168 809B74B8 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 0116C 809B74BC 87A5006C */  lh      $a1, 0x006C($sp)
/* 01170 809B74C0 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 01174 809B74C4 86E7031C */  lh      $a3, 0x031C($s7)           ## 0000031C
/* 01178 809B74C8 00A12821 */  addu    $a1, $a1, $at
/* 0117C 809B74CC 00052C00 */  sll     $a1, $a1, 16
/* 01180 809B74D0 240B00B6 */  addiu   $t3, $zero, 0x00B6         ## $t3 = 000000B6
/* 01184 809B74D4 AFAB0010 */  sw      $t3, 0x0010($sp)
/* 01188 809B74D8 00052C03 */  sra     $a1, $a1, 16
/* 0118C 809B74DC 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 000002A8
/* 01190 809B74E0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 01194 809B74E4 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 01198 809B74E8 866402A8 */  lh      $a0, 0x02A8($s3)           ## 000002A8
/* 0119C 809B74EC 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 011A0 809B74F0 866502AA */  lh      $a1, 0x02AA($s3)           ## 000002AA
/* 011A4 809B74F4 00812021 */  addu    $a0, $a0, $at
/* 011A8 809B74F8 00042400 */  sll     $a0, $a0, 16
/* 011AC 809B74FC 00042403 */  sra     $a0, $a0, 16
/* 011B0 809B7500 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 011B4 809B7504 0C034421 */  jal     Matrix_RotateRPY
/* 011B8 809B7508 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 011BC 809B750C 3C04809C */  lui     $a0, %hi(D_809B8080)       ## $a0 = 809C0000
/* 011C0 809B7510 24848080 */  addiu   $a0, $a0, %lo(D_809B8080)  ## $a0 = 809B8080
/* 011C4 809B7514 0C0346BD */  jal     Matrix_MultVec3f
/* 011C8 809B7518 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000164
/* 011CC 809B751C 26940006 */  addiu   $s4, $s4, 0x0006           ## $s4 = 00000006
/* 011D0 809B7520 2401004E */  addiu   $at, $zero, 0x004E         ## $at = 0000004E
/* 011D4 809B7524 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = 0000000C
/* 011D8 809B7528 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 00000170
/* 011DC 809B752C 2652000C */  addiu   $s2, $s2, 0x000C           ## $s2 = 00000164
/* 011E0 809B7530 26730006 */  addiu   $s3, $s3, 0x0006           ## $s3 = 00000006
/* 011E4 809B7534 26B50006 */  addiu   $s5, $s5, 0x0006           ## $s5 = 000002B0
/* 011E8 809B7538 1681FFCF */  bne     $s4, $at, .L809B7478
/* 011EC 809B753C 26D60006 */  addiu   $s6, $s6, 0x0006           ## $s6 = 000002AE
/* 011F0 809B7540 86EE0318 */  lh      $t6, 0x0318($s7)           ## 00000318
/* 011F4 809B7544 86EC02F0 */  lh      $t4, 0x02F0($s7)           ## 000002F0
/* 011F8 809B7548 86ED02F2 */  lh      $t5, 0x02F2($s7)           ## 000002F2
/* 011FC 809B754C 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 01200 809B7550 A6EF0318 */  sh      $t7, 0x0318($s7)           ## 00000318
/* 01204 809B7554 86F80318 */  lh      $t8, 0x0318($s7)           ## 00000318
/* 01208 809B7558 A6EC02F6 */  sh      $t4, 0x02F6($s7)           ## 000002F6
/* 0120C 809B755C A6ED02F8 */  sh      $t5, 0x02F8($s7)           ## 000002F8
/* 01210 809B7560 57000004 */  bnel    $t8, $zero, .L809B7574
/* 01214 809B7564 8FBF0044 */  lw      $ra, 0x0044($sp)
/* 01218 809B7568 0C26D95A */  jal     func_809B6568
/* 0121C 809B756C 02E02025 */  or      $a0, $s7, $zero            ## $a0 = 00000000
/* 01220 809B7570 8FBF0044 */  lw      $ra, 0x0044($sp)
.L809B7574:
/* 01224 809B7574 8FB00020 */  lw      $s0, 0x0020($sp)
/* 01228 809B7578 8FB10024 */  lw      $s1, 0x0024($sp)
/* 0122C 809B757C 8FB20028 */  lw      $s2, 0x0028($sp)
/* 01230 809B7580 8FB3002C */  lw      $s3, 0x002C($sp)
/* 01234 809B7584 8FB40030 */  lw      $s4, 0x0030($sp)
/* 01238 809B7588 8FB50034 */  lw      $s5, 0x0034($sp)
/* 0123C 809B758C 8FB60038 */  lw      $s6, 0x0038($sp)
/* 01240 809B7590 8FB7003C */  lw      $s7, 0x003C($sp)
/* 01244 809B7594 8FBE0040 */  lw      $s8, 0x0040($sp)
/* 01248 809B7598 03E00008 */  jr      $ra
/* 0124C 809B759C 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
