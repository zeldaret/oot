.late_rodata
glabel D_809CCEF0
    .float 0.1

.text
glabel func_809CBD78
/* 00178 809CBD78 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 0017C 809CBD7C 3C0E809D */  lui     $t6, %hi(D_809CCE94)       ## $t6 = 809D0000
/* 00180 809CBD80 AFBF0064 */  sw      $ra, 0x0064($sp)           
/* 00184 809CBD84 AFBE0060 */  sw      $s8, 0x0060($sp)           
/* 00188 809CBD88 AFB7005C */  sw      $s7, 0x005C($sp)           
/* 0018C 809CBD8C AFB60058 */  sw      $s6, 0x0058($sp)           
/* 00190 809CBD90 AFB50054 */  sw      $s5, 0x0054($sp)           
/* 00194 809CBD94 AFB40050 */  sw      $s4, 0x0050($sp)           
/* 00198 809CBD98 AFB3004C */  sw      $s3, 0x004C($sp)           
/* 0019C 809CBD9C AFB20048 */  sw      $s2, 0x0048($sp)           
/* 001A0 809CBDA0 AFB10044 */  sw      $s1, 0x0044($sp)           
/* 001A4 809CBDA4 AFB00040 */  sw      $s0, 0x0040($sp)           
/* 001A8 809CBDA8 F7B60038 */  sdc1    $f22, 0x0038($sp)          
/* 001AC 809CBDAC F7B40030 */  sdc1    $f20, 0x0030($sp)          
/* 001B0 809CBDB0 25CECE94 */  addiu   $t6, $t6, %lo(D_809CCE94)  ## $t6 = 809CCE94
/* 001B4 809CBDB4 8DD80000 */  lw      $t8, 0x0000($t6)           ## 809CCE94
/* 001B8 809CBDB8 3C01809D */  lui     $at, %hi(D_809CCEF0)       ## $at = 809D0000
/* 001BC 809CBDBC C434CEF0 */  lwc1    $f20, %lo(D_809CCEF0)($at) 
/* 001C0 809CBDC0 27BE0090 */  addiu   $s8, $sp, 0x0090           ## $s8 = FFFFFFF0
/* 001C4 809CBDC4 AFD80000 */  sw      $t8, 0x0000($s8)           ## FFFFFFF0
/* 001C8 809CBDC8 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 809CCE98
/* 001CC 809CBDCC 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 001D0 809CBDD0 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1000.00
/* 001D4 809CBDD4 AFCF0004 */  sw      $t7, 0x0004($s8)           ## FFFFFFF4
/* 001D8 809CBDD8 8DD80008 */  lw      $t8, 0x0008($t6)           ## 809CCE9C
/* 001DC 809CBDDC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 001E0 809CBDE0 0080B025 */  or      $s6, $a0, $zero            ## $s6 = 00000000
/* 001E4 809CBDE4 00A0B825 */  or      $s7, $a1, $zero            ## $s7 = 00000000
/* 001E8 809CBDE8 4406A000 */  mfc1    $a2, $f20                  
/* 001EC 809CBDEC 4407B000 */  mfc1    $a3, $f22                  
/* 001F0 809CBDF0 AFD80008 */  sw      $t8, 0x0008($s8)           ## FFFFFFF8
/* 001F4 809CBDF4 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 001F8 809CBDF8 24840220 */  addiu   $a0, $a0, 0x0220           ## $a0 = 00000220
/* 001FC 809CBDFC 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 00200 809CBE00 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00204 809CBE04 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00208 809CBE08 4406A000 */  mfc1    $a2, $f20                  
/* 0020C 809CBE0C 4407B000 */  mfc1    $a3, $f22                  
/* 00210 809CBE10 26C40224 */  addiu   $a0, $s6, 0x0224           ## $a0 = 00000224
/* 00214 809CBE14 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 00218 809CBE18 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 0021C 809CBE1C E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00220 809CBE20 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00224 809CBE24 4406A000 */  mfc1    $a2, $f20                  
/* 00228 809CBE28 4407B000 */  mfc1    $a3, $f22                  
/* 0022C 809CBE2C 26C40210 */  addiu   $a0, $s6, 0x0210           ## $a0 = 00000210
/* 00230 809CBE30 3C054258 */  lui     $a1, 0x4258                ## $a1 = 42580000
/* 00234 809CBE34 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 00238 809CBE38 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 0023C 809CBE3C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00240 809CBE40 3C053E4C */  lui     $a1, 0x3E4C                ## $a1 = 3E4C0000
/* 00244 809CBE44 4406A000 */  mfc1    $a2, $f20                  
/* 00248 809CBE48 4407B000 */  mfc1    $a3, $f22                  
/* 0024C 809CBE4C 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3E4CCCCD
/* 00250 809CBE50 26C40214 */  addiu   $a0, $s6, 0x0214           ## $a0 = 00000214
/* 00254 809CBE54 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 00258 809CBE58 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 0025C 809CBE5C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00260 809CBE60 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 00264 809CBE64 C6D00224 */  lwc1    $f16, 0x0224($s6)          ## 00000224
/* 00268 809CBE68 3C014180 */  lui     $at, 0x4180                ## $at = 41800000
/* 0026C 809CBE6C 44813000 */  mtc1    $at, $f6                   ## $f6 = 16.00
/* 00270 809CBE70 46128100 */  add.s   $f4, $f16, $f18            
/* 00274 809CBE74 86C2020A */  lh      $v0, 0x020A($s6)           ## 0000020A
/* 00278 809CBE78 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0027C 809CBE7C 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00280 809CBE80 46062202 */  mul.s   $f8, $f4, $f6              
/* 00284 809CBE84 24150014 */  addiu   $s5, $zero, 0x0014         ## $s5 = 00000014
/* 00288 809CBE88 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 0028C 809CBE8C 14400003 */  bne     $v0, $zero, .L809CBE9C     
/* 00290 809CBE90 E6C800BC */  swc1    $f8, 0x00BC($s6)           ## 000000BC
/* 00294 809CBE94 10000003 */  beq     $zero, $zero, .L809CBEA4   
/* 00298 809CBE98 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L809CBE9C:
/* 0029C 809CBE9C A6D9020A */  sh      $t9, 0x020A($s6)           ## 0000020A
/* 002A0 809CBEA0 86C3020A */  lh      $v1, 0x020A($s6)           ## 0000020A
.L809CBEA4:
/* 002A4 809CBEA4 50600004 */  beql    $v1, $zero, .L809CBEB8     
/* 002A8 809CBEA8 C6CA0024 */  lwc1    $f10, 0x0024($s6)          ## 00000024
/* 002AC 809CBEAC 1000003B */  beq     $zero, $zero, .L809CBF9C   
/* 002B0 809CBEB0 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
/* 002B4 809CBEB4 C6CA0024 */  lwc1    $f10, 0x0024($s6)          ## 00000024
.L809CBEB8:
/* 002B8 809CBEB8 4481B000 */  mtc1    $at, $f22                  ## $f22 = 0.50
/* 002BC 809CBEBC 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 002C0 809CBEC0 E7AA0078 */  swc1    $f10, 0x0078($sp)          
/* 002C4 809CBEC4 C6D200BC */  lwc1    $f18, 0x00BC($s6)          ## 000000BC
/* 002C8 809CBEC8 C6D00028 */  lwc1    $f16, 0x0028($s6)          ## 00000028
/* 002CC 809CBECC 3C14809D */  lui     $s4, %hi(D_809CCEA4)       ## $s4 = 809D0000
/* 002D0 809CBED0 3C13809D */  lui     $s3, %hi(D_809CCEA0)       ## $s3 = 809D0000
/* 002D4 809CBED4 46128100 */  add.s   $f4, $f16, $f18            
/* 002D8 809CBED8 4481A000 */  mtc1    $at, $f20                  ## $f20 = 7.00
/* 002DC 809CBEDC 2673CEA0 */  addiu   $s3, $s3, %lo(D_809CCEA0)  ## $s3 = 809CCEA0
/* 002E0 809CBEE0 2694CEA4 */  addiu   $s4, $s4, %lo(D_809CCEA4)  ## $s4 = 809CCEA4
/* 002E4 809CBEE4 E7A4007C */  swc1    $f4, 0x007C($sp)           
/* 002E8 809CBEE8 C6C6002C */  lwc1    $f6, 0x002C($s6)           ## 0000002C
/* 002EC 809CBEEC 27B20084 */  addiu   $s2, $sp, 0x0084           ## $s2 = FFFFFFE4
/* 002F0 809CBEF0 27B10078 */  addiu   $s1, $sp, 0x0078           ## $s1 = FFFFFFD8
/* 002F4 809CBEF4 E7A60080 */  swc1    $f6, 0x0080($sp)           
.L809CBEF8:
/* 002F8 809CBEF8 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 002FC 809CBEFC 00000000 */  nop
/* 00300 809CBF00 46160201 */  sub.s   $f8, $f0, $f22             
/* 00304 809CBF04 46144282 */  mul.s   $f10, $f8, $f20            
/* 00308 809CBF08 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 0030C 809CBF0C E7AA0084 */  swc1    $f10, 0x0084($sp)          
/* 00310 809CBF10 46140402 */  mul.s   $f16, $f0, $f20            
/* 00314 809CBF14 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00318 809CBF18 E7B00088 */  swc1    $f16, 0x0088($sp)          
/* 0031C 809CBF1C 46160481 */  sub.s   $f18, $f0, $f22            
/* 00320 809CBF20 24040064 */  addiu   $a0, $zero, 0x0064         ## $a0 = 00000064
/* 00324 809CBF24 24050032 */  addiu   $a1, $zero, 0x0032         ## $a1 = 00000032
/* 00328 809CBF28 46149102 */  mul.s   $f4, $f18, $f20            
/* 0032C 809CBF2C 0C01DF64 */  jal     Rand_S16Offset
              
/* 00330 809CBF30 E7A4008C */  swc1    $f4, 0x008C($sp)           
/* 00334 809CBF34 24080019 */  addiu   $t0, $zero, 0x0019         ## $t0 = 00000019
/* 00338 809CBF38 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 0033C 809CBF3C 02E02025 */  or      $a0, $s7, $zero            ## $a0 = 00000000
/* 00340 809CBF40 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFD8
/* 00344 809CBF44 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFFE4
/* 00348 809CBF48 03C03825 */  or      $a3, $s8, $zero            ## $a3 = FFFFFFF0
/* 0034C 809CBF4C AFB30010 */  sw      $s3, 0x0010($sp)           
/* 00350 809CBF50 AFB40014 */  sw      $s4, 0x0014($sp)           
/* 00354 809CBF54 AFA20018 */  sw      $v0, 0x0018($sp)           
/* 00358 809CBF58 0C00A5A5 */  jal     EffectSsDtBubble_SpawnCustomColor              
/* 0035C 809CBF5C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00360 809CBF60 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00364 809CBF64 1615FFE4 */  bne     $s0, $s5, .L809CBEF8       
/* 00368 809CBF68 00000000 */  nop
/* 0036C 809CBF6C 02E02025 */  or      $a0, $s7, $zero            ## $a0 = 00000000
/* 00370 809CBF70 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00374 809CBF74 26C60024 */  addiu   $a2, $s6, 0x0024           ## $a2 = 00000024
/* 00378 809CBF78 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 0037C 809CBF7C 24070050 */  addiu   $a3, $zero, 0x0050         ## $a3 = 00000050
/* 00380 809CBF80 8EC90004 */  lw      $t1, 0x0004($s6)           ## 00000004
/* 00384 809CBF84 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00388 809CBF88 2404005A */  addiu   $a0, $zero, 0x005A         ## $a0 = 0000005A
/* 0038C 809CBF8C 01215024 */  and     $t2, $t1, $at              
/* 00390 809CBF90 AECA0004 */  sw      $t2, 0x0004($s6)           ## 00000004
/* 00394 809CBF94 0C01DF64 */  jal     Rand_S16Offset
              
/* 00398 809CBF98 2405003C */  addiu   $a1, $zero, 0x003C         ## $a1 = 0000003C
.L809CBF9C:
/* 0039C 809CBF9C 8FBF0064 */  lw      $ra, 0x0064($sp)           
/* 003A0 809CBFA0 D7B40030 */  ldc1    $f20, 0x0030($sp)          
/* 003A4 809CBFA4 D7B60038 */  ldc1    $f22, 0x0038($sp)          
/* 003A8 809CBFA8 8FB00040 */  lw      $s0, 0x0040($sp)           
/* 003AC 809CBFAC 8FB10044 */  lw      $s1, 0x0044($sp)           
/* 003B0 809CBFB0 8FB20048 */  lw      $s2, 0x0048($sp)           
/* 003B4 809CBFB4 8FB3004C */  lw      $s3, 0x004C($sp)           
/* 003B8 809CBFB8 8FB40050 */  lw      $s4, 0x0050($sp)           
/* 003BC 809CBFBC 8FB50054 */  lw      $s5, 0x0054($sp)           
/* 003C0 809CBFC0 8FB60058 */  lw      $s6, 0x0058($sp)           
/* 003C4 809CBFC4 8FB7005C */  lw      $s7, 0x005C($sp)           
/* 003C8 809CBFC8 8FBE0060 */  lw      $s8, 0x0060($sp)           
/* 003CC 809CBFCC 03E00008 */  jr      $ra                        
/* 003D0 809CBFD0 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000
