.late_rodata
glabel D_80B8E938
    .float 3.051851E-5

.text
glabel func_80B8DB7C
/* 00B2C 80B8DB7C 27BDFEB8 */  addiu   $sp, $sp, 0xFEB8           ## $sp = FFFFFEB8
/* 00B30 80B8DB80 AFBF007C */  sw      $ra, 0x007C($sp)           
/* 00B34 80B8DB84 AFBE0078 */  sw      $s8, 0x0078($sp)           
/* 00B38 80B8DB88 AFB70074 */  sw      $s7, 0x0074($sp)           
/* 00B3C 80B8DB8C AFB60070 */  sw      $s6, 0x0070($sp)           
/* 00B40 80B8DB90 AFB5006C */  sw      $s5, 0x006C($sp)           
/* 00B44 80B8DB94 AFB40068 */  sw      $s4, 0x0068($sp)           
/* 00B48 80B8DB98 AFB30064 */  sw      $s3, 0x0064($sp)           
/* 00B4C 80B8DB9C AFB20060 */  sw      $s2, 0x0060($sp)           
/* 00B50 80B8DBA0 AFB1005C */  sw      $s1, 0x005C($sp)           
/* 00B54 80B8DBA4 AFB00058 */  sw      $s0, 0x0058($sp)           
/* 00B58 80B8DBA8 F7BE0050 */  sdc1    $f30, 0x0050($sp)          
/* 00B5C 80B8DBAC F7BC0048 */  sdc1    $f28, 0x0048($sp)          
/* 00B60 80B8DBB0 F7BA0040 */  sdc1    $f26, 0x0040($sp)          
/* 00B64 80B8DBB4 F7B80038 */  sdc1    $f24, 0x0038($sp)          
/* 00B68 80B8DBB8 F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 00B6C 80B8DBBC F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 00B70 80B8DBC0 8CB31C44 */  lw      $s3, 0x1C44($a1)           ## 00001C44
/* 00B74 80B8DBC4 C4920278 */  lwc1    $f18, 0x0278($a0)          ## 00000278
/* 00B78 80B8DBC8 C48A022C */  lwc1    $f10, 0x022C($a0)          ## 0000022C
/* 00B7C 80B8DBCC C6640A40 */  lwc1    $f4, 0x0A40($s3)           ## 00000A40
/* 00B80 80B8DBD0 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 00B84 80B8DBD4 44810000 */  mtc1    $at, $f0                   ## $f0 = 300.00
/* 00B88 80B8DBD8 46122402 */  mul.s   $f16, $f4, $f18            
/* 00B8C 80B8DBDC 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 00B90 80B8DBE0 44811000 */  mtc1    $at, $f2                   ## $f2 = 400.00
/* 00B94 80B8DBE4 00C08825 */  or      $s1, $a2, $zero            ## $s1 = 00000000
/* 00B98 80B8DBE8 0080B825 */  or      $s7, $a0, $zero            ## $s7 = 00000000
/* 00B9C 80B8DBEC 27BE0130 */  addiu   $s8, $sp, 0x0130           ## $s8 = FFFFFFE8
/* 00BA0 80B8DBF0 27AE0124 */  addiu   $t6, $sp, 0x0124           ## $t6 = FFFFFFDC
/* 00BA4 80B8DBF4 46008207 */  neg.s   $f8, $f16                  
/* 00BA8 80B8DBF8 03C03025 */  or      $a2, $s8, $zero            ## $a2 = FFFFFFE8
/* 00BAC 80B8DBFC 460A4182 */  mul.s   $f6, $f8, $f10             
/* 00BB0 80B8DC00 248401AC */  addiu   $a0, $a0, 0x01AC           ## $a0 = 000001AC
/* 00BB4 80B8DC04 27A500CC */  addiu   $a1, $sp, 0x00CC           ## $a1 = FFFFFF84
/* 00BB8 80B8DC08 27A700C0 */  addiu   $a3, $sp, 0x00C0           ## $a3 = FFFFFF78
/* 00BBC 80B8DC0C 46023102 */  mul.s   $f4, $f6, $f2              
/* 00BC0 80B8DC10 E7A400E8 */  swc1    $f4, 0x00E8($sp)           
/* 00BC4 80B8DC14 C49000CC */  lwc1    $f16, 0x00CC($a0)          ## 00000278
/* 00BC8 80B8DC18 C6720A44 */  lwc1    $f18, 0x0A44($s3)          ## 00000A44
/* 00BCC 80B8DC1C C4860080 */  lwc1    $f6, 0x0080($a0)           ## 0000022C
/* 00BD0 80B8DC20 46109202 */  mul.s   $f8, $f18, $f16            
/* 00BD4 80B8DC24 46004287 */  neg.s   $f10, $f8                  
/* 00BD8 80B8DC28 46065482 */  mul.s   $f18, $f10, $f6            
/* 00BDC 80B8DC2C 00000000 */  nop
/* 00BE0 80B8DC30 46029402 */  mul.s   $f16, $f18, $f2            
/* 00BE4 80B8DC34 E7B000EC */  swc1    $f16, 0x00EC($sp)          
/* 00BE8 80B8DC38 C48A00CC */  lwc1    $f10, 0x00CC($a0)          ## 00000278
/* 00BEC 80B8DC3C C6680A48 */  lwc1    $f8, 0x0A48($s3)           ## 00000A48
/* 00BF0 80B8DC40 460A4182 */  mul.s   $f6, $f8, $f10             
/* 00BF4 80B8DC44 C4880080 */  lwc1    $f8, 0x0080($a0)           ## 0000022C
/* 00BF8 80B8DC48 46003487 */  neg.s   $f18, $f6                  
/* 00BFC 80B8DC4C 46089282 */  mul.s   $f10, $f18, $f8            
/* 00C00 80B8DC50 00000000 */  nop
/* 00C04 80B8DC54 46025182 */  mul.s   $f6, $f10, $f2             
/* 00C08 80B8DC58 E7A600F0 */  swc1    $f6, 0x00F0($sp)           
/* 00C0C 80B8DC5C C6720A50 */  lwc1    $f18, 0x0A50($s3)          ## 00000A50
/* 00C10 80B8DC60 E7B20130 */  swc1    $f18, 0x0130($sp)          
/* 00C14 80B8DC64 C6680A54 */  lwc1    $f8, 0x0A54($s3)           ## 00000A54
/* 00C18 80B8DC68 C7B20130 */  lwc1    $f18, 0x0130($sp)          
/* 00C1C 80B8DC6C E7A80134 */  swc1    $f8, 0x0134($sp)           
/* 00C20 80B8DC70 C66A0A58 */  lwc1    $f10, 0x0A58($s3)          ## 00000A58
/* 00C24 80B8DC74 46122200 */  add.s   $f8, $f4, $f18             
/* 00C28 80B8DC78 E7B20080 */  swc1    $f18, 0x0080($sp)          
/* 00C2C 80B8DC7C E7AA0138 */  swc1    $f10, 0x0138($sp)          
/* 00C30 80B8DC80 C7AA0134 */  lwc1    $f10, 0x0134($sp)          
/* 00C34 80B8DC84 E7A80124 */  swc1    $f8, 0x0124($sp)           
/* 00C38 80B8DC88 460A8100 */  add.s   $f4, $f16, $f10            
/* 00C3C 80B8DC8C C7B00138 */  lwc1    $f16, 0x0138($sp)          
/* 00C40 80B8DC90 46103180 */  add.s   $f6, $f6, $f16             
/* 00C44 80B8DC94 E7A40128 */  swc1    $f4, 0x0128($sp)           
/* 00C48 80B8DC98 E7A6012C */  swc1    $f6, 0x012C($sp)           
/* 00C4C 80B8DC9C C6720A20 */  lwc1    $f18, 0x0A20($s3)          ## 00000A20
/* 00C50 80B8DCA0 E7A80084 */  swc1    $f8, 0x0084($sp)           
/* 00C54 80B8DCA4 C7A80080 */  lwc1    $f8, 0x0080($sp)           
/* 00C58 80B8DCA8 46009482 */  mul.s   $f18, $f18, $f0            
/* 00C5C 80B8DCAC 46089480 */  add.s   $f18, $f18, $f8            
/* 00C60 80B8DCB0 E7B200CC */  swc1    $f18, 0x00CC($sp)          
/* 00C64 80B8DCB4 C6680A24 */  lwc1    $f8, 0x0A24($s3)           ## 00000A24
/* 00C68 80B8DCB8 46004482 */  mul.s   $f18, $f8, $f0             
/* 00C6C 80B8DCBC 460A9200 */  add.s   $f8, $f18, $f10            
/* 00C70 80B8DCC0 E7A800D0 */  swc1    $f8, 0x00D0($sp)           
/* 00C74 80B8DCC4 C6720A28 */  lwc1    $f18, 0x0A28($s3)          ## 00000A28
/* 00C78 80B8DCC8 46009282 */  mul.s   $f10, $f18, $f0            
/* 00C7C 80B8DCCC C7B20084 */  lwc1    $f18, 0x0084($sp)          
/* 00C80 80B8DCD0 46105200 */  add.s   $f8, $f10, $f16            
/* 00C84 80B8DCD4 E7A800D4 */  swc1    $f8, 0x00D4($sp)           
/* 00C88 80B8DCD8 C66A0A20 */  lwc1    $f10, 0x0A20($s3)          ## 00000A20
/* 00C8C 80B8DCDC 46005402 */  mul.s   $f16, $f10, $f0            
/* 00C90 80B8DCE0 46128200 */  add.s   $f8, $f16, $f18            
/* 00C94 80B8DCE4 E7A800C0 */  swc1    $f8, 0x00C0($sp)           
/* 00C98 80B8DCE8 C66A0A24 */  lwc1    $f10, 0x0A24($s3)          ## 00000A24
/* 00C9C 80B8DCEC 46005402 */  mul.s   $f16, $f10, $f0            
/* 00CA0 80B8DCF0 46048480 */  add.s   $f18, $f16, $f4            
/* 00CA4 80B8DCF4 E7B200C4 */  swc1    $f18, 0x00C4($sp)          
/* 00CA8 80B8DCF8 C6680A28 */  lwc1    $f8, 0x0A28($s3)           ## 00000A28
/* 00CAC 80B8DCFC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00CB0 80B8DD00 46004282 */  mul.s   $f10, $f8, $f0             
/* 00CB4 80B8DD04 46065400 */  add.s   $f16, $f10, $f6            
/* 00CB8 80B8DD08 0C0189CD */  jal     func_80062734              
/* 00CBC 80B8DD0C E7B000C8 */  swc1    $f16, 0x00C8($sp)          
/* 00CC0 80B8DD10 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 00CC4 80B8DD14 4481E000 */  mtc1    $at, $f28                  ## $f28 = 600.00
/* 00CC8 80B8DD18 3C0180B9 */  lui     $at, %hi(D_80B8E938)       ## $at = 80B90000
/* 00CCC 80B8DD1C C43AE938 */  lwc1    $f26, %lo(D_80B8E938)($at) 
/* 00CD0 80B8DD20 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00CD4 80B8DD24 4481C000 */  mtc1    $at, $f24                  ## $f24 = 1.00
/* 00CD8 80B8DD28 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00CDC 80B8DD2C 4481B000 */  mtc1    $at, $f22                  ## $f22 = 4.00
/* 00CE0 80B8DD30 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00CE4 80B8DD34 4481A000 */  mtc1    $at, $f20                  ## $f20 = 100.00
/* 00CE8 80B8DD38 4480F000 */  mtc1    $zero, $f30                ## $f30 = 0.00
/* 00CEC 80B8DD3C 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 00CF0 80B8DD40 02208025 */  or      $s0, $s1, $zero            ## $s0 = 00000000
/* 00CF4 80B8DD44 27B600F4 */  addiu   $s6, $sp, 0x00F4           ## $s6 = FFFFFFAC
/* 00CF8 80B8DD48 27B50100 */  addiu   $s5, $sp, 0x0100           ## $s5 = FFFFFFB8
/* 00CFC 80B8DD4C 27B4010C */  addiu   $s4, $sp, 0x010C           ## $s4 = FFFFFFC4
.L80B8DD50:
/* 00D00 80B8DD50 8E02004C */  lw      $v0, 0x004C($s0)           ## 0000004C
/* 00D04 80B8DD54 504000CE */  beql    $v0, $zero, .L80B8E090     
/* 00D08 80B8DD58 26520054 */  addiu   $s2, $s2, 0x0054           ## $s2 = 00000054
/* 00D0C 80B8DD5C 844F0008 */  lh      $t7, 0x0008($v0)           ## 00000008
/* 00D10 80B8DD60 27AC0124 */  addiu   $t4, $sp, 0x0124           ## $t4 = FFFFFFDC
/* 00D14 80B8DD64 27AD0118 */  addiu   $t5, $sp, 0x0118           ## $t5 = FFFFFFD0
/* 00D18 80B8DD68 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 00D1C 80B8DD6C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00D20 80B8DD70 468024A0 */  cvt.s.w $f18, $f4                  
/* 00D24 80B8DD74 461A9302 */  mul.s   $f12, $f18, $f26           
/* 00D28 80B8DD78 E7AC00DC */  swc1    $f12, 0x00DC($sp)          
/* 00D2C 80B8DD7C 8E18004C */  lw      $t8, 0x004C($s0)           ## 0000004C
/* 00D30 80B8DD80 8719000A */  lh      $t9, 0x000A($t8)           ## 0000000A
/* 00D34 80B8DD84 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 00D38 80B8DD88 00000000 */  nop
/* 00D3C 80B8DD8C 468051A0 */  cvt.s.w $f6, $f10                  
/* 00D40 80B8DD90 461A3382 */  mul.s   $f14, $f6, $f26            
/* 00D44 80B8DD94 E7AE00E0 */  swc1    $f14, 0x00E0($sp)          
/* 00D48 80B8DD98 8E08004C */  lw      $t0, 0x004C($s0)           ## 0000004C
/* 00D4C 80B8DD9C 8509000C */  lh      $t1, 0x000C($t0)           ## 0000000C
/* 00D50 80B8DDA0 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 00D54 80B8DDA4 00000000 */  nop
/* 00D58 80B8DDA8 468024A0 */  cvt.s.w $f18, $f4                  
/* 00D5C 80B8DDAC 461A9282 */  mul.s   $f10, $f18, $f26           
/* 00D60 80B8DDB0 E7AA00E4 */  swc1    $f10, 0x00E4($sp)          
/* 00D64 80B8DDB4 8E0A004C */  lw      $t2, 0x004C($s0)           ## 0000004C
/* 00D68 80B8DDB8 44065000 */  mfc1    $a2, $f10                  
/* 00D6C 80B8DDBC 854B000E */  lh      $t3, 0x000E($t2)           ## 0000000E
/* 00D70 80B8DDC0 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 00D74 80B8DDC4 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 00D78 80B8DDC8 448B3000 */  mtc1    $t3, $f6                   ## $f6 = 0.00
/* 00D7C 80B8DDCC AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 00D80 80B8DDD0 AFBE0010 */  sw      $s8, 0x0010($sp)           
/* 00D84 80B8DDD4 468031A0 */  cvt.s.w $f6, $f6                   
/* 00D88 80B8DDD8 44073000 */  mfc1    $a3, $f6                   
/* 00D8C 80B8DDDC 0C033857 */  jal     Math3D_LineSegVsPlane              
/* 00D90 80B8DDE0 00000000 */  nop
/* 00D94 80B8DDE4 104000A8 */  beq     $v0, $zero, .L80B8E088     
/* 00D98 80B8DDE8 C7A40118 */  lwc1    $f4, 0x0118($sp)           
/* 00D9C 80B8DDEC E6040000 */  swc1    $f4, 0x0000($s0)           ## 00000000
/* 00DA0 80B8DDF0 C7B2011C */  lwc1    $f18, 0x011C($sp)          
/* 00DA4 80B8DDF4 26710A20 */  addiu   $s1, $s3, 0x0A20           ## $s1 = 00000A20
/* 00DA8 80B8DDF8 240F00C8 */  addiu   $t7, $zero, 0x00C8         ## $t7 = 000000C8
/* 00DAC 80B8DDFC E6120004 */  swc1    $f18, 0x0004($s0)          ## 00000004
/* 00DB0 80B8DE00 C7A80120 */  lwc1    $f8, 0x0120($sp)           
/* 00DB4 80B8DE04 3C014448 */  lui     $at, 0x4448                ## $at = 44480000
/* 00DB8 80B8DE08 E6080008 */  swc1    $f8, 0x0008($s0)           ## 00000008
/* 00DBC 80B8DE0C C7AA0130 */  lwc1    $f10, 0x0130($sp)          
/* 00DC0 80B8DE10 C7B00118 */  lwc1    $f16, 0x0118($sp)          
/* 00DC4 80B8DE14 C7A40134 */  lwc1    $f4, 0x0134($sp)           
/* 00DC8 80B8DE18 C7A6011C */  lwc1    $f6, 0x011C($sp)           
/* 00DCC 80B8DE1C 460A8081 */  sub.s   $f2, $f16, $f10            
/* 00DD0 80B8DE20 C7A80138 */  lwc1    $f8, 0x0138($sp)           
/* 00DD4 80B8DE24 C7B20120 */  lwc1    $f18, 0x0120($sp)          
/* 00DD8 80B8DE28 46043301 */  sub.s   $f12, $f6, $f4             
/* 00DDC 80B8DE2C 46021402 */  mul.s   $f16, $f2, $f2             
/* 00DE0 80B8DE30 46089381 */  sub.s   $f14, $f18, $f8            
/* 00DE4 80B8DE34 460C6282 */  mul.s   $f10, $f12, $f12           
/* 00DE8 80B8DE38 C6F2022C */  lwc1    $f18, 0x022C($s7)          ## 0000022C
/* 00DEC 80B8DE3C 460E7102 */  mul.s   $f4, $f14, $f14            
/* 00DF0 80B8DE40 00000000 */  nop
/* 00DF4 80B8DE44 461C9202 */  mul.s   $f8, $f18, $f28            
/* 00DF8 80B8DE48 460A8180 */  add.s   $f6, $f16, $f10            
/* 00DFC 80B8DE4C 46043000 */  add.s   $f0, $f6, $f4              
/* 00E00 80B8DE50 46000004 */  sqrt.s  $f0, $f0                   
/* 00E04 80B8DE54 4608003C */  c.lt.s  $f0, $f8                   
/* 00E08 80B8DE58 00000000 */  nop
/* 00E0C 80B8DE5C 45000003 */  bc1f    .L80B8DE6C                 
/* 00E10 80B8DE60 00000000 */  nop
/* 00E14 80B8DE64 10000008 */  beq     $zero, $zero, .L80B8DE88   
/* 00E18 80B8DE68 A20F0050 */  sb      $t7, 0x0050($s0)           ## 00000050
.L80B8DE6C:
/* 00E1C 80B8DE6C 44818000 */  mtc1    $at, $f16                  ## $f16 = 800.00
/* 00E20 80B8DE70 00000000 */  nop
/* 00E24 80B8DE74 46008281 */  sub.s   $f10, $f16, $f0            
/* 00E28 80B8DE78 4600518D */  trunc.w.s $f6, $f10                  
/* 00E2C 80B8DE7C 44193000 */  mfc1    $t9, $f6                   
/* 00E30 80B8DE80 00000000 */  nop
/* 00E34 80B8DE84 A2190050 */  sb      $t9, 0x0050($s0)           ## 00000050
.L80B8DE88:
/* 00E38 80B8DE88 C6240000 */  lwc1    $f4, 0x0000($s1)           ## 00000A20
/* 00E3C 80B8DE8C C7A80130 */  lwc1    $f8, 0x0130($sp)           
/* 00E40 80B8DE90 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00E44 80B8DE94 46142482 */  mul.s   $f18, $f4, $f20            
/* 00E48 80B8DE98 C7A40134 */  lwc1    $f4, 0x0134($sp)           
/* 00E4C 80B8DE9C 46089400 */  add.s   $f16, $f18, $f8            
/* 00E50 80B8DEA0 E7B0010C */  swc1    $f16, 0x010C($sp)          
/* 00E54 80B8DEA4 C62A0004 */  lwc1    $f10, 0x0004($s1)          ## 00000A24
/* 00E58 80B8DEA8 46145182 */  mul.s   $f6, $f10, $f20            
/* 00E5C 80B8DEAC 46043480 */  add.s   $f18, $f6, $f4             
/* 00E60 80B8DEB0 C7A60138 */  lwc1    $f6, 0x0138($sp)           
/* 00E64 80B8DEB4 E7B20110 */  swc1    $f18, 0x0110($sp)          
/* 00E68 80B8DEB8 C6280008 */  lwc1    $f8, 0x0008($s1)           ## 00000A28
/* 00E6C 80B8DEBC 46144282 */  mul.s   $f10, $f8, $f20            
/* 00E70 80B8DEC0 C7A800E8 */  lwc1    $f8, 0x00E8($sp)           
/* 00E74 80B8DEC4 46065100 */  add.s   $f4, $f10, $f6             
/* 00E78 80B8DEC8 46164282 */  mul.s   $f10, $f8, $f22            
/* 00E7C 80B8DECC C7A800EC */  lwc1    $f8, 0x00EC($sp)           
/* 00E80 80B8DED0 E7A40114 */  swc1    $f4, 0x0114($sp)           
/* 00E84 80B8DED4 46105180 */  add.s   $f6, $f10, $f16            
/* 00E88 80B8DED8 46164282 */  mul.s   $f10, $f8, $f22            
/* 00E8C 80B8DEDC E7A60100 */  swc1    $f6, 0x0100($sp)           
/* 00E90 80B8DEE0 C7A600F0 */  lwc1    $f6, 0x00F0($sp)           
/* 00E94 80B8DEE4 46163202 */  mul.s   $f8, $f6, $f22             
/* 00E98 80B8DEE8 46125400 */  add.s   $f16, $f10, $f18           
/* 00E9C 80B8DEEC E7B00104 */  swc1    $f16, 0x0104($sp)          
/* 00EA0 80B8DEF0 46044280 */  add.s   $f10, $f8, $f4             
/* 00EA4 80B8DEF4 E7AA0108 */  swc1    $f10, 0x0108($sp)          
/* 00EA8 80B8DEF8 E61E0044 */  swc1    $f30, 0x0044($s0)          ## 00000044
/* 00EAC 80B8DEFC C6000044 */  lwc1    $f0, 0x0044($s0)           ## 00000044
/* 00EB0 80B8DF00 8E08004C */  lw      $t0, 0x004C($s0)           ## 0000004C
/* 00EB4 80B8DF04 E618000C */  swc1    $f24, 0x000C($s0)          ## 0000000C
/* 00EB8 80B8DF08 E6180020 */  swc1    $f24, 0x0020($s0)          ## 00000020
/* 00EBC 80B8DF0C E6180034 */  swc1    $f24, 0x0034($s0)          ## 00000034
/* 00EC0 80B8DF10 E6180048 */  swc1    $f24, 0x0048($s0)          ## 00000048
/* 00EC4 80B8DF14 E6000040 */  swc1    $f0, 0x0040($s0)           ## 00000040
/* 00EC8 80B8DF18 E600003C */  swc1    $f0, 0x003C($s0)           ## 0000003C
/* 00ECC 80B8DF1C E6000038 */  swc1    $f0, 0x0038($s0)           ## 00000038
/* 00ED0 80B8DF20 E6000030 */  swc1    $f0, 0x0030($s0)           ## 00000030
/* 00ED4 80B8DF24 E600002C */  swc1    $f0, 0x002C($s0)           ## 0000002C
/* 00ED8 80B8DF28 E6000028 */  swc1    $f0, 0x0028($s0)           ## 00000028
/* 00EDC 80B8DF2C E6000024 */  swc1    $f0, 0x0024($s0)           ## 00000024
/* 00EE0 80B8DF30 E600001C */  swc1    $f0, 0x001C($s0)           ## 0000001C
/* 00EE4 80B8DF34 E6000018 */  swc1    $f0, 0x0018($s0)           ## 00000018
/* 00EE8 80B8DF38 E6000014 */  swc1    $f0, 0x0014($s0)           ## 00000014
/* 00EEC 80B8DF3C E6000010 */  swc1    $f0, 0x0010($s0)           ## 00000010
/* 00EF0 80B8DF40 8509000E */  lh      $t1, 0x000E($t0)           ## 0000000E
/* 00EF4 80B8DF44 AFAA001C */  sw      $t2, 0x001C($sp)           
/* 00EF8 80B8DF48 AFB60018 */  sw      $s6, 0x0018($sp)           
/* 00EFC 80B8DF4C 44899000 */  mtc1    $t1, $f18                  ## $f18 = 0.00
/* 00F00 80B8DF50 AFB50014 */  sw      $s5, 0x0014($sp)           
/* 00F04 80B8DF54 AFB40010 */  sw      $s4, 0x0010($sp)           
/* 00F08 80B8DF58 468094A0 */  cvt.s.w $f18, $f18                 
/* 00F0C 80B8DF5C 8FA600E4 */  lw      $a2, 0x00E4($sp)           
/* 00F10 80B8DF60 C7AE00E0 */  lwc1    $f14, 0x00E0($sp)          
/* 00F14 80B8DF64 C7AC00DC */  lwc1    $f12, 0x00DC($sp)          
/* 00F18 80B8DF68 44079000 */  mfc1    $a3, $f18                  
/* 00F1C 80B8DF6C 0C033857 */  jal     Math3D_LineSegVsPlane              
/* 00F20 80B8DF70 00000000 */  nop
/* 00F24 80B8DF74 1040000C */  beq     $v0, $zero, .L80B8DFA8     
/* 00F28 80B8DF78 C7B000F4 */  lwc1    $f16, 0x00F4($sp)          
/* 00F2C 80B8DF7C C7A60118 */  lwc1    $f6, 0x0118($sp)           
/* 00F30 80B8DF80 46068201 */  sub.s   $f8, $f16, $f6             
/* 00F34 80B8DF84 E608000C */  swc1    $f8, 0x000C($s0)           ## 0000000C
/* 00F38 80B8DF88 C7AA011C */  lwc1    $f10, 0x011C($sp)          
/* 00F3C 80B8DF8C C7A400F8 */  lwc1    $f4, 0x00F8($sp)           
/* 00F40 80B8DF90 460A2481 */  sub.s   $f18, $f4, $f10            
/* 00F44 80B8DF94 E6120010 */  swc1    $f18, 0x0010($s0)          ## 00000010
/* 00F48 80B8DF98 C7A60120 */  lwc1    $f6, 0x0120($sp)           
/* 00F4C 80B8DF9C C7B000FC */  lwc1    $f16, 0x00FC($sp)          
/* 00F50 80B8DFA0 46068201 */  sub.s   $f8, $f16, $f6             
/* 00F54 80B8DFA4 E6080014 */  swc1    $f8, 0x0014($s0)           ## 00000014
.L80B8DFA8:
/* 00F58 80B8DFA8 C6240010 */  lwc1    $f4, 0x0010($s1)           ## 00000A30
/* 00F5C 80B8DFAC C7B20130 */  lwc1    $f18, 0x0130($sp)          
/* 00F60 80B8DFB0 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00F64 80B8DFB4 46142282 */  mul.s   $f10, $f4, $f20            
/* 00F68 80B8DFB8 C7A40134 */  lwc1    $f4, 0x0134($sp)           
/* 00F6C 80B8DFBC C7AC00DC */  lwc1    $f12, 0x00DC($sp)          
/* 00F70 80B8DFC0 C7AE00E0 */  lwc1    $f14, 0x00E0($sp)          
/* 00F74 80B8DFC4 8FA600E4 */  lw      $a2, 0x00E4($sp)           
/* 00F78 80B8DFC8 46125400 */  add.s   $f16, $f10, $f18           
/* 00F7C 80B8DFCC E7B0010C */  swc1    $f16, 0x010C($sp)          
/* 00F80 80B8DFD0 C6260014 */  lwc1    $f6, 0x0014($s1)           ## 00000A34
/* 00F84 80B8DFD4 46143202 */  mul.s   $f8, $f6, $f20             
/* 00F88 80B8DFD8 46044280 */  add.s   $f10, $f8, $f4             
/* 00F8C 80B8DFDC C7A80138 */  lwc1    $f8, 0x0138($sp)           
/* 00F90 80B8DFE0 E7AA0110 */  swc1    $f10, 0x0110($sp)          
/* 00F94 80B8DFE4 C6320018 */  lwc1    $f18, 0x0018($s1)          ## 00000A38
/* 00F98 80B8DFE8 46149182 */  mul.s   $f6, $f18, $f20            
/* 00F9C 80B8DFEC C7B200E8 */  lwc1    $f18, 0x00E8($sp)          
/* 00FA0 80B8DFF0 46083100 */  add.s   $f4, $f6, $f8              
/* 00FA4 80B8DFF4 46169182 */  mul.s   $f6, $f18, $f22            
/* 00FA8 80B8DFF8 C7B200EC */  lwc1    $f18, 0x00EC($sp)          
/* 00FAC 80B8DFFC E7A40114 */  swc1    $f4, 0x0114($sp)           
/* 00FB0 80B8E000 46103200 */  add.s   $f8, $f6, $f16             
/* 00FB4 80B8E004 46169182 */  mul.s   $f6, $f18, $f22            
/* 00FB8 80B8E008 E7A80100 */  swc1    $f8, 0x0100($sp)           
/* 00FBC 80B8E00C C7A800F0 */  lwc1    $f8, 0x00F0($sp)           
/* 00FC0 80B8E010 46164482 */  mul.s   $f18, $f8, $f22            
/* 00FC4 80B8E014 460A3400 */  add.s   $f16, $f6, $f10            
/* 00FC8 80B8E018 E7B00104 */  swc1    $f16, 0x0104($sp)          
/* 00FCC 80B8E01C 46049180 */  add.s   $f6, $f18, $f4             
/* 00FD0 80B8E020 E7A60108 */  swc1    $f6, 0x0108($sp)           
/* 00FD4 80B8E024 8E0B004C */  lw      $t3, 0x004C($s0)           ## 0000004C
/* 00FD8 80B8E028 856C000E */  lh      $t4, 0x000E($t3)           ## 0000000E
/* 00FDC 80B8E02C AFAD001C */  sw      $t5, 0x001C($sp)           
/* 00FE0 80B8E030 AFB60018 */  sw      $s6, 0x0018($sp)           
/* 00FE4 80B8E034 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 00FE8 80B8E038 AFB50014 */  sw      $s5, 0x0014($sp)           
/* 00FEC 80B8E03C AFB40010 */  sw      $s4, 0x0010($sp)           
/* 00FF0 80B8E040 468052A0 */  cvt.s.w $f10, $f10                 
/* 00FF4 80B8E044 44075000 */  mfc1    $a3, $f10                  
/* 00FF8 80B8E048 0C033857 */  jal     Math3D_LineSegVsPlane              
/* 00FFC 80B8E04C 00000000 */  nop
/* 01000 80B8E050 1040000E */  beq     $v0, $zero, .L80B8E08C     
/* 01004 80B8E054 C7B000F4 */  lwc1    $f16, 0x00F4($sp)          
/* 01008 80B8E058 C7A80118 */  lwc1    $f8, 0x0118($sp)           
/* 0100C 80B8E05C 46088481 */  sub.s   $f18, $f16, $f8            
/* 01010 80B8E060 E612001C */  swc1    $f18, 0x001C($s0)          ## 0000001C
/* 01014 80B8E064 C7A6011C */  lwc1    $f6, 0x011C($sp)           
/* 01018 80B8E068 C7A400F8 */  lwc1    $f4, 0x00F8($sp)           
/* 0101C 80B8E06C 46062281 */  sub.s   $f10, $f4, $f6             
/* 01020 80B8E070 E60A0020 */  swc1    $f10, 0x0020($s0)          ## 00000020
/* 01024 80B8E074 C7A80120 */  lwc1    $f8, 0x0120($sp)           
/* 01028 80B8E078 C7B000FC */  lwc1    $f16, 0x00FC($sp)          
/* 0102C 80B8E07C 46088481 */  sub.s   $f18, $f16, $f8            
/* 01030 80B8E080 10000002 */  beq     $zero, $zero, .L80B8E08C   
/* 01034 80B8E084 E6120024 */  swc1    $f18, 0x0024($s0)          ## 00000024
.L80B8E088:
/* 01038 80B8E088 AE00004C */  sw      $zero, 0x004C($s0)         ## 0000004C
.L80B8E08C:
/* 0103C 80B8E08C 26520054 */  addiu   $s2, $s2, 0x0054           ## $s2 = 000000A8
.L80B8E090:
/* 01040 80B8E090 240101F8 */  addiu   $at, $zero, 0x01F8         ## $at = 000001F8
/* 01044 80B8E094 1641FF2E */  bne     $s2, $at, .L80B8DD50       
/* 01048 80B8E098 26100054 */  addiu   $s0, $s0, 0x0054           ## $s0 = 00000054
/* 0104C 80B8E09C 8FBF007C */  lw      $ra, 0x007C($sp)           
/* 01050 80B8E0A0 D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 01054 80B8E0A4 D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 01058 80B8E0A8 D7B80038 */  ldc1    $f24, 0x0038($sp)          
/* 0105C 80B8E0AC D7BA0040 */  ldc1    $f26, 0x0040($sp)          
/* 01060 80B8E0B0 D7BC0048 */  ldc1    $f28, 0x0048($sp)          
/* 01064 80B8E0B4 D7BE0050 */  ldc1    $f30, 0x0050($sp)          
/* 01068 80B8E0B8 8FB00058 */  lw      $s0, 0x0058($sp)           
/* 0106C 80B8E0BC 8FB1005C */  lw      $s1, 0x005C($sp)           
/* 01070 80B8E0C0 8FB20060 */  lw      $s2, 0x0060($sp)           
/* 01074 80B8E0C4 8FB30064 */  lw      $s3, 0x0064($sp)           
/* 01078 80B8E0C8 8FB40068 */  lw      $s4, 0x0068($sp)           
/* 0107C 80B8E0CC 8FB5006C */  lw      $s5, 0x006C($sp)           
/* 01080 80B8E0D0 8FB60070 */  lw      $s6, 0x0070($sp)           
/* 01084 80B8E0D4 8FB70074 */  lw      $s7, 0x0074($sp)           
/* 01088 80B8E0D8 8FBE0078 */  lw      $s8, 0x0078($sp)           
/* 0108C 80B8E0DC 03E00008 */  jr      $ra                        
/* 01090 80B8E0E0 27BD0148 */  addiu   $sp, $sp, 0x0148           ## $sp = 00000000
