glabel func_809517A0
/* 024E0 809517A0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 024E4 809517A4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 024E8 809517A8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 024EC 809517AC AFBF002C */  sw      $ra, 0x002C($sp)
/* 024F0 809517B0 3C040600 */  lui     $a0, %hi(D_06005184)                ## $a0 = 06000000
/* 024F4 809517B4 0C028800 */  jal     Animation_GetLastFrame

/* 024F8 809517B8 24845184 */  addiu   $a0, $a0, %lo(D_06005184)           ## $a0 = 06005184
/* 024FC 809517BC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 02500 809517C0 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 02504 809517C4 3C050600 */  lui     $a1, %hi(D_06005184)                ## $a1 = 06000000
/* 02508 809517C8 46802020 */  cvt.s.w $f0, $f4
/* 0250C 809517CC 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 02510 809517D0 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 02514 809517D4 24A55184 */  addiu   $a1, $a1, %lo(D_06005184)           ## $a1 = 06005184
/* 02518 809517D8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0251C 809517DC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02520 809517E0 44070000 */  mfc1    $a3, $f0
/* 02524 809517E4 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 02528 809517E8 0C029468 */  jal     Animation_Change

/* 0252C 809517EC E7A60018 */  swc1    $f6, 0x0018($sp)
/* 02530 809517F0 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 02534 809517F4 3C01C3E1 */  lui     $at, 0xC3E1                ## $at = C3E10000
/* 02538 809517F8 44814000 */  mtc1    $at, $f8                   ## $f8 = -450.00
/* 0253C 809517FC 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 02540 80951800 01E1C024 */  and     $t8, $t7, $at
/* 02544 80951804 24190019 */  addiu   $t9, $zero, 0x0019         ## $t9 = 00000019
/* 02548 80951808 AE180004 */  sw      $t8, 0x0004($s0)           ## 00000004
/* 0254C 8095180C AE190198 */  sw      $t9, 0x0198($s0)           ## 00000198
/* 02550 80951810 3C018096 */  lui     $at, %hi(D_809668D0)       ## $at = 80960000
/* 02554 80951814 24080080 */  addiu   $t0, $zero, 0x0080         ## $t0 = 00000080
/* 02558 80951818 3C058095 */  lui     $a1, %hi(func_80951844)    ## $a1 = 80950000
/* 0255C 8095181C E60800BC */  swc1    $f8, 0x00BC($s0)           ## 000000BC
/* 02560 80951820 A02868D0 */  sb      $t0, %lo(D_809668D0)($at)
/* 02564 80951824 24A51844 */  addiu   $a1, $a1, %lo(func_80951844) ## $a1 = 80951844
/* 02568 80951828 0C253CB0 */  jal     func_8094F2C0
/* 0256C 8095182C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02570 80951830 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02574 80951834 8FB00028 */  lw      $s0, 0x0028($sp)
/* 02578 80951838 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0257C 8095183C 03E00008 */  jr      $ra
/* 02580 80951840 00000000 */  nop
