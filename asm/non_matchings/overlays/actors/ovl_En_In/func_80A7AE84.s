glabel func_80A7AE84
/* 01ED4 80A7AE84 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01ED8 80A7AE88 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01EDC 80A7AE8C 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 01EE0 80A7AE90 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01EE4 80A7AE94 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01EE8 80A7AE98 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01EEC 80A7AE9C 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 01EF0 80A7AEA0 0C0300C5 */  jal     func_800C0314              
/* 01EF4 80A7AEA4 85C501F2 */  lh      $a1, 0x01F2($t6)           ## 000001F2
/* 01EF8 80A7AEA8 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 01EFC 80A7AEAC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01F00 80A7AEB0 0C0300E1 */  jal     func_800C0384              
/* 01F04 80A7AEB4 85E501F0 */  lh      $a1, 0x01F0($t7)           ## 000001F0
/* 01F08 80A7AEB8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01F0C 80A7AEBC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 01F10 80A7AEC0 0C00B7D5 */  jal     func_8002DF54              
/* 01F14 80A7AEC4 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 01F18 80A7AEC8 0C020978 */  jal     Interface_ChangeAlpha              
/* 01F1C 80A7AECC 24040032 */  addiu   $a0, $zero, 0x0032         ## $a0 = 00000032
/* 01F20 80A7AED0 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 01F24 80A7AED4 3C1880A8 */  lui     $t8, %hi(func_80A7AEF0)    ## $t8 = 80A80000
/* 01F28 80A7AED8 2718AEF0 */  addiu   $t8, $t8, %lo(func_80A7AEF0) ## $t8 = 80A7AEF0
/* 01F2C 80A7AEDC AF380190 */  sw      $t8, 0x0190($t9)           ## 00000190
/* 01F30 80A7AEE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01F34 80A7AEE4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01F38 80A7AEE8 03E00008 */  jr      $ra                        
/* 01F3C 80A7AEEC 00000000 */  nop
