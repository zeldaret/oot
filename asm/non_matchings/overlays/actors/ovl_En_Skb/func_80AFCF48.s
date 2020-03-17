glabel func_80AFCF48
/* 005A8 80AFCF48 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 005AC 80AFCF4C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 005B0 80AFCF50 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005B4 80AFCF54 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 005B8 80AFCF58 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 005BC 80AFCF5C 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 005C0 80AFCF60 24841854 */  addiu   $a0, $a0, 0x1854           ## $a0 = 06001854
/* 005C4 80AFCF64 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 005C8 80AFCF68 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 005CC 80AFCF6C 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 005D0 80AFCF70 46802120 */  cvt.s.w $f4, $f4                   
/* 005D4 80AFCF74 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 005D8 80AFCF78 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 005DC 80AFCF7C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 005E0 80AFCF80 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 005E4 80AFCF84 24A51854 */  addiu   $a1, $a1, 0x1854           ## $a1 = 06001854
/* 005E8 80AFCF88 44072000 */  mfc1    $a3, $f4                   
/* 005EC 80AFCF8C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 005F0 80AFCF90 3C06BF80 */  lui     $a2, 0xBF80                ## $a2 = BF800000
/* 005F4 80AFCF94 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 005F8 80AFCF98 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 005FC 80AFCF9C E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00600 80AFCFA0 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 00604 80AFCFA4 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00608 80AFCFA8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 0060C 80AFCFAC 01E1C024 */  and     $t8, $t7, $at              
/* 00610 80AFCFB0 A2000280 */  sb      $zero, 0x0280($s0)         ## 00000280
/* 00614 80AFCFB4 A2000281 */  sb      $zero, 0x0281($s0)         ## 00000281
/* 00618 80AFCFB8 AE180004 */  sw      $t8, 0x0004($s0)           ## 00000004
/* 0061C 80AFCFBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00620 80AFCFC0 24053987 */  addiu   $a1, $zero, 0x3987         ## $a1 = 00003987
/* 00624 80AFCFC4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00628 80AFCFC8 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 0062C 80AFCFCC 3C0580B0 */  lui     $a1, %hi(func_80AFCFF0)    ## $a1 = 80B00000
/* 00630 80AFCFD0 24A5CFF0 */  addiu   $a1, $a1, %lo(func_80AFCFF0) ## $a1 = 80AFCFF0
/* 00634 80AFCFD4 0C2BF268 */  jal     func_80AFC9A0              
/* 00638 80AFCFD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0063C 80AFCFDC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00640 80AFCFE0 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00644 80AFCFE4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00648 80AFCFE8 03E00008 */  jr      $ra                        
/* 0064C 80AFCFEC 00000000 */  nop


