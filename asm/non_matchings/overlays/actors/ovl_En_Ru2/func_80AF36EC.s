glabel func_80AF36EC
/* 0119C 80AF36EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 011A0 80AF36F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 011A4 80AF36F4 0C2BC9A4 */  jal     func_80AF2690              
/* 011A8 80AF36F8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 011AC 80AF36FC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 011B0 80AF3700 0C00B2DD */  jal     Flags_SetSwitch
              
/* 011B4 80AF3704 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 011B8 80AF3708 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 011BC 80AF370C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 011C0 80AF3710 03E00008 */  jr      $ra                        
/* 011C4 80AF3714 00000000 */  nop


