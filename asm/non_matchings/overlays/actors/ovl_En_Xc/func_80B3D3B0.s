glabel func_80B3D3B0
/* 011D0 80B3D3B0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 011D4 80B3D3B4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 011D8 80B3D3B8 8C860310 */  lw      $a2, 0x0310($a0)           ## 00000310
/* 011DC 80B3D3BC 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 011E0 80B3D3C0 10C00005 */  beq     $a2, $zero, .L80B3D3D8     
/* 011E4 80B3D3C4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 011E8 80B3D3C8 0C00B55C */  jal     Actor_Kill
              
/* 011EC 80B3D3CC AFA50018 */  sw      $a1, 0x0018($sp)           
/* 011F0 80B3D3D0 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 011F4 80B3D3D4 ACA00310 */  sw      $zero, 0x0310($a1)         ## 00000310
.L80B3D3D8:
/* 011F8 80B3D3D8 0C00B55C */  jal     Actor_Kill
              
/* 011FC 80B3D3DC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01200 80B3D3E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01204 80B3D3E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01208 80B3D3E8 03E00008 */  jr      $ra                        
/* 0120C 80B3D3EC 00000000 */  nop


