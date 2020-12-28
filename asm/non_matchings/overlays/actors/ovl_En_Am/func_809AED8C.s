glabel func_809AED8C
/* 00E6C 809AED8C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00E70 809AED90 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00E74 809AED94 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E78 809AED98 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00E7C 809AED9C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00E80 809AEDA0 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 00E84 809AEDA4 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00E88 809AEDA8 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00E8C 809AEDAC 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 00E90 809AEDB0 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00E94 809AEDB4 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 00E98 809AEDB8 C600017C */  lwc1    $f0, 0x017C($s0)           ## 0000017C
/* 00E9C 809AEDBC 00022C00 */  sll     $a1, $v0, 16               
/* 00EA0 809AEDC0 00052C03 */  sra     $a1, $a1, 16               
/* 00EA4 809AEDC4 46002032 */  c.eq.s  $f4, $f0                   
/* 00EA8 809AEDC8 3C014130 */  lui     $at, 0x4130                ## $at = 41300000
/* 00EAC 809AEDCC 45020009 */  bc1fl   .L809AEDF4                 
/* 00EB0 809AEDD0 44815000 */  mtc1    $at, $f10                  ## $f10 = 11.00
/* 00EB4 809AEDD4 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00EB8 809AEDD8 44813000 */  mtc1    $at, $f6                   ## $f6 = 12.00
/* 00EBC 809AEDDC 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00EC0 809AEDE0 44814000 */  mtc1    $at, $f8                   ## $f8 = 6.00
/* 00EC4 809AEDE4 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
/* 00EC8 809AEDE8 1000002E */  beq     $zero, $zero, .L809AEEA4   
/* 00ECC 809AEDEC E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 00ED0 809AEDF0 44815000 */  mtc1    $at, $f10                  ## $f10 = 6.00
.L809AEDF4:
/* 00ED4 809AEDF4 00000000 */  nop
/* 00ED8 809AEDF8 4600503C */  c.lt.s  $f10, $f0                  
/* 00EDC 809AEDFC 00000000 */  nop
/* 00EE0 809AEE00 45020029 */  bc1fl   .L809AEEA8                 
/* 00EE4 809AEE04 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00EE8 809AEE08 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
/* 00EEC 809AEE0C 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00EF0 809AEE10 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00EF4 809AEE14 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00EF8 809AEE18 15E00005 */  bne     $t7, $zero, .L809AEE30     
/* 00EFC 809AEE1C 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 00F00 809AEE20 3C014130 */  lui     $at, 0x4130                ## $at = 41300000
/* 00F04 809AEE24 44818000 */  mtc1    $at, $f16                  ## $f16 = 11.00
/* 00F08 809AEE28 1000001E */  beq     $zero, $zero, .L809AEEA4   
/* 00F0C 809AEE2C E610017C */  swc1    $f16, 0x017C($s0)          ## 0000017C
.L809AEE30:
/* 00F10 809AEE30 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 00F14 809AEE34 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00F18 809AEE38 96180088 */  lhu     $t8, 0x0088($s0)           ## 00000088
/* 00F1C 809AEE3C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00F20 809AEE40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F24 809AEE44 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 00F28 809AEE48 53200005 */  beql    $t9, $zero, .L809AEE60     
/* 00F2C 809AEE4C C6120080 */  lwc1    $f18, 0x0080($s0)          ## 00000080
/* 00F30 809AEE50 86080258 */  lh      $t0, 0x0258($s0)           ## 00000258
/* 00F34 809AEE54 2509FFFF */  addiu   $t1, $t0, 0xFFFF           ## $t1 = FFFFFFFF
/* 00F38 809AEE58 A6090258 */  sh      $t1, 0x0258($s0)           ## 00000258
/* 00F3C 809AEE5C C6120080 */  lwc1    $f18, 0x0080($s0)          ## 00000080
.L809AEE60:
/* 00F40 809AEE60 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 00F44 809AEE64 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 00F48 809AEE68 E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
/* 00F4C 809AEE6C 0C26B89C */  jal     func_809AE270              
/* 00F50 809AEE70 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00F54 809AEE74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F58 809AEE78 0C00B6DB */  jal     func_8002DB6C              
/* 00F5C 809AEE7C 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00F60 809AEE80 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00F64 809AEE84 44812000 */  mtc1    $at, $f4                   ## $f4 = 80.00
/* 00F68 809AEE88 00000000 */  nop
/* 00F6C 809AEE8C 4604003C */  c.lt.s  $f0, $f4                   
/* 00F70 809AEE90 00000000 */  nop
/* 00F74 809AEE94 45020004 */  bc1fl   .L809AEEA8                 
/* 00F78 809AEE98 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00F7C 809AEE9C 0C26B999 */  jal     func_809AE664              
/* 00F80 809AEEA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809AEEA4:
/* 00F84 809AEEA4 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
.L809AEEA8:
/* 00F88 809AEEA8 C6080068 */  lwc1    $f8, 0x0068($s0)           ## 00000068
/* 00F8C 809AEEAC 46083032 */  c.eq.s  $f6, $f8                   
/* 00F90 809AEEB0 00000000 */  nop
/* 00F94 809AEEB4 45010009 */  bc1t    .L809AEEDC                 
/* 00F98 809AEEB8 00000000 */  nop
/* 00F9C 809AEEBC 960A0088 */  lhu     $t2, 0x0088($s0)           ## 00000088
/* 00FA0 809AEEC0 314B0008 */  andi    $t3, $t2, 0x0008           ## $t3 = 00000000
/* 00FA4 809AEEC4 11600005 */  beq     $t3, $zero, .L809AEEDC     
/* 00FA8 809AEEC8 00000000 */  nop
/* 00FAC 809AEECC 860C007E */  lh      $t4, 0x007E($s0)           ## 0000007E
/* 00FB0 809AEED0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FB4 809AEED4 0C00B638 */  jal     Actor_MoveForward
              
/* 00FB8 809AEED8 A60C0032 */  sh      $t4, 0x0032($s0)           ## 00000032
.L809AEEDC:
/* 00FBC 809AEEDC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00FC0 809AEEE0 26040164 */  addiu   $a0, $s0, 0x0164           ## $a0 = 00000164
/* 00FC4 809AEEE4 860D0032 */  lh      $t5, 0x0032($s0)           ## 00000032
/* 00FC8 809AEEE8 A60D00B6 */  sh      $t5, 0x00B6($s0)           ## 000000B6
/* 00FCC 809AEEEC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00FD0 809AEEF0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00FD4 809AEEF4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00FD8 809AEEF8 03E00008 */  jr      $ra                        
/* 00FDC 809AEEFC 00000000 */  nop
