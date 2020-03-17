glabel func_8097AB0C
/* 021DC 8097AB0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 021E0 8097AB10 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 021E4 8097AB14 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 021E8 8097AB18 0C25EA79 */  jal     func_8097A9E4              
/* 021EC 8097AB1C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 021F0 8097AB20 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 021F4 8097AB24 0C25EAAB */  jal     func_8097AAAC              
/* 021F8 8097AB28 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 021FC 8097AB2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02200 8097AB30 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02204 8097AB34 03E00008 */  jr      $ra                        
/* 02208 8097AB38 00000000 */  nop


