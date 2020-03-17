glabel func_80AF2A38
/* 004E8 80AF2A38 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 004EC 80AF2A3C AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 004F0 80AF2A40 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 004F4 80AF2A44 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 004F8 80AF2A48 8CC21C44 */  lw      $v0, 0x1C44($a2)           ## 00001C44
/* 004FC 80AF2A4C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00500 80AF2A50 44813000 */  mtc1    $at, $f6                   ## $f6 = 50.00
/* 00504 80AF2A54 C4440028 */  lwc1    $f4, 0x0028($v0)           ## 00000028
/* 00508 80AF2A58 C4400024 */  lwc1    $f0, 0x0024($v0)           ## 00000024
/* 0050C 80AF2A5C C44C002C */  lwc1    $f12, 0x002C($v0)          ## 0000002C
/* 00510 80AF2A60 46062080 */  add.s   $f2, $f4, $f6              
/* 00514 80AF2A64 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00518 80AF2A68 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 0051C 80AF2A6C AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 00520 80AF2A70 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00524 80AF2A74 E7A20014 */  swc1    $f2, 0x0014($sp)           
/* 00528 80AF2A78 AFA6003C */  sw      $a2, 0x003C($sp)           
/* 0052C 80AF2A7C AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00530 80AF2A80 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00534 80AF2A84 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00538 80AF2A88 2407008B */  addiu   $a3, $zero, 0x008B         ## $a3 = 0000008B
/* 0053C 80AF2A8C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00540 80AF2A90 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00544 80AF2A94 E7AC0018 */  swc1    $f12, 0x0018($sp)          
/* 00548 80AF2A98 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0054C 80AF2A9C 0C021344 */  jal     Item_Give              
/* 00550 80AF2AA0 24050068 */  addiu   $a1, $zero, 0x0068         ## $a1 = 00000068
/* 00554 80AF2AA4 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00558 80AF2AA8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0055C 80AF2AAC 03E00008 */  jr      $ra                        
/* 00560 80AF2AB0 00000000 */  nop


