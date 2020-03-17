glabel ObjLightswitch_Destroy
/* 005E0 80B97180 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005E4 80B97184 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 005E8 80B97188 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005EC 80B9718C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 005F0 80B97190 0C016F32 */  jal     func_8005BCC8              
/* 005F4 80B97194 24E50150 */  addiu   $a1, $a3, 0x0150           ## $a1 = 00000150
/* 005F8 80B97198 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005FC 80B9719C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00600 80B971A0 03E00008 */  jr      $ra                        
/* 00604 80B971A4 00000000 */  nop


