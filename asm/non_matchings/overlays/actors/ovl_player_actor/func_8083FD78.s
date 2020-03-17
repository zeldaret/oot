glabel func_8083FD78
/* 0DB68 8083FD78 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0DB6C 8083FD7C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0DB70 8083FD80 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0DB74 8083FD84 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0DB78 8083FD88 AFA60038 */  sw      $a2, 0x0038($sp)           
/* 0DB7C 8083FD8C AFA7003C */  sw      $a3, 0x003C($sp)           
/* 0DB80 8083FD90 8498083E */  lh      $t8, 0x083E($a0)           ## 0000083E
/* 0DB84 8083FD94 84CF0000 */  lh      $t7, 0x0000($a2)           ## 00000000
/* 0DB88 8083FD98 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0DB8C 8083FD9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DB90 8083FDA0 01F81823 */  subu    $v1, $t7, $t8              
/* 0DB94 8083FDA4 00031C00 */  sll     $v1, $v1, 16               
/* 0DB98 8083FDA8 00031C03 */  sra     $v1, $v1, 16               
/* 0DB9C 8083FDAC 04600003 */  bltz    $v1, .L8083FDBC            
/* 0DBA0 8083FDB0 00033023 */  subu    $a2, $zero, $v1            
/* 0DBA4 8083FDB4 10000002 */  beq     $zero, $zero, .L8083FDC0   
/* 0DBA8 8083FDB8 3066FFFF */  andi    $a2, $v1, 0xFFFF           ## $a2 = 00000000
.L8083FDBC:
/* 0DBAC 8083FDBC 30C6FFFF */  andi    $a2, $a2, 0xFFFF           ## $a2 = 00000000
.L8083FDC0:
/* 0DBB0 8083FDC0 A7A3002E */  sh      $v1, 0x002E($sp)           
/* 0DBB4 8083FDC4 0C00B75E */  jal     func_8002DD78              
/* 0DBB8 8083FDC8 A7A6002C */  sh      $a2, 0x002C($sp)           
/* 0DBBC 8083FDCC 87A3002E */  lh      $v1, 0x002E($sp)           
/* 0DBC0 8083FDD0 97A6002C */  lhu     $a2, 0x002C($sp)           
/* 0DBC4 8083FDD4 14400009 */  bne     $v0, $zero, .L8083FDFC     
/* 0DBC8 8083FDD8 8FA70034 */  lw      $a3, 0x0034($sp)           
/* 0DBCC 8083FDDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DBD0 8083FDE0 A7A3002E */  sh      $v1, 0x002E($sp)           
/* 0DBD4 8083FDE4 0C20CD2D */  jal     func_808334B4              
/* 0DBD8 8083FDE8 A7A6002C */  sh      $a2, 0x002C($sp)           
/* 0DBDC 8083FDEC 87A3002E */  lh      $v1, 0x002E($sp)           
/* 0DBE0 8083FDF0 97A6002C */  lhu     $a2, 0x002C($sp)           
/* 0DBE4 8083FDF4 10400040 */  beq     $v0, $zero, .L8083FEF8     
/* 0DBE8 8083FDF8 8FA70034 */  lw      $a3, 0x0034($sp)           
.L8083FDFC:
/* 0DBEC 8083FDFC 8E190664 */  lw      $t9, 0x0664($s0)           ## 00000664
/* 0DBF0 8083FE00 00062400 */  sll     $a0, $a2, 16               
/* 0DBF4 8083FE04 00042403 */  sra     $a0, $a0, 16               
/* 0DBF8 8083FE08 5720003C */  bnel    $t9, $zero, .L8083FEFC     
/* 0DBFC 8083FE0C 8E090664 */  lw      $t1, 0x0664($s0)           ## 00000664
/* 0DC00 8083FE10 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0DC04 8083FE14 A7A3002E */  sh      $v1, 0x002E($sp)           
/* 0DC08 8083FE18 8FA70034 */  lw      $a3, 0x0034($sp)           
/* 0DC0C 8083FE1C 87A3002E */  lh      $v1, 0x002E($sp)           
/* 0DC10 8083FE20 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0DC14 8083FE24 C4E40000 */  lwc1    $f4, 0x0000($a3)           ## 00000000
/* 0DC18 8083FE28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DC1C 8083FE2C 3C0F8086 */  lui     $t7, %hi(D_80858AB4)       ## $t7 = 80860000
/* 0DC20 8083FE30 46002182 */  mul.s   $f6, $f4, $f0              
/* 0DC24 8083FE34 E4E60000 */  swc1    $f6, 0x0000($a3)           ## 00000000
/* 0DC28 8083FE38 C4EA0000 */  lwc1    $f10, 0x0000($a3)          ## 00000000
/* 0DC2C 8083FE3C 8FAD0038 */  lw      $t5, 0x0038($sp)           
/* 0DC30 8083FE40 460A4032 */  c.eq.s  $f8, $f10                  
/* 0DC34 8083FE44 00000000 */  nop
/* 0DC38 8083FE48 4503000C */  bc1tl   .L8083FE7C                 
/* 0DC3C 8083FE4C 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
/* 0DC40 8083FE50 04600003 */  bltz    $v1, .L8083FE60            
/* 0DC44 8083FE54 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
/* 0DC48 8083FE58 10000001 */  beq     $zero, $zero, .L8083FE60   
/* 0DC4C 8083FE5C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083FE60:
/* 0DC50 8083FE60 860900B6 */  lh      $t1, 0x00B6($s0)           ## 000000B6
/* 0DC54 8083FE64 8FAB0038 */  lw      $t3, 0x0038($sp)           
/* 0DC58 8083FE68 00024380 */  sll     $t0, $v0, 14               
/* 0DC5C 8083FE6C 01095021 */  addu    $t2, $t0, $t1              
/* 0DC60 8083FE70 10000003 */  beq     $zero, $zero, .L8083FE80   
/* 0DC64 8083FE74 A56A0000 */  sh      $t2, 0x0000($t3)           ## 00000000
/* 0DC68 8083FE78 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
.L8083FE7C:
/* 0DC6C 8083FE7C A5AC0000 */  sh      $t4, 0x0000($t5)           ## 00000000
.L8083FE80:
/* 0DC70 8083FE80 8E0E0664 */  lw      $t6, 0x0664($s0)           ## 00000664
/* 0DC74 8083FE84 11C00005 */  beq     $t6, $zero, .L8083FE9C     
/* 0DC78 8083FE88 00000000 */  nop
/* 0DC7C 8083FE8C 0C20F6E6 */  jal     func_8083DB98              
/* 0DC80 8083FE90 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0DC84 8083FE94 10000043 */  beq     $zero, $zero, .L8083FFA4   
/* 0DC88 8083FE98 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8083FE9C:
/* 0DC8C 8083FE9C 8DEF8AB4 */  lw      $t7, %lo(D_80858AB4)($t7)  
/* 0DC90 8083FEA0 3C014370 */  lui     $at, 0x4370                ## $at = 43700000
/* 0DC94 8083FEA4 44812000 */  mtc1    $at, $f4                   ## $f4 = 240.00
/* 0DC98 8083FEA8 81F80015 */  lb      $t8, 0x0015($t7)           ## 00000015
/* 0DC9C 8083FEAC 2408001E */  addiu   $t0, $zero, 0x001E         ## $t0 = 0000001E
/* 0DCA0 8083FEB0 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 0DCA4 8083FEB4 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 0DCA8 8083FEB8 26040044 */  addiu   $a0, $s0, 0x0044           ## $a0 = 00000044
/* 0DCAC 8083FEBC 2406000E */  addiu   $a2, $zero, 0x000E         ## $a2 = 0000000E
/* 0DCB0 8083FEC0 468084A0 */  cvt.s.w $f18, $f16                 
/* 0DCB4 8083FEC4 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 0DCB8 8083FEC8 46049182 */  mul.s   $f6, $f18, $f4             
/* 0DCBC 8083FECC 4600320D */  trunc.w.s $f8, $f6                   
/* 0DCC0 8083FED0 44054000 */  mfc1    $a1, $f8                   
/* 0DCC4 8083FED4 00000000 */  nop
/* 0DCC8 8083FED8 00052C00 */  sll     $a1, $a1, 16               
/* 0DCCC 8083FEDC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0DCD0 8083FEE0 00052C03 */  sra     $a1, $a1, 16               
/* 0DCD4 8083FEE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DCD8 8083FEE8 0C20DAAE */  jal     func_80836AB8              
/* 0DCDC 8083FEEC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0DCE0 8083FEF0 1000002C */  beq     $zero, $zero, .L8083FFA4   
/* 0DCE4 8083FEF4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8083FEF8:
/* 0DCE8 8083FEF8 8E090664 */  lw      $t1, 0x0664($s0)           ## 00000664
.L8083FEFC:
/* 0DCEC 8083FEFC 8FAA0038 */  lw      $t2, 0x0038($sp)           
/* 0DCF0 8083FF00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DCF4 8083FF04 11200007 */  beq     $t1, $zero, .L8083FF24     
/* 0DCF8 8083FF08 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 0DCFC 8083FF0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DD00 8083FF10 8CE50000 */  lw      $a1, 0x0000($a3)           ## 00000000
/* 0DD04 8083FF14 0C20FF1A */  jal     func_8083FC68              
/* 0DD08 8083FF18 85460000 */  lh      $a2, 0x0000($t2)           ## 00000000
/* 0DD0C 8083FF1C 10000022 */  beq     $zero, $zero, .L8083FFA8   
/* 0DD10 8083FF20 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L8083FF24:
/* 0DD14 8083FF24 0C20F715 */  jal     func_8083DC54              
/* 0DD18 8083FF28 A7A6002C */  sh      $a2, 0x002C($sp)           
/* 0DD1C 8083FF2C 8FA70034 */  lw      $a3, 0x0034($sp)           
/* 0DD20 8083FF30 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 0DD24 8083FF34 97A6002C */  lhu     $a2, 0x002C($sp)           
/* 0DD28 8083FF38 C4F00000 */  lwc1    $f16, 0x0000($a3)          ## 00000000
/* 0DD2C 8083FF3C 240C4000 */  addiu   $t4, $zero, 0x4000         ## $t4 = 00004000
/* 0DD30 8083FF40 00065843 */  sra     $t3, $a2,  1               
/* 0DD34 8083FF44 46105032 */  c.eq.s  $f10, $f16                 
/* 0DD38 8083FF48 018B2023 */  subu    $a0, $t4, $t3              
/* 0DD3C 8083FF4C 00042400 */  sll     $a0, $a0, 16               
/* 0DD40 8083FF50 28C11770 */  slti    $at, $a2, 0x1770           
/* 0DD44 8083FF54 45010005 */  bc1t    .L8083FF6C                 
/* 0DD48 8083FF58 00000000 */  nop
/* 0DD4C 8083FF5C 10200003 */  beq     $at, $zero, .L8083FF6C     
/* 0DD50 8083FF60 00000000 */  nop
/* 0DD54 8083FF64 1000000F */  beq     $zero, $zero, .L8083FFA4   
/* 0DD58 8083FF68 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083FF6C:
/* 0DD5C 8083FF6C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0DD60 8083FF70 00042403 */  sra     $a0, $a0, 16               
/* 0DD64 8083FF74 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 0DD68 8083FF78 44819000 */  mtc1    $at, $f18                  ## $f18 = 200.00
/* 0DD6C 8083FF7C 8FA70034 */  lw      $a3, 0x0034($sp)           
/* 0DD70 8083FF80 46120102 */  mul.s   $f4, $f0, $f18             
/* 0DD74 8083FF84 C4E60000 */  lwc1    $f6, 0x0000($a3)           ## 00000000
/* 0DD78 8083FF88 4606203C */  c.lt.s  $f4, $f6                   
/* 0DD7C 8083FF8C 00000000 */  nop
/* 0DD80 8083FF90 45020004 */  bc1fl   .L8083FFA4                 
/* 0DD84 8083FF94 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0DD88 8083FF98 10000002 */  beq     $zero, $zero, .L8083FFA4   
/* 0DD8C 8083FF9C 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
/* 0DD90 8083FFA0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8083FFA4:
/* 0DD94 8083FFA4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L8083FFA8:
/* 0DD98 8083FFA8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0DD9C 8083FFAC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0DDA0 8083FFB0 03E00008 */  jr      $ra                        
/* 0DDA4 8083FFB4 00000000 */  nop


