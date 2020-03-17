glabel MagicFire_Destroy
/* 000A8 80B88E18 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000AC 80B88E1C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000B0 80B88E20 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000B4 80B88E24 0C021DB2 */  jal     func_800876C8              
/* 000B8 80B88E28 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000BC 80B88E2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000C0 80B88E30 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000C4 80B88E34 03E00008 */  jr      $ra                        
/* 000C8 80B88E38 00000000 */  nop


