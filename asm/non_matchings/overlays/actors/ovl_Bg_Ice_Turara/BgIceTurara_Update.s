glabel BgIceTurara_Update
/* 006A4 808925C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006A8 808925C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006AC 808925CC 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 006B0 808925D0 0320F809 */  jalr    $ra, $t9                   
/* 006B4 808925D4 00000000 */  nop
/* 006B8 808925D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006BC 808925DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006C0 808925E0 03E00008 */  jr      $ra                        
/* 006C4 808925E4 00000000 */  nop
