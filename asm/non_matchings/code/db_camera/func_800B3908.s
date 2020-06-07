glabel func_800B3908
/* B2AAA8 800B3908 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B2AAAC 800B390C 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B2AAB0 800B3910 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B2AAB4 800B3914 AFBF0014 */  sw    $ra, 0x14($sp)
/* B2AAB8 800B3918 844E1074 */  lh    $t6, 0x1074($v0)
/* B2AABC 800B391C 24010013 */  li    $at, 19
/* B2AAC0 800B3920 15C10008 */  bne   $t6, $at, .L800B3944
/* B2AAC4 800B3924 00000000 */   nop   
/* B2AAC8 800B3928 844F1076 */  lh    $t7, 0x1076($v0)
/* B2AACC 800B392C 24010001 */  li    $at, 1
/* B2AAD0 800B3930 3C048014 */  lui   $a0, %hi(D_8014313C) # $a0, 0x8014
/* B2AAD4 800B3934 15E10003 */  bne   $t7, $at, .L800B3944
/* B2AAD8 800B3938 00000000 */   nop   
/* B2AADC 800B393C 0C00084C */  jal   osSyncPrintf
/* B2AAE0 800B3940 2484313C */   addiu $a0, %lo(D_8014313C) # addiu $a0, $a0, 0x313c
.L800B3944:
/* B2AAE4 800B3944 3C018013 */  lui   $at, %hi(D_8012CED0) # $at, 0x8013
/* B2AAE8 800B3948 AC20CED0 */  sw    $zero, %lo(D_8012CED0)($at)
/* B2AAEC 800B394C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B2AAF0 800B3950 3C018013 */  lui   $at, %hi(D_8012CED4) # $at, 0x8013
/* B2AAF4 800B3954 AC20CED4 */  sw    $zero, %lo(D_8012CED4)($at)
/* B2AAF8 800B3958 3C018013 */  lui   $at, %hi(D_8012CED8) # $at, 0x8013
/* B2AAFC 800B395C AC20CED8 */  sw    $zero, %lo(D_8012CED8)($at)
/* B2AB00 800B3960 03E00008 */  jr    $ra
/* B2AB04 800B3964 27BD0018 */   addiu $sp, $sp, 0x18

