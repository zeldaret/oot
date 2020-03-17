glabel func_8096AF6C
/* 0149C 8096AF6C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 014A0 8096AF70 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 014A4 8096AF74 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 014A8 8096AF78 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 014AC 8096AF7C 51C0001C */  beql    $t6, $zero, .L8096AFF0     
/* 014B0 8096AF80 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 014B4 8096AF84 8CA21D94 */  lw      $v0, 0x1D94($a1)           ## 00001D94
/* 014B8 8096AF88 50400019 */  beql    $v0, $zero, .L8096AFF0     
/* 014BC 8096AF8C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 014C0 8096AF90 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 014C4 8096AF94 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 014C8 8096AF98 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 014CC 8096AF9C 51E10014 */  beql    $t7, $at, .L8096AFF0       
/* 014D0 8096AFA0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 014D4 8096AFA4 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 014D8 8096AFA8 24846EB0 */  addiu   $a0, $a0, 0x6EB0           ## $a0 = 06006EB0
/* 014DC 8096AFAC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 014E0 8096AFB0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 014E4 8096AFB4 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 014E8 8096AFB8 468021A0 */  cvt.s.w $f6, $f4                   
/* 014EC 8096AFBC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 014F0 8096AFC0 44070000 */  mfc1    $a3, $f0                   
/* 014F4 8096AFC4 24A56EB0 */  addiu   $a1, $a1, 0x6EB0           ## $a1 = 06006EB0
/* 014F8 8096AFC8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 014FC 8096AFCC AFA00014 */  sw      $zero, 0x0014($sp)         
/* 01500 8096AFD0 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01504 8096AFD4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01508 8096AFD8 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 0150C 8096AFDC E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 01510 8096AFE0 8FB90028 */  lw      $t9, 0x0028($sp)           
/* 01514 8096AFE4 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 01518 8096AFE8 AF380198 */  sw      $t8, 0x0198($t9)           ## 00000198
/* 0151C 8096AFEC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L8096AFF0:
/* 01520 8096AFF0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01524 8096AFF4 03E00008 */  jr      $ra                        
/* 01528 8096AFF8 00000000 */  nop


