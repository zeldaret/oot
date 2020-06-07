glabel func_80AAD770
/* 00000 80AAD770 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 80AAD774 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00008 80AAD778 AFA40038 */  sw      $a0, 0x0038($sp)
/* 0000C 80AAD77C AFA60040 */  sw      $a2, 0x0040($sp)
/* 00010 80AAD780 8CC20000 */  lw      $v0, 0x0000($a2)           ## 00000000
/* 00014 80AAD784 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00018 80AAD788 00057900 */  sll     $t7, $a1,  4
/* 0001C 80AAD78C 04400003 */  bltz    $v0, .L80AAD79C
/* 00020 80AAD790 3C1880AB */  lui     $t8, %hi(D_80AAEB38)       ## $t8 = 80AB0000
/* 00024 80AAD794 14A20005 */  bne     $a1, $v0, .L80AAD7AC
/* 00028 80AAD798 0005C900 */  sll     $t9, $a1,  4
.L80AAD79C:
/* 0002C 80AAD79C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00030 80AAD7A0 2718EB38 */  addiu   $t8, $t8, %lo(D_80AAEB38)  ## $t8 = 80AAEB38
/* 00034 80AAD7A4 10000005 */  beq     $zero, $zero, .L80AAD7BC
/* 00038 80AAD7A8 01F81821 */  addu    $v1, $t7, $t8
.L80AAD7AC:
/* 0003C 80AAD7AC 3C0880AB */  lui     $t0, %hi(D_80AAEB38)       ## $t0 = 80AB0000
/* 00040 80AAD7B0 2508EB38 */  addiu   $t0, $t0, %lo(D_80AAEB38)  ## $t0 = 80AAEB38
/* 00044 80AAD7B4 03281821 */  addu    $v1, $t9, $t0
/* 00048 80AAD7B8 C460000C */  lwc1    $f0, 0x000C($v1)           ## 0000000C
.L80AAD7BC:
/* 0004C 80AAD7BC C4640004 */  lwc1    $f4, 0x0004($v1)           ## 00000004
/* 00050 80AAD7C0 4604303E */  c.le.s  $f6, $f4
/* 00054 80AAD7C4 00000000 */  nop
/* 00058 80AAD7C8 45020017 */  bc1fl   .L80AAD828
/* 0005C 80AAD7CC 8C640000 */  lw      $a0, 0x0000($v1)           ## 00000000
/* 00060 80AAD7D0 8C640000 */  lw      $a0, 0x0000($v1)           ## 00000000
/* 00064 80AAD7D4 AFA3002C */  sw      $v1, 0x002C($sp)
/* 00068 80AAD7D8 AFA5003C */  sw      $a1, 0x003C($sp)
/* 0006C 80AAD7DC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00070 80AAD7E0 E7A00034 */  swc1    $f0, 0x0034($sp)
/* 00074 80AAD7E4 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 00078 80AAD7E8 8FA3002C */  lw      $v1, 0x002C($sp)
/* 0007C 80AAD7EC C7A00034 */  lwc1    $f0, 0x0034($sp)
/* 00080 80AAD7F0 468042A0 */  cvt.s.w $f10, $f8
/* 00084 80AAD7F4 8FA40038 */  lw      $a0, 0x0038($sp)
/* 00088 80AAD7F8 90690008 */  lbu     $t1, 0x0008($v1)           ## 00000008
/* 0008C 80AAD7FC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00090 80AAD800 8C650000 */  lw      $a1, 0x0000($v1)           ## 00000000
/* 00094 80AAD804 8C660004 */  lw      $a2, 0x0004($v1)           ## 00000004
/* 00098 80AAD808 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 0009C 80AAD80C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 000A0 80AAD810 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 000A4 80AAD814 0C029468 */  jal     SkelAnime_ChangeAnim

/* 000A8 80AAD818 AFA90014 */  sw      $t1, 0x0014($sp)
/* 000AC 80AAD81C 10000016 */  beq     $zero, $zero, .L80AAD878
/* 000B0 80AAD820 8FAB003C */  lw      $t3, 0x003C($sp)
/* 000B4 80AAD824 8C640000 */  lw      $a0, 0x0000($v1)           ## 00000000
.L80AAD828:
/* 000B8 80AAD828 AFA3002C */  sw      $v1, 0x002C($sp)
/* 000BC 80AAD82C AFA5003C */  sw      $a1, 0x003C($sp)
/* 000C0 80AAD830 0C028800 */  jal     SkelAnime_GetFrameCount

/* 000C4 80AAD834 E7A00034 */  swc1    $f0, 0x0034($sp)
/* 000C8 80AAD838 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 000CC 80AAD83C 8FA3002C */  lw      $v1, 0x002C($sp)
/* 000D0 80AAD840 C7A00034 */  lwc1    $f0, 0x0034($sp)
/* 000D4 80AAD844 46808420 */  cvt.s.w $f16, $f16
/* 000D8 80AAD848 8FA40038 */  lw      $a0, 0x0038($sp)
/* 000DC 80AAD84C 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 000E0 80AAD850 906A0008 */  lbu     $t2, 0x0008($v1)           ## 00000008
/* 000E4 80AAD854 8C650000 */  lw      $a1, 0x0000($v1)           ## 00000000
/* 000E8 80AAD858 8C660004 */  lw      $a2, 0x0004($v1)           ## 00000004
/* 000EC 80AAD85C 44078000 */  mfc1    $a3, $f16
/* 000F0 80AAD860 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 000F4 80AAD864 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 000F8 80AAD868 AFAA0014 */  sw      $t2, 0x0014($sp)
/* 000FC 80AAD86C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00100 80AAD870 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 00104 80AAD874 8FAB003C */  lw      $t3, 0x003C($sp)
.L80AAD878:
/* 00108 80AAD878 8FAC0040 */  lw      $t4, 0x0040($sp)
/* 0010C 80AAD87C AD8B0000 */  sw      $t3, 0x0000($t4)           ## 00000000
/* 00110 80AAD880 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00114 80AAD884 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00118 80AAD888 03E00008 */  jr      $ra
/* 0011C 80AAD88C 00000000 */  nop
