glabel func_80933290
/* 06CC0 80933290 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 06CC4 80933294 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 06CC8 80933298 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 06CCC 8093329C AFB00020 */  sw      $s0, 0x0020($sp)
/* 06CD0 809332A0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 06CD4 809332A4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 06CD8 809332A8 AFA50034 */  sw      $a1, 0x0034($sp)
/* 06CDC 809332AC 3C05437A */  lui     $a1, 0x437A                ## $a1 = 437A0000
/* 06CE0 809332B0 24840028 */  addiu   $a0, $a0, 0x0028           ## $a0 = 00000028
/* 06CE4 809332B4 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 06CE8 809332B8 3C07428C */  lui     $a3, 0x428C                ## $a3 = 428C0000
/* 06CEC 809332BC 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 06CF0 809332C0 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 06CF4 809332C4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 06CF8 809332C8 0C02927F */  jal     SkelAnime_Update

/* 06CFC 809332CC AFA4002C */  sw      $a0, 0x002C($sp)
/* 06D00 809332D0 1040000D */  beq     $v0, $zero, .L80933308
/* 06D04 809332D4 8FA4002C */  lw      $a0, 0x002C($sp)
/* 06D08 809332D8 820E0195 */  lb      $t6, 0x0195($s0)           ## 00000195
/* 06D0C 809332DC 55C0000B */  bnel    $t6, $zero, .L8093330C
/* 06D10 809332E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06D14 809332E4 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 06D18 809332E8 3C058093 */  lui     $a1, %hi(D_80937884)       ## $a1 = 80930000
/* 06D1C 809332EC 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 06D20 809332F0 000FC080 */  sll     $t8, $t7,  2
/* 06D24 809332F4 00B82821 */  addu    $a1, $a1, $t8
/* 06D28 809332F8 0C029490 */  jal     Animation_MorphToPlayOnce
/* 06D2C 809332FC 8CA57884 */  lw      $a1, %lo(D_80937884)($a1)
/* 06D30 80933300 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 06D34 80933304 A2190195 */  sb      $t9, 0x0195($s0)           ## 00000195
.L80933308:
/* 06D38 80933308 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8093330C:
/* 06D3C 8093330C 0C00BE5D */  jal     func_8002F974
/* 06D40 80933310 24053167 */  addiu   $a1, $zero, 0x3167         ## $a1 = 00003167
/* 06D44 80933314 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 06D48 80933318 8FB00020 */  lw      $s0, 0x0020($sp)
/* 06D4C 8093331C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 06D50 80933320 03E00008 */  jr      $ra
/* 06D54 80933324 00000000 */  nop
