glabel func_80A360B0
/* 00DA0 80A360B0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00DA4 80A360B4 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00DA8 80A360B8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00DAC 80A360BC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00DB0 80A360C0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00DB4 80A360C4 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00DB8 80A360C8 248424E8 */  addiu   $a0, $a0, 0x24E8           ## $a0 = 060024E8
/* 00DBC 80A360CC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00DC0 80A360D0 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00DC4 80A360D4 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 00DC8 80A360D8 468021A0 */  cvt.s.w $f6, $f4                   
/* 00DCC 80A360DC 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00DD0 80A360E0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00DD4 80A360E4 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00DD8 80A360E8 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00DDC 80A360EC 24A524E8 */  addiu   $a1, $a1, 0x24E8           ## $a1 = 060024E8
/* 00DE0 80A360F0 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00DE4 80A360F4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00DE8 80A360F8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00DEC 80A360FC E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 00DF0 80A36100 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00DF4 80A36104 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 00DF8 80A36108 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00DFC 80A3610C 240F0008 */  addiu   $t7, $zero, 0x0008         ## $t7 = 00000008
/* 00E00 80A36110 3C0580A3 */  lui     $a1, %hi(func_80A36130)    ## $a1 = 80A30000
/* 00E04 80A36114 24A56130 */  addiu   $a1, $a1, %lo(func_80A36130) ## $a1 = 80A36130
/* 00E08 80A36118 0C28D4C4 */  jal     func_80A35310              
/* 00E0C 80A3611C AC8F02EC */  sw      $t7, 0x02EC($a0)           ## 000002EC
/* 00E10 80A36120 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00E14 80A36124 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00E18 80A36128 03E00008 */  jr      $ra                        
/* 00E1C 80A3612C 00000000 */  nop


