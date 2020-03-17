glabel func_80B347FC
/* 00B4C 80B347FC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00B50 80B34800 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00B54 80B34804 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00B58 80B34808 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00B5C 80B3480C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00B60 80B34810 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00B64 80B34814 248457A0 */  addiu   $a0, $a0, 0x57A0           ## $a0 = 060057A0
/* 00B68 80B34818 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00B6C 80B3481C 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00B70 80B34820 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 00B74 80B34824 468021A0 */  cvt.s.w $f6, $f4                   
/* 00B78 80B34828 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00B7C 80B3482C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00B80 80B34830 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00B84 80B34834 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00B88 80B34838 24A557A0 */  addiu   $a1, $a1, 0x57A0           ## $a1 = 060057A0
/* 00B8C 80B3483C E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00B90 80B34840 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00B94 80B34844 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00B98 80B34848 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 00B9C 80B3484C 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00BA0 80B34850 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 00BA4 80B34854 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00BA8 80B34858 240F0009 */  addiu   $t7, $zero, 0x0009         ## $t7 = 00000009
/* 00BAC 80B3485C 3C0580B3 */  lui     $a1, %hi(func_80B3487C)    ## $a1 = 80B30000
/* 00BB0 80B34860 24A5487C */  addiu   $a1, $a1, %lo(func_80B3487C) ## $a1 = 80B3487C
/* 00BB4 80B34864 0C2CCF2C */  jal     func_80B33CB0              
/* 00BB8 80B34868 AC8F02D4 */  sw      $t7, 0x02D4($a0)           ## 000002D4
/* 00BBC 80B3486C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00BC0 80B34870 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00BC4 80B34874 03E00008 */  jr      $ra                        
/* 00BC8 80B34878 00000000 */  nop


