glabel func_80B1BE94
/* 00594 80B1BE94 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00598 80B1BE98 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0059C 80B1BE9C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 005A0 80B1BEA0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 005A4 80B1BEA4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 005A8 80B1BEA8 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 005AC 80B1BEAC 24842F84 */  addiu   $a0, $a0, 0x2F84           ## $a0 = 06002F84
/* 005B0 80B1BEB0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 005B4 80B1BEB4 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 005B8 80B1BEB8 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 005BC 80B1BEBC 468021A0 */  cvt.s.w $f6, $f4                   
/* 005C0 80B1BEC0 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 005C4 80B1BEC4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 005C8 80B1BEC8 24A52F84 */  addiu   $a1, $a1, 0x2F84           ## $a1 = 06002F84
/* 005CC 80B1BECC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 005D0 80B1BED0 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 005D4 80B1BED4 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 005D8 80B1BED8 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 005DC 80B1BEDC E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 005E0 80B1BEE0 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 005E4 80B1BEE4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 005E8 80B1BEE8 2404003C */  addiu   $a0, $zero, 0x003C         ## $a0 = 0000003C
/* 005EC 80B1BEEC 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 005F0 80B1BEF0 2405003C */  addiu   $a1, $zero, 0x003C         ## $a1 = 0000003C
/* 005F4 80B1BEF4 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 005F8 80B1BEF8 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 005FC 80B1BEFC A462021C */  sh      $v0, 0x021C($v1)           ## 0000021C
/* 00600 80B1BF00 E46A0068 */  swc1    $f10, 0x0068($v1)          ## 00000068
/* 00604 80B1BF04 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00608 80B1BF08 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0060C 80B1BF0C 03E00008 */  jr      $ra                        
/* 00610 80B1BF10 00000000 */  nop


