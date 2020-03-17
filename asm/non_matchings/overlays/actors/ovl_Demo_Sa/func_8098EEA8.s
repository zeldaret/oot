glabel func_8098EEA8
/* 00A48 8098EEA8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A4C 8098EEAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A50 8098EEB0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00A54 8098EEB4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00A58 8098EEB8 0C263995 */  jal     func_8098E654              
/* 00A5C 8098EEBC 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 00A60 8098EEC0 1040000A */  beq     $v0, $zero, .L8098EEEC     
/* 00A64 8098EEC4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00A68 8098EEC8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00A6C 8098EECC 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 00A70 8098EED0 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 00A74 8098EED4 AC8E0198 */  sw      $t6, 0x0198($a0)           ## 00000198
/* 00A78 8098EED8 AC8F019C */  sw      $t7, 0x019C($a0)           ## 0000019C
/* 00A7C 8098EEDC AC8001A4 */  sw      $zero, 0x01A4($a0)         ## 000001A4
/* 00A80 8098EEE0 A08000C8 */  sb      $zero, 0x00C8($a0)         ## 000000C8
/* 00A84 8098EEE4 0C263B82 */  jal     func_8098EE08              
/* 00A88 8098EEE8 E48401A0 */  swc1    $f4, 0x01A0($a0)           ## 000001A0
.L8098EEEC:
/* 00A8C 8098EEEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A90 8098EEF0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A94 8098EEF4 03E00008 */  jr      $ra                        
/* 00A98 8098EEF8 00000000 */  nop


