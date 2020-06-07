glabel func_80B5BB78
/* 003C8 80B5BB78 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003CC 80B5BB7C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003D0 80B5BB80 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 003D4 80B5BB84 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 003D8 80B5BB88 248501E0 */  addiu   $a1, $a0, 0x01E0           ## $a1 = 000001E0
/* 003DC 80B5BB8C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 003E0 80B5BB90 8C580024 */  lw      $t8, 0x0024($v0)           ## 00000024
/* 003E4 80B5BB94 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 003E8 80B5BB98 AC9801F8 */  sw      $t8, 0x01F8($a0)           ## 000001F8
/* 003EC 80B5BB9C 8C4F0028 */  lw      $t7, 0x0028($v0)           ## 00000028
/* 003F0 80B5BBA0 AC8F01FC */  sw      $t7, 0x01FC($a0)           ## 000001FC
/* 003F4 80B5BBA4 8C58002C */  lw      $t8, 0x002C($v0)           ## 0000002C
/* 003F8 80B5BBA8 0C00D285 */  jal     func_80034A14              
/* 003FC 80B5BBAC AC980200 */  sw      $t8, 0x0200($a0)           ## 00000200
/* 00400 80B5BBB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00404 80B5BBB4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00408 80B5BBB8 03E00008 */  jr      $ra                        
/* 0040C 80B5BBBC 00000000 */  nop
