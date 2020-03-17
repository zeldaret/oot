glabel func_80A4ED34
/* 00A14 80A4ED34 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 00A18 80A4ED38 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00A1C 80A4ED3C AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00A20 80A4ED40 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 00A24 80A4ED44 F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 00A28 80A4ED48 AFA5007C */  sw      $a1, 0x007C($sp)           
/* 00A2C 80A4ED4C 9083019F */  lbu     $v1, 0x019F($a0)           ## 0000019F
/* 00A30 80A4ED50 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00A34 80A4ED54 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00A38 80A4ED58 14600006 */  bne     $v1, $zero, .L80A4ED74     
/* 00A3C 80A4ED5C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 00A40 80A4ED60 246F0001 */  addiu   $t7, $v1, 0x0001           ## $t7 = 00000001
/* 00A44 80A4ED64 240E0028 */  addiu   $t6, $zero, 0x0028         ## $t6 = 00000028
/* 00A48 80A4ED68 A48E0200 */  sh      $t6, 0x0200($a0)           ## 00000200
/* 00A4C 80A4ED6C A08F019F */  sb      $t7, 0x019F($a0)           ## 0000019F
/* 00A50 80A4ED70 31E200FF */  andi    $v0, $t7, 0x00FF           ## $v0 = 00000001
.L80A4ED74:
/* 00A54 80A4ED74 1441000E */  bne     $v0, $at, .L80A4EDB0       
/* 00A58 80A4ED78 263001E4 */  addiu   $s0, $s1, 0x01E4           ## $s0 = 000001E4
/* 00A5C 80A4ED7C 96220200 */  lhu     $v0, 0x0200($s1)           ## 00000200
/* 00A60 80A4ED80 24190050 */  addiu   $t9, $zero, 0x0050         ## $t9 = 00000050
/* 00A64 80A4ED84 2C430001 */  sltiu   $v1, $v0, 0x0001           
/* 00A68 80A4ED88 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = 00000000
/* 00A6C 80A4ED8C 10600008 */  beq     $v1, $zero, .L80A4EDB0     
/* 00A70 80A4ED90 A6380200 */  sh      $t8, 0x0200($s1)           ## 00000200
/* 00A74 80A4ED94 9228019E */  lbu     $t0, 0x019E($s1)           ## 0000019E
/* 00A78 80A4ED98 922A019F */  lbu     $t2, 0x019F($s1)           ## 0000019F
/* 00A7C 80A4ED9C A6390200 */  sh      $t9, 0x0200($s1)           ## 00000200
/* 00A80 80A4EDA0 35090004 */  ori     $t1, $t0, 0x0004           ## $t1 = 00000004
/* 00A84 80A4EDA4 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 00A88 80A4EDA8 A229019E */  sb      $t1, 0x019E($s1)           ## 0000019E
/* 00A8C 80A4EDAC A22B019F */  sb      $t3, 0x019F($s1)           ## 0000019F
.L80A4EDB0:
/* 00A90 80A4EDB0 922C019F */  lbu     $t4, 0x019F($s1)           ## 0000019F
/* 00A94 80A4EDB4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00A98 80A4EDB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000001E4
/* 00A9C 80A4EDBC 55810048 */  bnel    $t4, $at, .L80A4EEE0       
/* 00AA0 80A4EDC0 922E019F */  lbu     $t6, 0x019F($s1)           ## 0000019F
/* 00AA4 80A4EDC4 962D0200 */  lhu     $t5, 0x0200($s1)           ## 00000200
/* 00AA8 80A4EDC8 3C0580A5 */  lui     $a1, %hi(D_80A4FE04)       ## $a1 = 80A50000
/* 00AAC 80A4EDCC 24A5FE04 */  addiu   $a1, $a1, %lo(D_80A4FE04)  ## $a1 = 80A4FE04
/* 00AB0 80A4EDD0 25AEFFFF */  addiu   $t6, $t5, 0xFFFF           ## $t6 = FFFFFFFF
/* 00AB4 80A4EDD4 0C01E218 */  jal     Color_RGBA8_Copy
              
/* 00AB8 80A4EDD8 A62E0200 */  sh      $t6, 0x0200($s1)           ## 00000200
/* 00ABC 80A4EDDC 96220200 */  lhu     $v0, 0x0200($s1)           ## 00000200
/* 00AC0 80A4EDE0 28410050 */  slti    $at, $v0, 0x0050           
/* 00AC4 80A4EDE4 10200034 */  beq     $at, $zero, .L80A4EEB8     
/* 00AC8 80A4EDE8 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 00ACC 80A4EDEC 0041001A */  div     $zero, $v0, $at            
/* 00AD0 80A4EDF0 00007810 */  mfhi    $t7                        
/* 00AD4 80A4EDF4 29E10008 */  slti    $at, $t7, 0x0008           
/* 00AD8 80A4EDF8 1020002F */  beq     $at, $zero, .L80A4EEB8     
/* 00ADC 80A4EDFC 28410014 */  slti    $at, $v0, 0x0014           
/* 00AE0 80A4EE00 10200018 */  beq     $at, $zero, .L80A4EE64     
/* 00AE4 80A4EE04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000001E4
/* 00AE8 80A4EE08 3C0580A5 */  lui     $a1, %hi(D_80A4FDFC)       ## $a1 = 80A50000
/* 00AEC 80A4EE0C 24A5FDFC */  addiu   $a1, $a1, %lo(D_80A4FDFC)  ## $a1 = 80A4FDFC
/* 00AF0 80A4EE10 0C01E218 */  jal     Color_RGBA8_Copy
              
/* 00AF4 80A4EE14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000001E4
/* 00AF8 80A4EE18 96220200 */  lhu     $v0, 0x0200($s1)           ## 00000200
/* 00AFC 80A4EE1C 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 00B00 80A4EE20 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 00B04 80A4EE24 0041001A */  div     $zero, $v0, $at            
/* 00B08 80A4EE28 0000C010 */  mfhi    $t8                        
/* 00B0C 80A4EE2C 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00B10 80A4EE30 17010021 */  bne     $t8, $at, .L80A4EEB8       
/* 00B14 80A4EE34 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00B18 80A4EE38 3C198013 */  lui     $t9, 0x8013                ## $t9 = 80130000
/* 00B1C 80A4EE3C 273933E8 */  addiu   $t9, $t9, 0x33E8           ## $t9 = 801333E8
/* 00B20 80A4EE40 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 00B24 80A4EE44 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 00B28 80A4EE48 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00B2C 80A4EE4C 2404481A */  addiu   $a0, $zero, 0x481A         ## $a0 = 0000481A
/* 00B30 80A4EE50 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00B34 80A4EE54 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00B38 80A4EE58 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00B3C 80A4EE5C 10000016 */  beq     $zero, $zero, .L80A4EEB8   
/* 00B40 80A4EE60 96220200 */  lhu     $v0, 0x0200($s1)           ## 00000200
.L80A4EE64:
/* 00B44 80A4EE64 3C0580A5 */  lui     $a1, %hi(D_80A4FE00)       ## $a1 = 80A50000
/* 00B48 80A4EE68 0C01E218 */  jal     Color_RGBA8_Copy
              
/* 00B4C 80A4EE6C 24A5FE00 */  addiu   $a1, $a1, %lo(D_80A4FE00)  ## $a1 = 80A4FE00
/* 00B50 80A4EE70 96220200 */  lhu     $v0, 0x0200($s1)           ## 00000200
/* 00B54 80A4EE74 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 00B58 80A4EE78 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 00B5C 80A4EE7C 0041001A */  div     $zero, $v0, $at            
/* 00B60 80A4EE80 00004010 */  mfhi    $t0                        
/* 00B64 80A4EE84 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00B68 80A4EE88 1501000B */  bne     $t0, $at, .L80A4EEB8       
/* 00B6C 80A4EE8C 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00B70 80A4EE90 3C098013 */  lui     $t1, 0x8013                ## $t1 = 80130000
/* 00B74 80A4EE94 252933E8 */  addiu   $t1, $t1, 0x33E8           ## $t1 = 801333E8
/* 00B78 80A4EE98 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 00B7C 80A4EE9C 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 00B80 80A4EEA0 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00B84 80A4EEA4 24044819 */  addiu   $a0, $zero, 0x4819         ## $a0 = 00004819
/* 00B88 80A4EEA8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00B8C 80A4EEAC 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00B90 80A4EEB0 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00B94 80A4EEB4 96220200 */  lhu     $v0, 0x0200($s1)           ## 00000200
.L80A4EEB8:
/* 00B98 80A4EEB8 5C400009 */  bgtzl   $v0, .L80A4EEE0            
/* 00B9C 80A4EEBC 922E019F */  lbu     $t6, 0x019F($s1)           ## 0000019F
/* 00BA0 80A4EEC0 922A019E */  lbu     $t2, 0x019E($s1)           ## 0000019E
/* 00BA4 80A4EEC4 922C019F */  lbu     $t4, 0x019F($s1)           ## 0000019F
/* 00BA8 80A4EEC8 A6200200 */  sh      $zero, 0x0200($s1)         ## 00000200
/* 00BAC 80A4EECC 314BFFFB */  andi    $t3, $t2, 0xFFFB           ## $t3 = 00000000
/* 00BB0 80A4EED0 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 00BB4 80A4EED4 A22B019E */  sb      $t3, 0x019E($s1)           ## 0000019E
/* 00BB8 80A4EED8 A22D019F */  sb      $t5, 0x019F($s1)           ## 0000019F
/* 00BBC 80A4EEDC 922E019F */  lbu     $t6, 0x019F($s1)           ## 0000019F
.L80A4EEE0:
/* 00BC0 80A4EEE0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00BC4 80A4EEE4 15C10051 */  bne     $t6, $at, .L80A4F02C       
/* 00BC8 80A4EEE8 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00BCC 80A4EEEC 4481A000 */  mtc1    $at, $f20                  ## $f20 = 15.00
/* 00BD0 80A4EEF0 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
.L80A4EEF4:
/* 00BD4 80A4EEF4 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00BD8 80A4EEF8 4600A306 */  mov.s   $f12, $f20                 
/* 00BDC 80A4EEFC 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00BE0 80A4EF00 44816000 */  mtc1    $at, $f12                  ## $f12 = -1.00
/* 00BE4 80A4EF04 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00BE8 80A4EF08 E7A0005C */  swc1    $f0, 0x005C($sp)           
/* 00BEC 80A4EF0C E7A00060 */  swc1    $f0, 0x0060($sp)           
/* 00BF0 80A4EF10 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00BF4 80A4EF14 4600A306 */  mov.s   $f12, $f20                 
/* 00BF8 80A4EF18 C7A4005C */  lwc1    $f4, 0x005C($sp)           
/* 00BFC 80A4EF1C E7A00064 */  swc1    $f0, 0x0064($sp)           
/* 00C00 80A4EF20 C6280024 */  lwc1    $f8, 0x0024($s1)           ## 00000024
/* 00C04 80A4EF24 46042180 */  add.s   $f6, $f4, $f4              
/* 00C08 80A4EF28 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 00C0C 80A4EF2C 44819000 */  mtc1    $at, $f18                  ## $f18 = 7.00
/* 00C10 80A4EF30 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00C14 80A4EF34 46064280 */  add.s   $f10, $f8, $f6             
/* 00C18 80A4EF38 44816000 */  mtc1    $at, $f12                  ## $f12 = 50.00
/* 00C1C 80A4EF3C 46000180 */  add.s   $f6, $f0, $f0              
/* 00C20 80A4EF40 E7AA0068 */  swc1    $f10, 0x0068($sp)          
/* 00C24 80A4EF44 C6300028 */  lwc1    $f16, 0x0028($s1)          ## 00000028
/* 00C28 80A4EF48 46128100 */  add.s   $f4, $f16, $f18            
/* 00C2C 80A4EF4C E7A4006C */  swc1    $f4, 0x006C($sp)           
/* 00C30 80A4EF50 C628002C */  lwc1    $f8, 0x002C($s1)           ## 0000002C
/* 00C34 80A4EF54 46064280 */  add.s   $f10, $f8, $f6             
/* 00C38 80A4EF58 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00C3C 80A4EF5C E7AA0070 */  swc1    $f10, 0x0070($sp)          
/* 00C40 80A4EF60 4600040D */  trunc.w.s $f16, $f0                  
/* 00C44 80A4EF64 3C0F80A5 */  lui     $t7, %hi(D_80A4FE14)       ## $t7 = 80A50000
/* 00C48 80A4EF68 3C1880A5 */  lui     $t8, %hi(D_80A4FE18)       ## $t8 = 80A50000
/* 00C4C 80A4EF6C 2718FE18 */  addiu   $t8, $t8, %lo(D_80A4FE18)  ## $t8 = 80A4FE18
/* 00C50 80A4EF70 44088000 */  mfc1    $t0, $f16                  
/* 00C54 80A4EF74 25EFFE14 */  addiu   $t7, $t7, %lo(D_80A4FE14)  ## $t7 = 80A4FE14
/* 00C58 80A4EF78 3C0780A5 */  lui     $a3, %hi(D_80A4FE08)       ## $a3 = 80A50000
/* 00C5C 80A4EF7C 00084C00 */  sll     $t1, $t0, 16               
/* 00C60 80A4EF80 00095403 */  sra     $t2, $t1, 16               
/* 00C64 80A4EF84 254B00C8 */  addiu   $t3, $t2, 0x00C8           ## $t3 = 000000C8
/* 00C68 80A4EF88 240C0028 */  addiu   $t4, $zero, 0x0028         ## $t4 = 00000028
/* 00C6C 80A4EF8C 240D000F */  addiu   $t5, $zero, 0x000F         ## $t5 = 0000000F
/* 00C70 80A4EF90 AFAD0020 */  sw      $t5, 0x0020($sp)           
/* 00C74 80A4EF94 AFAC001C */  sw      $t4, 0x001C($sp)           
/* 00C78 80A4EF98 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 00C7C 80A4EF9C 24E7FE08 */  addiu   $a3, $a3, %lo(D_80A4FE08)  ## $a3 = 80A4FE08
/* 00C80 80A4EFA0 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00C84 80A4EFA4 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00C88 80A4EFA8 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 00C8C 80A4EFAC 27A50068 */  addiu   $a1, $sp, 0x0068           ## $a1 = FFFFFFF0
/* 00C90 80A4EFB0 0C00A0DB */  jal     func_8002836C              
/* 00C94 80A4EFB4 27A6005C */  addiu   $a2, $sp, 0x005C           ## $a2 = FFFFFFE4
/* 00C98 80A4EFB8 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00C9C 80A4EFBC 321000FF */  andi    $s0, $s0, 0x00FF           ## $s0 = 00000001
/* 00CA0 80A4EFC0 2A010003 */  slti    $at, $s0, 0x0003           
/* 00CA4 80A4EFC4 1420FFCB */  bne     $at, $zero, .L80A4EEF4     
/* 00CA8 80A4EFC8 00000000 */  nop
/* 00CAC 80A4EFCC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00CB0 80A4EFD0 0C00BE5D */  jal     func_8002F974              
/* 00CB4 80A4EFD4 24052033 */  addiu   $a1, $zero, 0x2033         ## $a1 = 00002033
/* 00CB8 80A4EFD8 96220200 */  lhu     $v0, 0x0200($s1)           ## 00000200
/* 00CBC 80A4EFDC 28430028 */  slti    $v1, $v0, 0x0028           
/* 00CC0 80A4EFE0 38630001 */  xori    $v1, $v1, 0x0001           ## $v1 = 00000001
/* 00CC4 80A4EFE4 244E0001 */  addiu   $t6, $v0, 0x0001           ## $t6 = 00000001
/* 00CC8 80A4EFE8 10600010 */  beq     $v1, $zero, .L80A4F02C     
/* 00CCC 80A4EFEC A62E0200 */  sh      $t6, 0x0200($s1)           ## 00000200
/* 00CD0 80A4EFF0 922F019E */  lbu     $t7, 0x019E($s1)           ## 0000019E
/* 00CD4 80A4EFF4 8E390004 */  lw      $t9, 0x0004($s1)           ## 00000004
/* 00CD8 80A4EFF8 3C0180A5 */  lui     $at, %hi(D_80A4FECC)       ## $at = 80A50000
/* 00CDC 80A4EFFC 35F80010 */  ori     $t8, $t7, 0x0010           ## $t8 = 00000010
/* 00CE0 80A4F000 37280010 */  ori     $t0, $t9, 0x0010           ## $t0 = 00000010
/* 00CE4 80A4F004 A238019E */  sb      $t8, 0x019E($s1)           ## 0000019E
/* 00CE8 80A4F008 AE280004 */  sw      $t0, 0x0004($s1)           ## 00000004
/* 00CEC 80A4F00C C432FECC */  lwc1    $f18, %lo(D_80A4FECC)($at) 
/* 00CF0 80A4F010 9229019F */  lbu     $t1, 0x019F($s1)           ## 0000019F
/* 00CF4 80A4F014 3C0180A5 */  lui     $at, %hi(D_80A4FED0)       ## $at = 80A50000
/* 00CF8 80A4F018 E63200F4 */  swc1    $f18, 0x00F4($s1)          ## 000000F4
/* 00CFC 80A4F01C C424FED0 */  lwc1    $f4, %lo(D_80A4FED0)($at)  
/* 00D00 80A4F020 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 00D04 80A4F024 A22A019F */  sb      $t2, 0x019F($s1)           ## 0000019F
/* 00D08 80A4F028 E624006C */  swc1    $f4, 0x006C($s1)           ## 0000006C
.L80A4F02C:
/* 00D0C 80A4F02C 922B019F */  lbu     $t3, 0x019F($s1)           ## 0000019F
/* 00D10 80A4F030 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00D14 80A4F034 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 00D18 80A4F038 1561003A */  bne     $t3, $at, .L80A4F124       
/* 00D1C 80A4F03C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00D20 80A4F040 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00D24 80A4F044 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 00D28 80A4F048 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00D2C 80A4F04C 44814000 */  mtc1    $at, $f8                   ## $f8 = 60.00
/* 00D30 80A4F050 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 00D34 80A4F054 44060000 */  mfc1    $a2, $f0                   
/* 00D38 80A4F058 44070000 */  mfc1    $a3, $f0                   
/* 00D3C 80A4F05C AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 00D40 80A4F060 0C00B92D */  jal     func_8002E4B4              
/* 00D44 80A4F064 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00D48 80A4F068 962D0088 */  lhu     $t5, 0x0088($s1)           ## 00000088
/* 00D4C 80A4F06C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00D50 80A4F070 31AE0018 */  andi    $t6, $t5, 0x0018           ## $t6 = 00000000
/* 00D54 80A4F074 11C0001E */  beq     $t6, $zero, .L80A4F0F0     
/* 00D58 80A4F078 00000000 */  nop
/* 00D5C 80A4F07C C6260024 */  lwc1    $f6, 0x0024($s1)           ## 00000024
/* 00D60 80A4F080 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00D64 80A4F084 2405180E */  addiu   $a1, $zero, 0x180E         ## $a1 = 0000180E
/* 00D68 80A4F088 E7A60050 */  swc1    $f6, 0x0050($sp)           
/* 00D6C 80A4F08C C62A0028 */  lwc1    $f10, 0x0028($s1)          ## 00000028
/* 00D70 80A4F090 E7AA0054 */  swc1    $f10, 0x0054($sp)          
/* 00D74 80A4F094 C630002C */  lwc1    $f16, 0x002C($s1)          ## 0000002C
/* 00D78 80A4F098 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00D7C 80A4F09C E7B00058 */  swc1    $f16, 0x0058($sp)          
/* 00D80 80A4F0A0 3C0680A5 */  lui     $a2, %hi(D_80A4FE1C)       ## $a2 = 80A50000
/* 00D84 80A4F0A4 3C0780A5 */  lui     $a3, %hi(D_80A4FE28)       ## $a3 = 80A50000
/* 00D88 80A4F0A8 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 00D8C 80A4F0AC 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 00D90 80A4F0B0 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00D94 80A4F0B4 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00D98 80A4F0B8 24E7FE28 */  addiu   $a3, $a3, %lo(D_80A4FE28)  ## $a3 = 80A4FE28
/* 00D9C 80A4F0BC 24C6FE1C */  addiu   $a2, $a2, %lo(D_80A4FE1C)  ## $a2 = 80A4FE1C
/* 00DA0 80A4F0C0 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 00DA4 80A4F0C4 0C00A3A1 */  jal     func_80028E84              
/* 00DA8 80A4F0C8 27A50050 */  addiu   $a1, $sp, 0x0050           ## $a1 = FFFFFFD8
/* 00DAC 80A4F0CC 9228019E */  lbu     $t0, 0x019E($s1)           ## 0000019E
/* 00DB0 80A4F0D0 3C0A80A5 */  lui     $t2, %hi(func_80A4F700)    ## $t2 = 80A50000
/* 00DB4 80A4F0D4 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 00DB8 80A4F0D8 254AF700 */  addiu   $t2, $t2, %lo(func_80A4F700) ## $t2 = 80A4F700
/* 00DBC 80A4F0DC 35090008 */  ori     $t1, $t0, 0x0008           ## $t1 = 00000008
/* 00DC0 80A4F0E0 A6390200 */  sh      $t9, 0x0200($s1)           ## 00000200
/* 00DC4 80A4F0E4 A229019E */  sb      $t1, 0x019E($s1)           ## 0000019E
/* 00DC8 80A4F0E8 10000003 */  beq     $zero, $zero, .L80A4F0F8   
/* 00DCC 80A4F0EC AE2A0198 */  sw      $t2, 0x0198($s1)           ## 00000198
.L80A4F0F0:
/* 00DD0 80A4F0F0 0C00BE5D */  jal     func_8002F974              
/* 00DD4 80A4F0F4 240520EA */  addiu   $a1, $zero, 0x20EA         ## $a1 = 000020EA
.L80A4F0F8:
/* 00DD8 80A4F0F8 0C00B638 */  jal     Actor_MoveForward
              
/* 00DDC 80A4F0FC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00DE0 80A4F100 3C0180A5 */  lui     $at, %hi(D_80A4FED4)       ## $at = 80A50000
/* 00DE4 80A4F104 C424FED4 */  lwc1    $f4, %lo(D_80A4FED4)($at)  
/* 00DE8 80A4F108 C6320094 */  lwc1    $f18, 0x0094($s1)          ## 00000094
/* 00DEC 80A4F10C 4604903C */  c.lt.s  $f18, $f4                  
/* 00DF0 80A4F110 00000000 */  nop
/* 00DF4 80A4F114 45020004 */  bc1fl   .L80A4F128                 
/* 00DF8 80A4F118 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00DFC 80A4F11C 0C00B55C */  jal     Actor_Kill
              
/* 00E00 80A4F120 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80A4F124:
/* 00E04 80A4F124 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80A4F128:
/* 00E08 80A4F128 D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 00E0C 80A4F12C 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 00E10 80A4F130 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 00E14 80A4F134 03E00008 */  jr      $ra                        
/* 00E18 80A4F138 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000


