glabel func_800FAEB4
/* B72054 800FAEB4 3C013F80 */  lui   $at, 0x3f80
/* B72058 800FAEB8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B7205C 800FAEBC 3C078017 */  lui   $a3, %hi(D_8016E750)
/* B72060 800FAEC0 44810000 */  mtc1  $at, $f0
/* B72064 800FAEC4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B72068 800FAEC8 24E7E750 */  addiu $a3, %lo(D_8016E750)
/* B7206C 800FAECC 00003025 */  move  $a2, $zero
/* B72070 800FAED0 24080264 */  li    $t0, 612
/* B72074 800FAED4 2404007F */  li    $a0, 127
.L800FAED8:
/* B72078 800FAED8 00C80019 */  multu $a2, $t0
/* B7207C 800FAEDC 00067880 */  sll   $t7, $a2, 2
/* B72080 800FAEE0 01E67821 */  addu  $t7, $t7, $a2
/* B72084 800FAEE4 000F7880 */  sll   $t7, $t7, 2
/* B72088 800FAEE8 01E67823 */  subu  $t7, $t7, $a2
/* B7208C 800FAEEC 000F78C0 */  sll   $t7, $t7, 3
/* B72090 800FAEF0 01E67821 */  addu  $t7, $t7, $a2
/* B72094 800FAEF4 000F7880 */  sll   $t7, $t7, 2
/* B72098 800FAEF8 00EF1821 */  addu  $v1, $a3, $t7
/* B7209C 800FAEFC 00001025 */  move  $v0, $zero
/* B720A0 800FAF00 00007012 */  mflo  $t6
/* B720A4 800FAF04 00EE2821 */  addu  $a1, $a3, $t6
/* B720A8 800FAF08 E4A00000 */  swc1  $f0, ($a1)
/* B720AC 800FAF0C A4A0000C */  sh    $zero, 0xc($a1)
/* B720B0 800FAF10 A0A00013 */  sb    $zero, 0x13($a1)
.L800FAF14:
/* B720B4 800FAF14 0062C021 */  addu  $t8, $v1, $v0
/* B720B8 800FAF18 24420001 */  addiu $v0, $v0, 1
/* B720BC 800FAF1C 304200FF */  andi  $v0, $v0, 0xff
/* B720C0 800FAF20 28410004 */  slti  $at, $v0, 4
/* B720C4 800FAF24 1420FFFB */  bnez  $at, .L800FAF14
/* B720C8 800FAF28 A304000E */   sb    $a0, 0xe($t8)
/* B720CC 800FAF2C 24C60001 */  addiu $a2, $a2, 1
/* B720D0 800FAF30 30C600FF */  andi  $a2, $a2, 0xff
/* B720D4 800FAF34 28C10004 */  slti  $at, $a2, 4
/* B720D8 800FAF38 1420FFE7 */  bnez  $at, .L800FAED8
/* B720DC 800FAF3C 00000000 */   nop   
/* B720E0 800FAF40 0C03EB7E */  jal   func_800FADF8
/* B720E4 800FAF44 00000000 */   nop   
/* B720E8 800FAF48 8FBF0014 */  lw    $ra, 0x14($sp)
/* B720EC 800FAF4C 27BD0018 */  addiu $sp, $sp, 0x18
/* B720F0 800FAF50 03E00008 */  jr    $ra
/* B720F4 800FAF54 00000000 */   nop   