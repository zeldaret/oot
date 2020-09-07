glabel func_800E3034
/* B5A1D4 800E3034 3C058017 */  lui   $a1, %hi(gAudioContext) # $a1, 0x8017
/* B5A1D8 800E3038 24A5F180 */  addiu $a1, %lo(gAudioContext) # addiu $a1, $a1, -0xe80
/* B5A1DC 800E303C 8CB82834 */  lw    $t8, 0x2834($a1)
/* B5A1E0 800E3040 0004C900 */  sll   $t9, $a0, 4
/* B5A1E4 800E3044 8CAF2844 */  lw    $t7, 0x2844($a1)
/* B5A1E8 800E3048 03191821 */  addu  $v1, $t8, $t9
/* B5A1EC 800E304C 8468001A */  lh    $t0, 0x1a($v1)
/* B5A1F0 800E3050 00047080 */  sll   $t6, $a0, 2
/* B5A1F4 800E3054 01C47021 */  addu  $t6, $t6, $a0
/* B5A1F8 800E3058 000E7080 */  sll   $t6, $t6, 2
/* B5A1FC 800E305C 01CF1021 */  addu  $v0, $t6, $t7
/* B5A200 800E3060 00085203 */  sra   $t2, $t0, 8
/* B5A204 800E3064 A04A0002 */  sb    $t2, 2($v0)
/* B5A208 800E3068 846C001A */  lh    $t4, 0x1a($v1)
/* B5A20C 800E306C 24630010 */  addiu $v1, $v1, 0x10
/* B5A210 800E3070 A04C0003 */  sb    $t4, 3($v0)
/* B5A214 800E3074 846D000C */  lh    $t5, 0xc($v1)
/* B5A218 800E3078 000D7A03 */  sra   $t7, $t5, 8
/* B5A21C 800E307C A04F0000 */  sb    $t7, ($v0)
/* B5A220 800E3080 8479000C */  lh    $t9, 0xc($v1)
/* B5A224 800E3084 A0590001 */  sb    $t9, 1($v0)
/* B5A228 800E3088 8468000E */  lh    $t0, 0xe($v1)
/* B5A22C 800E308C 03E00008 */  jr    $ra
/* B5A230 800E3090 A4480004 */   sh    $t0, 4($v0)

