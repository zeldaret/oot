.rdata
glabel D_80899560
    .asciz "Error 攻撃方法が分からない(%s %d)\n"
    .balign 4

glabel D_80899584
    .asciz "../z_bg_jya_ironobj.c"
    .balign 4

glabel D_8089959C
    .asciz "¢ attack_type(%d)\n"
    .balign 4

.late_rodata
glabel D_80899600
    .float 0.1

glabel D_80899604
    .float 0.8

glabel D_80899608
 .word 0x3D042108
glabel D_8089960C
 .word 0x3E851EB8

.text
glabel func_80898920
/* 00080 80898920 27BDFF10 */  addiu   $sp, $sp, 0xFF10           ## $sp = FFFFFF10
/* 00084 80898924 AFBF0094 */  sw      $ra, 0x0094($sp)           
/* 00088 80898928 AFB60090 */  sw      $s6, 0x0090($sp)           
/* 0008C 8089892C AFB5008C */  sw      $s5, 0x008C($sp)           
/* 00090 80898930 AFB40088 */  sw      $s4, 0x0088($sp)           
/* 00094 80898934 AFB30084 */  sw      $s3, 0x0084($sp)           
/* 00098 80898938 AFB20080 */  sw      $s2, 0x0080($sp)           
/* 0009C 8089893C AFB1007C */  sw      $s1, 0x007C($sp)           
/* 000A0 80898940 AFB00078 */  sw      $s0, 0x0078($sp)           
/* 000A4 80898944 F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 000A8 80898948 F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 000AC 8089894C F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 000B0 80898950 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 000B4 80898954 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 000B8 80898958 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 000BC 8089895C 80C702FF */  lb      $a3, 0x02FF($a2)           ## 000002FF
/* 000C0 80898960 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 000C4 80898964 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 000C8 80898968 18E00004 */  blez    $a3, .L8089897C            
/* 000CC 8089896C 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 000D0 80898970 28E10004 */  slti    $at, $a3, 0x0004           
/* 000D4 80898974 14200009 */  bne     $at, $zero, .L8089899C     
/* 000D8 80898978 3C04808A */  lui     $a0, %hi(D_8089959C)       ## $a0 = 808A0000
.L8089897C:
/* 000DC 8089897C 3C04808A */  lui     $a0, %hi(D_80899560)       ## $a0 = 808A0000
/* 000E0 80898980 3C05808A */  lui     $a1, %hi(D_80899584)       ## $a1 = 808A0000
/* 000E4 80898984 24A59584 */  addiu   $a1, $a1, %lo(D_80899584)  ## $a1 = 80899584
/* 000E8 80898988 24849560 */  addiu   $a0, $a0, %lo(D_80899560)  ## $a0 = 80899560
/* 000EC 8089898C 0C00084C */  jal     osSyncPrintf
              
/* 000F0 80898990 240600E9 */  addiu   $a2, $zero, 0x00E9         ## $a2 = 000000E9
/* 000F4 80898994 100000F8 */  beq     $zero, $zero, .L80898D78   
/* 000F8 80898998 8FBF0094 */  lw      $ra, 0x0094($sp)           
.L8089899C:
/* 000FC 8089899C 2484959C */  addiu   $a0, $a0, %lo(D_8089959C)  ## $a0 = FFFF959C
/* 00100 808989A0 0C00084C */  jal     osSyncPrintf
              
/* 00104 808989A4 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00108 808989A8 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 0010C 808989AC 0C00B69E */  jal     Actor_WorldYawTowardActor              
/* 00110 808989B0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00114 808989B4 820E02FF */  lb      $t6, 0x02FF($s0)           ## 000002FF
/* 00118 808989B8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0011C 808989BC 4481F000 */  mtc1    $at, $f30                  ## $f30 = 10.00
/* 00120 808989C0 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00124 808989C4 3C18808A */  lui     $t8, %hi(D_808994AC+0x2A)       ## $t8 = 808A0000
/* 00128 808989C8 4481E000 */  mtc1    $at, $f28                  ## $f28 = 6.00
/* 0012C 808989CC 000E7840 */  sll     $t7, $t6,  1               
/* 00130 808989D0 030FC021 */  addu    $t8, $t8, $t7              
/* 00134 808989D4 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00138 808989D8 871894D6 */  lh      $t8, %lo(D_808994AC+0x2A)($t8)  
/* 0013C 808989DC 4481D000 */  mtc1    $at, $f26                  ## $f26 = 8.00
/* 00140 808989E0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00144 808989E4 4481C000 */  mtc1    $at, $f24                  ## $f24 = 20.00
/* 00148 808989E8 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 0014C 808989EC 0302B021 */  addu    $s6, $t8, $v0              
/* 00150 808989F0 0016B400 */  sll     $s6, $s6, 16               
/* 00154 808989F4 4481B000 */  mtc1    $at, $f22                  ## $f22 = 80.00
/* 00158 808989F8 0016B403 */  sra     $s6, $s6, 16               
/* 0015C 808989FC 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00160 80898A00 26B41C24 */  addiu   $s4, $s5, 0x1C24           ## $s4 = 00001C24
/* 00164 80898A04 24120008 */  addiu   $s2, $zero, 0x0008         ## $s2 = 00000008
.L80898A08:
/* 00168 80898A08 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 0016C 80898A0C 00000000 */  nop
/* 00170 80898A10 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00174 80898A14 46000506 */  mov.s   $f20, $f0                  
/* 00178 80898A18 4616A102 */  mul.s   $f4, $f20, $f22            
/* 0017C 80898A1C C6660028 */  lwc1    $f6, 0x0028($s3)           ## 00000028
/* 00180 80898A20 3C014680 */  lui     $at, 0x4680                ## $at = 46800000
/* 00184 80898A24 44819000 */  mtc1    $at, $f18                  ## $f18 = 16384.00
/* 00188 80898A28 8E670024 */  lw      $a3, 0x0024($s3)           ## 00000024
/* 0018C 80898A2C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00001C24
/* 00190 80898A30 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 00000000
/* 00194 80898A34 46062200 */  add.s   $f8, $f4, $f6              
/* 00198 80898A38 46120102 */  mul.s   $f4, $f0, $f18             
/* 0019C 80898A3C 2406018F */  addiu   $a2, $zero, 0x018F         ## $a2 = 0000018F
/* 001A0 80898A40 46184280 */  add.s   $f10, $f8, $f24            
/* 001A4 80898A44 4600218D */  trunc.w.s $f6, $f4                   
/* 001A8 80898A48 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 001AC 80898A4C C670002C */  lwc1    $f16, 0x002C($s3)          ## 0000002C
/* 001B0 80898A50 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 001B4 80898A54 44083000 */  mfc1    $t0, $f6                   
/* 001B8 80898A58 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 001BC 80898A5C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 001C0 80898A60 00084C00 */  sll     $t1, $t0, 16               
/* 001C4 80898A64 00095403 */  sra     $t2, $t1, 16               
/* 001C8 80898A68 01565821 */  addu    $t3, $t2, $s6              
/* 001CC 80898A6C 256CE000 */  addiu   $t4, $t3, 0xE000           ## $t4 = FFFFE000
/* 001D0 80898A70 AFAC001C */  sw      $t4, 0x001C($sp)           
/* 001D4 80898A74 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 001D8 80898A78 E7B00014 */  swc1    $f16, 0x0014($sp)          
/* 001DC 80898A7C 1040000D */  beq     $v0, $zero, .L80898AB4     
/* 001E0 80898A80 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 001E4 80898A84 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 001E8 80898A88 00000000 */  nop
/* 001EC 80898A8C 461A0202 */  mul.s   $f8, $f0, $f26             
/* 001F0 80898A90 3C014110 */  lui     $at, 0x4110                ## $at = 41100000
/* 001F4 80898A94 44815000 */  mtc1    $at, $f10                  ## $f10 = 9.00
/* 001F8 80898A98 00000000 */  nop
/* 001FC 80898A9C 460A4400 */  add.s   $f16, $f8, $f10            
/* 00200 80898AA0 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00204 80898AA4 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 00208 80898AA8 461E0482 */  mul.s   $f18, $f0, $f30            
/* 0020C 80898AAC 461C9100 */  add.s   $f4, $f18, $f28            
/* 00210 80898AB0 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
.L80898AB4:
/* 00214 80898AB4 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 00218 80898AB8 1632FFD3 */  bne     $s1, $s2, .L80898A08       
/* 0021C 80898ABC 00000000 */  nop
/* 00220 80898AC0 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00224 80898AC4 44814000 */  mtc1    $at, $f8                   ## $f8 = 150.00
/* 00228 80898AC8 C6660028 */  lwc1    $f6, 0x0028($s3)           ## 00000028
/* 0022C 80898ACC 8E670024 */  lw      $a3, 0x0024($s3)           ## 00000024
/* 00230 80898AD0 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00234 80898AD4 46083280 */  add.s   $f10, $f6, $f8             
/* 00238 80898AD8 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00001C24
/* 0023C 80898ADC 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 00000000
/* 00240 80898AE0 2406018F */  addiu   $a2, $zero, 0x018F         ## $a2 = 0000018F
/* 00244 80898AE4 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 00248 80898AE8 C670002C */  lwc1    $f16, 0x002C($s3)          ## 0000002C
/* 0024C 80898AEC AFAD0024 */  sw      $t5, 0x0024($sp)           
/* 00250 80898AF0 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00254 80898AF4 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00258 80898AF8 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 0025C 80898AFC 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00260 80898B00 E7B00014 */  swc1    $f16, 0x0014($sp)          
/* 00264 80898B04 C6720028 */  lwc1    $f18, 0x0028($s3)          ## 00000028
/* 00268 80898B08 8E670024 */  lw      $a3, 0x0024($s3)           ## 00000024
/* 0026C 80898B0C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00270 80898B10 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 00274 80898B14 C664002C */  lwc1    $f4, 0x002C($s3)           ## 0000002C
/* 00278 80898B18 AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 0027C 80898B1C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00280 80898B20 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00284 80898B24 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00288 80898B28 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00001C24
/* 0028C 80898B2C 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 00000000
/* 00290 80898B30 2406018F */  addiu   $a2, $zero, 0x018F         ## $a2 = 0000018F
/* 00294 80898B34 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00298 80898B38 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 0029C 80898B3C 00162400 */  sll     $a0, $s6, 16               
/* 002A0 80898B40 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 002A4 80898B44 00042403 */  sra     $a0, $a0, 16               
/* 002A8 80898B48 00162400 */  sll     $a0, $s6, 16               
/* 002AC 80898B4C E7A000BC */  swc1    $f0, 0x00BC($sp)           
/* 002B0 80898B50 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 002B4 80898B54 00042403 */  sra     $a0, $a0, 16               
/* 002B8 80898B58 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 002BC 80898B5C 4481C000 */  mtc1    $at, $f24                  ## $f24 = 3.00
/* 002C0 80898B60 E7A000C4 */  swc1    $f0, 0x00C4($sp)           
/* 002C4 80898B64 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 002C8 80898B68 27B600C8 */  addiu   $s6, $sp, 0x00C8           ## $s6 = FFFFFFD8
/* 002CC 80898B6C 27B400D4 */  addiu   $s4, $sp, 0x00D4           ## $s4 = FFFFFFE4
.L80898B70:
/* 002D0 80898B70 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 002D4 80898B74 00000000 */  nop
/* 002D8 80898B78 3C01808A */  lui     $at, %hi(D_80899600)       ## $at = 808A0000
/* 002DC 80898B7C C4269600 */  lwc1    $f6, %lo(D_80899600)($at)  
/* 002E0 80898B80 44928000 */  mtc1    $s2, $f16                  ## $f16 = 0.00
/* 002E4 80898B84 3C01808A */  lui     $at, %hi(D_80899604)       ## $at = 808A0000
/* 002E8 80898B88 4606003C */  c.lt.s  $f0, $f6                   
/* 002EC 80898B8C 468080A0 */  cvt.s.w $f2, $f16                  
/* 002F0 80898B90 45000003 */  bc1f    .L80898BA0                 
/* 002F4 80898B94 00000000 */  nop
/* 002F8 80898B98 10000009 */  beq     $zero, $zero, .L80898BC0   
/* 002FC 80898B9C 24110060 */  addiu   $s1, $zero, 0x0060         ## $s1 = 00000060
.L80898BA0:
/* 00300 80898BA0 C4289604 */  lwc1    $f8, %lo(D_80899604)($at)  
/* 00304 80898BA4 24110020 */  addiu   $s1, $zero, 0x0020         ## $s1 = 00000020
/* 00308 80898BA8 4608003C */  c.lt.s  $f0, $f8                   
/* 0030C 80898BAC 00000000 */  nop
/* 00310 80898BB0 45000003 */  bc1f    .L80898BC0                 
/* 00314 80898BB4 00000000 */  nop
/* 00318 80898BB8 10000001 */  beq     $zero, $zero, .L80898BC0   
/* 0031C 80898BBC 24110040 */  addiu   $s1, $zero, 0x0040         ## $s1 = 00000040
.L80898BC0:
/* 00320 80898BC0 3C01408C */  lui     $at, 0x408C                ## $at = 408C0000
/* 00324 80898BC4 44812000 */  mtc1    $at, $f4                   ## $f4 = 4.38
/* 00328 80898BC8 3C014178 */  lui     $at, 0x4178                ## $at = 41780000
/* 0032C 80898BCC C66A0024 */  lwc1    $f10, 0x0024($s3)          ## 00000024
/* 00330 80898BD0 46022182 */  mul.s   $f6, $f4, $f2              
/* 00334 80898BD4 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.50
/* 00338 80898BD8 E7AA00D4 */  swc1    $f10, 0x00D4($sp)          
/* 0033C 80898BDC C6720028 */  lwc1    $f18, 0x0028($s3)          ## 00000028
/* 00340 80898BE0 3C01808A */  lui     $at, %hi(D_80899608)       ## $at = 808A0000
/* 00344 80898BE4 46041001 */  sub.s   $f0, $f2, $f4              
/* 00348 80898BE8 461E3200 */  add.s   $f8, $f6, $f30             
/* 0034C 80898BEC C4269608 */  lwc1    $f6, %lo(D_80899608)($at)  
/* 00350 80898BF0 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00354 80898BF4 46000005 */  abs.s   $f0, $f0                   
/* 00358 80898BF8 46089280 */  add.s   $f10, $f18, $f8            
/* 0035C 80898BFC 46060482 */  mul.s   $f18, $f0, $f6             
/* 00360 80898C00 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 00364 80898C04 E7AA00D8 */  swc1    $f10, 0x00D8($sp)          
/* 00368 80898C08 C670002C */  lwc1    $f16, 0x002C($s3)          ## 0000002C
/* 0036C 80898C0C 46089580 */  add.s   $f22, $f18, $f8            
/* 00370 80898C10 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00374 80898C14 E7B000DC */  swc1    $f16, 0x00DC($sp)          
/* 00378 80898C18 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 0037C 80898C1C 46000506 */  mov.s   $f20, $f0                  
/* 00380 80898C20 461CA282 */  mul.s   $f10, $f20, $f28           
/* 00384 80898C24 C7B000BC */  lwc1    $f16, 0x00BC($sp)          
/* 00388 80898C28 46100102 */  mul.s   $f4, $f0, $f16             
/* 0038C 80898C2C 46185081 */  sub.s   $f2, $f10, $f24            
/* 00390 80898C30 461A2182 */  mul.s   $f6, $f4, $f26             
/* 00394 80898C34 46021200 */  add.s   $f8, $f2, $f2              
/* 00398 80898C38 46163482 */  mul.s   $f18, $f6, $f22            
/* 0039C 80898C3C 46089280 */  add.s   $f10, $f18, $f8            
/* 003A0 80898C40 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 003A4 80898C44 E7AA00C8 */  swc1    $f10, 0x00C8($sp)          
/* 003A8 80898C48 461A0402 */  mul.s   $f16, $f0, $f26            
/* 003AC 80898C4C 46188101 */  sub.s   $f4, $f16, $f24            
/* 003B0 80898C50 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 003B4 80898C54 E7A400CC */  swc1    $f4, 0x00CC($sp)           
/* 003B8 80898C58 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 003BC 80898C5C 46000506 */  mov.s   $f20, $f0                  
/* 003C0 80898C60 461CA182 */  mul.s   $f6, $f20, $f28            
/* 003C4 80898C64 C7B200C4 */  lwc1    $f18, 0x00C4($sp)          
/* 003C8 80898C68 32420007 */  andi    $v0, $s2, 0x0007           ## $v0 = 00000000
/* 003CC 80898C6C 00021040 */  sll     $v0, $v0,  1               
/* 003D0 80898C70 46120202 */  mul.s   $f8, $f0, $f18             
/* 003D4 80898C74 3C08808A */  lui     $t0, %hi(D_808994E0)       ## $t0 = 808A0000
/* 003D8 80898C78 250894E0 */  addiu   $t0, $t0, %lo(D_808994E0)  ## $t0 = 808994E0
/* 003DC 80898C7C 3C18808A */  lui     $t8, %hi(D_80899500)       ## $t8 = 808A0000
/* 003E0 80898C80 3C0B808A */  lui     $t3, %hi(D_808994F0)       ## $t3 = 808A0000
/* 003E4 80898C84 46183081 */  sub.s   $f2, $f6, $f24             
/* 003E8 80898C88 01625821 */  addu    $t3, $t3, $v0              
/* 003EC 80898C8C 461A4282 */  mul.s   $f10, $f8, $f26            
/* 003F0 80898C90 0302C021 */  addu    $t8, $t8, $v0              
/* 003F4 80898C94 46021100 */  add.s   $f4, $f2, $f2              
/* 003F8 80898C98 00488021 */  addu    $s0, $v0, $t0              
/* 003FC 80898C9C 86090000 */  lh      $t1, 0x0000($s0)           ## 00000000
/* 00400 80898CA0 87189500 */  lh      $t8, %lo(D_80899500)($t8)  
/* 00404 80898CA4 856B94F0 */  lh      $t3, %lo(D_808994F0)($t3)  
/* 00408 80898CA8 46165402 */  mul.s   $f16, $f10, $f22           
/* 0040C 80898CAC 3C0E0600 */  lui     $t6, %hi(D_06000880)                ## $t6 = 06000000
/* 00410 80898CB0 25CE0880 */  addiu   $t6, $t6, %lo(D_06000880)           ## $t6 = 06000880
/* 00414 80898CB4 240FFEA2 */  addiu   $t7, $zero, 0xFEA2         ## $t7 = FFFFFEA2
/* 00418 80898CB8 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 0041C 80898CBC 240A0005 */  addiu   $t2, $zero, 0x0005         ## $t2 = 00000005
/* 00420 80898CC0 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 00424 80898CC4 46048180 */  add.s   $f6, $f16, $f4             
/* 00428 80898CC8 240D016C */  addiu   $t5, $zero, 0x016C         ## $t5 = 0000016C
/* 0042C 80898CCC AFAD0038 */  sw      $t5, 0x0038($sp)           
/* 00430 80898CD0 AFAC0034 */  sw      $t4, 0x0034($sp)           
/* 00434 80898CD4 E7A600D0 */  swc1    $f6, 0x00D0($sp)           
/* 00438 80898CD8 AFAA002C */  sw      $t2, 0x002C($sp)           
/* 0043C 80898CDC AFB9001C */  sw      $t9, 0x001C($sp)           
/* 00440 80898CE0 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00444 80898CE4 AFAE003C */  sw      $t6, 0x003C($sp)           
/* 00448 80898CE8 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 0044C 80898CEC 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFE4
/* 00450 80898CF0 02C03025 */  or      $a2, $s6, $zero            ## $a2 = FFFFFFD8
/* 00454 80898CF4 02803825 */  or      $a3, $s4, $zero            ## $a3 = FFFFFFE4
/* 00458 80898CF8 AFB10014 */  sw      $s1, 0x0014($sp)           
/* 0045C 80898CFC AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00460 80898D00 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00464 80898D04 AFA90024 */  sw      $t1, 0x0024($sp)           
/* 00468 80898D08 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 0046C 80898D0C 0C00A7A3 */  jal     EffectSsKakera_Spawn
              
/* 00470 80898D10 AFAB0030 */  sw      $t3, 0x0030($sp)           
/* 00474 80898D14 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00478 80898D18 00000000 */  nop
/* 0047C 80898D1C 3C01808A */  lui     $at, %hi(D_8089960C)       ## $at = 808A0000
/* 00480 80898D20 C432960C */  lwc1    $f18, %lo(D_8089960C)($at) 
/* 00484 80898D24 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00488 80898D28 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFE4
/* 0048C 80898D2C 4612003C */  c.lt.s  $f0, $f18                  
/* 00490 80898D30 3C064348 */  lui     $a2, 0x4348                ## $a2 = 43480000
/* 00494 80898D34 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00498 80898D38 4502000B */  bc1fl   .L80898D68                 
/* 0049C 80898D3C 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 004A0 80898D40 86020000 */  lh      $v0, 0x0000($s0)           ## 00000000
/* 004A4 80898D44 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 004A8 80898D48 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 004AC 80898D4C 00021080 */  sll     $v0, $v0,  2               
/* 004B0 80898D50 244F003C */  addiu   $t7, $v0, 0x003C           ## $t7 = 0000003C
/* 004B4 80898D54 24580050 */  addiu   $t8, $v0, 0x0050           ## $t8 = 00000050
/* 004B8 80898D58 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 004BC 80898D5C 0C00CD20 */  jal     func_80033480              
/* 004C0 80898D60 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 004C4 80898D64 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000002
.L80898D68:
/* 004C8 80898D68 24010020 */  addiu   $at, $zero, 0x0020         ## $at = 00000020
/* 004CC 80898D6C 1641FF80 */  bne     $s2, $at, .L80898B70       
/* 004D0 80898D70 00000000 */  nop
/* 004D4 80898D74 8FBF0094 */  lw      $ra, 0x0094($sp)           
.L80898D78:
/* 004D8 80898D78 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 004DC 80898D7C D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 004E0 80898D80 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 004E4 80898D84 D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 004E8 80898D88 D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 004EC 80898D8C D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 004F0 80898D90 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 004F4 80898D94 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 004F8 80898D98 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 004FC 80898D9C 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 00500 80898DA0 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 00504 80898DA4 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 00508 80898DA8 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 0050C 80898DAC 03E00008 */  jr      $ra                        
/* 00510 80898DB0 27BD00F0 */  addiu   $sp, $sp, 0x00F0           ## $sp = 00000000
