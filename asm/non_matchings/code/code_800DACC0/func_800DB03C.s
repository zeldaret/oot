glabel func_800DB03C
/* B521DC 800DB03C 3C078017 */  lui   $a3, %hi(gAudioContext) # $a3, 0x8017
/* B521E0 800DB040 24E7F180 */  addiu $a3, %lo(gAudioContext) # addiu $a3, $a3, -0xe80
/* B521E4 800DB044 8CE32894 */  lw    $v1, 0x2894($a3)
/* B521E8 800DB048 00002825 */  move  $a1, $zero
/* B521EC 800DB04C 00640019 */  multu $v1, $a0
/* B521F0 800DB050 00001012 */  mflo  $v0
/* B521F4 800DB054 00023140 */  sll   $a2, $v0, 5
/* B521F8 800DB058 18600018 */  blez  $v1, .L800DB0BC
/* B521FC 800DB05C 00001825 */   move  $v1, $zero
.L800DB060:
/* B52200 800DB060 8CEE352C */  lw    $t6, 0x352c($a3)
/* B52204 800DB064 8CEF0014 */  lw    $t7, 0x14($a3)
/* B52208 800DB068 006E1021 */  addu  $v0, $v1, $t6
/* B5220C 800DB06C 8C5800C0 */  lw    $t8, 0xc0($v0)
/* B52210 800DB070 244200C0 */  addiu $v0, $v0, 0xc0
/* B52214 800DB074 00CF2021 */  addu  $a0, $a2, $t7
/* B52218 800DB078 0018CFC2 */  srl   $t9, $t8, 0x1f
/* B5221C 800DB07C 53200006 */  beql  $t9, $zero, .L800DB098
/* B52220 800DB080 908A0000 */   lbu   $t2, ($a0)
/* B52224 800DB084 90480000 */  lbu   $t0, ($v0)
/* B52228 800DB088 3109FFBF */  andi  $t1, $t0, 0xffbf
/* B5222C 800DB08C 10000004 */  b     .L800DB0A0
/* B52230 800DB090 A0490000 */   sb    $t1, ($v0)
/* B52234 800DB094 908A0000 */  lbu   $t2, ($a0)
.L800DB098:
/* B52238 800DB098 314BFF7F */  andi  $t3, $t2, 0xff7f
/* B5223C 800DB09C A08B0000 */  sb    $t3, ($a0)
.L800DB0A0:
/* B52240 800DB0A0 A0400006 */  sb    $zero, 6($v0)
/* B52244 800DB0A4 8CEC2894 */  lw    $t4, 0x2894($a3)
/* B52248 800DB0A8 24A50001 */  addiu $a1, $a1, 1
/* B5224C 800DB0AC 246300E0 */  addiu $v1, $v1, 0xe0
/* B52250 800DB0B0 00AC082A */  slt   $at, $a1, $t4
/* B52254 800DB0B4 1420FFEA */  bnez  $at, .L800DB060
/* B52258 800DB0B8 24C60020 */   addiu $a2, $a2, 0x20
.L800DB0BC:
/* B5225C 800DB0BC 03E00008 */  jr    $ra
/* B52260 800DB0C0 00000000 */   nop

