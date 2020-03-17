glabel func_80AA6A18
/* 009C8 80AA6A18 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 009CC 80AA6A1C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 009D0 80AA6A20 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009D4 80AA6A24 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 009D8 80AA6A28 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 009DC 80AA6A2C 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 009E0 80AA6A30 24849FC0 */  addiu   $a0, $a0, 0x9FC0           ## $a0 = 06009FC0
/* 009E4 80AA6A34 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 009E8 80AA6A38 3C0180AB */  lui     $at, %hi(D_80AA9E80)       ## $at = 80AB0000
/* 009EC 80AA6A3C C4289E80 */  lwc1    $f8, %lo(D_80AA9E80)($at)  
/* 009F0 80AA6A40 468021A0 */  cvt.s.w $f6, $f4                   
/* 009F4 80AA6A44 24040032 */  addiu   $a0, $zero, 0x0032         ## $a0 = 00000032
/* 009F8 80AA6A48 24050046 */  addiu   $a1, $zero, 0x0046         ## $a1 = 00000046
/* 009FC 80AA6A4C E7A60034 */  swc1    $f6, 0x0034($sp)           
/* 00A00 80AA6A50 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00A04 80AA6A54 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 00A08 80AA6A58 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00A0C 80AA6A5C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00A10 80AA6A60 240F0009 */  addiu   $t7, $zero, 0x0009         ## $t7 = 00000009
/* 00A14 80AA6A64 A602032A */  sh      $v0, 0x032A($s0)           ## 0000032A
/* 00A18 80AA6A68 A60E0332 */  sh      $t6, 0x0332($s0)           ## 00000332
/* 00A1C 80AA6A6C AE0F0320 */  sw      $t7, 0x0320($s0)           ## 00000320
/* 00A20 80AA6A70 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00A24 80AA6A74 44818000 */  mtc1    $at, $f16                  ## $f16 = -4.00
/* 00A28 80AA6A78 C7AA0034 */  lwc1    $f10, 0x0034($sp)          
/* 00A2C 80AA6A7C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00A30 80AA6A80 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00A34 80AA6A84 44060000 */  mfc1    $a2, $f0                   
/* 00A38 80AA6A88 44070000 */  mfc1    $a3, $f0                   
/* 00A3C 80AA6A8C AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00A40 80AA6A90 24A59FC0 */  addiu   $a1, $a1, 0x9FC0           ## $a1 = 06009FC0
/* 00A44 80AA6A94 2604018C */  addiu   $a0, $s0, 0x018C           ## $a0 = 0000018C
/* 00A48 80AA6A98 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 00A4C 80AA6A9C 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00A50 80AA6AA0 E7B00018 */  swc1    $f16, 0x0018($sp)          
/* 00A54 80AA6AA4 3C0580AB */  lui     $a1, %hi(func_80AA8AEC)    ## $a1 = 80AB0000
/* 00A58 80AA6AA8 24A58AEC */  addiu   $a1, $a1, %lo(func_80AA8AEC) ## $a1 = 80AA8AEC
/* 00A5C 80AA6AAC 0C2A9814 */  jal     func_80AA6050              
/* 00A60 80AA6AB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A64 80AA6AB4 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00A68 80AA6AB8 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00A6C 80AA6ABC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00A70 80AA6AC0 03E00008 */  jr      $ra                        
/* 00A74 80AA6AC4 00000000 */  nop


