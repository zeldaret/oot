glabel func_809E9AB4
/* 00554 809E9AB4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00558 809E9AB8 AFB00020 */  sw      $s0, 0x0020($sp)
/* 0055C 809E9ABC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00560 809E9AC0 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00564 809E9AC4 3C050600 */  lui     $a1, %hi(D_06000368)                ## $a1 = 06000000
/* 00568 809E9AC8 24A50368 */  addiu   $a1, $a1, %lo(D_06000368)           ## $a1 = 06000368
/* 0056C 809E9ACC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00570 809E9AD0 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 00574 809E9AD4 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 00578 809E9AD8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0057C 809E9ADC 3C0F809F */  lui     $t7, %hi(func_809EA534)    ## $t7 = 809F0000
/* 00580 809E9AE0 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00584 809E9AE4 25EFA534 */  addiu   $t7, $t7, %lo(func_809EA534) ## $t7 = 809EA534
/* 00588 809E9AE8 A60E0196 */  sh      $t6, 0x0196($s0)           ## 00000196
/* 0058C 809E9AEC AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
/* 00590 809E9AF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00594 809E9AF4 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
/* 00598 809E9AF8 0C00BE0A */  jal     Audio_PlayActorSound2

/* 0059C 809E9AFC E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 005A0 809E9B00 3C040600 */  lui     $a0, %hi(D_06000368)                ## $a0 = 06000000
/* 005A4 809E9B04 0C028800 */  jal     SkelAnime_GetFrameCount

/* 005A8 809E9B08 24840368 */  addiu   $a0, $a0, %lo(D_06000368)           ## $a0 = 06000368
/* 005AC 809E9B0C 86180196 */  lh      $t8, 0x0196($s0)           ## 00000196
/* 005B0 809E9B10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005B4 809E9B14 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 005B8 809E9B18 00580019 */  multu   $v0, $t8
/* 005BC 809E9B1C 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 005C0 809E9B20 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 005C4 809E9B24 0000C812 */  mflo    $t9
/* 005C8 809E9B28 AFB90010 */  sw      $t9, 0x0010($sp)
/* 005CC 809E9B2C 0C00D09B */  jal     func_8003426C
/* 005D0 809E9B30 00000000 */  nop
/* 005D4 809E9B34 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 005D8 809E9B38 8FB00020 */  lw      $s0, 0x0020($sp)
/* 005DC 809E9B3C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 005E0 809E9B40 03E00008 */  jr      $ra
/* 005E4 809E9B44 00000000 */  nop
