glabel func_80B50E3C
/* 024AC 80B50E3C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 024B0 80B50E40 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 024B4 80B50E44 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 024B8 80B50E48 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 024BC 80B50E4C 0C2D3F33 */  jal     func_80B4FCCC              
/* 024C0 80B50E50 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 024C4 80B50E54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 024C8 80B50E58 0C2D3B4B */  jal     func_80B4ED2C              
/* 024CC 80B50E5C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 024D0 80B50E60 0C2D3A6C */  jal     func_80B4E9B0              
/* 024D4 80B50E64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 024D8 80B50E68 0C2D3B5D */  jal     func_80B4ED74              
/* 024DC 80B50E6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 024E0 80B50E70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 024E4 80B50E74 0C2D4175 */  jal     func_80B505D4              
/* 024E8 80B50E78 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 024EC 80B50E7C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 024F0 80B50E80 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 024F4 80B50E84 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 024F8 80B50E88 03E00008 */  jr      $ra                        
/* 024FC 80B50E8C 00000000 */  nop
