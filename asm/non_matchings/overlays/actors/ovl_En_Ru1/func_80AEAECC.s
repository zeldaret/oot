glabel func_80AEAECC
/* 002BC 80AEAECC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 002C0 80AEAED0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 002C4 80AEAED4 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 002C8 80AEAED8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 002CC 80AEAEDC C4840060 */  lwc1    $f4, 0x0060($a0)           ## 00000060
/* 002D0 80AEAEE0 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 002D4 80AEAEE4 44813000 */  mtc1    $at, $f6                   ## $f6 = -4.00
/* 002D8 80AEAEE8 E7A40020 */  swc1    $f4, 0x0020($sp)           
/* 002DC 80AEAEEC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 002E0 80AEAEF0 E4860060 */  swc1    $f6, 0x0060($a0)           ## 00000060
/* 002E4 80AEAEF4 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 002E8 80AEAEF8 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 002EC 80AEAEFC 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 002F0 80AEAF00 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 002F4 80AEAF04 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 002F8 80AEAF08 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 002FC 80AEAF0C 3C064198 */  lui     $a2, 0x4198                ## $a2 = 41980000
/* 00300 80AEAF10 3C0741C8 */  lui     $a3, 0x41C8                ## $a3 = 41C80000
/* 00304 80AEAF14 0C00B92D */  jal     func_8002E4B4              
/* 00308 80AEAF18 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 0030C 80AEAF1C 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00310 80AEAF20 C7AA0020 */  lwc1    $f10, 0x0020($sp)          
/* 00314 80AEAF24 E4AA0060 */  swc1    $f10, 0x0060($a1)          ## 00000060
/* 00318 80AEAF28 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0031C 80AEAF2C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00320 80AEAF30 03E00008 */  jr      $ra                        
/* 00324 80AEAF34 00000000 */  nop


