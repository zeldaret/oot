glabel func_80AA2E54
/* 003B4 80AA2E54 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003B8 80AA2E58 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003BC 80AA2E5C 848E01E0 */  lh      $t6, 0x01E0($a0)           ## 000001E0
/* 003C0 80AA2E60 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 003C4 80AA2E64 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 003C8 80AA2E68 15C00008 */  bne     $t6, $zero, .L80AA2E8C     
/* 003CC 80AA2E6C 00000000 */  nop
/* 003D0 80AA2E70 8C980154 */  lw      $t8, 0x0154($a0)           ## 00000154
/* 003D4 80AA2E74 3C0F0601 */  lui     $t7, 0x0601                ## $t7 = 06010000
/* 003D8 80AA2E78 25EF9EE0 */  addiu   $t7, $t7, 0x9EE0           ## $t7 = 06009EE0
/* 003DC 80AA2E7C 15F80003 */  bne     $t7, $t8, .L80AA2E8C       
/* 003E0 80AA2E80 00000000 */  nop
/* 003E4 80AA2E84 10000001 */  beq     $zero, $zero, .L80AA2E8C   
/* 003E8 80AA2E88 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
.L80AA2E8C:
/* 003EC 80AA2E8C 8C480024 */  lw      $t0, 0x0024($v0)           ## 00000024
/* 003F0 80AA2E90 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 003F4 80AA2E94 248501E0 */  addiu   $a1, $a0, 0x01E0           ## $a1 = 000001E0
/* 003F8 80AA2E98 AC8801F8 */  sw      $t0, 0x01F8($a0)           ## 000001F8
/* 003FC 80AA2E9C 8C590028 */  lw      $t9, 0x0028($v0)           ## 00000028
/* 00400 80AA2EA0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00404 80AA2EA4 AC9901FC */  sw      $t9, 0x01FC($a0)           ## 000001FC
/* 00408 80AA2EA8 8C48002C */  lw      $t0, 0x002C($v0)           ## 0000002C
/* 0040C 80AA2EAC E48401F4 */  swc1    $f4, 0x01F4($a0)           ## 000001F4
/* 00410 80AA2EB0 0C00D285 */  jal     func_80034A14              
/* 00414 80AA2EB4 AC880200 */  sw      $t0, 0x0200($a0)           ## 00000200
/* 00418 80AA2EB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0041C 80AA2EBC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00420 80AA2EC0 03E00008 */  jr      $ra                        
/* 00424 80AA2EC4 00000000 */  nop
