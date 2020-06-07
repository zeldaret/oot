glabel func_80A13DE4
/* 00D74 80A13DE4 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00D78 80A13DE8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00D7C 80A13DEC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00D80 80A13DF0 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00D84 80A13DF4 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00D88 80A13DF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D8C 80A13DFC 24840170 */  addiu   $a0, $a0, 0x0170           ## $a0 = 00000170
/* 00D90 80A13E00 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00D94 80A13E04 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00D98 80A13E08 AFAF0044 */  sw      $t7, 0x0044($sp)           
/* 00D9C 80A13E0C 860301BA */  lh      $v1, 0x01BA($s0)           ## 000001BA
/* 00DA0 80A13E10 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00DA4 80A13E14 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 00DA8 80A13E18 10600002 */  beq     $v1, $zero, .L80A13E24     
/* 00DAC 80A13E1C 2478FFFF */  addiu   $t8, $v1, 0xFFFF           ## $t8 = FFFFFFFF
/* 00DB0 80A13E20 A61801BA */  sh      $t8, 0x01BA($s0)           ## 000001BA
.L80A13E24:
/* 00DB4 80A13E24 0C01DE80 */  jal     Math_ApproxF
              
/* 00DB8 80A13E28 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00DBC 80A13E2C 96190088 */  lhu     $t9, 0x0088($s0)           ## 00000088
/* 00DC0 80A13E30 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00DC4 80A13E34 24070C00 */  addiu   $a3, $zero, 0x0C00         ## $a3 = 00000C00
/* 00DC8 80A13E38 33280008 */  andi    $t0, $t9, 0x0008           ## $t0 = 00000000
/* 00DCC 80A13E3C 1100000C */  beq     $t0, $zero, .L80A13E70     
/* 00DD0 80A13E40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DD4 80A13E44 8605007E */  lh      $a1, 0x007E($s0)           ## 0000007E
/* 00DD8 80A13E48 24090300 */  addiu   $t1, $zero, 0x0300         ## $t1 = 00000300
/* 00DDC 80A13E4C AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00DE0 80A13E50 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00DE4 80A13E54 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00DE8 80A13E58 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00DEC 80A13E5C 860501BC */  lh      $a1, 0x01BC($s0)           ## 000001BC
/* 00DF0 80A13E60 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00DF4 80A13E64 24060100 */  addiu   $a2, $zero, 0x0100         ## $a2 = 00000100
/* 00DF8 80A13E68 10000054 */  beq     $zero, $zero, .L80A13FBC   
/* 00DFC 80A13E6C 860801BA */  lh      $t0, 0x01BA($s0)           ## 000001BA
.L80A13E70:
/* 00E00 80A13E70 0C00B821 */  jal     func_8002E084              
/* 00E04 80A13E74 24052800 */  addiu   $a1, $zero, 0x2800         ## $a1 = 00002800
/* 00E08 80A13E78 10400029 */  beq     $v0, $zero, .L80A13F20     
/* 00E0C 80A13E7C 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00E10 80A13E80 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00E14 80A13E84 0C0295B2 */  jal     func_800A56C8              
/* 00E18 80A13E88 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 00E1C 80A13E8C 10400006 */  beq     $v0, $zero, .L80A13EA8     
/* 00E20 80A13E90 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00E24 80A13E94 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00E28 80A13E98 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00E2C 80A13E9C 44813000 */  mtc1    $at, $f6                   ## $f6 = 4.00
/* 00E30 80A13EA0 E604018C */  swc1    $f4, 0x018C($s0)           ## 0000018C
/* 00E34 80A13EA4 E6060188 */  swc1    $f6, 0x0188($s0)           ## 00000188
.L80A13EA8:
/* 00E38 80A13EA8 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00E3C 80A13EAC 240A0300 */  addiu   $t2, $zero, 0x0300         ## $t2 = 00000300
/* 00E40 80A13EB0 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00E44 80A13EB4 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00E48 80A13EB8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00E4C 80A13EBC 24070C00 */  addiu   $a3, $zero, 0x0C00         ## $a3 = 00000C00
/* 00E50 80A13EC0 8FA30044 */  lw      $v1, 0x0044($sp)           
/* 00E54 80A13EC4 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00E58 80A13EC8 44818000 */  mtc1    $at, $f16                  ## $f16 = 20.00
/* 00E5C 80A13ECC C4680024 */  lwc1    $f8, 0x0024($v1)           ## 00000024
/* 00E60 80A13ED0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E64 80A13ED4 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFF0
/* 00E68 80A13ED8 E7A80038 */  swc1    $f8, 0x0038($sp)           
/* 00E6C 80A13EDC C46A0028 */  lwc1    $f10, 0x0028($v1)          ## 00000028
/* 00E70 80A13EE0 46105480 */  add.s   $f18, $f10, $f16           
/* 00E74 80A13EE4 E7B2003C */  swc1    $f18, 0x003C($sp)          
/* 00E78 80A13EE8 C464002C */  lwc1    $f4, 0x002C($v1)           ## 0000002C
/* 00E7C 80A13EEC 0C00B6CA */  jal     func_8002DB28              
/* 00E80 80A13EF0 E7A40040 */  swc1    $f4, 0x0040($sp)           
/* 00E84 80A13EF4 24451554 */  addiu   $a1, $v0, 0x1554           ## $a1 = 00001554
/* 00E88 80A13EF8 00052C00 */  sll     $a1, $a1, 16               
/* 00E8C 80A13EFC 240B0100 */  addiu   $t3, $zero, 0x0100         ## $t3 = 00000100
/* 00E90 80A13F00 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 00E94 80A13F04 00052C03 */  sra     $a1, $a1, 16               
/* 00E98 80A13F08 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00E9C 80A13F0C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00EA0 80A13F10 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00EA4 80A13F14 24070400 */  addiu   $a3, $zero, 0x0400         ## $a3 = 00000400
/* 00EA8 80A13F18 10000028 */  beq     $zero, $zero, .L80A13FBC   
/* 00EAC 80A13F1C 860801BA */  lh      $t0, 0x01BA($s0)           ## 000001BA
.L80A13F20:
/* 00EB0 80A13F20 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
/* 00EB4 80A13F24 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00EB8 80A13F28 44814000 */  mtc1    $at, $f8                   ## $f8 = 80.00
/* 00EBC 80A13F2C C60A0090 */  lwc1    $f10, 0x0090($s0)          ## 00000090
/* 00EC0 80A13F30 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00EC4 80A13F34 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00EC8 80A13F38 460A403C */  c.lt.s  $f8, $f10                  
/* 00ECC 80A13F3C 24070C00 */  addiu   $a3, $zero, 0x0C00         ## $a3 = 00000C00
/* 00ED0 80A13F40 240C0300 */  addiu   $t4, $zero, 0x0300         ## $t4 = 00000300
/* 00ED4 80A13F44 E606018C */  swc1    $f6, 0x018C($s0)           ## 0000018C
/* 00ED8 80A13F48 45020005 */  bc1fl   .L80A13F60                 
/* 00EDC 80A13F4C 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 00EE0 80A13F50 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00EE4 80A13F54 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00EE8 80A13F58 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00EEC 80A13F5C 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
.L80A13F60:
/* 00EF0 80A13F60 240E0954 */  addiu   $t6, $zero, 0x0954         ## $t6 = 00000954
/* 00EF4 80A13F64 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00EF8 80A13F68 304D0001 */  andi    $t5, $v0, 0x0001           ## $t5 = 00000000
/* 00EFC 80A13F6C 11A00003 */  beq     $t5, $zero, .L80A13F7C     
/* 00F00 80A13F70 24060100 */  addiu   $a2, $zero, 0x0100         ## $a2 = 00000100
/* 00F04 80A13F74 A60E01BC */  sh      $t6, 0x01BC($s0)           ## 000001BC
/* 00F08 80A13F78 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
.L80A13F7C:
/* 00F0C 80A13F7C 304F0010 */  andi    $t7, $v0, 0x0010           ## $t7 = 00000000
/* 00F10 80A13F80 15E00008 */  bne     $t7, $zero, .L80A13FA4     
/* 00F14 80A13F84 24182154 */  addiu   $t8, $zero, 0x2154         ## $t8 = 00002154
/* 00F18 80A13F88 C6100310 */  lwc1    $f16, 0x0310($s0)          ## 00000310
/* 00F1C 80A13F8C C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 00F20 80A13F90 24190954 */  addiu   $t9, $zero, 0x0954         ## $t9 = 00000954
/* 00F24 80A13F94 4612803C */  c.lt.s  $f16, $f18                 
/* 00F28 80A13F98 00000000 */  nop
/* 00F2C 80A13F9C 45020004 */  bc1fl   .L80A13FB0                 
/* 00F30 80A13FA0 A61901BC */  sh      $t9, 0x01BC($s0)           ## 000001BC
.L80A13FA4:
/* 00F34 80A13FA4 10000002 */  beq     $zero, $zero, .L80A13FB0   
/* 00F38 80A13FA8 A61801BC */  sh      $t8, 0x01BC($s0)           ## 000001BC
/* 00F3C 80A13FAC A61901BC */  sh      $t9, 0x01BC($s0)           ## 000001BC
.L80A13FB0:
/* 00F40 80A13FB0 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00F44 80A13FB4 860501BC */  lh      $a1, 0x01BC($s0)           ## 000001BC
/* 00F48 80A13FB8 860801BA */  lh      $t0, 0x01BA($s0)           ## 000001BA
.L80A13FBC:
/* 00F4C 80A13FBC 11000006 */  beq     $t0, $zero, .L80A13FD8     
/* 00F50 80A13FC0 00000000 */  nop
/* 00F54 80A13FC4 0C023C20 */  jal     func_8008F080              
/* 00F58 80A13FC8 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00F5C 80A13FCC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00F60 80A13FD0 54410004 */  bnel    $v0, $at, .L80A13FE4       
/* 00F64 80A13FD4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A13FD8:
/* 00F68 80A13FD8 0C284D43 */  jal     func_80A1350C              
/* 00F6C 80A13FDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F70 80A13FE0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A13FE4:
/* 00F74 80A13FE4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00F78 80A13FE8 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00F7C 80A13FEC 03E00008 */  jr      $ra                        
/* 00F80 80A13FF0 00000000 */  nop
