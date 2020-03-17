glabel func_80AD48CC
/* 00DCC 80AD48CC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00DD0 80AD48D0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00DD4 80AD48D4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00DD8 80AD48D8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00DDC 80AD48DC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00DE0 80AD48E0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00DE4 80AD48E4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00DE8 80AD48E8 10400013 */  beq     $v0, $zero, .L80AD4938     
/* 00DEC 80AD48EC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00DF0 80AD48F0 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00DF4 80AD48F4 A20E0217 */  sb      $t6, 0x0217($s0)           ## 00000217
/* 00DF8 80AD48F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DFC 80AD48FC 0C00B58B */  jal     Actor_SetScale
              
/* 00E00 80AD4900 8E05021C */  lw      $a1, 0x021C($s0)           ## 0000021C
/* 00E04 80AD4904 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 00E08 80AD4908 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00E0C 80AD490C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E10 80AD4910 15E10005 */  bne     $t7, $at, .L80AD4928       
/* 00E14 80AD4914 00000000 */  nop
/* 00E18 80AD4918 0C2B4FFC */  jal     func_80AD3FF0              
/* 00E1C 80AD491C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E20 80AD4920 10000040 */  beq     $zero, $zero, .L80AD4A24   
/* 00E24 80AD4924 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
.L80AD4928:
/* 00E28 80AD4928 0C2B4FD3 */  jal     func_80AD3F4C              
/* 00E2C 80AD492C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00E30 80AD4930 1000003C */  beq     $zero, $zero, .L80AD4A24   
/* 00E34 80AD4934 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
.L80AD4938:
/* 00E38 80AD4938 44811000 */  mtc1    $at, $f2                   ## $f2 = 0.00
/* 00E3C 80AD493C C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 00E40 80AD4940 3C0180AD */  lui     $at, %hi(D_80AD7250)       ## $at = 80AD0000
/* 00E44 80AD4944 4600103C */  c.lt.s  $f2, $f0                   
/* 00E48 80AD4948 00000000 */  nop
/* 00E4C 80AD494C 4502002C */  bc1fl   .L80AD4A00                 
/* 00E50 80AD4950 C604021C */  lwc1    $f4, 0x021C($s0)           ## 0000021C
/* 00E54 80AD4954 46020101 */  sub.s   $f4, $f0, $f2              
/* 00E58 80AD4958 3C0180AD */  lui     $at, %hi(D_80AD724C)       ## $at = 80AD0000
/* 00E5C 80AD495C C426724C */  lwc1    $f6, %lo(D_80AD724C)($at)  
/* 00E60 80AD4960 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00E64 80AD4964 44815000 */  mtc1    $at, $f10                  ## $f10 = 255.00
/* 00E68 80AD4968 46062202 */  mul.s   $f8, $f4, $f6              
/* 00E6C 80AD496C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00E70 80AD4970 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 00E74 80AD4974 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00E78 80AD4978 4458F800 */  cfc1    $t8, $31
/* 00E7C 80AD497C 44D9F800 */  ctc1    $t9, $31
/* 00E80 80AD4980 00000000 */  nop
/* 00E84 80AD4984 460084A4 */  cvt.w.s $f18, $f16                 
/* 00E88 80AD4988 4459F800 */  cfc1    $t9, $31
/* 00E8C 80AD498C 00000000 */  nop
/* 00E90 80AD4990 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 00E94 80AD4994 53200013 */  beql    $t9, $zero, .L80AD49E4     
/* 00E98 80AD4998 44199000 */  mfc1    $t9, $f18                  
/* 00E9C 80AD499C 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 00EA0 80AD49A0 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00EA4 80AD49A4 46128481 */  sub.s   $f18, $f16, $f18           
/* 00EA8 80AD49A8 44D9F800 */  ctc1    $t9, $31
/* 00EAC 80AD49AC 00000000 */  nop
/* 00EB0 80AD49B0 460094A4 */  cvt.w.s $f18, $f18                 
/* 00EB4 80AD49B4 4459F800 */  cfc1    $t9, $31
/* 00EB8 80AD49B8 00000000 */  nop
/* 00EBC 80AD49BC 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 00EC0 80AD49C0 17200005 */  bne     $t9, $zero, .L80AD49D8     
/* 00EC4 80AD49C4 00000000 */  nop
/* 00EC8 80AD49C8 44199000 */  mfc1    $t9, $f18                  
/* 00ECC 80AD49CC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00ED0 80AD49D0 10000007 */  beq     $zero, $zero, .L80AD49F0   
/* 00ED4 80AD49D4 0321C825 */  or      $t9, $t9, $at              ## $t9 = 80000000
.L80AD49D8:
/* 00ED8 80AD49D8 10000005 */  beq     $zero, $zero, .L80AD49F0   
/* 00EDC 80AD49DC 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 00EE0 80AD49E0 44199000 */  mfc1    $t9, $f18                  
.L80AD49E4:
/* 00EE4 80AD49E4 00000000 */  nop
/* 00EE8 80AD49E8 0720FFFB */  bltz    $t9, .L80AD49D8            
/* 00EEC 80AD49EC 00000000 */  nop
.L80AD49F0:
/* 00EF0 80AD49F0 44D8F800 */  ctc1    $t8, $31
/* 00EF4 80AD49F4 1000000A */  beq     $zero, $zero, .L80AD4A20   
/* 00EF8 80AD49F8 A2190217 */  sb      $t9, 0x0217($s0)           ## 00000217
/* 00EFC 80AD49FC C604021C */  lwc1    $f4, 0x021C($s0)           ## 0000021C
.L80AD4A00:
/* 00F00 80AD4A00 C4267250 */  lwc1    $f6, %lo(D_80AD7250)($at)  
/* 00F04 80AD4A04 C60A0050 */  lwc1    $f10, 0x0050($s0)          ## 00000050
/* 00F08 80AD4A08 46062202 */  mul.s   $f8, $f4, $f6              
/* 00F0C 80AD4A0C 46085400 */  add.s   $f16, $f10, $f8            
/* 00F10 80AD4A10 E6100050 */  swc1    $f16, 0x0050($s0)          ## 00000050
/* 00F14 80AD4A14 C6000050 */  lwc1    $f0, 0x0050($s0)           ## 00000050
/* 00F18 80AD4A18 E6000054 */  swc1    $f0, 0x0054($s0)           ## 00000054
/* 00F1C 80AD4A1C E6000058 */  swc1    $f0, 0x0058($s0)           ## 00000058
.L80AD4A20:
/* 00F20 80AD4A20 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
.L80AD4A24:
/* 00F24 80AD4A24 92080217 */  lbu     $t0, 0x0217($s0)           ## 00000217
/* 00F28 80AD4A28 8602008A */  lh      $v0, 0x008A($s0)           ## 0000008A
/* 00F2C 80AD4A2C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00F30 80AD4A30 A20800C8 */  sb      $t0, 0x00C8($s0)           ## 000000C8
/* 00F34 80AD4A34 15210007 */  bne     $t1, $at, .L80AD4A54       
/* 00F38 80AD4A38 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 00F3C 80AD4A3C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00F40 80AD4A40 00415021 */  addu    $t2, $v0, $at              
/* 00F44 80AD4A44 A60A0032 */  sh      $t2, 0x0032($s0)           ## 00000032
/* 00F48 80AD4A48 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00F4C 80AD4A4C 0C2B5155 */  jal     func_80AD4554              
/* 00F50 80AD4A50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AD4A54:
/* 00F54 80AD4A54 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00F58 80AD4A58 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00F5C 80AD4A5C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00F60 80AD4A60 03E00008 */  jr      $ra                        
/* 00F64 80AD4A64 00000000 */  nop


