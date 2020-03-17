glabel func_80AF29DC
/* 0048C 80AF29DC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00490 80AF29E0 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00494 80AF29E4 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 00498 80AF29E8 C4800024 */  lwc1    $f0, 0x0024($a0)           ## 00000024
/* 0049C 80AF29EC C4820028 */  lwc1    $f2, 0x0028($a0)           ## 00000028
/* 004A0 80AF29F0 C48C002C */  lwc1    $f12, 0x002C($a0)          ## 0000002C
/* 004A4 80AF29F4 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 004A8 80AF29F8 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 004AC 80AF29FC 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 004B0 80AF2A00 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 004B4 80AF2A04 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 004B8 80AF2A08 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 004BC 80AF2A0C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 004C0 80AF2A10 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 004C4 80AF2A14 2407005D */  addiu   $a3, $zero, 0x005D         ## $a3 = 0000005D
/* 004C8 80AF2A18 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 004CC 80AF2A1C E7A20014 */  swc1    $f2, 0x0014($sp)           
/* 004D0 80AF2A20 0C00C916 */  jal     Actor_SpawnAttached
              
/* 004D4 80AF2A24 E7AC0018 */  swc1    $f12, 0x0018($sp)          
/* 004D8 80AF2A28 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 004DC 80AF2A2C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 004E0 80AF2A30 03E00008 */  jr      $ra                        
/* 004E4 80AF2A34 00000000 */  nop


