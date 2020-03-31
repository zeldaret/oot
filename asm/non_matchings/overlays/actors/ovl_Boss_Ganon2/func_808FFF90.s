glabel func_808FFF90
/* 03050 808FFF90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03054 808FFF94 AFA5001C */  sw      $a1, 0x001C($sp)
/* 03058 808FFF98 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0305C 808FFF9C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 03060 808FFFA0 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 03064 808FFFA4 24A5FFE4 */  addiu   $a1, $a1, 0xFFE4           ## $a1 = 0600FFE4
/* 03068 808FFFA8 AFA70018 */  sw      $a3, 0x0018($sp)
/* 0306C 808FFFAC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03070 808FFFB0 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRepeat
/* 03074 808FFFB4 3C06C120 */  lui     $a2, 0xC120                ## $a2 = C1200000
/* 03078 808FFFB8 8FA70018 */  lw      $a3, 0x0018($sp)
/* 0307C 808FFFBC 3C0E8090 */  lui     $t6, %hi(func_808FFFE0)    ## $t6 = 80900000
/* 03080 808FFFC0 25CEFFE0 */  addiu   $t6, $t6, %lo(func_808FFFE0) ## $t6 = 808FFFE0
/* 03084 808FFFC4 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 03088 808FFFC8 ACEE0190 */  sw      $t6, 0x0190($a3)           ## 00000190
/* 0308C 808FFFCC A4EF01A2 */  sh      $t7, 0x01A2($a3)           ## 000001A2
/* 03090 808FFFD0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 03094 808FFFD4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03098 808FFFD8 03E00008 */  jr      $ra
/* 0309C 808FFFDC 00000000 */  nop


