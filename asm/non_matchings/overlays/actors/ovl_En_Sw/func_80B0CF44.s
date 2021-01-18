glabel func_80B0CF44
/* 01194 80B0CF44 27BDFF58 */  addiu   $sp, $sp, 0xFF58           ## $sp = FFFFFF58
/* 01198 80B0CF48 3C0E80B1 */  lui     $t6, %hi(D_80B0F0EC)       ## $t6 = 80B10000
/* 0119C 80B0CF4C AFBF0064 */  sw      $ra, 0x0064($sp)           
/* 011A0 80B0CF50 AFBE0060 */  sw      $s8, 0x0060($sp)           
/* 011A4 80B0CF54 AFB7005C */  sw      $s7, 0x005C($sp)           
/* 011A8 80B0CF58 AFB60058 */  sw      $s6, 0x0058($sp)           
/* 011AC 80B0CF5C AFB50054 */  sw      $s5, 0x0054($sp)           
/* 011B0 80B0CF60 AFB40050 */  sw      $s4, 0x0050($sp)           
/* 011B4 80B0CF64 AFB3004C */  sw      $s3, 0x004C($sp)           
/* 011B8 80B0CF68 AFB20048 */  sw      $s2, 0x0048($sp)           
/* 011BC 80B0CF6C AFB10044 */  sw      $s1, 0x0044($sp)           
/* 011C0 80B0CF70 AFB00040 */  sw      $s0, 0x0040($sp)           
/* 011C4 80B0CF74 F7B60038 */  sdc1    $f22, 0x0038($sp)          
/* 011C8 80B0CF78 F7B40030 */  sdc1    $f20, 0x0030($sp)          
/* 011CC 80B0CF7C 25CEF0EC */  addiu   $t6, $t6, %lo(D_80B0F0EC)  ## $t6 = 80B0F0EC
/* 011D0 80B0CF80 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80B0F0EC
/* 011D4 80B0CF84 27B500A4 */  addiu   $s5, $sp, 0x00A4           ## $s5 = FFFFFFFC
/* 011D8 80B0CF88 3C1980B1 */  lui     $t9, %hi(D_80B0F0F0)       ## $t9 = 80B10000
/* 011DC 80B0CF8C 2739F0F0 */  addiu   $t9, $t9, %lo(D_80B0F0F0)  ## $t9 = 80B0F0F0
/* 011E0 80B0CF90 AEB80000 */  sw      $t8, 0x0000($s5)           ## FFFFFFFC
/* 011E4 80B0CF94 8F290000 */  lw      $t1, 0x0000($t9)           ## 80B0F0F0
/* 011E8 80B0CF98 27B600A0 */  addiu   $s6, $sp, 0x00A0           ## $s6 = FFFFFFF8
/* 011EC 80B0CF9C 3C0A80B1 */  lui     $t2, %hi(D_80B0F0F4)       ## $t2 = 80B10000
/* 011F0 80B0CFA0 254AF0F4 */  addiu   $t2, $t2, %lo(D_80B0F0F4)  ## $t2 = 80B0F0F4
/* 011F4 80B0CFA4 AEC90000 */  sw      $t1, 0x0000($s6)           ## FFFFFFF8
/* 011F8 80B0CFA8 8D4C0000 */  lw      $t4, 0x0000($t2)           ## 80B0F0F4
/* 011FC 80B0CFAC 27B70094 */  addiu   $s7, $sp, 0x0094           ## $s7 = FFFFFFEC
/* 01200 80B0CFB0 3C0D80B1 */  lui     $t5, %hi(D_80B0F100)       ## $t5 = 80B10000
/* 01204 80B0CFB4 AEEC0000 */  sw      $t4, 0x0000($s7)           ## FFFFFFEC
/* 01208 80B0CFB8 8D4B0004 */  lw      $t3, 0x0004($t2)           ## 80B0F0F8
/* 0120C 80B0CFBC 25ADF100 */  addiu   $t5, $t5, %lo(D_80B0F100)  ## $t5 = 80B0F100
/* 01210 80B0CFC0 27BE0088 */  addiu   $s8, $sp, 0x0088           ## $s8 = FFFFFFE0
/* 01214 80B0CFC4 AEEB0004 */  sw      $t3, 0x0004($s7)           ## FFFFFFF0
/* 01218 80B0CFC8 8D4C0008 */  lw      $t4, 0x0008($t2)           ## 80B0F0FC
/* 0121C 80B0CFCC 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 01220 80B0CFD0 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 01224 80B0CFD4 AEEC0008 */  sw      $t4, 0x0008($s7)           ## FFFFFFF4
/* 01228 80B0CFD8 8DAF0000 */  lw      $t7, 0x0000($t5)           ## 80B0F100
/* 0122C 80B0CFDC AFCF0000 */  sw      $t7, 0x0000($s8)           ## FFFFFFE0
/* 01230 80B0CFE0 8DAE0004 */  lw      $t6, 0x0004($t5)           ## 80B0F104
/* 01234 80B0CFE4 AFCE0004 */  sw      $t6, 0x0004($s8)           ## FFFFFFE4
/* 01238 80B0CFE8 8DAF0008 */  lw      $t7, 0x0008($t5)           ## 80B0F108
/* 0123C 80B0CFEC AFCF0008 */  sw      $t7, 0x0008($s8)           ## FFFFFFE8
/* 01240 80B0CFF0 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01244 80B0CFF4 AFA600B0 */  sw      $a2, 0x00B0($sp)           
/* 01248 80B0CFF8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0124C 80B0CFFC 4481B000 */  mtc1    $at, $f22                  ## $f22 = 0.50
/* 01250 80B0D000 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 01254 80B0D004 44813000 */  mtc1    $at, $f6                   ## $f6 = 65536.00
/* 01258 80B0D008 46160101 */  sub.s   $f4, $f0, $f22             
/* 0125C 80B0D00C 8FA600B0 */  lw      $a2, 0x00B0($sp)           
/* 01260 80B0D010 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 01264 80B0D014 46062202 */  mul.s   $f8, $f4, $f6              
/* 01268 80B0D018 00C08825 */  or      $s1, $a2, $zero            ## $s1 = 00000000
/* 0126C 80B0D01C 4600428D */  trunc.w.s $f10, $f8                  
/* 01270 80B0D020 44105000 */  mfc1    $s0, $f10                  
/* 01274 80B0D024 00000000 */  nop
/* 01278 80B0D028 00108400 */  sll     $s0, $s0, 16               
/* 0127C 80B0D02C 04C00039 */  bltz    $a2, .L80B0D114            
/* 01280 80B0D030 00108403 */  sra     $s0, $s0, 16               
/* 01284 80B0D034 0326001A */  div     $zero, $t9, $a2            
/* 01288 80B0D038 00009812 */  mflo    $s3                        
/* 0128C 80B0D03C 00139C00 */  sll     $s3, $s3, 16               
/* 01290 80B0D040 00139C03 */  sra     $s3, $s3, 16               
/* 01294 80B0D044 14C00002 */  bne     $a2, $zero, .L80B0D050     
/* 01298 80B0D048 00000000 */  nop
/* 0129C 80B0D04C 0007000D */  break 7
.L80B0D050:
/* 012A0 80B0D050 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 012A4 80B0D054 14C10004 */  bne     $a2, $at, .L80B0D068       
/* 012A8 80B0D058 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 012AC 80B0D05C 17210002 */  bne     $t9, $at, .L80B0D068       
/* 012B0 80B0D060 00000000 */  nop
/* 012B4 80B0D064 0006000D */  break 6
.L80B0D068:
/* 012B8 80B0D068 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 012BC 80B0D06C 00000000 */  nop
/* 012C0 80B0D070 46160501 */  sub.s   $f20, $f0, $f22            
/* 012C4 80B0D074 4614A400 */  add.s   $f16, $f20, $f20           
/* 012C8 80B0D078 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 012CC 80B0D07C E7B00088 */  swc1    $f16, 0x0088($sp)          
/* 012D0 80B0D080 46160501 */  sub.s   $f20, $f0, $f22            
/* 012D4 80B0D084 00102400 */  sll     $a0, $s0, 16               
/* 012D8 80B0D088 00042403 */  sra     $a0, $a0, 16               
/* 012DC 80B0D08C 4614A480 */  add.s   $f18, $f20, $f20           
/* 012E0 80B0D090 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 012E4 80B0D094 E7B20090 */  swc1    $f18, 0x0090($sp)          
/* 012E8 80B0D098 46000100 */  add.s   $f4, $f0, $f0              
/* 012EC 80B0D09C C6460024 */  lwc1    $f6, 0x0024($s2)           ## 00000024
/* 012F0 80B0D0A0 00102400 */  sll     $a0, $s0, 16               
/* 012F4 80B0D0A4 00042403 */  sra     $a0, $a0, 16               
/* 012F8 80B0D0A8 46062200 */  add.s   $f8, $f4, $f6              
/* 012FC 80B0D0AC E7A8007C */  swc1    $f8, 0x007C($sp)           
/* 01300 80B0D0B0 C64A0028 */  lwc1    $f10, 0x0028($s2)          ## 00000028
/* 01304 80B0D0B4 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 01308 80B0D0B8 E7AA0080 */  swc1    $f10, 0x0080($sp)          
/* 0130C 80B0D0BC 46000400 */  add.s   $f16, $f0, $f0             
/* 01310 80B0D0C0 C652002C */  lwc1    $f18, 0x002C($s2)          ## 0000002C
/* 01314 80B0D0C4 24080014 */  addiu   $t0, $zero, 0x0014         ## $t0 = 00000014
/* 01318 80B0D0C8 2409001E */  addiu   $t1, $zero, 0x001E         ## $t1 = 0000001E
/* 0131C 80B0D0CC 46128100 */  add.s   $f4, $f16, $f18            
/* 01320 80B0D0D0 240A000C */  addiu   $t2, $zero, 0x000C         ## $t2 = 0000000C
/* 01324 80B0D0D4 AFAA0020 */  sw      $t2, 0x0020($sp)           
/* 01328 80B0D0D8 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 0132C 80B0D0DC E7A40084 */  swc1    $f4, 0x0084($sp)           
/* 01330 80B0D0E0 AFA80018 */  sw      $t0, 0x0018($sp)           
/* 01334 80B0D0E4 AFB60014 */  sw      $s6, 0x0014($sp)           
/* 01338 80B0D0E8 AFB50010 */  sw      $s5, 0x0010($sp)           
/* 0133C 80B0D0EC 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01340 80B0D0F0 27A5007C */  addiu   $a1, $sp, 0x007C           ## $a1 = FFFFFFD4
/* 01344 80B0D0F4 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFFEC
/* 01348 80B0D0F8 0C00A0DB */  jal     func_8002836C              
/* 0134C 80B0D0FC 03C03825 */  or      $a3, $s8, $zero            ## $a3 = FFFFFFE0
/* 01350 80B0D100 02138021 */  addu    $s0, $s0, $s3              
/* 01354 80B0D104 00108400 */  sll     $s0, $s0, 16               
/* 01358 80B0D108 2631FFFF */  addiu   $s1, $s1, 0xFFFF           ## $s1 = FFFFFFFF
/* 0135C 80B0D10C 0621FFD6 */  bgez    $s1, .L80B0D068            
/* 01360 80B0D110 00108403 */  sra     $s0, $s0, 16               
.L80B0D114:
/* 01364 80B0D114 8FBF0064 */  lw      $ra, 0x0064($sp)           
/* 01368 80B0D118 D7B40030 */  ldc1    $f20, 0x0030($sp)          
/* 0136C 80B0D11C D7B60038 */  ldc1    $f22, 0x0038($sp)          
/* 01370 80B0D120 8FB00040 */  lw      $s0, 0x0040($sp)           
/* 01374 80B0D124 8FB10044 */  lw      $s1, 0x0044($sp)           
/* 01378 80B0D128 8FB20048 */  lw      $s2, 0x0048($sp)           
/* 0137C 80B0D12C 8FB3004C */  lw      $s3, 0x004C($sp)           
/* 01380 80B0D130 8FB40050 */  lw      $s4, 0x0050($sp)           
/* 01384 80B0D134 8FB50054 */  lw      $s5, 0x0054($sp)           
/* 01388 80B0D138 8FB60058 */  lw      $s6, 0x0058($sp)           
/* 0138C 80B0D13C 8FB7005C */  lw      $s7, 0x005C($sp)           
/* 01390 80B0D140 8FBE0060 */  lw      $s8, 0x0060($sp)           
/* 01394 80B0D144 03E00008 */  jr      $ra                        
/* 01398 80B0D148 27BD00A8 */  addiu   $sp, $sp, 0x00A8           ## $sp = 00000000
