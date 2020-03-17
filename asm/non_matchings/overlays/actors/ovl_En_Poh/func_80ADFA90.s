glabel func_80ADFA90
/* 01D40 80ADFA90 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01D44 80ADFA94 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01D48 80ADFA98 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 01D4C 80ADFA9C 908E029D */  lbu     $t6, 0x029D($a0)           ## 0000029D
/* 01D50 80ADFAA0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01D54 80ADFAA4 01C51021 */  addu    $v0, $t6, $a1              
/* 01D58 80ADFAA8 04410003 */  bgez    $v0, .L80ADFAB8            
/* 01D5C 80ADFAAC 28410100 */  slti    $at, $v0, 0x0100           
/* 01D60 80ADFAB0 10000006 */  beq     $zero, $zero, .L80ADFACC   
/* 01D64 80ADFAB4 A080029D */  sb      $zero, 0x029D($a0)         ## 0000029D
.L80ADFAB8:
/* 01D68 80ADFAB8 14200003 */  bne     $at, $zero, .L80ADFAC8     
/* 01D6C 80ADFABC 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 01D70 80ADFAC0 10000001 */  beq     $zero, $zero, .L80ADFAC8   
/* 01D74 80ADFAC4 240300FF */  addiu   $v1, $zero, 0x00FF         ## $v1 = 000000FF
.L80ADFAC8:
/* 01D78 80ADFAC8 A203029D */  sb      $v1, 0x029D($s0)           ## 0000029D
.L80ADFACC:
/* 01D7C 80ADFACC 04A3001D */  bgezl   $a1, .L80ADFB44            
/* 01D80 80ADFAD0 9218029D */  lbu     $t8, 0x029D($s0)           ## 0000029D
/* 01D84 80ADFAD4 920F029D */  lbu     $t7, 0x029D($s0)           ## 0000029D
/* 01D88 80ADFAD8 3C0180AE */  lui     $at, %hi(D_80AE1C40)       ## $at = 80AE0000
/* 01D8C 80ADFADC C42E1C40 */  lwc1    $f14, %lo(D_80AE1C40)($at) 
/* 01D90 80ADFAE0 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 01D94 80ADFAE4 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 01D98 80ADFAE8 05E10004 */  bgez    $t7, .L80ADFAFC            
/* 01D9C 80ADFAEC 46802320 */  cvt.s.w $f12, $f4                  
/* 01DA0 80ADFAF0 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 01DA4 80ADFAF4 00000000 */  nop
/* 01DA8 80ADFAF8 46066300 */  add.s   $f12, $f12, $f6            
.L80ADFAFC:
/* 01DAC 80ADFAFC 3C0180AE */  lui     $at, %hi(D_80AE1C44)       ## $at = 80AE0000
/* 01DB0 80ADFB00 C4281C44 */  lwc1    $f8, %lo(D_80AE1C44)($at)  
/* 01DB4 80ADFB04 3C0180AE */  lui     $at, %hi(D_80AE1C48)       ## $at = 80AE0000
/* 01DB8 80ADFB08 C42A1C48 */  lwc1    $f10, %lo(D_80AE1C48)($at) 
/* 01DBC 80ADFB0C 46086082 */  mul.s   $f2, $f12, $f8             
/* 01DC0 80ADFB10 3C0180AE */  lui     $at, %hi(D_80AE1C4C)       ## $at = 80AE0000
/* 01DC4 80ADFB14 C4321C4C */  lwc1    $f18, %lo(D_80AE1C4C)($at) 
/* 01DC8 80ADFB18 46025402 */  mul.s   $f16, $f10, $f2            
/* 01DCC 80ADFB1C 00000000 */  nop
/* 01DD0 80ADFB20 46027102 */  mul.s   $f4, $f14, $f2             
/* 01DD4 80ADFB24 46128000 */  add.s   $f0, $f16, $f18            
/* 01DD8 80ADFB28 46047181 */  sub.s   $f6, $f14, $f4             
/* 01DDC 80ADFB2C E6000058 */  swc1    $f0, 0x0058($s0)           ## 00000058
/* 01DE0 80ADFB30 E6000050 */  swc1    $f0, 0x0050($s0)           ## 00000050
/* 01DE4 80ADFB34 460E3200 */  add.s   $f8, $f6, $f14             
/* 01DE8 80ADFB38 10000017 */  beq     $zero, $zero, .L80ADFB98   
/* 01DEC 80ADFB3C E6080054 */  swc1    $f8, 0x0054($s0)           ## 00000054
/* 01DF0 80ADFB40 9218029D */  lbu     $t8, 0x029D($s0)           ## 0000029D
.L80ADFB44:
/* 01DF4 80ADFB44 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01DF8 80ADFB48 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 01DFC 80ADFB4C 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 01E00 80ADFB50 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 01E04 80ADFB54 07010004 */  bgez    $t8, .L80ADFB68            
/* 01E08 80ADFB58 46805320 */  cvt.s.w $f12, $f10                 
/* 01E0C 80ADFB5C 44818000 */  mtc1    $at, $f16                  ## $f16 = 4294967296.00
/* 01E10 80ADFB60 00000000 */  nop
/* 01E14 80ADFB64 46106300 */  add.s   $f12, $f12, $f16           
.L80ADFB68:
/* 01E18 80ADFB68 3C0180AE */  lui     $at, %hi(D_80AE1C50)       ## $at = 80AE0000
/* 01E1C 80ADFB6C C4321C50 */  lwc1    $f18, %lo(D_80AE1C50)($at) 
/* 01E20 80ADFB70 3C0180AE */  lui     $at, %hi(D_80AE1C54)       ## $at = 80AE0000
/* 01E24 80ADFB74 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 01E28 80ADFB78 46126002 */  mul.s   $f0, $f12, $f18            
/* 01E2C 80ADFB7C E6000058 */  swc1    $f0, 0x0058($s0)           ## 00000058
/* 01E30 80ADFB80 E6000054 */  swc1    $f0, 0x0054($s0)           ## 00000054
/* 01E34 80ADFB84 E6000050 */  swc1    $f0, 0x0050($s0)           ## 00000050
/* 01E38 80ADFB88 C4261C54 */  lwc1    $f6, %lo(D_80AE1C54)($at)  
/* 01E3C 80ADFB8C 460C3202 */  mul.s   $f8, $f6, $f12             
/* 01E40 80ADFB90 46082280 */  add.s   $f10, $f4, $f8             
/* 01E44 80ADFB94 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
.L80ADFB98:
/* 01E48 80ADFB98 8E0202A4 */  lw      $v0, 0x02A4($s0)           ## 000002A4
/* 01E4C 80ADFB9C 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 01E50 80ADFBA0 90590003 */  lbu     $t9, 0x0003($v0)           ## 00000003
/* 01E54 80ADFBA4 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 01E58 80ADFBA8 07210004 */  bgez    $t9, .L80ADFBBC            
/* 01E5C 80ADFBAC 468084A0 */  cvt.s.w $f18, $f16                 
/* 01E60 80ADFBB0 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 01E64 80ADFBB4 00000000 */  nop
/* 01E68 80ADFBB8 46069480 */  add.s   $f18, $f18, $f6            
.L80ADFBBC:
/* 01E6C 80ADFBBC 46029102 */  mul.s   $f4, $f18, $f2             
/* 01E70 80ADFBC0 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 01E74 80ADFBC4 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 01E78 80ADFBC8 4448F800 */  cfc1    $t0, $31
/* 01E7C 80ADFBCC 44C9F800 */  ctc1    $t1, $31
/* 01E80 80ADFBD0 00000000 */  nop
/* 01E84 80ADFBD4 46002224 */  cvt.w.s $f8, $f4                   
/* 01E88 80ADFBD8 4449F800 */  cfc1    $t1, $31
/* 01E8C 80ADFBDC 00000000 */  nop
/* 01E90 80ADFBE0 31290078 */  andi    $t1, $t1, 0x0078           ## $t1 = 00000000
/* 01E94 80ADFBE4 51200013 */  beql    $t1, $zero, .L80ADFC34     
/* 01E98 80ADFBE8 44094000 */  mfc1    $t1, $f8                   
/* 01E9C 80ADFBEC 44814000 */  mtc1    $at, $f8                   ## $f8 = 2147483648.00
/* 01EA0 80ADFBF0 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 01EA4 80ADFBF4 46082201 */  sub.s   $f8, $f4, $f8              
/* 01EA8 80ADFBF8 44C9F800 */  ctc1    $t1, $31
/* 01EAC 80ADFBFC 00000000 */  nop
/* 01EB0 80ADFC00 46004224 */  cvt.w.s $f8, $f8                   
/* 01EB4 80ADFC04 4449F800 */  cfc1    $t1, $31
/* 01EB8 80ADFC08 00000000 */  nop
/* 01EBC 80ADFC0C 31290078 */  andi    $t1, $t1, 0x0078           ## $t1 = 00000000
/* 01EC0 80ADFC10 15200005 */  bne     $t1, $zero, .L80ADFC28     
/* 01EC4 80ADFC14 00000000 */  nop
/* 01EC8 80ADFC18 44094000 */  mfc1    $t1, $f8                   
/* 01ECC 80ADFC1C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01ED0 80ADFC20 10000007 */  beq     $zero, $zero, .L80ADFC40   
/* 01ED4 80ADFC24 01214825 */  or      $t1, $t1, $at              ## $t1 = 80000000
.L80ADFC28:
/* 01ED8 80ADFC28 10000005 */  beq     $zero, $zero, .L80ADFC40   
/* 01EDC 80ADFC2C 2409FFFF */  addiu   $t1, $zero, 0xFFFF         ## $t1 = FFFFFFFF
/* 01EE0 80ADFC30 44094000 */  mfc1    $t1, $f8                   
.L80ADFC34:
/* 01EE4 80ADFC34 00000000 */  nop
/* 01EE8 80ADFC38 0520FFFB */  bltz    $t1, .L80ADFC28            
/* 01EEC 80ADFC3C 00000000 */  nop
.L80ADFC40:
/* 01EF0 80ADFC40 A209029A */  sb      $t1, 0x029A($s0)           ## 0000029A
/* 01EF4 80ADFC44 904A0004 */  lbu     $t2, 0x0004($v0)           ## 00000004
/* 01EF8 80ADFC48 44C8F800 */  ctc1    $t0, $31
/* 01EFC 80ADFC4C 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 01F00 80ADFC50 448A5000 */  mtc1    $t2, $f10                  ## $f10 = 0.00
/* 01F04 80ADFC54 05410004 */  bgez    $t2, .L80ADFC68            
/* 01F08 80ADFC58 46805420 */  cvt.s.w $f16, $f10                 
/* 01F0C 80ADFC5C 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 01F10 80ADFC60 00000000 */  nop
/* 01F14 80ADFC64 46068400 */  add.s   $f16, $f16, $f6            
.L80ADFC68:
/* 01F18 80ADFC68 46028482 */  mul.s   $f18, $f16, $f2            
/* 01F1C 80ADFC6C 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 01F20 80ADFC70 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 01F24 80ADFC74 444BF800 */  cfc1    $t3, $31
/* 01F28 80ADFC78 44CCF800 */  ctc1    $t4, $31
/* 01F2C 80ADFC7C 00000000 */  nop
/* 01F30 80ADFC80 46009124 */  cvt.w.s $f4, $f18                  
/* 01F34 80ADFC84 444CF800 */  cfc1    $t4, $31
/* 01F38 80ADFC88 00000000 */  nop
/* 01F3C 80ADFC8C 318C0078 */  andi    $t4, $t4, 0x0078           ## $t4 = 00000000
/* 01F40 80ADFC90 51800013 */  beql    $t4, $zero, .L80ADFCE0     
/* 01F44 80ADFC94 440C2000 */  mfc1    $t4, $f4                   
/* 01F48 80ADFC98 44812000 */  mtc1    $at, $f4                   ## $f4 = 2147483648.00
/* 01F4C 80ADFC9C 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 01F50 80ADFCA0 46049101 */  sub.s   $f4, $f18, $f4             
/* 01F54 80ADFCA4 44CCF800 */  ctc1    $t4, $31
/* 01F58 80ADFCA8 00000000 */  nop
/* 01F5C 80ADFCAC 46002124 */  cvt.w.s $f4, $f4                   
/* 01F60 80ADFCB0 444CF800 */  cfc1    $t4, $31
/* 01F64 80ADFCB4 00000000 */  nop
/* 01F68 80ADFCB8 318C0078 */  andi    $t4, $t4, 0x0078           ## $t4 = 00000000
/* 01F6C 80ADFCBC 15800005 */  bne     $t4, $zero, .L80ADFCD4     
/* 01F70 80ADFCC0 00000000 */  nop
/* 01F74 80ADFCC4 440C2000 */  mfc1    $t4, $f4                   
/* 01F78 80ADFCC8 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01F7C 80ADFCCC 10000007 */  beq     $zero, $zero, .L80ADFCEC   
/* 01F80 80ADFCD0 01816025 */  or      $t4, $t4, $at              ## $t4 = 80000000
.L80ADFCD4:
/* 01F84 80ADFCD4 10000005 */  beq     $zero, $zero, .L80ADFCEC   
/* 01F88 80ADFCD8 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 01F8C 80ADFCDC 440C2000 */  mfc1    $t4, $f4                   
.L80ADFCE0:
/* 01F90 80ADFCE0 00000000 */  nop
/* 01F94 80ADFCE4 0580FFFB */  bltz    $t4, .L80ADFCD4            
/* 01F98 80ADFCE8 00000000 */  nop
.L80ADFCEC:
/* 01F9C 80ADFCEC A20C029B */  sb      $t4, 0x029B($s0)           ## 0000029B
/* 01FA0 80ADFCF0 904D0005 */  lbu     $t5, 0x0005($v0)           ## 00000005
/* 01FA4 80ADFCF4 44CBF800 */  ctc1    $t3, $31
/* 01FA8 80ADFCF8 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 01FAC 80ADFCFC 448D4000 */  mtc1    $t5, $f8                   ## $f8 = 0.00
/* 01FB0 80ADFD00 05A10004 */  bgez    $t5, .L80ADFD14            
/* 01FB4 80ADFD04 468042A0 */  cvt.s.w $f10, $f8                  
/* 01FB8 80ADFD08 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 01FBC 80ADFD0C 00000000 */  nop
/* 01FC0 80ADFD10 46065280 */  add.s   $f10, $f10, $f6            
.L80ADFD14:
/* 01FC4 80ADFD14 46025402 */  mul.s   $f16, $f10, $f2            
/* 01FC8 80ADFD18 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01FCC 80ADFD1C 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 01FD0 80ADFD20 444EF800 */  cfc1    $t6, $31
/* 01FD4 80ADFD24 44CFF800 */  ctc1    $t7, $31
/* 01FD8 80ADFD28 00000000 */  nop
/* 01FDC 80ADFD2C 460084A4 */  cvt.w.s $f18, $f16                 
/* 01FE0 80ADFD30 444FF800 */  cfc1    $t7, $31
/* 01FE4 80ADFD34 00000000 */  nop
/* 01FE8 80ADFD38 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 01FEC 80ADFD3C 51E00013 */  beql    $t7, $zero, .L80ADFD8C     
/* 01FF0 80ADFD40 440F9000 */  mfc1    $t7, $f18                  
/* 01FF4 80ADFD44 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 01FF8 80ADFD48 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01FFC 80ADFD4C 46128481 */  sub.s   $f18, $f16, $f18           
/* 02000 80ADFD50 44CFF800 */  ctc1    $t7, $31
/* 02004 80ADFD54 00000000 */  nop
/* 02008 80ADFD58 460094A4 */  cvt.w.s $f18, $f18                 
/* 0200C 80ADFD5C 444FF800 */  cfc1    $t7, $31
/* 02010 80ADFD60 00000000 */  nop
/* 02014 80ADFD64 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 02018 80ADFD68 15E00005 */  bne     $t7, $zero, .L80ADFD80     
/* 0201C 80ADFD6C 00000000 */  nop
/* 02020 80ADFD70 440F9000 */  mfc1    $t7, $f18                  
/* 02024 80ADFD74 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02028 80ADFD78 10000007 */  beq     $zero, $zero, .L80ADFD98   
/* 0202C 80ADFD7C 01E17825 */  or      $t7, $t7, $at              ## $t7 = 80000000
.L80ADFD80:
/* 02030 80ADFD80 10000005 */  beq     $zero, $zero, .L80ADFD98   
/* 02034 80ADFD84 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 02038 80ADFD88 440F9000 */  mfc1    $t7, $f18                  
.L80ADFD8C:
/* 0203C 80ADFD8C 00000000 */  nop
/* 02040 80ADFD90 05E0FFFB */  bltz    $t7, .L80ADFD80            
/* 02044 80ADFD94 00000000 */  nop
.L80ADFD98:
/* 02048 80ADFD98 44CEF800 */  ctc1    $t6, $31
/* 0204C 80ADFD9C C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 02050 80ADFDA0 A20F029C */  sb      $t7, 0x029C($s0)           ## 0000029C
/* 02054 80ADFDA4 3C0180AE */  lui     $at, %hi(D_80AE1C58)       ## $at = 80AE0000
/* 02058 80ADFDA8 4600220D */  trunc.w.s $f8, $f4                   
/* 0205C 80ADFDAC C4241C58 */  lwc1    $f4, %lo(D_80AE1C58)($at)  
/* 02060 80ADFDB0 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 02064 80ADFDB4 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 02068 80ADFDB8 44054000 */  mfc1    $a1, $f8                   
/* 0206C 80ADFDBC 46046202 */  mul.s   $f8, $f12, $f4             
/* 02070 80ADFDC0 90490003 */  lbu     $t1, 0x0003($v0)           ## 00000003
/* 02074 80ADFDC4 00052C00 */  sll     $a1, $a1, 16               
/* 02078 80ADFDC8 00052C03 */  sra     $a1, $a1, 16               
/* 0207C 80ADFDCC AFA90010 */  sw      $t1, 0x0010($sp)           
/* 02080 80ADFDD0 904A0004 */  lbu     $t2, 0x0004($v0)           ## 00000004
/* 02084 80ADFDD4 4600328D */  trunc.w.s $f10, $f6                  
/* 02088 80ADFDD8 260402AC */  addiu   $a0, $s0, 0x02AC           ## $a0 = 000002AC
/* 0208C 80ADFDDC AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 02090 80ADFDE0 4600848D */  trunc.w.s $f18, $f16                 
/* 02094 80ADFDE4 44065000 */  mfc1    $a2, $f10                  
/* 02098 80ADFDE8 904B0005 */  lbu     $t3, 0x0005($v0)           ## 00000005
/* 0209C 80ADFDEC 4600418D */  trunc.w.s $f6, $f8                   
/* 020A0 80ADFDF0 44079000 */  mfc1    $a3, $f18                  
/* 020A4 80ADFDF4 00063400 */  sll     $a2, $a2, 16               
/* 020A8 80ADFDF8 00063403 */  sra     $a2, $a2, 16               
/* 020AC 80ADFDFC 440D3000 */  mfc1    $t5, $f6                   
/* 020B0 80ADFE00 00073C00 */  sll     $a3, $a3, 16               
/* 020B4 80ADFE04 00073C03 */  sra     $a3, $a3, 16               
/* 020B8 80ADFE08 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 020BC 80ADFE0C 0C01E763 */  jal     Lights_InitType0PositionalLight
              
/* 020C0 80ADFE10 AFAD001C */  sw      $t5, 0x001C($sp)           
/* 020C4 80ADFE14 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 020C8 80ADFE18 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 020CC 80ADFE1C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 020D0 80ADFE20 03E00008 */  jr      $ra                        
/* 020D4 80ADFE24 00000000 */  nop


