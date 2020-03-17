glabel func_80AB28DC
/* 01B4C 80AB28DC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01B50 80AB28E0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01B54 80AB28E4 10A00014 */  beq     $a1, $zero, .L80AB2938     
/* 01B58 80AB28E8 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01B5C 80AB28EC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01B60 80AB28F0 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 01B64 80AB28F4 24844030 */  addiu   $a0, $a0, 0x4030           ## $a0 = 06004030
/* 01B68 80AB28F8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01B6C 80AB28FC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01B70 80AB2900 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01B74 80AB2904 468021A0 */  cvt.s.w $f6, $f4                   
/* 01B78 80AB2908 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01B7C 80AB290C 44070000 */  mfc1    $a3, $f0                   
/* 01B80 80AB2910 24A54030 */  addiu   $a1, $a1, 0x4030           ## $a1 = 06004030
/* 01B84 80AB2914 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01B88 80AB2918 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 01B8C 80AB291C E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01B90 80AB2920 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01B94 80AB2924 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 01B98 80AB2928 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 01B9C 80AB292C 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 01BA0 80AB2930 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 01BA4 80AB2934 ADEE027C */  sw      $t6, 0x027C($t7)           ## 0000027C
.L80AB2938:
/* 01BA8 80AB2938 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01BAC 80AB293C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01BB0 80AB2940 03E00008 */  jr      $ra                        
/* 01BB4 80AB2944 00000000 */  nop


