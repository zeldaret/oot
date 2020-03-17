glabel func_80AA6974
/* 00924 80AA6974 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00928 80AA6978 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 0092C 80AA697C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00930 80AA6980 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00934 80AA6984 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00938 80AA6988 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 0093C 80AA698C 24849FC0 */  addiu   $a0, $a0, 0x9FC0           ## $a0 = 06009FC0
/* 00940 80AA6990 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00944 80AA6994 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00948 80AA6998 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 0094C 80AA699C 468021A0 */  cvt.s.w $f6, $f4                   
/* 00950 80AA69A0 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 00954 80AA69A4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00958 80AA69A8 44060000 */  mfc1    $a2, $f0                   
/* 0095C 80AA69AC 44070000 */  mfc1    $a3, $f0                   
/* 00960 80AA69B0 24A59FC0 */  addiu   $a1, $a1, 0x9FC0           ## $a1 = 06009FC0
/* 00964 80AA69B4 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00968 80AA69B8 2604018C */  addiu   $a0, $s0, 0x018C           ## $a0 = 0000018C
/* 0096C 80AA69BC AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00970 80AA69C0 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00974 80AA69C4 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 00978 80AA69C8 3C0180AB */  lui     $at, %hi(D_80AA9E7C)       ## $at = 80AB0000
/* 0097C 80AA69CC C42A9E7C */  lwc1    $f10, %lo(D_80AA9E7C)($at) 
/* 00980 80AA69D0 24040032 */  addiu   $a0, $zero, 0x0032         ## $a0 = 00000032
/* 00984 80AA69D4 24050046 */  addiu   $a1, $zero, 0x0046         ## $a1 = 00000046
/* 00988 80AA69D8 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 0098C 80AA69DC E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 00990 80AA69E0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00994 80AA69E4 240F0009 */  addiu   $t7, $zero, 0x0009         ## $t7 = 00000009
/* 00998 80AA69E8 3C0580AB */  lui     $a1, %hi(func_80AA87D8)    ## $a1 = 80AB0000
/* 0099C 80AA69EC A602032A */  sh      $v0, 0x032A($s0)           ## 0000032A
/* 009A0 80AA69F0 A60E0332 */  sh      $t6, 0x0332($s0)           ## 00000332
/* 009A4 80AA69F4 AE0F0320 */  sw      $t7, 0x0320($s0)           ## 00000320
/* 009A8 80AA69F8 24A587D8 */  addiu   $a1, $a1, %lo(func_80AA87D8) ## $a1 = 80AA87D8
/* 009AC 80AA69FC 0C2A9814 */  jal     func_80AA6050              
/* 009B0 80AA6A00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009B4 80AA6A04 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 009B8 80AA6A08 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 009BC 80AA6A0C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 009C0 80AA6A10 03E00008 */  jr      $ra                        
/* 009C4 80AA6A14 00000000 */  nop


