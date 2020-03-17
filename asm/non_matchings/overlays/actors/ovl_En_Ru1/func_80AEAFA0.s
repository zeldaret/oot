glabel func_80AEAFA0
/* 00390 80AEAFA0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00394 80AEAFA4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00398 80AEAFA8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0039C 80AEAFAC 0C2BABD6 */  jal     func_80AEAF58              
/* 003A0 80AEAFB0 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 003A4 80AEAFB4 10400007 */  beq     $v0, $zero, .L80AEAFD4     
/* 003A8 80AEAFB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003AC 80AEAFBC 97AE001E */  lhu     $t6, 0x001E($sp)           
/* 003B0 80AEAFC0 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 003B4 80AEAFC4 55CF0004 */  bnel    $t6, $t7, .L80AEAFD8       
/* 003B8 80AEAFC8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 003BC 80AEAFCC 10000002 */  beq     $zero, $zero, .L80AEAFD8   
/* 003C0 80AEAFD0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AEAFD4:
/* 003C4 80AEAFD4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AEAFD8:
/* 003C8 80AEAFD8 03E00008 */  jr      $ra                        
/* 003CC 80AEAFDC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


