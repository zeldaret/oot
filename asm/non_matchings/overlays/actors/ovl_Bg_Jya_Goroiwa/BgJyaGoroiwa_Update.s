glabel BgJyaGoroiwa_Update
/* 004D0 80897E40 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 004D4 80897E44 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 004D8 80897E48 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 004DC 80897E4C AFB0001C */  sw      $s0, 0x001C($sp)           
/* 004E0 80897E50 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 004E4 80897E54 3C013000 */  lui     $at, 0x3000                ## $at = 30000000
/* 004E8 80897E58 342100C0 */  ori     $at, $at, 0x00C0           ## $at = 300000C0
/* 004EC 80897E5C 8C4E067C */  lw      $t6, 0x067C($v0)           ## 0000067C
/* 004F0 80897E60 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004F4 80897E64 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 004F8 80897E68 01C17824 */  and     $t7, $t6, $at              
/* 004FC 80897E6C 55E00029 */  bnel    $t7, $zero, .L80897F14     
/* 00500 80897E70 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00504 80897E74 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 00508 80897E78 0320F809 */  jalr    $ra, $t9                   
/* 0050C 80897E7C 00000000 */  nop
/* 00510 80897E80 0C225E8B */  jal     func_80897A2C              
/* 00514 80897E84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00518 80897E88 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 0051C 80897E8C 3C01426E */  lui     $at, 0x426E                ## $at = 426E0000
/* 00520 80897E90 44814000 */  mtc1    $at, $f8                   ## $f8 = 59.50
/* 00524 80897E94 E7A4002C */  swc1    $f4, 0x002C($sp)           
/* 00528 80897E98 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 0052C 80897E9C 27B8002C */  addiu   $t8, $sp, 0x002C           ## $t8 = FFFFFFE4
/* 00530 80897EA0 262407C0 */  addiu   $a0, $s1, 0x07C0           ## $a0 = 000007C0
/* 00534 80897EA4 46083280 */  add.s   $f10, $f6, $f8             
/* 00538 80897EA8 26050078 */  addiu   $a1, $s0, 0x0078           ## $a1 = 00000078
/* 0053C 80897EAC 27A60038 */  addiu   $a2, $sp, 0x0038           ## $a2 = FFFFFFF0
/* 00540 80897EB0 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 00544 80897EB4 E7AA0030 */  swc1    $f10, 0x0030($sp)          
/* 00548 80897EB8 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 0054C 80897EBC AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00550 80897EC0 0C00F269 */  jal     func_8003C9A4              
/* 00554 80897EC4 E7B00034 */  swc1    $f16, 0x0034($sp)          
/* 00558 80897EC8 E6000080 */  swc1    $f0, 0x0080($s0)           ## 00000080
/* 0055C 80897ECC 0C225E5C */  jal     func_80897970              
/* 00560 80897ED0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00564 80897ED4 92080160 */  lbu     $t0, 0x0160($s0)           ## 00000160
/* 00568 80897ED8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0056C 80897EDC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00570 80897EE0 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 00574 80897EE4 11200004 */  beq     $t1, $zero, .L80897EF8     
/* 00578 80897EE8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0057C 80897EEC 02212821 */  addu    $a1, $s1, $at              
/* 00580 80897EF0 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00584 80897EF4 26060150 */  addiu   $a2, $s0, 0x0150           ## $a2 = 00000150
.L80897EF8:
/* 00588 80897EF8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0058C 80897EFC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00590 80897F00 02212821 */  addu    $a1, $s1, $at              
/* 00594 80897F04 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00598 80897F08 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 0059C 80897F0C 26060150 */  addiu   $a2, $s0, 0x0150           ## $a2 = 00000150
/* 005A0 80897F10 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80897F14:
/* 005A4 80897F14 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 005A8 80897F18 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 005AC 80897F1C 03E00008 */  jr      $ra                        
/* 005B0 80897F20 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
