glabel func_80A49C94
/* 00DD4 80A49C94 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00DD8 80A49C98 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00DDC 80A49C9C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00DE0 80A49CA0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00DE4 80A49CA4 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00DE8 80A49CA8 24840334 */  addiu   $a0, $a0, 0x0334           ## $a0 = 06000334
/* 00DEC 80A49CAC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00DF0 80A49CB0 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 00DF4 80A49CB4 44814000 */  mtc1    $at, $f8                   ## $f8 = -2.00
/* 00DF8 80A49CB8 468021A0 */  cvt.s.w $f6, $f4                   
/* 00DFC 80A49CBC 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00E00 80A49CC0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00E04 80A49CC4 24A50334 */  addiu   $a1, $a1, 0x0334           ## $a1 = 06000334
/* 00E08 80A49CC8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00E0C 80A49CCC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00E10 80A49CD0 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00E14 80A49CD4 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00E18 80A49CD8 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 00E1C 80A49CDC 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00E20 80A49CE0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00E24 80A49CE4 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 00E28 80A49CE8 3C0E80A5 */  lui     $t6, %hi(func_80A49D0C)    ## $t6 = 80A50000
/* 00E2C 80A49CEC 25CE9D0C */  addiu   $t6, $t6, %lo(func_80A49D0C) ## $t6 = 80A49D0C
/* 00E30 80A49CF0 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 00E34 80A49CF4 AC4E02B0 */  sw      $t6, 0x02B0($v0)           ## 000002B0
/* 00E38 80A49CF8 A44F02CC */  sh      $t7, 0x02CC($v0)           ## 000002CC
/* 00E3C 80A49CFC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00E40 80A49D00 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00E44 80A49D04 03E00008 */  jr      $ra                        
/* 00E48 80A49D08 00000000 */  nop


