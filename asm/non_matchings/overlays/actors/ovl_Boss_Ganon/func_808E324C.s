glabel func_808E324C
/* 0C9DC 808E324C 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 0C9E0 808E3250 AFB20020 */  sw      $s2, 0x0020($sp)           
/* 0C9E4 808E3254 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 0C9E8 808E3258 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 0C9EC 808E325C AFBE0038 */  sw      $s8, 0x0038($sp)           
/* 0C9F0 808E3260 AFB70034 */  sw      $s7, 0x0034($sp)           
/* 0C9F4 808E3264 AFB60030 */  sw      $s6, 0x0030($sp)           
/* 0C9F8 808E3268 AFB5002C */  sw      $s5, 0x002C($sp)           
/* 0C9FC 808E326C AFB40028 */  sw      $s4, 0x0028($sp)           
/* 0CA00 808E3270 AFB30024 */  sw      $s3, 0x0024($sp)           
/* 0CA04 808E3274 AFB1001C */  sw      $s1, 0x001C($sp)           
/* 0CA08 808E3278 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0CA0C 808E327C AFA50094 */  sw      $a1, 0x0094($sp)           
/* 0CA10 808E3280 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 0CA14 808E3284 0C031A73 */  jal     Graph_Alloc
              
/* 0CA18 808E3288 24050300 */  addiu   $a1, $zero, 0x0300         ## $a1 = 00000300
/* 0CA1C 808E328C 8FAF0094 */  lw      $t7, 0x0094($sp)           
/* 0CA20 808E3290 3C06808F */  lui     $a2, %hi(D_808F7D20)       ## $a2 = 808F0000
/* 0CA24 808E3294 00409825 */  or      $s3, $v0, $zero            ## $s3 = 00000000
/* 0CA28 808E3298 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 0CA2C 808E329C 24C67D20 */  addiu   $a2, $a2, %lo(D_808F7D20)  ## $a2 = 808F7D20
/* 0CA30 808E32A0 27A4006C */  addiu   $a0, $sp, 0x006C           ## $a0 = FFFFFFDC
/* 0CA34 808E32A4 240728F9 */  addiu   $a3, $zero, 0x28F9         ## $a3 = 000028F9
/* 0CA38 808E32A8 0C031AB1 */  jal     Graph_OpenDisps              
/* 0CA3C 808E32AC 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 0CA40 808E32B0 8FB80094 */  lw      $t8, 0x0094($sp)           
/* 0CA44 808E32B4 0C024F61 */  jal     func_80093D84              
/* 0CA48 808E32B8 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 0CA4C 808E32BC 8E8302D0 */  lw      $v1, 0x02D0($s4)           ## 000002D0
/* 0CA50 808E32C0 3C08FA00 */  lui     $t0, 0xFA00                ## $t0 = FA000000
/* 0CA54 808E32C4 35080080 */  ori     $t0, $t0, 0x0080           ## $t0 = FA000080
/* 0CA58 808E32C8 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 0CA5C 808E32CC AE9902D0 */  sw      $t9, 0x02D0($s4)           ## 000002D0
/* 0CA60 808E32D0 AC680000 */  sw      $t0, 0x0000($v1)           ## 00000000
/* 0CA64 808E32D4 C64401CC */  lwc1    $f4, 0x01CC($s2)           ## 000001CC
/* 0CA68 808E32D8 2401FF00 */  addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
/* 0CA6C 808E32DC 3C1996FF */  lui     $t9, 0x96FF                ## $t9 = 96FF0000
/* 0CA70 808E32E0 4600218D */  trunc.w.s $f6, $f4                   
/* 0CA74 808E32E4 37390080 */  ori     $t9, $t9, 0x0080           ## $t9 = 96FF0080
/* 0CA78 808E32E8 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 0CA7C 808E32EC 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 0CA80 808E32F0 440C3000 */  mfc1    $t4, $f6                   
/* 0CA84 808E32F4 35290034 */  ori     $t1, $t1, 0x0034           ## $t1 = DB060034
/* 0CA88 808E32F8 3C1EDA38 */  lui     $s8, 0xDA38                ## $s8 = DA380000
/* 0CA8C 808E32FC 318D00FF */  andi    $t5, $t4, 0x00FF           ## $t5 = 00000000
/* 0CA90 808E3300 01A17025 */  or      $t6, $t5, $at              ## $t6 = FFFFFF00
/* 0CA94 808E3304 AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 0CA98 808E3308 8E8302D0 */  lw      $v1, 0x02D0($s4)           ## 000002D0
/* 0CA9C 808E330C 3C17808E */  lui     $s7, %hi(D_808E4E68)       ## $s7 = 808E0000
/* 0CAA0 808E3310 26F74E68 */  addiu   $s7, $s7, %lo(D_808E4E68)  ## $s7 = 808E4E68
/* 0CAA4 808E3314 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 0CAA8 808E3318 AE8F02D0 */  sw      $t7, 0x02D0($s4)           ## 000002D0
/* 0CAAC 808E331C AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
/* 0CAB0 808E3320 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 0CAB4 808E3324 8E8302D0 */  lw      $v1, 0x02D0($s4)           ## 000002D0
/* 0CAB8 808E3328 37DE0003 */  ori     $s8, $s8, 0x0003           ## $s8 = DA380003
/* 0CABC 808E332C 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 0CAC0 808E3330 24680008 */  addiu   $t0, $v1, 0x0008           ## $t0 = 00000008
/* 0CAC4 808E3334 AE8802D0 */  sw      $t0, 0x02D0($s4)           ## 000002D0
/* 0CAC8 808E3338 2416000C */  addiu   $s6, $zero, 0x000C         ## $s6 = 0000000C
/* 0CACC 808E333C 2415000F */  addiu   $s5, $zero, 0x000F         ## $s5 = 0000000F
/* 0CAD0 808E3340 AC730004 */  sw      $s3, 0x0004($v1)           ## 00000004
/* 0CAD4 808E3344 AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 0CAD8 808E3348 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L808E334C:
/* 0CADC 808E334C 864A01A6 */  lh      $t2, 0x01A6($s2)           ## 000001A6
/* 0CAE0 808E3350 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0CAE4 808E3354 01515823 */  subu    $t3, $t2, $s1              
/* 0CAE8 808E3358 256C000F */  addiu   $t4, $t3, 0x000F           ## $t4 = 0000000F
/* 0CAEC 808E335C 0195001A */  div     $zero, $t4, $s5            
/* 0CAF0 808E3360 00001010 */  mfhi    $v0                        
/* 0CAF4 808E3364 00021400 */  sll     $v0, $v0, 16               
/* 0CAF8 808E3368 00021403 */  sra     $v0, $v0, 16               
/* 0CAFC 808E336C 00560019 */  multu   $v0, $s6                   
/* 0CB00 808E3370 16A00002 */  bne     $s5, $zero, .L808E337C     
/* 0CB04 808E3374 00000000 */  nop
/* 0CB08 808E3378 0007000D */  break 7
.L808E337C:
/* 0CB0C 808E337C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 0CB10 808E3380 16A10004 */  bne     $s5, $at, .L808E3394       
/* 0CB14 808E3384 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0CB18 808E3388 15810002 */  bne     $t4, $at, .L808E3394       
/* 0CB1C 808E338C 00000000 */  nop
/* 0CB20 808E3390 0006000D */  break 6
.L808E3394:
/* 0CB24 808E3394 00006812 */  mflo    $t5                        
/* 0CB28 808E3398 024D8021 */  addu    $s0, $s2, $t5              
/* 0CB2C 808E339C C60C02EC */  lwc1    $f12, 0x02EC($s0)          ## 000002EC
/* 0CB30 808E33A0 C60E02F0 */  lwc1    $f14, 0x02F0($s0)          ## 000002F0
/* 0CB34 808E33A4 0C034261 */  jal     Matrix_Translate              
/* 0CB38 808E33A8 8E0602F4 */  lw      $a2, 0x02F4($s0)           ## 000002F4
/* 0CB3C 808E33AC C60C03C8 */  lwc1    $f12, 0x03C8($s0)          ## 000003C8
/* 0CB40 808E33B0 0C034348 */  jal     Matrix_RotateY              
/* 0CB44 808E33B4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0CB48 808E33B8 C60C03C4 */  lwc1    $f12, 0x03C4($s0)          ## 000003C4
/* 0CB4C 808E33BC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0CB50 808E33C0 0C0342DC */  jal     Matrix_RotateX              
/* 0CB54 808E33C4 46006307 */  neg.s   $f12, $f12                 
/* 0CB58 808E33C8 C64C0050 */  lwc1    $f12, 0x0050($s2)          ## 00000050
/* 0CB5C 808E33CC C64E0054 */  lwc1    $f14, 0x0054($s2)          ## 00000054
/* 0CB60 808E33D0 8E460058 */  lw      $a2, 0x0058($s2)           ## 00000058
/* 0CB64 808E33D4 0C0342A3 */  jal     Matrix_Scale              
/* 0CB68 808E33D8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0CB6C 808E33DC 3C018090 */  lui     $at, %hi(D_808F8238)       ## $at = 80900000
/* 0CB70 808E33E0 C42C8238 */  lwc1    $f12, %lo(D_808F8238)($at) 
/* 0CB74 808E33E4 0C034348 */  jal     Matrix_RotateY              
/* 0CB78 808E33E8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0CB7C 808E33EC 3C05808F */  lui     $a1, %hi(D_808F7D34)       ## $a1 = 808F0000
/* 0CB80 808E33F0 24A57D34 */  addiu   $a1, $a1, %lo(D_808F7D34)  ## $a1 = 808F7D34
/* 0CB84 808E33F4 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 0CB88 808E33F8 0C034695 */  jal     Matrix_ToMtx              
/* 0CB8C 808E33FC 24062918 */  addiu   $a2, $zero, 0x2918         ## $a2 = 00002918
/* 0CB90 808E3400 8E8302D0 */  lw      $v1, 0x02D0($s4)           ## 000002D0
/* 0CB94 808E3404 0011C880 */  sll     $t9, $s1,  2               
/* 0CB98 808E3408 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 0CB9C 808E340C 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 0CBA0 808E3410 AE8E02D0 */  sw      $t6, 0x02D0($s4)           ## 000002D0
/* 0CBA4 808E3414 AC730004 */  sw      $s3, 0x0004($v1)           ## 00000004
/* 0CBA8 808E3418 AC7E0000 */  sw      $s8, 0x0000($v1)           ## 00000000
/* 0CBAC 808E341C 8E8302D0 */  lw      $v1, 0x02D0($s4)           ## 000002D0
/* 0CBB0 808E3420 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 0CBB4 808E3424 00118C00 */  sll     $s1, $s1, 16               
/* 0CBB8 808E3428 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 0CBBC 808E342C AE8F02D0 */  sw      $t7, 0x02D0($s4)           ## 000002D0
/* 0CBC0 808E3430 02F94021 */  addu    $t0, $s7, $t9              
/* 0CBC4 808E3434 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 0CBC8 808E3438 8D090000 */  lw      $t1, 0x0000($t0)           ## 00000000
/* 0CBCC 808E343C 00118C03 */  sra     $s1, $s1, 16               
/* 0CBD0 808E3440 2A21000C */  slti    $at, $s1, 0x000C           
/* 0CBD4 808E3444 26730040 */  addiu   $s3, $s3, 0x0040           ## $s3 = 00000040
/* 0CBD8 808E3448 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 0CBDC 808E344C 1420FFBF */  bne     $at, $zero, .L808E334C     
/* 0CBE0 808E3450 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 0CBE4 808E3454 C64C0024 */  lwc1    $f12, 0x0024($s2)          ## 00000024
/* 0CBE8 808E3458 C64E0028 */  lwc1    $f14, 0x0028($s2)          ## 00000028
/* 0CBEC 808E345C 8E46002C */  lw      $a2, 0x002C($s2)           ## 0000002C
/* 0CBF0 808E3460 0C034261 */  jal     Matrix_Translate              
/* 0CBF4 808E3464 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0CBF8 808E3468 8FA40094 */  lw      $a0, 0x0094($sp)           
/* 0CBFC 808E346C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0CC00 808E3470 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 0CC04 808E3474 0C0347F5 */  jal     func_800D1FD4              
/* 0CC08 808E3478 00812021 */  addu    $a0, $a0, $at              
/* 0CC0C 808E347C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0CC10 808E3480 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 0CC14 808E3484 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0CC18 808E3488 44066000 */  mfc1    $a2, $f12                  
/* 0CC1C 808E348C 0C0342A3 */  jal     Matrix_Scale              
/* 0CC20 808E3490 46006386 */  mov.s   $f14, $f12                 
/* 0CC24 808E3494 3C018090 */  lui     $at, %hi(D_808F823C)       ## $at = 80900000
/* 0CC28 808E3498 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0CC2C 808E349C C42C823C */  lwc1    $f12, %lo(D_808F823C)($at) 
/* 0CC30 808E34A0 46000306 */  mov.s   $f12, $f0                  
/* 0CC34 808E34A4 0C0343B5 */  jal     Matrix_RotateZ              
/* 0CC38 808E34A8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0CC3C 808E34AC 8E9002D0 */  lw      $s0, 0x02D0($s4)           ## 000002D0
/* 0CC40 808E34B0 3C05808F */  lui     $a1, %hi(D_808F7D48)       ## $a1 = 808F0000
/* 0CC44 808E34B4 24A57D48 */  addiu   $a1, $a1, %lo(D_808F7D48)  ## $a1 = 808F7D48
/* 0CC48 808E34B8 260A0008 */  addiu   $t2, $s0, 0x0008           ## $t2 = 00000008
/* 0CC4C 808E34BC AE8A02D0 */  sw      $t2, 0x02D0($s4)           ## 000002D0
/* 0CC50 808E34C0 AE1E0000 */  sw      $s8, 0x0000($s0)           ## 00000000
/* 0CC54 808E34C4 8FAB0094 */  lw      $t3, 0x0094($sp)           
/* 0CC58 808E34C8 24062926 */  addiu   $a2, $zero, 0x2926         ## $a2 = 00002926
/* 0CC5C 808E34CC 0C0346A2 */  jal     Matrix_NewMtx              
/* 0CC60 808E34D0 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 0CC64 808E34D4 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 0CC68 808E34D8 8E8302D0 */  lw      $v1, 0x02D0($s4)           ## 000002D0
/* 0CC6C 808E34DC 3C0E808E */  lui     $t6, %hi(D_808E7DE8)       ## $t6 = 808E0000
/* 0CC70 808E34E0 25CE7DE8 */  addiu   $t6, $t6, %lo(D_808E7DE8)  ## $t6 = 808E7DE8
/* 0CC74 808E34E4 246C0008 */  addiu   $t4, $v1, 0x0008           ## $t4 = 00000008
/* 0CC78 808E34E8 AE8C02D0 */  sw      $t4, 0x02D0($s4)           ## 000002D0
/* 0CC7C 808E34EC 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 0CC80 808E34F0 AC6D0000 */  sw      $t5, 0x0000($v1)           ## 00000000
/* 0CC84 808E34F4 AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 0CC88 808E34F8 8E8302D0 */  lw      $v1, 0x02D0($s4)           ## 000002D0
/* 0CC8C 808E34FC 3C19808E */  lui     $t9, %hi(D_808E7E58)       ## $t9 = 808E0000
/* 0CC90 808E3500 27397E58 */  addiu   $t9, $t9, %lo(D_808E7E58)  ## $t9 = 808E7E58
/* 0CC94 808E3504 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 0CC98 808E3508 AE8F02D0 */  sw      $t7, 0x02D0($s4)           ## 000002D0
/* 0CC9C 808E350C 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 0CCA0 808E3510 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 0CCA4 808E3514 AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
/* 0CCA8 808E3518 8FA80094 */  lw      $t0, 0x0094($sp)           
/* 0CCAC 808E351C 3C06808F */  lui     $a2, %hi(D_808F7D5C)       ## $a2 = 808F0000
/* 0CCB0 808E3520 24C67D5C */  addiu   $a2, $a2, %lo(D_808F7D5C)  ## $a2 = 808F7D5C
/* 0CCB4 808E3524 27A4006C */  addiu   $a0, $sp, 0x006C           ## $a0 = FFFFFFDC
/* 0CCB8 808E3528 2407292D */  addiu   $a3, $zero, 0x292D         ## $a3 = 0000292D
/* 0CCBC 808E352C 0C031AD5 */  jal     Graph_CloseDisps              
/* 0CCC0 808E3530 8D050000 */  lw      $a1, 0x0000($t0)           ## 00000000
/* 0CCC4 808E3534 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 0CCC8 808E3538 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0CCCC 808E353C 8FB1001C */  lw      $s1, 0x001C($sp)           
/* 0CCD0 808E3540 8FB20020 */  lw      $s2, 0x0020($sp)           
/* 0CCD4 808E3544 8FB30024 */  lw      $s3, 0x0024($sp)           
/* 0CCD8 808E3548 8FB40028 */  lw      $s4, 0x0028($sp)           
/* 0CCDC 808E354C 8FB5002C */  lw      $s5, 0x002C($sp)           
/* 0CCE0 808E3550 8FB60030 */  lw      $s6, 0x0030($sp)           
/* 0CCE4 808E3554 8FB70034 */  lw      $s7, 0x0034($sp)           
/* 0CCE8 808E3558 8FBE0038 */  lw      $s8, 0x0038($sp)           
/* 0CCEC 808E355C 03E00008 */  jr      $ra                        
/* 0CCF0 808E3560 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000


