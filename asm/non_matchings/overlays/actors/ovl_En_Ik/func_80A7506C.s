glabel func_80A7506C
/* 00D5C 80A7506C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00D60 80A75070 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00D64 80A75074 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D68 80A75078 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00D6C 80A7507C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00D70 80A75080 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00D74 80A75084 248429FC */  addiu   $a0, $a0, 0x29FC           ## $a0 = 060029FC
/* 00D78 80A75088 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00D7C 80A7508C A20002FE */  sb      $zero, 0x02FE($s0)         ## 000002FE
/* 00D80 80A75090 821902FE */  lb      $t9, 0x02FE($s0)           ## 000002FE
/* 00D84 80A75094 46802020 */  cvt.s.w $f0, $f4
/* 00D88 80A75098 24180007 */  addiu   $t8, $zero, 0x0007         ## $t8 = 00000007
/* 00D8C 80A7509C 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00D90 80A750A0 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 00D94 80A750A4 A21802F8 */  sb      $t8, 0x02F8($s0)           ## 000002F8
/* 00D98 80A750A8 A21902FF */  sb      $t9, 0x02FF($s0)           ## 000002FF
/* 00D9C 80A750AC 4600018D */  trunc.w.s $f6, $f0
/* 00DA0 80A750B0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00DA4 80A750B4 24A529FC */  addiu   $a1, $a1, 0x29FC           ## $a1 = 060029FC
/* 00DA8 80A750B8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00DAC 80A750BC 440F3000 */  mfc1    $t7, $f6
/* 00DB0 80A750C0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00DB4 80A750C4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00DB8 80A750C8 A20F02F9 */  sb      $t7, 0x02F9($s0)           ## 000002F9
/* 00DBC 80A750CC AFA00014 */  sw      $zero, 0x0014($sp)
/* 00DC0 80A750D0 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00DC4 80A750D4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00DC8 80A750D8 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00DCC 80A750DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DD0 80A750E0 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00DD4 80A750E4 240539C1 */  addiu   $a1, $zero, 0x39C1         ## $a1 = 000039C1
/* 00DD8 80A750E8 3C0580A7 */  lui     $a1, %hi(func_80A7510C)    ## $a1 = 80A70000
/* 00DDC 80A750EC 24A5510C */  addiu   $a1, $a1, %lo(func_80A7510C) ## $a1 = 80A7510C
/* 00DE0 80A750F0 0C29D0E4 */  jal     func_80A74390
/* 00DE4 80A750F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DE8 80A750F8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00DEC 80A750FC 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00DF0 80A75100 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00DF4 80A75104 03E00008 */  jr      $ra
/* 00DF8 80A75108 00000000 */  nop


