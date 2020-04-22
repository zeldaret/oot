glabel func_80AB1578
/* 007E8 80AB1578 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 007EC 80AB157C AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 007F0 80AB1580 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 007F4 80AB1584 C4800024 */  lwc1    $f0, 0x0024($a0)           ## 00000024
/* 007F8 80AB1588 C4820028 */  lwc1    $f2, 0x0028($a0)           ## 00000028
/* 007FC 80AB158C C48C002C */  lwc1    $f12, 0x002C($a0)          ## 0000002C
/* 00800 80AB1590 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00804 80AB1594 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00808 80AB1598 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 0080C 80AB159C AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 00810 80AB15A0 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00814 80AB15A4 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00818 80AB15A8 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0081C 80AB15AC AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00820 80AB15B0 2407005D */  addiu   $a3, $zero, 0x005D         ## $a3 = 0000005D
/* 00824 80AB15B4 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00828 80AB15B8 E7A20014 */  swc1    $f2, 0x0014($sp)           
/* 0082C 80AB15BC 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00830 80AB15C0 E7AC0018 */  swc1    $f12, 0x0018($sp)          
/* 00834 80AB15C4 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00838 80AB15C8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0083C 80AB15CC 03E00008 */  jr      $ra                        
/* 00840 80AB15D0 00000000 */  nop
