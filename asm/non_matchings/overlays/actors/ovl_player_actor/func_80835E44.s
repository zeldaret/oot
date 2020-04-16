glabel func_80835E44
/* 03C34 80835E44 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03C38 80835E48 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03C3C 80835E4C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03C40 80835E50 0C03032E */  jal     func_800C0CB8              
/* 03C44 80835E54 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03C48 80835E58 14400009 */  bne     $v0, $zero, .L80835E80     
/* 03C4C 80835E5C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03C50 80835E60 87AE001E */  lh      $t6, 0x001E($sp)           
/* 03C54 80835E64 2401002F */  addiu   $at, $zero, 0x002F         ## $at = 0000002F
/* 03C58 80835E68 55C1000B */  bnel    $t6, $at, .L80835E98       
/* 03C5C 80835E6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03C60 80835E70 0C020978 */  jal     Interface_ChangeAlpha              
/* 03C64 80835E74 24040002 */  addiu   $a0, $zero, 0x0002         ## $a0 = 00000002
/* 03C68 80835E78 10000007 */  beq     $zero, $zero, .L80835E98   
/* 03C6C 80835E7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80835E80:
/* 03C70 80835E80 0C030129 */  jal     func_800C04A4              
/* 03C74 80835E84 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 03C78 80835E88 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 03C7C 80835E8C 0C0169DF */  jal     func_8005A77C              
/* 03C80 80835E90 87A5001E */  lh      $a1, 0x001E($sp)           
/* 03C84 80835E94 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80835E98:
/* 03C88 80835E98 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03C8C 80835E9C 03E00008 */  jr      $ra                        
/* 03C90 80835EA0 00000000 */  nop
