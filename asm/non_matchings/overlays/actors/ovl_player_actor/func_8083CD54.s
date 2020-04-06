glabel func_8083CD54
/* 0AB44 8083CD54 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0AB48 8083CD58 AFA60038 */  sw      $a2, 0x0038($sp)
/* 0AB4C 8083CD5C 87AE003A */  lh      $t6, 0x003A($sp)
/* 0AB50 8083CD60 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0AB54 8083CD64 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0AB58 8083CD68 AFA40030 */  sw      $a0, 0x0030($sp)
/* 0AB5C 8083CD6C 3C068084 */  lui     $a2, %hi(func_80841BA8)    ## $a2 = 80840000
/* 0AB60 8083CD70 A4AE083C */  sh      $t6, 0x083C($a1)           ## 0000083C
/* 0AB64 8083CD74 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0AB68 8083CD78 8FA40030 */  lw      $a0, 0x0030($sp)
/* 0AB6C 8083CD7C 24C61BA8 */  addiu   $a2, $a2, %lo(func_80841BA8) ## $a2 = 80841BA8
/* 0AB70 8083CD80 0C20D716 */  jal     func_80835C58
/* 0AB74 8083CD84 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0AB78 8083CD88 240F04B0 */  addiu   $t7, $zero, 0x04B0         ## $t7 = 000004B0
/* 0AB7C 8083CD8C A60F087E */  sh      $t7, 0x087E($s0)           ## 0000087E
/* 0AB80 8083CD90 8618087E */  lh      $t8, 0x087E($s0)           ## 0000087E
/* 0AB84 8083CD94 3C018085 */  lui     $at, %hi(D_808535E8)       ## $at = 80850000
/* 0AB88 8083CD98 C42835E8 */  lwc1    $f8, %lo(D_808535E8)($at)
/* 0AB8C 8083CD9C 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 0AB90 8083CDA0 9209015B */  lbu     $t1, 0x015B($s0)           ## 0000015B
/* 0AB94 8083CDA4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0AB98 8083CDA8 468021A0 */  cvt.s.w $f6, $f4
/* 0AB9C 8083CDAC 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 0ABA0 8083CDB0 44819000 */  mtc1    $at, $f18                  ## $f18 = -6.00
/* 0ABA4 8083CDB4 3C068085 */  lui     $a2, %hi(D_80853B84)       ## $a2 = 80850000
/* 0ABA8 8083CDB8 00095080 */  sll     $t2, $t1,  2
/* 0ABAC 8083CDBC 00CA3021 */  addu    $a2, $a2, $t2
/* 0ABB0 8083CDC0 46083282 */  mul.s   $f10, $f6, $f8
/* 0ABB4 8083CDC4 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 0ABB8 8083CDC8 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 0ABBC 8083CDCC 4600540D */  trunc.w.s $f16, $f10
/* 0ABC0 8083CDD0 44088000 */  mfc1    $t0, $f16
/* 0ABC4 8083CDD4 00000000 */  nop
/* 0ABC8 8083CDD8 A608087E */  sh      $t0, 0x087E($s0)           ## 0000087E
/* 0ABCC 8083CDDC AFA00018 */  sw      $zero, 0x0018($sp)
/* 0ABD0 8083CDE0 8CC63B84 */  lw      $a2, %lo(D_80853B84)($a2)
/* 0ABD4 8083CDE4 8FA40030 */  lw      $a0, 0x0030($sp)
/* 0ABD8 8083CDE8 E7A00014 */  swc1    $f0, 0x0014($sp)
/* 0ABDC 8083CDEC E7A00010 */  swc1    $f0, 0x0010($sp)
/* 0ABE0 8083CDF0 0C028FC2 */  jal     SkelAnime_ChangeLinkAnim
/* 0ABE4 8083CDF4 E7B2001C */  swc1    $f18, 0x001C($sp)
/* 0ABE8 8083CDF8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0ABEC 8083CDFC 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0ABF0 8083CE00 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0ABF4 8083CE04 03E00008 */  jr      $ra
/* 0ABF8 8083CE08 00000000 */  nop


