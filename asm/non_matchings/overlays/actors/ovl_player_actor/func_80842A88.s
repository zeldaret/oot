glabel func_80842A88
/* 10878 80842A88 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1087C 80842A8C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 10880 80842A90 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 10884 80842A94 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 10888 80842A98 2405FFFF */  addiu   $a1, $zero, 0xFFFF         ## $a1 = FFFFFFFF
/* 1088C 80842A9C 0C021CCC */  jal     Inventory_ChangeAmmo              
/* 10890 80842AA0 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 10894 80842AA4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 10898 80842AA8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 1089C 80842AAC 0C20D7D1 */  jal     func_80835F44              
/* 108A0 80842AB0 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 108A4 80842AB4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 108A8 80842AB8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 108AC 80842ABC 03E00008 */  jr      $ra                        
/* 108B0 80842AC0 00000000 */  nop
