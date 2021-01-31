glabel func_80BA180C
/* 00AAC 80BA180C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00AB0 80BA1810 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00AB4 80BA1814 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00AB8 80BA1818 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00ABC 80BA181C 0C00BD68 */  jal     Actor_HasNoParent              
/* 00AC0 80BA1820 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00AC4 80BA1824 10400014 */  beq     $v0, $zero, .L80BA1878     
/* 00AC8 80BA1828 8FAE002C */  lw      $t6, 0x002C($sp)           
/* 00ACC 80BA182C 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 00AD0 80BA1830 01EE7821 */  addu    $t7, $t7, $t6              
/* 00AD4 80BA1834 81EF1CBC */  lb      $t7, 0x1CBC($t7)           ## 00011CBC
/* 00AD8 80BA1838 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ADC 80BA183C 0C2E8623 */  jal     func_80BA188C              
/* 00AE0 80BA1840 A20F0003 */  sb      $t7, 0x0003($s0)           ## 00000003
/* 00AE4 80BA1844 0C2E8370 */  jal     func_80BA0DC0              
/* 00AE8 80BA1848 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AEC 80BA184C 0C00B5FB */  jal     func_8002D7EC              
/* 00AF0 80BA1850 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AF4 80BA1854 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00AF8 80BA1858 24180085 */  addiu   $t8, $zero, 0x0085         ## $t8 = 00000085
/* 00AFC 80BA185C AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00B00 80BA1860 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00B04 80BA1864 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00B08 80BA1868 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 00B0C 80BA186C 3C074170 */  lui     $a3, 0x4170                ## $a3 = 41700000
/* 00B10 80BA1870 0C00B92D */  jal     Actor_UpdateBgCheckInfo              
/* 00B14 80BA1874 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80BA1878:
/* 00B18 80BA1878 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00B1C 80BA187C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00B20 80BA1880 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00B24 80BA1884 03E00008 */  jr      $ra                        
/* 00B28 80BA1888 00000000 */  nop
