glabel func_80AF37AC
/* 0125C 80AF37AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01260 80AF37B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01264 80AF37B4 0C03D719 */  jal     func_800F5C64              
/* 01268 80AF37B8 24040051 */  addiu   $a0, $zero, 0x0051         ## $a0 = 00000051
/* 0126C 80AF37BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01270 80AF37C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01274 80AF37C4 03E00008 */  jr      $ra                        
/* 01278 80AF37C8 00000000 */  nop


