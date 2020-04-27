.late_rodata
glabel D_80B07220
    .float 3.14159274101

.text
glabel func_80B0534C
/* 00ABC 80B0534C 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 00AC0 80B05350 3C0F80B0 */  lui     $t7, %hi(D_80B071C0)       ## $t7 = 80B00000
/* 00AC4 80B05354 AFB70044 */  sw      $s7, 0x0044($sp)           
/* 00AC8 80B05358 AFB20030 */  sw      $s2, 0x0030($sp)           
/* 00ACC 80B0535C 25EF71C0 */  addiu   $t7, $t7, %lo(D_80B071C0)  ## $t7 = 80B071C0
/* 00AD0 80B05360 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00AD4 80B05364 00A0B825 */  or      $s7, $a1, $zero            ## $s7 = 00000000
/* 00AD8 80B05368 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 00ADC 80B0536C AFBE0048 */  sw      $s8, 0x0048($sp)           
/* 00AE0 80B05370 AFB60040 */  sw      $s6, 0x0040($sp)           
/* 00AE4 80B05374 AFB5003C */  sw      $s5, 0x003C($sp)           
/* 00AE8 80B05378 AFB40038 */  sw      $s4, 0x0038($sp)           
/* 00AEC 80B0537C AFB30034 */  sw      $s3, 0x0034($sp)           
/* 00AF0 80B05380 AFB1002C */  sw      $s1, 0x002C($sp)           
/* 00AF4 80B05384 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00AF8 80B05388 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 00AFC 80B0538C F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 00B00 80B05390 25E80024 */  addiu   $t0, $t7, 0x0024           ## $t0 = 80B071E4
/* 00B04 80B05394 27AE007C */  addiu   $t6, $sp, 0x007C           ## $t6 = FFFFFFDC
.L80B05398:
/* 00B08 80B05398 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B071C0
/* 00B0C 80B0539C 25EF000C */  addiu   $t7, $t7, 0x000C           ## $t7 = 80B071CC
/* 00B10 80B053A0 25CE000C */  addiu   $t6, $t6, 0x000C           ## $t6 = FFFFFFE8
/* 00B14 80B053A4 ADD9FFF4 */  sw      $t9, -0x000C($t6)          ## FFFFFFDC
/* 00B18 80B053A8 8DF8FFF8 */  lw      $t8, -0x0008($t7)          ## 80B071C4
/* 00B1C 80B053AC ADD8FFF8 */  sw      $t8, -0x0008($t6)          ## FFFFFFE0
/* 00B20 80B053B0 8DF9FFFC */  lw      $t9, -0x0004($t7)          ## 80B071C8
/* 00B24 80B053B4 15E8FFF8 */  bne     $t7, $t0, .L80B05398       
/* 00B28 80B053B8 ADD9FFFC */  sw      $t9, -0x0004($t6)          ## FFFFFFE4
/* 00B2C 80B053BC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00B30 80B053C0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00B34 80B053C4 02E1F021 */  addu    $s8, $s7, $at              
/* 00B38 80B053C8 3C0180B0 */  lui     $at, %hi(D_80B07220)       ## $at = 80B00000
/* 00B3C 80B053CC C4367220 */  lwc1    $f22, %lo(D_80B07220)($at) 
/* 00B40 80B053D0 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 00B44 80B053D4 4481A000 */  mtc1    $at, $f20                  ## $f20 = 32768.00
/* 00B48 80B053D8 26560024 */  addiu   $s6, $s2, 0x0024           ## $s6 = 00000024
/* 00B4C 80B053DC 27B0007C */  addiu   $s0, $sp, 0x007C           ## $s0 = FFFFFFDC
/* 00B50 80B053E0 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 00B54 80B053E4 02408825 */  or      $s1, $s2, $zero            ## $s1 = 00000000
/* 00B58 80B053E8 26540278 */  addiu   $s4, $s2, 0x0278           ## $s4 = 00000278
/* 00B5C 80B053EC 27B50070 */  addiu   $s5, $sp, 0x0070           ## $s5 = FFFFFFD0
.L80B053F0:
/* 00B60 80B053F0 8ECA0000 */  lw      $t2, 0x0000($s6)           ## 00000024
/* 00B64 80B053F4 C6040000 */  lwc1    $f4, 0x0000($s0)           ## FFFFFFDC
/* 00B68 80B053F8 C60A0004 */  lwc1    $f10, 0x0004($s0)          ## FFFFFFE0
/* 00B6C 80B053FC AEAA0000 */  sw      $t2, 0x0000($s5)           ## FFFFFFD0
/* 00B70 80B05400 8EC90004 */  lw      $t1, 0x0004($s6)           ## 00000028
/* 00B74 80B05404 AEA90004 */  sw      $t1, 0x0004($s5)           ## FFFFFFD4
/* 00B78 80B05408 8ECA0008 */  lw      $t2, 0x0008($s6)           ## 0000002C
/* 00B7C 80B0540C AEAA0008 */  sw      $t2, 0x0008($s5)           ## FFFFFFD8
/* 00B80 80B05410 C6460408 */  lwc1    $f6, 0x0408($s2)           ## 00000408
/* 00B84 80B05414 46062202 */  mul.s   $f8, $f4, $f6              
/* 00B88 80B05418 C6040008 */  lwc1    $f4, 0x0008($s0)           ## FFFFFFE4
/* 00B8C 80B0541C E6080000 */  swc1    $f8, 0x0000($s0)           ## FFFFFFDC
/* 00B90 80B05420 C6500408 */  lwc1    $f16, 0x0408($s2)          ## 00000408
/* 00B94 80B05424 46105482 */  mul.s   $f18, $f10, $f16           
/* 00B98 80B05428 E6120004 */  swc1    $f18, 0x0004($s0)          ## FFFFFFE0
/* 00B9C 80B0542C C6460408 */  lwc1    $f6, 0x0408($s2)           ## 00000408
/* 00BA0 80B05430 46062202 */  mul.s   $f8, $f4, $f6              
/* 00BA4 80B05434 0C034213 */  jal     Matrix_Push              
/* 00BA8 80B05438 E6080008 */  swc1    $f8, 0x0008($s0)           ## FFFFFFE4
/* 00BAC 80B0543C C7AC0070 */  lwc1    $f12, 0x0070($sp)          
/* 00BB0 80B05440 C7AE0074 */  lwc1    $f14, 0x0074($sp)          
/* 00BB4 80B05444 8FA60078 */  lw      $a2, 0x0078($sp)           
/* 00BB8 80B05448 0C034261 */  jal     Matrix_Translate              
/* 00BBC 80B0544C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00BC0 80B05450 864B03BC */  lh      $t3, 0x03BC($s2)           ## 000003BC
/* 00BC4 80B05454 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00BC8 80B05458 448B5000 */  mtc1    $t3, $f10                  ## $f10 = 0.00
/* 00BCC 80B0545C 00000000 */  nop
/* 00BD0 80B05460 46805420 */  cvt.s.w $f16, $f10                 
/* 00BD4 80B05464 46148483 */  div.s   $f18, $f16, $f20           
/* 00BD8 80B05468 46169302 */  mul.s   $f12, $f18, $f22           
/* 00BDC 80B0546C 0C034348 */  jal     Matrix_RotateY              
/* 00BE0 80B05470 00000000 */  nop
/* 00BE4 80B05474 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFDC
/* 00BE8 80B05478 0C0346BD */  jal     Matrix_MultVec3f              
/* 00BEC 80B0547C 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFD0
/* 00BF0 80B05480 0C034221 */  jal     Matrix_Pull              
/* 00BF4 80B05484 00000000 */  nop
/* 00BF8 80B05488 C7A40070 */  lwc1    $f4, 0x0070($sp)           
/* 00BFC 80B0548C 02E02025 */  or      $a0, $s7, $zero            ## $a0 = 00000000
/* 00C00 80B05490 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 00000000
/* 00C04 80B05494 4600218D */  trunc.w.s $f6, $f4                   
/* 00C08 80B05498 02803025 */  or      $a2, $s4, $zero            ## $a2 = 00000278
/* 00C0C 80B0549C 440D3000 */  mfc1    $t5, $f6                   
/* 00C10 80B054A0 00000000 */  nop
/* 00C14 80B054A4 A62D02BE */  sh      $t5, 0x02BE($s1)           ## 000002BE
/* 00C18 80B054A8 C7A80074 */  lwc1    $f8, 0x0074($sp)           
/* 00C1C 80B054AC 4600428D */  trunc.w.s $f10, $f8                  
/* 00C20 80B054B0 440F5000 */  mfc1    $t7, $f10                  
/* 00C24 80B054B4 00000000 */  nop
/* 00C28 80B054B8 A62F02C0 */  sh      $t7, 0x02C0($s1)           ## 000002C0
/* 00C2C 80B054BC C7B00078 */  lwc1    $f16, 0x0078($sp)          
/* 00C30 80B054C0 4600848D */  trunc.w.s $f18, $f16                 
/* 00C34 80B054C4 44189000 */  mfc1    $t8, $f18                  
/* 00C38 80B054C8 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 00C3C 80B054CC A63802C2 */  sh      $t8, 0x02C2($s1)           ## 000002C2
/* 00C40 80B054D0 2673004C */  addiu   $s3, $s3, 0x004C           ## $s3 = 0000004C
/* 00C44 80B054D4 240100E4 */  addiu   $at, $zero, 0x00E4         ## $at = 000000E4
/* 00C48 80B054D8 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = FFFFFFE8
/* 00C4C 80B054DC 2631004C */  addiu   $s1, $s1, 0x004C           ## $s1 = 0000004C
/* 00C50 80B054E0 1661FFC3 */  bne     $s3, $at, .L80B053F0       
/* 00C54 80B054E4 2694004C */  addiu   $s4, $s4, 0x004C           ## $s4 = 000002C4
/* 00C58 80B054E8 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 00C5C 80B054EC D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00C60 80B054F0 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 00C64 80B054F4 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00C68 80B054F8 8FB1002C */  lw      $s1, 0x002C($sp)           
/* 00C6C 80B054FC 8FB20030 */  lw      $s2, 0x0030($sp)           
/* 00C70 80B05500 8FB30034 */  lw      $s3, 0x0034($sp)           
/* 00C74 80B05504 8FB40038 */  lw      $s4, 0x0038($sp)           
/* 00C78 80B05508 8FB5003C */  lw      $s5, 0x003C($sp)           
/* 00C7C 80B0550C 8FB60040 */  lw      $s6, 0x0040($sp)           
/* 00C80 80B05510 8FB70044 */  lw      $s7, 0x0044($sp)           
/* 00C84 80B05514 8FBE0048 */  lw      $s8, 0x0048($sp)           
/* 00C88 80B05518 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000
/* 00C8C 80B0551C 03E00008 */  jr      $ra                        
/* 00C90 80B05520 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
