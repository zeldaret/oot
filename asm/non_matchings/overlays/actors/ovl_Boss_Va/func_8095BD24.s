glabel func_8095BD24
/* 0CA64 8095BD24 27BDFF28 */  addiu   $sp, $sp, 0xFF28           ## $sp = FFFFFF28
/* 0CA68 8095BD28 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 0CA6C 8095BD2C F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 0CA70 8095BD30 00058400 */  sll     $s0, $a1, 16               
/* 0CA74 8095BD34 AFBF005C */  sw      $ra, 0x005C($sp)           
/* 0CA78 8095BD38 AFBE0058 */  sw      $s8, 0x0058($sp)           
/* 0CA7C 8095BD3C AFB70054 */  sw      $s7, 0x0054($sp)           
/* 0CA80 8095BD40 AFB60050 */  sw      $s6, 0x0050($sp)           
/* 0CA84 8095BD44 AFB5004C */  sw      $s5, 0x004C($sp)           
/* 0CA88 8095BD48 AFB40048 */  sw      $s4, 0x0048($sp)           
/* 0CA8C 8095BD4C AFB30044 */  sw      $s3, 0x0044($sp)           
/* 0CA90 8095BD50 AFB20040 */  sw      $s2, 0x0040($sp)           
/* 0CA94 8095BD54 AFB1003C */  sw      $s1, 0x003C($sp)           
/* 0CA98 8095BD58 F7BA0030 */  sdc1    $f26, 0x0030($sp)          
/* 0CA9C 8095BD5C F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 0CAA0 8095BD60 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 0CAA4 8095BD64 AFA400D8 */  sw      $a0, 0x00D8($sp)           
/* 0CAA8 8095BD68 AFA500DC */  sw      $a1, 0x00DC($sp)           
/* 0CAAC 8095BD6C 4480B000 */  mtc1    $zero, $f22                ## $f22 = 0.00
/* 0CAB0 8095BD70 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 0CAB4 8095BD74 3C068096 */  lui     $a2, %hi(D_8095C530)       ## $a2 = 80960000
/* 0CAB8 8095BD78 00108403 */  sra     $s0, $s0, 16               
/* 0CABC 8095BD7C 24C6C530 */  addiu   $a2, $a2, %lo(D_8095C530)  ## $a2 = 8095C530
/* 0CAC0 8095BD80 27A40078 */  addiu   $a0, $sp, 0x0078           ## $a0 = FFFFFFA0
/* 0CAC4 8095BD84 240715E0 */  addiu   $a3, $zero, 0x15E0         ## $a3 = 000015E0
/* 0CAC8 8095BD88 4600B506 */  mov.s   $f20, $f22                 
/* 0CACC 8095BD8C 0C031AB1 */  jal     Graph_OpenDisps              
/* 0CAD0 8095BD90 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 0CAD4 8095BD94 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 0CAD8 8095BD98 44817000 */  mtc1    $at, $f14                  ## $f14 = 80.00
/* 0CADC 8095BD9C 4600B306 */  mov.s   $f12, $f22                 
/* 0CAE0 8095BDA0 3C0643C8 */  lui     $a2, 0x43C8                ## $a2 = 43C80000
/* 0CAE4 8095BDA4 0C034261 */  jal     Matrix_Translate              
/* 0CAE8 8095BDA8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0CAEC 8095BDAC 3C018096 */  lui     $at, %hi(D_8095C940)       ## $at = 80960000
/* 0CAF0 8095BDB0 C42CC940 */  lwc1    $f12, %lo(D_8095C940)($at) 
/* 0CAF4 8095BDB4 0C034348 */  jal     Matrix_RotateY              
/* 0CAF8 8095BDB8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0CAFC 8095BDBC 44902000 */  mtc1    $s0, $f4                   ## $f4 = 0.00
/* 0CB00 8095BDC0 3C018096 */  lui     $at, %hi(D_8095C944)       ## $at = 80960000
/* 0CB04 8095BDC4 C42CC944 */  lwc1    $f12, %lo(D_8095C944)($at) 
/* 0CB08 8095BDC8 468021A0 */  cvt.s.w $f6, $f4                   
/* 0CB0C 8095BDCC 3C018096 */  lui     $at, %hi(D_8095C948)       ## $at = 80960000
/* 0CB10 8095BDD0 C428C948 */  lwc1    $f8, %lo(D_8095C948)($at)  
/* 0CB14 8095BDD4 44066000 */  mfc1    $a2, $f12                  
/* 0CB18 8095BDD8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0CB1C 8095BDDC 46083282 */  mul.s   $f10, $f6, $f8             
/* 0CB20 8095BDE0 00000000 */  nop
/* 0CB24 8095BDE4 460C5602 */  mul.s   $f24, $f10, $f12           
/* 0CB28 8095BDE8 0C0342A3 */  jal     Matrix_Scale              
/* 0CB2C 8095BDEC 4600C386 */  mov.s   $f14, $f24                 
/* 0CB30 8095BDF0 4616C032 */  c.eq.s  $f24, $f22                 
/* 0CB34 8095BDF4 3C018096 */  lui     $at, %hi(D_8095C94C)       ## $at = 80960000
/* 0CB38 8095BDF8 C42CC94C */  lwc1    $f12, %lo(D_8095C94C)($at) 
/* 0CB3C 8095BDFC 27BE0098 */  addiu   $s8, $sp, 0x0098           ## $s8 = FFFFFFC0
/* 0CB40 8095BE00 45030004 */  bc1tl   .L8095BE14                 
/* 0CB44 8095BE04 4600B686 */  mov.s   $f26, $f22                 
/* 0CB48 8095BE08 10000002 */  beq     $zero, $zero, .L8095BE14   
/* 0CB4C 8095BE0C 46186683 */  div.s   $f26, $f12, $f24           
/* 0CB50 8095BE10 4600B686 */  mov.s   $f26, $f22                 
.L8095BE14:
/* 0CB54 8095BE14 0C034236 */  jal     Matrix_Get              
/* 0CB58 8095BE18 03C02025 */  or      $a0, $s8, $zero            ## $a0 = FFFFFFC0
/* 0CB5C 8095BE1C 3C128096 */  lui     $s2, %hi(D_8095C3A0)       ## $s2 = 80960000
/* 0CB60 8095BE20 3C118096 */  lui     $s1, %hi(D_8095C380)       ## $s1 = 80960000
/* 0CB64 8095BE24 3C018096 */  lui     $at, %hi(D_8095C950)       ## $at = 80960000
/* 0CB68 8095BE28 3C178096 */  lui     $s7, %hi(D_8095C3A0)       ## $s7 = 80960000
/* 0CB6C 8095BE2C 3C158096 */  lui     $s5, %hi(D_8095C540)       ## $s5 = 80960000
/* 0CB70 8095BE30 3C14DA38 */  lui     $s4, 0xDA38                ## $s4 = DA380000
/* 0CB74 8095BE34 36940003 */  ori     $s4, $s4, 0x0003           ## $s4 = DA380003
/* 0CB78 8095BE38 26B5C540 */  addiu   $s5, $s5, %lo(D_8095C540)  ## $s5 = 8095C540
/* 0CB7C 8095BE3C 26F7C3A0 */  addiu   $s7, $s7, %lo(D_8095C3A0)  ## $s7 = 8095C3A0
/* 0CB80 8095BE40 C438C950 */  lwc1    $f24, %lo(D_8095C950)($at) 
/* 0CB84 8095BE44 2631C380 */  addiu   $s1, $s1, %lo(D_8095C380)  ## $s1 = 8095C380
/* 0CB88 8095BE48 2652C3A0 */  addiu   $s2, $s2, %lo(D_8095C3A0)  ## $s2 = 8095C3A0
/* 0CB8C 8095BE4C 3C16DE00 */  lui     $s6, 0xDE00                ## $s6 = DE000000
.L8095BE50:
/* 0CB90 8095BE50 0C03423F */  jal     Matrix_Put              
/* 0CB94 8095BE54 03C02025 */  or      $a0, $s8, $zero            ## $a0 = FFFFFFC0
/* 0CB98 8095BE58 4600A306 */  mov.s   $f12, $f20                 
/* 0CB9C 8095BE5C 0C0343B5 */  jal     Matrix_RotateZ              
/* 0CBA0 8095BE60 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0CBA4 8095BE64 864F0000 */  lh      $t7, 0x0000($s2)           ## 8095C3A0
/* 0CBA8 8095BE68 4406B000 */  mfc1    $a2, $f22                  
/* 0CBAC 8095BE6C 4600B306 */  mov.s   $f12, $f22                 
/* 0CBB0 8095BE70 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 0CBB4 8095BE74 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0CBB8 8095BE78 468084A0 */  cvt.s.w $f18, $f16                 
/* 0CBBC 8095BE7C 461A9382 */  mul.s   $f14, $f18, $f26           
/* 0CBC0 8095BE80 0C034261 */  jal     Matrix_Translate              
/* 0CBC4 8095BE84 00000000 */  nop
/* 0CBC8 8095BE88 8E6202C0 */  lw      $v0, 0x02C0($s3)           ## 000002C0
/* 0CBCC 8095BE8C 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 8095C540
/* 0CBD0 8095BE90 240615F5 */  addiu   $a2, $zero, 0x15F5         ## $a2 = 000015F5
/* 0CBD4 8095BE94 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 0CBD8 8095BE98 AE7802C0 */  sw      $t8, 0x02C0($s3)           ## 000002C0
/* 0CBDC 8095BE9C AC540000 */  sw      $s4, 0x0000($v0)           ## 00000000
/* 0CBE0 8095BEA0 8FB900D8 */  lw      $t9, 0x00D8($sp)           
/* 0CBE4 8095BEA4 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 0CBE8 8095BEA8 0C0346A2 */  jal     Matrix_NewMtx              
/* 0CBEC 8095BEAC 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 0CBF0 8095BEB0 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 0CBF4 8095BEB4 8E6202C0 */  lw      $v0, 0x02C0($s3)           ## 000002C0
/* 0CBF8 8095BEB8 26310004 */  addiu   $s1, $s1, 0x0004           ## $s1 = 8095C384
/* 0CBFC 8095BEBC 26520002 */  addiu   $s2, $s2, 0x0002           ## $s2 = 8095C3A2
/* 0CC00 8095BEC0 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 0CC04 8095BEC4 AE6802C0 */  sw      $t0, 0x02C0($s3)           ## 000002C0
/* 0CC08 8095BEC8 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
/* 0CC0C 8095BECC 8E29FFFC */  lw      $t1, -0x0004($s1)          ## 8095C380
/* 0CC10 8095BED0 4618A501 */  sub.s   $f20, $f20, $f24           
/* 0CC14 8095BED4 1637FFDE */  bne     $s1, $s7, .L8095BE50       
/* 0CC18 8095BED8 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 0CC1C 8095BEDC 8FAA00D8 */  lw      $t2, 0x00D8($sp)           
/* 0CC20 8095BEE0 3C068096 */  lui     $a2, %hi(D_8095C550)       ## $a2 = 80960000
/* 0CC24 8095BEE4 24C6C550 */  addiu   $a2, $a2, %lo(D_8095C550)  ## $a2 = 8095C550
/* 0CC28 8095BEE8 27A40078 */  addiu   $a0, $sp, 0x0078           ## $a0 = FFFFFFA0
/* 0CC2C 8095BEEC 240715FD */  addiu   $a3, $zero, 0x15FD         ## $a3 = 000015FD
/* 0CC30 8095BEF0 0C031AD5 */  jal     Graph_CloseDisps              
/* 0CC34 8095BEF4 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 0CC38 8095BEF8 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 0CC3C 8095BEFC D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 0CC40 8095BF00 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 0CC44 8095BF04 D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 0CC48 8095BF08 D7BA0030 */  ldc1    $f26, 0x0030($sp)          
/* 0CC4C 8095BF0C 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 0CC50 8095BF10 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 0CC54 8095BF14 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 0CC58 8095BF18 8FB30044 */  lw      $s3, 0x0044($sp)           
/* 0CC5C 8095BF1C 8FB40048 */  lw      $s4, 0x0048($sp)           
/* 0CC60 8095BF20 8FB5004C */  lw      $s5, 0x004C($sp)           
/* 0CC64 8095BF24 8FB60050 */  lw      $s6, 0x0050($sp)           
/* 0CC68 8095BF28 8FB70054 */  lw      $s7, 0x0054($sp)           
/* 0CC6C 8095BF2C 8FBE0058 */  lw      $s8, 0x0058($sp)           
/* 0CC70 8095BF30 03E00008 */  jr      $ra                        
/* 0CC74 8095BF34 27BD00D8 */  addiu   $sp, $sp, 0x00D8           ## $sp = 00000000
/* 0CC78 8095BF38 00000000 */  nop
/* 0CC7C 8095BF3C 00000000 */  nop

