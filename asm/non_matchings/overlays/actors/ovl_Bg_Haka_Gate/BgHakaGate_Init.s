glabel BgHakaGate_Init
/* 00000 8087BDF0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 8087BDF4 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00008 8087BDF8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0000C 8087BDFC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00010 8087BE00 3C058088 */  lui     $a1, %hi(D_8087CCFC)       ## $a1 = 80880000
/* 00014 8087BE04 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 8087BE08 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 0001C 8087BE0C 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 8087BE10 24A5CCFC */  addiu   $a1, $a1, %lo(D_8087CCFC)  ## $a1 = 8087CCFC
/* 00024 8087BE14 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00028 8087BE18 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 0002C 8087BE1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00030 8087BE20 000EC203 */  sra     $t8, $t6,  8               
/* 00034 8087BE24 332800FF */  andi    $t0, $t9, 0x00FF           ## $t0 = 00000000
/* 00038 8087BE28 A2180168 */  sb      $t8, 0x0168($s0)           ## 00000168
/* 0003C 8087BE2C A608001C */  sh      $t0, 0x001C($s0)           ## 0000001C
/* 00040 8087BE30 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00044 8087BE34 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00048 8087BE38 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 0004C 8087BE3C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00050 8087BE40 3C098088 */  lui     $t1, %hi(D_8087CCD0)       ## $t1 = 80880000
/* 00054 8087BE44 14410051 */  bne     $v0, $at, .L8087BF8C       
/* 00058 8087BE48 00000000 */  nop
/* 0005C 8087BE4C 8529CCD0 */  lh      $t1, %lo(D_8087CCD0)($t1)  
/* 00060 8087BE50 24010100 */  addiu   $at, $zero, 0x0100         ## $at = 00000100
/* 00064 8087BE54 3C0A8088 */  lui     $t2, %hi(func_8087C794)    ## $t2 = 80880000
/* 00068 8087BE58 11210003 */  beq     $t1, $at, .L8087BE68       
/* 0006C 8087BE5C 254AC794 */  addiu   $t2, $t2, %lo(func_8087C794) ## $t2 = 8087C794
/* 00070 8087BE60 10000037 */  beq     $zero, $zero, .L8087BF40   
/* 00074 8087BE64 AE0A0164 */  sw      $t2, 0x0164($s0)           ## 00000164
.L8087BE68:
/* 00078 8087BE68 860200B6 */  lh      $v0, 0x00B6($s0)           ## 000000B6
/* 0007C 8087BE6C 3C088088 */  lui     $t0, %hi(func_8087C794)    ## $t0 = 80880000
/* 00080 8087BE70 2508C794 */  addiu   $t0, $t0, %lo(func_8087C794) ## $t0 = 8087C794
/* 00084 8087BE74 04400003 */  bltz    $v0, .L8087BE84            
/* 00088 8087BE78 00021823 */  subu    $v1, $zero, $v0            
/* 0008C 8087BE7C 10000001 */  beq     $zero, $zero, .L8087BE84   
/* 00090 8087BE80 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L8087BE84:
/* 00094 8087BE84 28614000 */  slti    $at, $v1, 0x4000           
/* 00098 8087BE88 5020002D */  beql    $at, $zero, .L8087BF40     
/* 0009C 8087BE8C AE080164 */  sw      $t0, 0x0164($s0)           ## 00000164
/* 000A0 8087BE90 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 000A4 8087BE94 00000000 */  nop
/* 000A8 8087BE98 3C038088 */  lui     $v1, %hi(D_8087CCD4)       ## $v1 = 80880000
/* 000AC 8087BE9C 2463CCD4 */  addiu   $v1, $v1, %lo(D_8087CCD4)  ## $v1 = 8087CCD4
/* 000B0 8087BEA0 90620000 */  lbu     $v0, 0x0000($v1)           ## 8087CCD4
/* 000B4 8087BEA4 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 000B8 8087BEA8 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 000BC 8087BEAC 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 000C0 8087BEB0 3C198088 */  lui     $t9, %hi(func_8087C794)    ## $t9 = 80880000
/* 000C4 8087BEB4 46040182 */  mul.s   $f6, $f0, $f4              
/* 000C8 8087BEB8 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 000CC 8087BEBC 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 000D0 8087BEC0 2739C794 */  addiu   $t9, $t9, %lo(func_8087C794) ## $t9 = 8087C794
/* 000D4 8087BEC4 24580001 */  addiu   $t8, $v0, 0x0001           ## $t8 = 00000001
/* 000D8 8087BEC8 04410004 */  bgez    $v0, .L8087BEDC            
/* 000DC 8087BECC 468042A0 */  cvt.s.w $f10, $f8                  
/* 000E0 8087BED0 44818000 */  mtc1    $at, $f16                  ## $f16 = 4294967296.00
/* 000E4 8087BED4 00000000 */  nop
/* 000E8 8087BED8 46105280 */  add.s   $f10, $f10, $f16           
.L8087BEDC:
/* 000EC 8087BEDC 460A303C */  c.lt.s  $f6, $f10                  
/* 000F0 8087BEE0 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 000F4 8087BEE4 45020013 */  bc1fl   .L8087BF34                 
/* 000F8 8087BEE8 A0780000 */  sb      $t8, 0x0000($v1)           ## 8087CCD4
/* 000FC 8087BEEC 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
/* 00100 8087BEF0 A60B0170 */  sh      $t3, 0x0170($s0)           ## 00000170
/* 00104 8087BEF4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00108 8087BEF8 01816821 */  addu    $t5, $t4, $at              
/* 0010C 8087BEFC 3C018088 */  lui     $at, %hi(D_8087CCD0)       ## $at = 80880000
/* 00110 8087BF00 A42DCCD0 */  sh      $t5, %lo(D_8087CCD0)($at)  
/* 00114 8087BF04 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00118 8087BF08 92050168 */  lbu     $a1, 0x0168($s0)           ## 00000168
/* 0011C 8087BF0C 10400005 */  beq     $v0, $zero, .L8087BF24     
/* 00120 8087BF10 3C0F8088 */  lui     $t7, %hi(func_8087C73C)    ## $t7 = 80880000
/* 00124 8087BF14 3C0E8088 */  lui     $t6, %hi(func_8087C114)    ## $t6 = 80880000
/* 00128 8087BF18 25CEC114 */  addiu   $t6, $t6, %lo(func_8087C114) ## $t6 = 8087C114
/* 0012C 8087BF1C 10000008 */  beq     $zero, $zero, .L8087BF40   
/* 00130 8087BF20 AE0E0164 */  sw      $t6, 0x0164($s0)           ## 00000164
.L8087BF24:
/* 00134 8087BF24 25EFC73C */  addiu   $t7, $t7, %lo(func_8087C73C) ## $t7 = 8087C73C
/* 00138 8087BF28 10000005 */  beq     $zero, $zero, .L8087BF40   
/* 0013C 8087BF2C AE0F0164 */  sw      $t7, 0x0164($s0)           ## 00000164
/* 00140 8087BF30 A0780000 */  sb      $t8, 0x0000($v1)           ## 00000000
.L8087BF34:
/* 00144 8087BF34 10000002 */  beq     $zero, $zero, .L8087BF40   
/* 00148 8087BF38 AE190164 */  sw      $t9, 0x0164($s0)           ## 00000164
/* 0014C 8087BF3C AE080164 */  sw      $t0, 0x0164($s0)           ## 00000164
.L8087BF40:
/* 00150 8087BF40 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00154 8087BF44 00000000 */  nop
/* 00158 8087BF48 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0015C 8087BF4C 44819000 */  mtc1    $at, $f18                  ## $f18 = 20.00
/* 00160 8087BF50 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
/* 00164 8087BF54 92050168 */  lbu     $a1, 0x0168($s0)           ## 00000168
/* 00168 8087BF58 46120102 */  mul.s   $f4, $f0, $f18             
/* 0016C 8087BF5C 356C0010 */  ori     $t4, $t3, 0x0010           ## $t4 = 00000010
/* 00170 8087BF60 AE0C0004 */  sw      $t4, 0x0004($s0)           ## 00000004
/* 00174 8087BF64 4600220D */  trunc.w.s $f8, $f4                   
/* 00178 8087BF68 440A4000 */  mfc1    $t2, $f8                   
/* 0017C 8087BF6C 00000000 */  nop
/* 00180 8087BF70 A60A0172 */  sh      $t2, 0x0172($s0)           ## 00000172
/* 00184 8087BF74 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00188 8087BF78 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0018C 8087BF7C 1040004A */  beq     $v0, $zero, .L8087C0A8     
/* 00190 8087BF80 240D015E */  addiu   $t5, $zero, 0x015E         ## $t5 = 0000015E
/* 00194 8087BF84 10000048 */  beq     $zero, $zero, .L8087C0A8   
/* 00198 8087BF88 A60D016E */  sh      $t5, 0x016E($s0)           ## 0000016E
.L8087BF8C:
/* 0019C 8087BF8C 14400015 */  bne     $v0, $zero, .L8087BFE4     
/* 001A0 8087BF90 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 001A4 8087BF94 3C040601 */  lui     $a0, %hi(D_060131C4)                ## $a0 = 06010000
/* 001A8 8087BF98 248431C4 */  addiu   $a0, $a0, %lo(D_060131C4)           ## $a0 = 060131C4
/* 001AC 8087BF9C 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 001B0 8087BFA0 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 001B4 8087BFA4 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 001B8 8087BFA8 A600016A */  sh      $zero, 0x016A($s0)         ## 0000016A
/* 001BC 8087BFAC 3C018088 */  lui     $at, %hi(D_8087CCD8)       ## $at = 80880000
/* 001C0 8087BFB0 E430CCD8 */  swc1    $f16, %lo(D_8087CCD8)($at) 
/* 001C4 8087BFB4 92050168 */  lbu     $a1, 0x0168($s0)           ## 00000168
/* 001C8 8087BFB8 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 001CC 8087BFBC 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 001D0 8087BFC0 10400005 */  beq     $v0, $zero, .L8087BFD8     
/* 001D4 8087BFC4 3C0F8088 */  lui     $t7, %hi(func_8087C158)    ## $t7 = 80880000
/* 001D8 8087BFC8 3C0E8088 */  lui     $t6, %hi(func_8087C120)    ## $t6 = 80880000
/* 001DC 8087BFCC 25CEC120 */  addiu   $t6, $t6, %lo(func_8087C120) ## $t6 = 8087C120
/* 001E0 8087BFD0 1000002F */  beq     $zero, $zero, .L8087C090   
/* 001E4 8087BFD4 AE0E0164 */  sw      $t6, 0x0164($s0)           ## 00000164
.L8087BFD8:
/* 001E8 8087BFD8 25EFC158 */  addiu   $t7, $t7, %lo(func_8087C158) ## $t7 = 8087C158
/* 001EC 8087BFDC 1000002C */  beq     $zero, $zero, .L8087C090   
/* 001F0 8087BFE0 AE0F0164 */  sw      $t7, 0x0164($s0)           ## 00000164
.L8087BFE4:
/* 001F4 8087BFE4 14410011 */  bne     $v0, $at, .L8087C02C       
/* 001F8 8087BFE8 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 001FC 8087BFEC 3C040601 */  lui     $a0, %hi(D_06010E10)                ## $a0 = 06010000
/* 00200 8087BFF0 24840E10 */  addiu   $a0, $a0, %lo(D_06010E10)           ## $a0 = 06010E10
/* 00204 8087BFF4 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00208 8087BFF8 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 0020C 8087BFFC 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00210 8087C000 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00214 8087C004 92050168 */  lbu     $a1, 0x0168($s0)           ## 00000168
/* 00218 8087C008 10400005 */  beq     $v0, $zero, .L8087C020     
/* 0021C 8087C00C 3C198088 */  lui     $t9, %hi(func_8087C454)    ## $t9 = 80880000
/* 00220 8087C010 3C188088 */  lui     $t8, %hi(func_8087C114)    ## $t8 = 80880000
/* 00224 8087C014 2718C114 */  addiu   $t8, $t8, %lo(func_8087C114) ## $t8 = 8087C114
/* 00228 8087C018 1000001D */  beq     $zero, $zero, .L8087C090   
/* 0022C 8087C01C AE180164 */  sw      $t8, 0x0164($s0)           ## 00000164
.L8087C020:
/* 00230 8087C020 2739C454 */  addiu   $t9, $t9, %lo(func_8087C454) ## $t9 = 8087C454
/* 00234 8087C024 1000001A */  beq     $zero, $zero, .L8087C090   
/* 00238 8087C028 AE190164 */  sw      $t9, 0x0164($s0)           ## 00000164
.L8087C02C:
/* 0023C 8087C02C 2484A938 */  addiu   $a0, $a0, 0xA938           ## $a0 = FFFFA938
/* 00240 8087C030 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00244 8087C034 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 00248 8087C038 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0024C 8087C03C 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00250 8087C040 92050168 */  lbu     $a1, 0x0168($s0)           ## 00000168
/* 00254 8087C044 10400009 */  beq     $v0, $zero, .L8087C06C     
/* 00258 8087C048 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 0025C 8087C04C C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00260 8087C050 44815000 */  mtc1    $at, $f10                  ## $f10 = 80.00
/* 00264 8087C054 3C088088 */  lui     $t0, %hi(func_8087C114)    ## $t0 = 80880000
/* 00268 8087C058 2508C114 */  addiu   $t0, $t0, %lo(func_8087C114) ## $t0 = 8087C114
/* 0026C 8087C05C 460A3480 */  add.s   $f18, $f6, $f10            
/* 00270 8087C060 AE080164 */  sw      $t0, 0x0164($s0)           ## 00000164
/* 00274 8087C064 1000000A */  beq     $zero, $zero, .L8087C090   
/* 00278 8087C068 E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
.L8087C06C:
/* 0027C 8087C06C 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 00280 8087C070 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00284 8087C074 3C0541F0 */  lui     $a1, 0x41F0                ## $a1 = 41F00000
/* 00288 8087C078 352A0010 */  ori     $t2, $t1, 0x0010           ## $t2 = 00000010
/* 0028C 8087C07C 0C00B56E */  jal     Actor_SetHeight
              
/* 00290 8087C080 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 00294 8087C084 3C0B8088 */  lui     $t3, %hi(func_8087C65C)    ## $t3 = 80880000
/* 00298 8087C088 256BC65C */  addiu   $t3, $t3, %lo(func_8087C65C) ## $t3 = 8087C65C
/* 0029C 8087C08C AE0B0164 */  sw      $t3, 0x0164($s0)           ## 00000164
.L8087C090:
/* 002A0 8087C090 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 002A4 8087C094 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 002A8 8087C098 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 002AC 8087C09C 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 002B0 8087C0A0 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 002B4 8087C0A4 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
.L8087C0A8:
/* 002B8 8087C0A8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 002BC 8087C0AC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 002C0 8087C0B0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 002C4 8087C0B4 03E00008 */  jr      $ra                        
/* 002C8 8087C0B8 00000000 */  nop
