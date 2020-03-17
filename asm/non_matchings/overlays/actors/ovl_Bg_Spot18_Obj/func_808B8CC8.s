glabel func_808B8CC8
/* 003B8 808B8CC8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003BC 808B8CCC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003C0 808B8CD0 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 003C4 808B8CD4 3C02808C */  lui     $v0, %hi(D_808B913C)       ## $v0 = 808C0000
/* 003C8 808B8CD8 31CF000F */  andi    $t7, $t6, 0x000F           ## $t7 = 00000000
/* 003CC 808B8CDC 000FC080 */  sll     $t8, $t7,  2               
/* 003D0 808B8CE0 00581021 */  addu    $v0, $v0, $t8              
/* 003D4 808B8CE4 8C42913C */  lw      $v0, %lo(D_808B913C)($v0)  
/* 003D8 808B8CE8 50400008 */  beql    $v0, $zero, .L808B8D0C     
/* 003DC 808B8CEC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 003E0 808B8CF0 0040F809 */  jalr    $ra, $v0                   
/* 003E4 808B8CF4 00000000 */  nop
/* 003E8 808B8CF8 54400004 */  bnel    $v0, $zero, .L808B8D0C     
/* 003EC 808B8CFC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 003F0 808B8D00 10000002 */  beq     $zero, $zero, .L808B8D0C   
/* 003F4 808B8D04 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 003F8 808B8D08 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L808B8D0C:
/* 003FC 808B8D0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00400 808B8D10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00404 808B8D14 03E00008 */  jr      $ra                        
/* 00408 808B8D18 00000000 */  nop


