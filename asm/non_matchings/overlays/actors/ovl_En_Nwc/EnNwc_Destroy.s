glabel EnNwc_Destroy
/* 008C8 80ABC9A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008CC 80ABC9AC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 008D0 80ABC9B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008D4 80ABC9B4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 008D8 80ABC9B8 0C016F0A */  jal     func_8005BC28              
/* 008DC 80ABC9BC 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 008E0 80ABC9C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008E4 80ABC9C4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008E8 80ABC9C8 03E00008 */  jr      $ra                        
/* 008EC 80ABC9CC 00000000 */  nop


