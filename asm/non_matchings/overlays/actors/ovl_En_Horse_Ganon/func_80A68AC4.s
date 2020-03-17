glabel func_80A68AC4
/* 00464 80A68AC4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00468 80A68AC8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0046C 80A68ACC AC80014C */  sw      $zero, 0x014C($a0)         ## 0000014C
/* 00470 80A68AD0 3C0580A7 */  lui     $a1, %hi(D_80A691C0)       ## $a1 = 80A70000
/* 00474 80A68AD4 8CA591C0 */  lw      $a1, %lo(D_80A691C0)($a1)  
/* 00478 80A68AD8 0C0294BE */  jal     func_800A52F8              
/* 0047C 80A68ADC 248401A0 */  addiu   $a0, $a0, 0x01A0           ## $a0 = 000001A0
/* 00480 80A68AE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00484 80A68AE4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00488 80A68AE8 03E00008 */  jr      $ra                        
/* 0048C 80A68AEC 00000000 */  nop


