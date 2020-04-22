.late_rodata
glabel D_808BE45C
    .float 0.4

glabel D_808BE460
 .word 0x3EA8F5C3
glabel D_808BE464
    .float 0.05

glabel D_808BE468
    .float 0.05

glabel D_808BE46C
 .word 0xBE99999A

.text
glabel BgVbSima_Update
/* 00164 808BDEC4 27BDFF10 */  addiu   $sp, $sp, 0xFF10           ## $sp = FFFFFF10
/* 00168 808BDEC8 AFBF007C */  sw      $ra, 0x007C($sp)           
/* 0016C 808BDECC AFB70078 */  sw      $s7, 0x0078($sp)           
/* 00170 808BDED0 AFB60074 */  sw      $s6, 0x0074($sp)           
/* 00174 808BDED4 AFB50070 */  sw      $s5, 0x0070($sp)           
/* 00178 808BDED8 AFB4006C */  sw      $s4, 0x006C($sp)           
/* 0017C 808BDEDC AFB30068 */  sw      $s3, 0x0068($sp)           
/* 00180 808BDEE0 AFB20064 */  sw      $s2, 0x0064($sp)           
/* 00184 808BDEE4 AFB10060 */  sw      $s1, 0x0060($sp)           
/* 00188 808BDEE8 AFB0005C */  sw      $s0, 0x005C($sp)           
/* 0018C 808BDEEC F7BE0050 */  sdc1    $f30, 0x0050($sp)          
/* 00190 808BDEF0 F7BC0048 */  sdc1    $f28, 0x0048($sp)          
/* 00194 808BDEF4 F7BA0040 */  sdc1    $f26, 0x0040($sp)          
/* 00198 808BDEF8 F7B80038 */  sdc1    $f24, 0x0038($sp)          
/* 0019C 808BDEFC F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 001A0 808BDF00 F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 001A4 808BDF04 848E0174 */  lh      $t6, 0x0174($a0)           ## 00000174
/* 001A8 808BDF08 0080B025 */  or      $s6, $a0, $zero            ## $s6 = 00000000
/* 001AC 808BDF0C 8C900118 */  lw      $s0, 0x0118($a0)           ## 00000118
/* 001B0 808BDF10 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 001B4 808BDF14 A48F0174 */  sh      $t7, 0x0174($a0)           ## 00000174
/* 001B8 808BDF18 00A0B825 */  or      $s7, $a1, $zero            ## $s7 = 00000000
/* 001BC 808BDF1C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001C0 808BDF20 3C050001 */  lui     $a1, 0x0001                ## $a1 = 00010000
/* 001C4 808BDF24 00B72821 */  addu    $a1, $a1, $s7              
/* 001C8 808BDF28 0C00B337 */  jal     Flags_GetClear
              
/* 001CC 808BDF2C 80A51CBC */  lb      $a1, 0x1CBC($a1)           ## 00011CBC
/* 001D0 808BDF30 544000EC */  bnel    $v0, $zero, .L808BE2E4     
/* 001D4 808BDF34 8FBF007C */  lw      $ra, 0x007C($sp)           
/* 001D8 808BDF38 920202D6 */  lbu     $v0, 0x02D6($s0)           ## 000002D6
/* 001DC 808BDF3C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 001E0 808BDF40 26C40028 */  addiu   $a0, $s6, 0x0028           ## $a0 = 00000028
/* 001E4 808BDF44 1441003C */  bne     $v0, $at, .L808BE038       
/* 001E8 808BDF48 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 001EC 808BDF4C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 001F0 808BDF50 3C05C47A */  lui     $a1, 0xC47A                ## $a1 = C47A0000
/* 001F4 808BDF54 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 001F8 808BDF58 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 001FC 808BDF5C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00200 808BDF60 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00204 808BDF64 86C40174 */  lh      $a0, 0x0174($s6)           ## 00000174
/* 00208 808BDF68 000423C0 */  sll     $a0, $a0, 15               
/* 0020C 808BDF6C 00042400 */  sll     $a0, $a0, 16               
/* 00210 808BDF70 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00214 808BDF74 00042403 */  sra     $a0, $a0, 16               
/* 00218 808BDF78 86C40174 */  lh      $a0, 0x0174($s6)           ## 00000174
/* 0021C 808BDF7C 46000200 */  add.s   $f8, $f0, $f0              
/* 00220 808BDF80 C6C6002C */  lwc1    $f6, 0x002C($s6)           ## 0000002C
/* 00224 808BDF84 00800821 */  addu    $at, $a0, $zero            
/* 00228 808BDF88 000420C0 */  sll     $a0, $a0,  3               
/* 0022C 808BDF8C 46083280 */  add.s   $f10, $f6, $f8             
/* 00230 808BDF90 00812023 */  subu    $a0, $a0, $at              
/* 00234 808BDF94 00042300 */  sll     $a0, $a0, 12               
/* 00238 808BDF98 00042400 */  sll     $a0, $a0, 16               
/* 0023C 808BDF9C E6CA002C */  swc1    $f10, 0x002C($s6)          ## 0000002C
/* 00240 808BDFA0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00244 808BDFA4 00042403 */  sra     $a0, $a0, 16               
/* 00248 808BDFA8 4600040D */  trunc.w.s $f16, $f0                  
/* 0024C 808BDFAC 24110037 */  addiu   $s1, $zero, 0x0037         ## $s1 = 00000037
/* 00250 808BDFB0 86C40174 */  lh      $a0, 0x0174($s6)           ## 00000174
/* 00254 808BDFB4 44198000 */  mfc1    $t9, $f16                  
/* 00258 808BDFB8 00800821 */  addu    $at, $a0, $zero            
/* 0025C 808BDFBC 00042080 */  sll     $a0, $a0,  2               
/* 00260 808BDFC0 00194400 */  sll     $t0, $t9, 16               
/* 00264 808BDFC4 00084C03 */  sra     $t1, $t0, 16               
/* 00268 808BDFC8 01310019 */  multu   $t1, $s1                   
/* 0026C 808BDFCC 00812021 */  addu    $a0, $a0, $at              
/* 00270 808BDFD0 00042300 */  sll     $a0, $a0, 12               
/* 00274 808BDFD4 00042400 */  sll     $a0, $a0, 16               
/* 00278 808BDFD8 00042403 */  sra     $a0, $a0, 16               
/* 0027C 808BDFDC 00005012 */  mflo    $t2                        
/* 00280 808BDFE0 A6CA00B4 */  sh      $t2, 0x00B4($s6)           ## 000000B4
/* 00284 808BDFE4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00288 808BDFE8 00000000 */  nop
/* 0028C 808BDFEC 4600048D */  trunc.w.s $f18, $f0                  
/* 00290 808BDFF0 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 00294 808BDFF4 3C188013 */  lui     $t8, %hi(D_801333E8)
/* 00298 808BDFF8 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 0029C 808BDFFC 440C9000 */  mfc1    $t4, $f18                  
/* 002A0 808BE000 271833E8 */  addiu   $t8, %lo(D_801333E8)
/* 002A4 808BE004 2404205C */  addiu   $a0, $zero, 0x205C         ## $a0 = 0000205C
/* 002A8 808BE008 000C6C00 */  sll     $t5, $t4, 16               
/* 002AC 808BE00C 000D7403 */  sra     $t6, $t5, 16               
/* 002B0 808BE010 01D10019 */  multu   $t6, $s1                   
/* 002B4 808BE014 26C500E4 */  addiu   $a1, $s6, 0x00E4           ## $a1 = 000000E4
/* 002B8 808BE018 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 002BC 808BE01C 00007812 */  mflo    $t7                        
/* 002C0 808BE020 A6CF00B8 */  sh      $t7, 0x00B8($s6)           ## 000000B8
/* 002C4 808BE024 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 002C8 808BE028 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 002CC 808BE02C AFA70010 */  sw      $a3, 0x0010($sp)           
/* 002D0 808BE030 10000007 */  beq     $zero, $zero, .L808BE050   
/* 002D4 808BE034 920202D6 */  lbu     $v0, 0x02D6($s0)           ## 000002D6
.L808BE038:
/* 002D8 808BE038 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 002DC 808BE03C 14610004 */  bne     $v1, $at, .L808BE050       
/* 002E0 808BE040 00000000 */  nop
/* 002E4 808BE044 0C00B55C */  jal     Actor_Kill
              
/* 002E8 808BE048 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 002EC 808BE04C 920202D6 */  lbu     $v0, 0x02D6($s0)           ## 000002D6
.L808BE050:
/* 002F0 808BE050 104000A3 */  beq     $v0, $zero, .L808BE2E0     
/* 002F4 808BE054 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
/* 002F8 808BE058 3C01808C */  lui     $at, %hi(D_808BE45C)       ## $at = 808C0000
/* 002FC 808BE05C C43EE45C */  lwc1    $f30, %lo(D_808BE45C)($at) 
/* 00300 808BE060 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00304 808BE064 4481E000 */  mtc1    $at, $f28                  ## $f28 = 5.00
/* 00308 808BE068 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 0030C 808BE06C 4481B000 */  mtc1    $at, $f22                  ## $f22 = 60.00
/* 00310 808BE070 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00314 808BE074 4481A000 */  mtc1    $at, $f20                  ## $f20 = 0.50
/* 00318 808BE078 26111970 */  addiu   $s1, $s0, 0x1970           ## $s1 = 00001970
/* 0031C 808BE07C 27B40090 */  addiu   $s4, $sp, 0x0090           ## $s4 = FFFFFFA0
/* 00320 808BE080 27B3009C */  addiu   $s3, $sp, 0x009C           ## $s3 = FFFFFFAC
/* 00324 808BE084 27B200A8 */  addiu   $s2, $sp, 0x00A8           ## $s2 = FFFFFFB8
.L808BE088:
/* 00328 808BE088 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0032C 808BE08C 00000000 */  nop
/* 00330 808BE090 3C01808C */  lui     $at, %hi(D_808BE460)       ## $at = 808C0000
/* 00334 808BE094 C424E460 */  lwc1    $f4, %lo(D_808BE460)($at)  
/* 00338 808BE098 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 0033C 808BE09C 4604003C */  c.lt.s  $f0, $f4                   
/* 00340 808BE0A0 00000000 */  nop
/* 00344 808BE0A4 4502000A */  bc1fl   .L808BE0D0                 
/* 00348 808BE0A8 4481D000 */  mtc1    $at, $f26                  ## $f26 = 80.00
/* 0034C 808BE0AC 3C01C2A0 */  lui     $at, 0xC2A0                ## $at = C2A00000
/* 00350 808BE0B0 4481C000 */  mtc1    $at, $f24                  ## $f24 = -80.00
/* 00354 808BE0B4 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 00358 808BE0B8 44816000 */  mtc1    $at, $f12                  ## $f12 = 160.00
/* 0035C 808BE0BC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00360 808BE0C0 00000000 */  nop
/* 00364 808BE0C4 10000013 */  beq     $zero, $zero, .L808BE114   
/* 00368 808BE0C8 46000686 */  mov.s   $f26, $f0                  
/* 0036C 808BE0CC 4481D000 */  mtc1    $at, $f26                  ## $f26 = 0.00
.L808BE0D0:
/* 00370 808BE0D0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00374 808BE0D4 00000000 */  nop
/* 00378 808BE0D8 4614003C */  c.lt.s  $f0, $f20                  
/* 0037C 808BE0DC 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00380 808BE0E0 45020008 */  bc1fl   .L808BE104                 
/* 00384 808BE0E4 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 00388 808BE0E8 44813000 */  mtc1    $at, $f6                   ## $f6 = 160.00
/* 0038C 808BE0EC 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00390 808BE0F0 44814000 */  mtc1    $at, $f8                   ## $f8 = -1.00
/* 00394 808BE0F4 00000000 */  nop
/* 00398 808BE0F8 46083682 */  mul.s   $f26, $f6, $f8             
/* 0039C 808BE0FC 00000000 */  nop
/* 003A0 808BE100 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
.L808BE104:
/* 003A4 808BE104 44816000 */  mtc1    $at, $f12                  ## $f12 = 160.00
/* 003A8 808BE108 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 003AC 808BE10C 00000000 */  nop
/* 003B0 808BE110 46000606 */  mov.s   $f24, $f0                  
.L808BE114:
/* 003B4 808BE114 3C01808C */  lui     $at, %hi(D_808BE464)       ## $at = 808C0000
/* 003B8 808BE118 C42AE464 */  lwc1    $f10, %lo(D_808BE464)($at) 
/* 003BC 808BE11C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 003C0 808BE120 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 003C4 808BE124 460AC402 */  mul.s   $f16, $f24, $f10           
/* 003C8 808BE128 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 003CC 808BE12C E7B000CC */  swc1    $f16, 0x00CC($sp)          
/* 003D0 808BE130 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 003D4 808BE134 44819000 */  mtc1    $at, $f18                  ## $f18 = 3.00
/* 003D8 808BE138 3C01808C */  lui     $at, %hi(D_808BE468)       ## $at = 808C0000
/* 003DC 808BE13C C426E468 */  lwc1    $f6, %lo(D_808BE468)($at)  
/* 003E0 808BE140 46120100 */  add.s   $f4, $f0, $f18             
/* 003E4 808BE144 3C01808C */  lui     $at, %hi(D_808BE46C)       ## $at = 808C0000
/* 003E8 808BE148 4606D202 */  mul.s   $f8, $f26, $f6             
/* 003EC 808BE14C C42AE46C */  lwc1    $f10, %lo(D_808BE46C)($at) 
/* 003F0 808BE150 C7B000CC */  lwc1    $f16, 0x00CC($sp)          
/* 003F4 808BE154 E7A400D0 */  swc1    $f4, 0x00D0($sp)           
/* 003F8 808BE158 E7AA00C4 */  swc1    $f10, 0x00C4($sp)          
/* 003FC 808BE15C E7B000C0 */  swc1    $f16, 0x00C0($sp)          
/* 00400 808BE160 3C01C2A0 */  lui     $at, 0xC2A0                ## $at = C2A00000
/* 00404 808BE164 E7A800D4 */  swc1    $f8, 0x00D4($sp)           
/* 00408 808BE168 C7B200D4 */  lwc1    $f18, 0x00D4($sp)          
/* 0040C 808BE16C 44814000 */  mtc1    $at, $f8                   ## $f8 = -80.00
/* 00410 808BE170 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00414 808BE174 E7B200C8 */  swc1    $f18, 0x00C8($sp)          
/* 00418 808BE178 C6C40024 */  lwc1    $f4, 0x0024($s6)           ## 00000024
/* 0041C 808BE17C E7A800B8 */  swc1    $f8, 0x00B8($sp)           
/* 00420 808BE180 44816000 */  mtc1    $at, $f12                  ## $f12 = 100.00
/* 00424 808BE184 46182180 */  add.s   $f6, $f4, $f24             
/* 00428 808BE188 E7A600B4 */  swc1    $f6, 0x00B4($sp)           
/* 0042C 808BE18C C6CA002C */  lwc1    $f10, 0x002C($s6)          ## 0000002C
/* 00430 808BE190 461A5400 */  add.s   $f16, $f10, $f26           
/* 00434 808BE194 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00438 808BE198 E7B000BC */  swc1    $f16, 0x00BC($sp)          
/* 0043C 808BE19C 4600048D */  trunc.w.s $f18, $f0                  
/* 00440 808BE1A0 3C19808C */  lui     $t9, %hi(D_808BE414)       ## $t9 = 808C0000
/* 00444 808BE1A4 3C08808C */  lui     $t0, %hi(D_808BE418)       ## $t0 = 808C0000
/* 00448 808BE1A8 2508E418 */  addiu   $t0, $t0, %lo(D_808BE418)  ## $t0 = 808BE418
/* 0044C 808BE1AC 440A9000 */  mfc1    $t2, $f18                  
/* 00450 808BE1B0 2739E414 */  addiu   $t9, $t9, %lo(D_808BE414)  ## $t9 = 808BE414
/* 00454 808BE1B4 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 00458 808BE1B8 000A5C00 */  sll     $t3, $t2, 16               
/* 0045C 808BE1BC 000B6403 */  sra     $t4, $t3, 16               
/* 00460 808BE1C0 258D01F4 */  addiu   $t5, $t4, 0x01F4           ## $t5 = 000001F4
/* 00464 808BE1C4 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 00468 808BE1C8 AFAF0020 */  sw      $t7, 0x0020($sp)           
/* 0046C 808BE1CC AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 00470 808BE1D0 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 00474 808BE1D4 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00478 808BE1D8 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 0047C 808BE1DC 02E02025 */  or      $a0, $s7, $zero            ## $a0 = 00000000
/* 00480 808BE1E0 27A500B4 */  addiu   $a1, $sp, 0x00B4           ## $a1 = FFFFFFC4
/* 00484 808BE1E4 27A600CC */  addiu   $a2, $sp, 0x00CC           ## $a2 = FFFFFFDC
/* 00488 808BE1E8 0C00A0DB */  jal     func_8002836C              
/* 0048C 808BE1EC 27A700C0 */  addiu   $a3, $sp, 0x00C0           ## $a3 = FFFFFFD0
/* 00490 808BE1F0 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00494 808BE1F4 C7A400CC */  lwc1    $f4, 0x00CC($sp)           
.L808BE1F8:
/* 00498 808BE1F8 4600E306 */  mov.s   $f12, $f28                 
/* 0049C 808BE1FC 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 004A0 808BE200 E7A4009C */  swc1    $f4, 0x009C($sp)           
/* 004A4 808BE204 C7A600D4 */  lwc1    $f6, 0x00D4($sp)           
/* 004A8 808BE208 E7A000A0 */  swc1    $f0, 0x00A0($sp)           
/* 004AC 808BE20C E7BE0094 */  swc1    $f30, 0x0094($sp)          
/* 004B0 808BE210 4600A306 */  mov.s   $f12, $f20                 
/* 004B4 808BE214 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 004B8 808BE218 E7A600A4 */  swc1    $f6, 0x00A4($sp)           
/* 004BC 808BE21C E7A00090 */  swc1    $f0, 0x0090($sp)           
/* 004C0 808BE220 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 004C4 808BE224 4600A306 */  mov.s   $f12, $f20                 
/* 004C8 808BE228 E7A00098 */  swc1    $f0, 0x0098($sp)           
/* 004CC 808BE22C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 004D0 808BE230 4600B306 */  mov.s   $f12, $f22                 
/* 004D4 808BE234 C7A800B4 */  lwc1    $f8, 0x00B4($sp)           
/* 004D8 808BE238 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 004DC 808BE23C 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 004E0 808BE240 46080280 */  add.s   $f10, $f0, $f8             
/* 004E4 808BE244 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 004E8 808BE248 E7AA00A8 */  swc1    $f10, 0x00A8($sp)          
/* 004EC 808BE24C C7B000B8 */  lwc1    $f16, 0x00B8($sp)          
/* 004F0 808BE250 4600B306 */  mov.s   $f12, $f22                 
/* 004F4 808BE254 46100480 */  add.s   $f18, $f0, $f16            
/* 004F8 808BE258 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 004FC 808BE25C E7B200AC */  swc1    $f18, 0x00AC($sp)          
/* 00500 808BE260 C7A400BC */  lwc1    $f4, 0x00BC($sp)           
/* 00504 808BE264 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00508 808BE268 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 0050C 808BE26C 46040180 */  add.s   $f6, $f0, $f4              
/* 00510 808BE270 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00514 808BE274 E7A600B0 */  swc1    $f6, 0x00B0($sp)           
/* 00518 808BE278 4600020D */  trunc.w.s $f8, $f0                   
/* 0051C 808BE27C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00001970
/* 00520 808BE280 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFFB8
/* 00524 808BE284 02603025 */  or      $a2, $s3, $zero            ## $a2 = FFFFFFAC
/* 00528 808BE288 44194000 */  mfc1    $t9, $f8                   
/* 0052C 808BE28C 02803825 */  or      $a3, $s4, $zero            ## $a3 = FFFFFFA0
/* 00530 808BE290 00194400 */  sll     $t0, $t9, 16               
/* 00534 808BE294 00084C03 */  sra     $t1, $t0, 16               
/* 00538 808BE298 252A0008 */  addiu   $t2, $t1, 0x0008           ## $t2 = 00000008
/* 0053C 808BE29C 448A5000 */  mtc1    $t2, $f10                  ## $f10 = 0.00
/* 00540 808BE2A0 00000000 */  nop
/* 00544 808BE2A4 46805420 */  cvt.s.w $f16, $f10                 
/* 00548 808BE2A8 0C22F77E */  jal     func_808BDDF8              
/* 0054C 808BE2AC E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 00550 808BE2B0 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00554 808BE2B4 00108400 */  sll     $s0, $s0, 16               
/* 00558 808BE2B8 00108403 */  sra     $s0, $s0, 16               
/* 0055C 808BE2BC 2A010003 */  slti    $at, $s0, 0x0003           
/* 00560 808BE2C0 5420FFCD */  bnel    $at, $zero, .L808BE1F8     
/* 00564 808BE2C4 C7A400CC */  lwc1    $f4, 0x00CC($sp)           
/* 00568 808BE2C8 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000001
/* 0056C 808BE2CC 0015AC00 */  sll     $s5, $s5, 16               
/* 00570 808BE2D0 0015AC03 */  sra     $s5, $s5, 16               
/* 00574 808BE2D4 2AA1000A */  slti    $at, $s5, 0x000A           
/* 00578 808BE2D8 1420FF6B */  bne     $at, $zero, .L808BE088     
/* 0057C 808BE2DC 00000000 */  nop
.L808BE2E0:
/* 00580 808BE2E0 8FBF007C */  lw      $ra, 0x007C($sp)           
.L808BE2E4:
/* 00584 808BE2E4 D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 00588 808BE2E8 D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 0058C 808BE2EC D7B80038 */  ldc1    $f24, 0x0038($sp)          
/* 00590 808BE2F0 D7BA0040 */  ldc1    $f26, 0x0040($sp)          
/* 00594 808BE2F4 D7BC0048 */  ldc1    $f28, 0x0048($sp)          
/* 00598 808BE2F8 D7BE0050 */  ldc1    $f30, 0x0050($sp)          
/* 0059C 808BE2FC 8FB0005C */  lw      $s0, 0x005C($sp)           
/* 005A0 808BE300 8FB10060 */  lw      $s1, 0x0060($sp)           
/* 005A4 808BE304 8FB20064 */  lw      $s2, 0x0064($sp)           
/* 005A8 808BE308 8FB30068 */  lw      $s3, 0x0068($sp)           
/* 005AC 808BE30C 8FB4006C */  lw      $s4, 0x006C($sp)           
/* 005B0 808BE310 8FB50070 */  lw      $s5, 0x0070($sp)           
/* 005B4 808BE314 8FB60074 */  lw      $s6, 0x0074($sp)           
/* 005B8 808BE318 8FB70078 */  lw      $s7, 0x0078($sp)           
/* 005BC 808BE31C 03E00008 */  jr      $ra                        
/* 005C0 808BE320 27BD00F0 */  addiu   $sp, $sp, 0x00F0           ## $sp = 00000000
