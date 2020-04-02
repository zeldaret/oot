glabel func_80A51C4C
/* 0097C 80A51C4C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00980 80A51C50 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00984 80A51C54 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00988 80A51C58 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0098C 80A51C5C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00990 80A51C60 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00994 80A51C64 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00998 80A51C68 24845C30 */  addiu   $a0, $a0, 0x5C30           ## $a0 = 06005C30
/* 0099C 80A51C6C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 009A0 80A51C70 8E060284 */  lw      $a2, 0x0284($s0)           ## 00000284
/* 009A4 80A51C74 AFA00014 */  sw      $zero, 0x0014($sp)
/* 009A8 80A51C78 468021A0 */  cvt.s.w $f6, $f4
/* 009AC 80A51C7C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 009B0 80A51C80 24A55C30 */  addiu   $a1, $a1, 0x5C30           ## $a1 = 06005C30
/* 009B4 80A51C84 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 009B8 80A51C88 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 009BC 80A51C8C 4600320D */  trunc.w.s $f8, $f6
/* 009C0 80A51C90 440F4000 */  mfc1    $t7, $f8
/* 009C4 80A51C94 00000000 */  nop
/* 009C8 80A51C98 000FC400 */  sll     $t8, $t7, 16
/* 009CC 80A51C9C 0018CC03 */  sra     $t9, $t8, 16
/* 009D0 80A51CA0 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 009D4 80A51CA4 00000000 */  nop
/* 009D8 80A51CA8 46805420 */  cvt.s.w $f16, $f10
/* 009DC 80A51CAC E7B00010 */  swc1    $f16, 0x0010($sp)
/* 009E0 80A51CB0 C6120288 */  lwc1    $f18, 0x0288($s0)          ## 00000288
/* 009E4 80A51CB4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 009E8 80A51CB8 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 009EC 80A51CBC A6000264 */  sh      $zero, 0x0264($s0)         ## 00000264
/* 009F0 80A51CC0 3C0180A5 */  lui     $at, %hi(D_80A52C34)       ## $at = 80A50000
/* 009F4 80A51CC4 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 009F8 80A51CC8 C42C2C34 */  lwc1    $f12, %lo(D_80A52C34)($at)
/* 009FC 80A51CCC 4600010D */  trunc.w.s $f4, $f0
/* 00A00 80A51CD0 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00A04 80A51CD4 44816000 */  mtc1    $at, $f12                  ## $f12 = 50.00
/* 00A08 80A51CD8 44092000 */  mfc1    $t1, $f4
/* 00A0C 80A51CDC 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 00A10 80A51CE0 A6090262 */  sh      $t1, 0x0262($s0)           ## 00000262
/* 00A14 80A51CE4 4600018D */  trunc.w.s $f6, $f0
/* 00A18 80A51CE8 3C0F80A5 */  lui     $t7, %hi(func_80A51D18)    ## $t7 = 80A50000
/* 00A1C 80A51CEC 25EF1D18 */  addiu   $t7, $t7, %lo(func_80A51D18) ## $t7 = 80A51D18
/* 00A20 80A51CF0 AE0F025C */  sw      $t7, 0x025C($s0)           ## 0000025C
/* 00A24 80A51CF4 440D3000 */  mfc1    $t5, $f6
/* 00A28 80A51CF8 00000000 */  nop
/* 00A2C 80A51CFC 25AE0032 */  addiu   $t6, $t5, 0x0032           ## $t6 = 00000032
/* 00A30 80A51D00 A60E02A6 */  sh      $t6, 0x02A6($s0)           ## 000002A6
/* 00A34 80A51D04 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00A38 80A51D08 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00A3C 80A51D0C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00A40 80A51D10 03E00008 */  jr      $ra
/* 00A44 80A51D14 00000000 */  nop


