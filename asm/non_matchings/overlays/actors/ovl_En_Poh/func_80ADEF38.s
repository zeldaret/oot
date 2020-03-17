glabel func_80ADEF38
/* 011E8 80ADEF38 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 011EC 80ADEF3C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 011F0 80ADEF40 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 011F4 80ADEF44 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 011F8 80ADEF48 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 011FC 80ADEF4C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01200 80ADEF50 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01204 80ADEF54 1040000E */  beq     $v0, $zero, .L80ADEF90     
/* 01208 80ADEF58 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0120C 80ADEF5C 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 01210 80ADEF60 A20E029D */  sb      $t6, 0x029D($s0)           ## 0000029D
/* 01214 80ADEF64 240402BC */  addiu   $a0, $zero, 0x02BC         ## $a0 = 000002BC
/* 01218 80ADEF68 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 0121C 80ADEF6C 2405012C */  addiu   $a1, $zero, 0x012C         ## $a1 = 0000012C
/* 01220 80ADEF70 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 01224 80ADEF74 A602019A */  sh      $v0, 0x019A($s0)           ## 0000019A
/* 01228 80ADEF78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0122C 80ADEF7C 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 01230 80ADEF80 0C2B785B */  jal     func_80ADE16C              
/* 01234 80ADEF84 AE180004 */  sw      $t8, 0x0004($s0)           ## 00000004
/* 01238 80ADEF88 10000032 */  beq     $zero, $zero, .L80ADF054   
/* 0123C 80ADEF8C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
.L80ADEF90:
/* 01240 80ADEF90 44811000 */  mtc1    $at, $f2                   ## $f2 = 0.50
/* 01244 80ADEF94 C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 01248 80ADEF98 3C0180AE */  lui     $at, %hi(D_80AE1C38)       ## $at = 80AE0000
/* 0124C 80ADEF9C 4600103C */  c.lt.s  $f2, $f0                   
/* 01250 80ADEFA0 00000000 */  nop
/* 01254 80ADEFA4 4502002B */  bc1fl   .L80ADF054                 
/* 01258 80ADEFA8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0125C 80ADEFAC 46020101 */  sub.s   $f4, $f0, $f2              
/* 01260 80ADEFB0 C4261C38 */  lwc1    $f6, %lo(D_80AE1C38)($at)  
/* 01264 80ADEFB4 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 01268 80ADEFB8 44815000 */  mtc1    $at, $f10                  ## $f10 = 255.00
/* 0126C 80ADEFBC 46062202 */  mul.s   $f8, $f4, $f6              
/* 01270 80ADEFC0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 01274 80ADEFC4 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 01278 80ADEFC8 460A4402 */  mul.s   $f16, $f8, $f10            
/* 0127C 80ADEFCC 4459F800 */  cfc1    $t9, $31
/* 01280 80ADEFD0 44C8F800 */  ctc1    $t0, $31
/* 01284 80ADEFD4 00000000 */  nop
/* 01288 80ADEFD8 460084A4 */  cvt.w.s $f18, $f16                 
/* 0128C 80ADEFDC 4448F800 */  cfc1    $t0, $31
/* 01290 80ADEFE0 00000000 */  nop
/* 01294 80ADEFE4 31080078 */  andi    $t0, $t0, 0x0078           ## $t0 = 00000000
/* 01298 80ADEFE8 51000013 */  beql    $t0, $zero, .L80ADF038     
/* 0129C 80ADEFEC 44089000 */  mfc1    $t0, $f18                  
/* 012A0 80ADEFF0 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 012A4 80ADEFF4 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 012A8 80ADEFF8 46128481 */  sub.s   $f18, $f16, $f18           
/* 012AC 80ADEFFC 44C8F800 */  ctc1    $t0, $31
/* 012B0 80ADF000 00000000 */  nop
/* 012B4 80ADF004 460094A4 */  cvt.w.s $f18, $f18                 
/* 012B8 80ADF008 4448F800 */  cfc1    $t0, $31
/* 012BC 80ADF00C 00000000 */  nop
/* 012C0 80ADF010 31080078 */  andi    $t0, $t0, 0x0078           ## $t0 = 00000000
/* 012C4 80ADF014 15000005 */  bne     $t0, $zero, .L80ADF02C     
/* 012C8 80ADF018 00000000 */  nop
/* 012CC 80ADF01C 44089000 */  mfc1    $t0, $f18                  
/* 012D0 80ADF020 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 012D4 80ADF024 10000007 */  beq     $zero, $zero, .L80ADF044   
/* 012D8 80ADF028 01014025 */  or      $t0, $t0, $at              ## $t0 = 80000000
.L80ADF02C:
/* 012DC 80ADF02C 10000005 */  beq     $zero, $zero, .L80ADF044   
/* 012E0 80ADF030 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 012E4 80ADF034 44089000 */  mfc1    $t0, $f18                  
.L80ADF038:
/* 012E8 80ADF038 00000000 */  nop
/* 012EC 80ADF03C 0500FFFB */  bltz    $t0, .L80ADF02C            
/* 012F0 80ADF040 00000000 */  nop
.L80ADF044:
/* 012F4 80ADF044 44D9F800 */  ctc1    $t9, $31
/* 012F8 80ADF048 A208029D */  sb      $t0, 0x029D($s0)           ## 0000029D
/* 012FC 80ADF04C 00000000 */  nop
/* 01300 80ADF050 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
.L80ADF054:
/* 01304 80ADF054 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 01308 80ADF058 C6040168 */  lwc1    $f4, 0x0168($s0)           ## 00000168
/* 0130C 80ADF05C 3C01438C */  lui     $at, 0x438C                ## $at = 438C0000
/* 01310 80ADF060 4606203C */  c.lt.s  $f4, $f6                   
/* 01314 80ADF064 00000000 */  nop
/* 01318 80ADF068 4502000F */  bc1fl   .L80ADF0A8                 
/* 0131C 80ADF06C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01320 80ADF070 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 01324 80ADF074 44815000 */  mtc1    $at, $f10                  ## $f10 = 280.00
/* 01328 80ADF078 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0132C 80ADF07C 460A403C */  c.lt.s  $f8, $f10                  
/* 01330 80ADF080 00000000 */  nop
/* 01334 80ADF084 45020008 */  bc1fl   .L80ADF0A8                 
/* 01338 80ADF088 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0133C 80ADF08C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01340 80ADF090 24053873 */  addiu   $a1, $zero, 0x3873         ## $a1 = 00003873
/* 01344 80ADF094 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01348 80ADF098 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 0134C 80ADF09C 00000000 */  nop
/* 01350 80ADF0A0 E6100168 */  swc1    $f16, 0x0168($s0)          ## 00000168
/* 01354 80ADF0A4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ADF0A8:
/* 01358 80ADF0A8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0135C 80ADF0AC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01360 80ADF0B0 03E00008 */  jr      $ra                        
/* 01364 80ADF0B4 00000000 */  nop


