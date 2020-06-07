glabel func_80AB15D4
/* 00844 80AB15D4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00848 80AB15D8 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 0084C 80AB15DC AFA40038 */  sw      $a0, 0x0038($sp)           
/* 00850 80AB15E0 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00854 80AB15E4 8CC21C44 */  lw      $v0, 0x1C44($a2)           ## 00001C44
/* 00858 80AB15E8 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0085C 80AB15EC 44813000 */  mtc1    $at, $f6                   ## $f6 = 50.00
/* 00860 80AB15F0 C4440028 */  lwc1    $f4, 0x0028($v0)           ## 00000028
/* 00864 80AB15F4 C4400024 */  lwc1    $f0, 0x0024($v0)           ## 00000024
/* 00868 80AB15F8 C44C002C */  lwc1    $f12, 0x002C($v0)          ## 0000002C
/* 0086C 80AB15FC 46062080 */  add.s   $f2, $f4, $f6              
/* 00870 80AB1600 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00874 80AB1604 240E000C */  addiu   $t6, $zero, 0x000C         ## $t6 = 0000000C
/* 00878 80AB1608 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 0087C 80AB160C 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00880 80AB1610 E7A20014 */  swc1    $f2, 0x0014($sp)           
/* 00884 80AB1614 AFA6003C */  sw      $a2, 0x003C($sp)           
/* 00888 80AB1618 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 0088C 80AB161C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00890 80AB1620 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00894 80AB1624 2407008B */  addiu   $a3, $zero, 0x008B         ## $a3 = 0000008B
/* 00898 80AB1628 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 0089C 80AB162C 0C00C916 */  jal     Actor_SpawnAttached
              
/* 008A0 80AB1630 E7AC0018 */  swc1    $f12, 0x0018($sp)          
/* 008A4 80AB1634 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 008A8 80AB1638 0C021344 */  jal     Item_Give              
/* 008AC 80AB163C 24050069 */  addiu   $a1, $zero, 0x0069         ## $a1 = 00000069
/* 008B0 80AB1640 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 008B4 80AB1644 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 008B8 80AB1648 03E00008 */  jr      $ra                        
/* 008BC 80AB164C 00000000 */  nop
