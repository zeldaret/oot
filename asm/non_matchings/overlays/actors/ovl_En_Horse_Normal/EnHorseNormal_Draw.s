glabel EnHorseNormal_Draw
/* 01C1C 80A6CE6C 27BDFF30 */  addiu   $sp, $sp, 0xFF30           ## $sp = FFFFFF30
/* 01C20 80A6CE70 AFB10030 */  sw      $s1, 0x0030($sp)           
/* 01C24 80A6CE74 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01C28 80A6CE78 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 01C2C 80A6CE7C AFB0002C */  sw      $s0, 0x002C($sp)           
/* 01C30 80A6CE80 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01C34 80A6CE84 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01C38 80A6CE88 3C0680A7 */  lui     $a2, %hi(D_80A6D560)       ## $a2 = 80A70000
/* 01C3C 80A6CE8C 24C6D560 */  addiu   $a2, $a2, %lo(D_80A6D560)  ## $a2 = 80A6D560
/* 01C40 80A6CE90 27A400B4 */  addiu   $a0, $sp, 0x00B4           ## $a0 = FFFFFFE4
/* 01C44 80A6CE94 240708B0 */  addiu   $a3, $zero, 0x08B0         ## $a3 = 000008B0
/* 01C48 80A6CE98 0C031AB1 */  jal     Graph_OpenDisps              
/* 01C4C 80A6CE9C AFA500C4 */  sw      $a1, 0x00C4($sp)           
/* 01C50 80A6CEA0 862200A4 */  lh      $v0, 0x00A4($s1)           ## 000000A4
/* 01C54 80A6CEA4 24010063 */  addiu   $at, $zero, 0x0063         ## $at = 00000063
/* 01C58 80A6CEA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C5C 80A6CEAC 14410003 */  bne     $v0, $at, .L80A6CEBC       
/* 01C60 80A6CEB0 24010036 */  addiu   $at, $zero, 0x0036         ## $at = 00000036
/* 01C64 80A6CEB4 10410003 */  beq     $v0, $at, .L80A6CEC4       
/* 01C68 80A6CEB8 00000000 */  nop
.L80A6CEBC:
/* 01C6C 80A6CEBC 0C29B238 */  jal     func_80A6C8E0              
/* 01C70 80A6CEC0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
.L80A6CEC4:
/* 01C74 80A6CEC4 0C024F46 */  jal     func_80093D18              
/* 01C78 80A6CEC8 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 01C7C 80A6CECC 26060154 */  addiu   $a2, $s0, 0x0154           ## $a2 = 00000154
/* 01C80 80A6CED0 3C0780A7 */  lui     $a3, %hi(func_80A6CAFC)    ## $a3 = 80A70000
/* 01C84 80A6CED4 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01C88 80A6CED8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01C8C 80A6CEDC 24E7CAFC */  addiu   $a3, $a3, %lo(func_80A6CAFC) ## $a3 = 80A6CAFC
/* 01C90 80A6CEE0 AFA60038 */  sw      $a2, 0x0038($sp)           
/* 01C94 80A6CEE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C98 80A6CEE8 0C0298CC */  jal     func_800A6330              
/* 01C9C 80A6CEEC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01CA0 80A6CEF0 8E0F014C */  lw      $t7, 0x014C($s0)           ## 0000014C
/* 01CA4 80A6CEF4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01CA8 80A6CEF8 3C1880A7 */  lui     $t8, %hi(D_80A6D548)       ## $t8 = 80A70000
/* 01CAC 80A6CEFC 15E10109 */  bne     $t7, $at, .L80A6D324       
/* 01CB0 80A6CF00 2718D548 */  addiu   $t8, $t8, %lo(D_80A6D548)  ## $t8 = 80A6D548
/* 01CB4 80A6CF04 8F0A0000 */  lw      $t2, 0x0000($t8)           ## 80A6D548
/* 01CB8 80A6CF08 27A60064 */  addiu   $a2, $sp, 0x0064           ## $a2 = FFFFFF94
/* 01CBC 80A6CF0C 24010036 */  addiu   $at, $zero, 0x0036         ## $at = 00000036
/* 01CC0 80A6CF10 ACCA0000 */  sw      $t2, 0x0000($a2)           ## FFFFFF94
/* 01CC4 80A6CF14 8F190004 */  lw      $t9, 0x0004($t8)           ## 80A6D54C
/* 01CC8 80A6CF18 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01CCC 80A6CF1C ACD90004 */  sw      $t9, 0x0004($a2)           ## FFFFFF98
/* 01CD0 80A6CF20 8F0A0008 */  lw      $t2, 0x0008($t8)           ## 80A6D550
/* 01CD4 80A6CF24 ACCA0008 */  sw      $t2, 0x0008($a2)           ## FFFFFF9C
/* 01CD8 80A6CF28 C6040080 */  lwc1    $f4, 0x0080($s0)           ## 00000080
/* 01CDC 80A6CF2C C6020028 */  lwc1    $f2, 0x0028($s0)           ## 00000028
/* 01CE0 80A6CF30 46041181 */  sub.s   $f6, $f2, $f4              
/* 01CE4 80A6CF34 E7A6005C */  swc1    $f6, 0x005C($sp)           
/* 01CE8 80A6CF38 862200A4 */  lh      $v0, 0x00A4($s1)           ## 000000A4
/* 01CEC 80A6CF3C 14410038 */  bne     $v0, $at, .L80A6D020       
/* 01CF0 80A6CF40 3C0180A7 */  lui     $at, %hi(D_80A6D5E8)       ## $at = 80A70000
/* 01CF4 80A6CF44 C428D5E8 */  lwc1    $f8, %lo(D_80A6D5E8)($at)  
/* 01CF8 80A6CF48 C6000024 */  lwc1    $f0, 0x0024($s0)           ## 00000024
/* 01CFC 80A6CF4C 46004032 */  c.eq.s  $f8, $f0                   
/* 01D00 80A6CF50 00000000 */  nop
/* 01D04 80A6CF54 45020018 */  bc1fl   .L80A6CFB8                 
/* 01D08 80A6CF58 3C01436E */  lui     $at, 0x436E                ## $at = 436E0000
/* 01D0C 80A6CF5C 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 01D10 80A6CF60 3C01C375 */  lui     $at, 0xC375                ## $at = C3750000
/* 01D14 80A6CF64 46026032 */  c.eq.s  $f12, $f2                  
/* 01D18 80A6CF68 00000000 */  nop
/* 01D1C 80A6CF6C 45020012 */  bc1fl   .L80A6CFB8                 
/* 01D20 80A6CF70 3C01436E */  lui     $at, 0x436E                ## $at = 436E0000
/* 01D24 80A6CF74 44815000 */  mtc1    $at, $f10                  ## $f10 = 238.00
/* 01D28 80A6CF78 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 01D2C 80A6CF7C 3C01436B */  lui     $at, 0x436B                ## $at = 436B0000
/* 01D30 80A6CF80 240B7FFF */  addiu   $t3, $zero, 0x7FFF         ## $t3 = 00007FFF
/* 01D34 80A6CF84 46105032 */  c.eq.s  $f10, $f16                 
/* 01D38 80A6CF88 00000000 */  nop
/* 01D3C 80A6CF8C 4502000A */  bc1fl   .L80A6CFB8                 
/* 01D40 80A6CF90 3C01436E */  lui     $at, 0x436E                ## $at = 436E0000
/* 01D44 80A6CF94 44819000 */  mtc1    $at, $f18                  ## $f18 = 238.00
/* 01D48 80A6CF98 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01D4C 80A6CF9C 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 01D50 80A6CFA0 E7AC0068 */  swc1    $f12, 0x0068($sp)          
/* 01D54 80A6CFA4 A7AB0062 */  sh      $t3, 0x0062($sp)           
/* 01D58 80A6CFA8 E7B20064 */  swc1    $f18, 0x0064($sp)          
/* 01D5C 80A6CFAC 10000053 */  beq     $zero, $zero, .L80A6D0FC   
/* 01D60 80A6CFB0 E7A4006C */  swc1    $f4, 0x006C($sp)           
/* 01D64 80A6CFB4 3C01436E */  lui     $at, 0x436E                ## $at = 436E0000
.L80A6CFB8:
/* 01D68 80A6CFB8 44813000 */  mtc1    $at, $f6                   ## $f6 = 238.00
/* 01D6C 80A6CFBC 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 01D70 80A6CFC0 46003032 */  c.eq.s  $f6, $f0                   
/* 01D74 80A6CFC4 00000000 */  nop
/* 01D78 80A6CFC8 4500004C */  bc1f    .L80A6D0FC                 
/* 01D7C 80A6CFCC 00000000 */  nop
/* 01D80 80A6CFD0 46026032 */  c.eq.s  $f12, $f2                  
/* 01D84 80A6CFD4 3C01C375 */  lui     $at, 0xC375                ## $at = C3750000
/* 01D88 80A6CFD8 45000048 */  bc1f    .L80A6D0FC                 
/* 01D8C 80A6CFDC 00000000 */  nop
/* 01D90 80A6CFE0 44814000 */  mtc1    $at, $f8                   ## $f8 = -245.00
/* 01D94 80A6CFE4 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 01D98 80A6CFE8 3C0143EF */  lui     $at, 0x43EF                ## $at = 43EF0000
/* 01D9C 80A6CFEC 240C7FFF */  addiu   $t4, $zero, 0x7FFF         ## $t4 = 00007FFF
/* 01DA0 80A6CFF0 460A4032 */  c.eq.s  $f8, $f10                  
/* 01DA4 80A6CFF4 00000000 */  nop
/* 01DA8 80A6CFF8 45000040 */  bc1f    .L80A6D0FC                 
/* 01DAC 80A6CFFC 00000000 */  nop
/* 01DB0 80A6D000 44818000 */  mtc1    $at, $f16                  ## $f16 = 478.00
/* 01DB4 80A6D004 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01DB8 80A6D008 44819000 */  mtc1    $at, $f18                  ## $f18 = 100.00
/* 01DBC 80A6D00C E7AC0068 */  swc1    $f12, 0x0068($sp)          
/* 01DC0 80A6D010 A7AC0062 */  sh      $t4, 0x0062($sp)           
/* 01DC4 80A6D014 E7B00064 */  swc1    $f16, 0x0064($sp)          
/* 01DC8 80A6D018 10000038 */  beq     $zero, $zero, .L80A6D0FC   
/* 01DCC 80A6D01C E7B2006C */  swc1    $f18, 0x006C($sp)          
.L80A6D020:
/* 01DD0 80A6D020 24010063 */  addiu   $at, $zero, 0x0063         ## $at = 00000063
/* 01DD4 80A6D024 14410035 */  bne     $v0, $at, .L80A6D0FC       
/* 01DD8 80A6D028 3C0180A7 */  lui     $at, %hi(D_80A6D5EC)       ## $at = 80A70000
/* 01DDC 80A6D02C C424D5EC */  lwc1    $f4, %lo(D_80A6D5EC)($at)  
/* 01DE0 80A6D030 C6000024 */  lwc1    $f0, 0x0024($s0)           ## 00000024
/* 01DE4 80A6D034 46002032 */  c.eq.s  $f4, $f0                   
/* 01DE8 80A6D038 00000000 */  nop
/* 01DEC 80A6D03C 45020017 */  bc1fl   .L80A6D09C                 
/* 01DF0 80A6D040 3C01445C */  lui     $at, 0x445C                ## $at = 445C0000
/* 01DF4 80A6D044 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 01DF8 80A6D048 3C0180A7 */  lui     $at, %hi(D_80A6D5F0)       ## $at = 80A70000
/* 01DFC 80A6D04C 46026032 */  c.eq.s  $f12, $f2                  
/* 01E00 80A6D050 00000000 */  nop
/* 01E04 80A6D054 45020011 */  bc1fl   .L80A6D09C                 
/* 01E08 80A6D058 3C01445C */  lui     $at, 0x445C                ## $at = 445C0000
/* 01E0C 80A6D05C C426D5F0 */  lwc1    $f6, %lo(D_80A6D5F0)($at)  
/* 01E10 80A6D060 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 01E14 80A6D064 3C014443 */  lui     $at, 0x4443                ## $at = 44430000
/* 01E18 80A6D068 46083032 */  c.eq.s  $f6, $f8                   
/* 01E1C 80A6D06C 00000000 */  nop
/* 01E20 80A6D070 4502000A */  bc1fl   .L80A6D09C                 
/* 01E24 80A6D074 3C01445C */  lui     $at, 0x445C                ## $at = 445C0000
/* 01E28 80A6D078 44815000 */  mtc1    $at, $f10                  ## $f10 = 880.00
/* 01E2C 80A6D07C 3C01C2A0 */  lui     $at, 0xC2A0                ## $at = C2A00000
/* 01E30 80A6D080 44818000 */  mtc1    $at, $f16                  ## $f16 = -80.00
/* 01E34 80A6D084 E7AC0068 */  swc1    $f12, 0x0068($sp)          
/* 01E38 80A6D088 A7A00062 */  sh      $zero, 0x0062($sp)         
/* 01E3C 80A6D08C E7AA0064 */  swc1    $f10, 0x0064($sp)          
/* 01E40 80A6D090 1000001A */  beq     $zero, $zero, .L80A6D0FC   
/* 01E44 80A6D094 E7B0006C */  swc1    $f16, 0x006C($sp)          
/* 01E48 80A6D098 3C01445C */  lui     $at, 0x445C                ## $at = 445C0000
.L80A6D09C:
/* 01E4C 80A6D09C 44819000 */  mtc1    $at, $f18                  ## $f18 = 880.00
/* 01E50 80A6D0A0 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 01E54 80A6D0A4 46009032 */  c.eq.s  $f18, $f0                  
/* 01E58 80A6D0A8 00000000 */  nop
/* 01E5C 80A6D0AC 45000013 */  bc1f    .L80A6D0FC                 
/* 01E60 80A6D0B0 00000000 */  nop
/* 01E64 80A6D0B4 46026032 */  c.eq.s  $f12, $f2                  
/* 01E68 80A6D0B8 3C0180A7 */  lui     $at, %hi(D_80A6D5F4)       ## $at = 80A70000
/* 01E6C 80A6D0BC 4500000F */  bc1f    .L80A6D0FC                 
/* 01E70 80A6D0C0 00000000 */  nop
/* 01E74 80A6D0C4 C424D5F4 */  lwc1    $f4, %lo(D_80A6D5F4)($at)  
/* 01E78 80A6D0C8 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 01E7C 80A6D0CC 3C01C47A */  lui     $at, 0xC47A                ## $at = C47A0000
/* 01E80 80A6D0D0 46062032 */  c.eq.s  $f4, $f6                   
/* 01E84 80A6D0D4 00000000 */  nop
/* 01E88 80A6D0D8 45000008 */  bc1f    .L80A6D0FC                 
/* 01E8C 80A6D0DC 00000000 */  nop
/* 01E90 80A6D0E0 44814000 */  mtc1    $at, $f8                   ## $f8 = -1000.00
/* 01E94 80A6D0E4 3C01C28C */  lui     $at, 0xC28C                ## $at = C28C0000
/* 01E98 80A6D0E8 44815000 */  mtc1    $at, $f10                  ## $f10 = -70.00
/* 01E9C 80A6D0EC E7AC0068 */  swc1    $f12, 0x0068($sp)          
/* 01EA0 80A6D0F0 A7A00062 */  sh      $zero, 0x0062($sp)         
/* 01EA4 80A6D0F4 E7A80064 */  swc1    $f8, 0x0064($sp)           
/* 01EA8 80A6D0F8 E7AA006C */  swc1    $f10, 0x006C($sp)          
.L80A6D0FC:
/* 01EAC 80A6D0FC 0C29B322 */  jal     func_80A6CC88              
/* 01EB0 80A6D100 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01EB4 80A6D104 860D00B4 */  lh      $t5, 0x00B4($s0)           ## 000000B4
/* 01EB8 80A6D108 87AE0062 */  lh      $t6, 0x0062($sp)           
/* 01EBC 80A6D10C C6000054 */  lwc1    $f0, 0x0054($s0)           ## 00000054
/* 01EC0 80A6D110 8E050050 */  lw      $a1, 0x0050($s0)           ## 00000050
/* 01EC4 80A6D114 8E070058 */  lw      $a3, 0x0058($s0)           ## 00000058
/* 01EC8 80A6D118 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 01ECC 80A6D11C AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 01ED0 80A6D120 860F00B8 */  lh      $t7, 0x00B8($s0)           ## 000000B8
/* 01ED4 80A6D124 C7B00064 */  lwc1    $f16, 0x0064($sp)          
/* 01ED8 80A6D128 C7A60068 */  lwc1    $f6, 0x0068($sp)           
/* 01EDC 80A6D12C AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 01EE0 80A6D130 E7B0001C */  swc1    $f16, 0x001C($sp)          
/* 01EE4 80A6D134 C61200BC */  lwc1    $f18, 0x00BC($s0)          ## 000000BC
/* 01EE8 80A6D138 C7AA006C */  lwc1    $f10, 0x006C($sp)          
/* 01EEC 80A6D13C 44060000 */  mfc1    $a2, $f0                   
/* 01EF0 80A6D140 46009102 */  mul.s   $f4, $f18, $f0             
/* 01EF4 80A6D144 27A40074 */  addiu   $a0, $sp, 0x0074           ## $a0 = FFFFFFA4
/* 01EF8 80A6D148 E7AA0024 */  swc1    $f10, 0x0024($sp)          
/* 01EFC 80A6D14C 46062200 */  add.s   $f8, $f4, $f6              
/* 01F00 80A6D150 0C029EC1 */  jal     func_800A7B04              
/* 01F04 80A6D154 E7A80020 */  swc1    $f8, 0x0020($sp)           
/* 01F08 80A6D158 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 01F0C 80A6D15C 0C029F9C */  jal     func_800A7E70              
/* 01F10 80A6D160 27A50074 */  addiu   $a1, $sp, 0x0074           ## $a1 = FFFFFFA4
/* 01F14 80A6D164 10400075 */  beq     $v0, $zero, .L80A6D33C     
/* 01F18 80A6D168 8FA800C4 */  lw      $t0, 0x00C4($sp)           
/* 01F1C 80A6D16C 8D0402C0 */  lw      $a0, 0x02C0($t0)           ## 000002C0
/* 01F20 80A6D170 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 01F24 80A6D174 3C198013 */  lui     $t9, 0x8013                ## $t9 = 80130000
/* 01F28 80A6D178 24980008 */  addiu   $t8, $a0, 0x0008           ## $t8 = 00000008
/* 01F2C 80A6D17C AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 01F30 80A6D180 2739DB20 */  addiu   $t9, $t9, 0xDB20           ## $t9 = 8012DB20
/* 01F34 80A6D184 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 01F38 80A6D188 AC890000 */  sw      $t1, 0x0000($a0)           ## 00000000
/* 01F3C 80A6D18C AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 01F40 80A6D190 8D0402C0 */  lw      $a0, 0x02C0($t0)           ## 000002C0
/* 01F44 80A6D194 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 01F48 80A6D198 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 01F4C 80A6D19C 248A0008 */  addiu   $t2, $a0, 0x0008           ## $t2 = 00000008
/* 01F50 80A6D1A0 AD0A02C0 */  sw      $t2, 0x02C0($t0)           ## 000002C0
/* 01F54 80A6D1A4 AC820004 */  sw      $v0, 0x0004($a0)           ## 00000004
/* 01F58 80A6D1A8 AC890000 */  sw      $t1, 0x0000($a0)           ## 00000000
/* 01F5C 80A6D1AC AFAC001C */  sw      $t4, 0x001C($sp)           
/* 01F60 80A6D1B0 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 01F64 80A6D1B4 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 01F68 80A6D1B8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01F6C 80A6D1BC 8FA60038 */  lw      $a2, 0x0038($sp)           
/* 01F70 80A6D1C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F74 80A6D1C4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01F78 80A6D1C8 0C0298F3 */  jal     func_800A63CC              
/* 01F7C 80A6D1CC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01F80 80A6D1D0 C7B00064 */  lwc1    $f16, 0x0064($sp)          
/* 01F84 80A6D1D4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01F88 80A6D1D8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01F8C 80A6D1DC 4600848D */  trunc.w.s $f18, $f16                 
/* 01F90 80A6D1E0 02212821 */  addu    $a1, $s1, $at              
/* 01F94 80A6D1E4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01F98 80A6D1E8 260602D4 */  addiu   $a2, $s0, 0x02D4           ## $a2 = 000002D4
/* 01F9C 80A6D1EC 440E9000 */  mfc1    $t6, $f18                  
/* 01FA0 80A6D1F0 00000000 */  nop
/* 01FA4 80A6D1F4 A60E031A */  sh      $t6, 0x031A($s0)           ## 0000031A
/* 01FA8 80A6D1F8 C7A40068 */  lwc1    $f4, 0x0068($sp)           
/* 01FAC 80A6D1FC 4600218D */  trunc.w.s $f6, $f4                   
/* 01FB0 80A6D200 44183000 */  mfc1    $t8, $f6                   
/* 01FB4 80A6D204 00000000 */  nop
/* 01FB8 80A6D208 A618031C */  sh      $t8, 0x031C($s0)           ## 0000031C
/* 01FBC 80A6D20C C7A8006C */  lwc1    $f8, 0x006C($sp)           
/* 01FC0 80A6D210 4600428D */  trunc.w.s $f10, $f8                  
/* 01FC4 80A6D214 440A5000 */  mfc1    $t2, $f10                  
/* 01FC8 80A6D218 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01FCC 80A6D21C A60A031E */  sh      $t2, 0x031E($s0)           ## 0000031E
/* 01FD0 80A6D220 0C025011 */  jal     func_80094044              
/* 01FD4 80A6D224 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 01FD8 80A6D228 8FA400C4 */  lw      $a0, 0x00C4($sp)           
/* 01FDC 80A6D22C 3C0CFA00 */  lui     $t4, 0xFA00                ## $t4 = FA000000
/* 01FE0 80A6D230 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 01FE4 80A6D234 8C8302D0 */  lw      $v1, 0x02D0($a0)           ## 000002D0
/* 01FE8 80A6D238 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01FEC 80A6D23C 246B0008 */  addiu   $t3, $v1, 0x0008           ## $t3 = 00000008
/* 01FF0 80A6D240 AC8B02D0 */  sw      $t3, 0x02D0($a0)           ## 000002D0
/* 01FF4 80A6D244 AC6D0004 */  sw      $t5, 0x0004($v1)           ## 00000004
/* 01FF8 80A6D248 AC6C0000 */  sw      $t4, 0x0000($v1)           ## 00000000
/* 01FFC 80A6D24C 8FA6006C */  lw      $a2, 0x006C($sp)           
/* 02000 80A6D250 C7AE0068 */  lwc1    $f14, 0x0068($sp)          
/* 02004 80A6D254 0C034261 */  jal     Matrix_Translate              
/* 02008 80A6D258 C7AC0064 */  lwc1    $f12, 0x0064($sp)          
/* 0200C 80A6D25C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02010 80A6D260 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 02014 80A6D264 3C0180A7 */  lui     $at, %hi(D_80A6D5F8)       ## $at = 80A70000
/* 02018 80A6D268 C432D5F8 */  lwc1    $f18, %lo(D_80A6D5F8)($at) 
/* 0201C 80A6D26C C7B0005C */  lwc1    $f16, 0x005C($sp)          
/* 02020 80A6D270 C60800C4 */  lwc1    $f8, 0x00C4($s0)           ## 000000C4
/* 02024 80A6D274 C60A0050 */  lwc1    $f10, 0x0050($s0)          ## 00000050
/* 02028 80A6D278 46128102 */  mul.s   $f4, $f16, $f18            
/* 0202C 80A6D27C C6100058 */  lwc1    $f16, 0x0058($s0)          ## 00000058
/* 02030 80A6D280 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02034 80A6D284 46047181 */  sub.s   $f6, $f14, $f4             
/* 02038 80A6D288 46083002 */  mul.s   $f0, $f6, $f8              
/* 0203C 80A6D28C 00000000 */  nop
/* 02040 80A6D290 46005302 */  mul.s   $f12, $f10, $f0            
/* 02044 80A6D294 00000000 */  nop
/* 02048 80A6D298 46008482 */  mul.s   $f18, $f16, $f0            
/* 0204C 80A6D29C 44069000 */  mfc1    $a2, $f18                  
/* 02050 80A6D2A0 0C0342A3 */  jal     Matrix_Scale              
/* 02054 80A6D2A4 00000000 */  nop
/* 02058 80A6D2A8 87AE0062 */  lh      $t6, 0x0062($sp)           
/* 0205C 80A6D2AC 3C0180A7 */  lui     $at, %hi(D_80A6D5FC)       ## $at = 80A70000
/* 02060 80A6D2B0 C428D5FC */  lwc1    $f8, %lo(D_80A6D5FC)($at)  
/* 02064 80A6D2B4 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 02068 80A6D2B8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0206C 80A6D2BC 468021A0 */  cvt.s.w $f6, $f4                   
/* 02070 80A6D2C0 46083302 */  mul.s   $f12, $f6, $f8             
/* 02074 80A6D2C4 0C034348 */  jal     Matrix_RotateY              
/* 02078 80A6D2C8 00000000 */  nop
/* 0207C 80A6D2CC 3C0580A7 */  lui     $a1, %hi(D_80A6D578)       ## $a1 = 80A70000
/* 02080 80A6D2D0 24A5D578 */  addiu   $a1, $a1, %lo(D_80A6D578)  ## $a1 = 80A6D578
/* 02084 80A6D2D4 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 02088 80A6D2D8 0C0346A2 */  jal     Matrix_NewMtx              
/* 0208C 80A6D2DC 24060919 */  addiu   $a2, $zero, 0x0919         ## $a2 = 00000919
/* 02090 80A6D2E0 10400010 */  beq     $v0, $zero, .L80A6D324     
/* 02094 80A6D2E4 8FA500C4 */  lw      $a1, 0x00C4($sp)           
/* 02098 80A6D2E8 8CA302D0 */  lw      $v1, 0x02D0($a1)           ## 000002D0
/* 0209C 80A6D2EC 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 020A0 80A6D2F0 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 020A4 80A6D2F4 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 020A8 80A6D2F8 ACAF02D0 */  sw      $t7, 0x02D0($a1)           ## 000002D0
/* 020AC 80A6D2FC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 020B0 80A6D300 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 020B4 80A6D304 8CA302D0 */  lw      $v1, 0x02D0($a1)           ## 000002D0
/* 020B8 80A6D308 3C0B0405 */  lui     $t3, 0x0405                ## $t3 = 04050000
/* 020BC 80A6D30C 256B9AD0 */  addiu   $t3, $t3, 0x9AD0           ## $t3 = 04049AD0
/* 020C0 80A6D310 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 020C4 80A6D314 ACB902D0 */  sw      $t9, 0x02D0($a1)           ## 000002D0
/* 020C8 80A6D318 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 020CC 80A6D31C AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 020D0 80A6D320 AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
.L80A6D324:
/* 020D4 80A6D324 3C0680A7 */  lui     $a2, %hi(D_80A6D590)       ## $a2 = 80A70000
/* 020D8 80A6D328 24C6D590 */  addiu   $a2, $a2, %lo(D_80A6D590)  ## $a2 = 80A6D590
/* 020DC 80A6D32C 27A400B4 */  addiu   $a0, $sp, 0x00B4           ## $a0 = FFFFFFE4
/* 020E0 80A6D330 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 020E4 80A6D334 0C031AD5 */  jal     Graph_CloseDisps              
/* 020E8 80A6D338 24070923 */  addiu   $a3, $zero, 0x0923         ## $a3 = 00000923
.L80A6D33C:
/* 020EC 80A6D33C 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 020F0 80A6D340 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 020F4 80A6D344 8FB10030 */  lw      $s1, 0x0030($sp)           
/* 020F8 80A6D348 03E00008 */  jr      $ra                        
/* 020FC 80A6D34C 27BD00D0 */  addiu   $sp, $sp, 0x00D0           ## $sp = 00000000

