glabel func_8096AFFC
/* 0152C 8096AFFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01530 8096B000 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01534 8096B004 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01538 8096B008 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0153C 8096B00C 0C25A8F6 */  jal     func_8096A3D8              
/* 01540 8096B010 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01544 8096B014 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01548 8096B018 0C25AA93 */  jal     func_8096AA4C              
/* 0154C 8096B01C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01550 8096B020 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01554 8096B024 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01558 8096B028 03E00008 */  jr      $ra                        
/* 0155C 8096B02C 00000000 */  nop
