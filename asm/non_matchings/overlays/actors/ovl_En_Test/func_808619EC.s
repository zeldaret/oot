glabel func_808619EC
/* 0239C 808619EC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 023A0 808619F0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 023A4 808619F4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 023A8 808619F8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 023AC 808619FC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 023B0 80861A00 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 023B4 80861A04 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 023B8 80861A08 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 023BC 80861A0C 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 023C0 80861A10 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 023C4 80861A14 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 023C8 80861A18 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 023CC 80861A1C 8E0307E8 */  lw      $v1, 0x07E8($s0)           ## 000007E8
/* 023D0 80861A20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 023D4 80861A24 14600005 */  bne     $v1, $zero, .L80861A3C     
/* 023D8 80861A28 246FFFFF */  addiu   $t7, $v1, 0xFFFF           ## $t7 = FFFFFFFF
/* 023DC 80861A2C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 023E0 80861A30 24053838 */  addiu   $a1, $zero, 0x3838         ## $a1 = 00003838
/* 023E4 80861A34 10000002 */  beq     $zero, $zero, .L80861A40   
/* 023E8 80861A38 00000000 */  nop
.L80861A3C:
/* 023EC 80861A3C AE0F07E8 */  sw      $t7, 0x07E8($s0)           ## 000007E8
.L80861A40:
/* 023F0 80861A40 0C02927F */  jal     SkelAnime_Update
              
/* 023F4 80861A44 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 023F8 80861A48 10400042 */  beq     $v0, $zero, .L80861B54     
/* 023FC 80861A4C 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 02400 80861A50 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 02404 80861A54 0C21907A */  jal     func_808641E8              
/* 02408 80861A58 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0240C 80861A5C 14400048 */  bne     $v0, $zero, .L80861B80     
/* 02410 80861A60 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 02414 80861A64 C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 02418 80861A68 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 0241C 80861A6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02420 80861A70 3C01435C */  lui     $at, 0x435C                ## $at = 435C0000
/* 02424 80861A74 4604003E */  c.le.s  $f0, $f4                   
/* 02428 80861A78 00000000 */  nop
/* 0242C 80861A7C 45020017 */  bc1fl   .L80861ADC                 
/* 02430 80861A80 44818000 */  mtc1    $at, $f16                  ## $f16 = 220.00
/* 02434 80861A84 0C00B821 */  jal     Actor_IsFacingPlayer              
/* 02438 80861A88 24051555 */  addiu   $a1, $zero, 0x1555         ## $a1 = 00001555
/* 0243C 80861A8C 10400005 */  beq     $v0, $zero, .L80861AA4     
/* 02440 80861A90 00000000 */  nop
/* 02444 80861A94 0C218506 */  jal     func_80861418              
/* 02448 80861A98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0244C 80861A9C 1000002A */  beq     $zero, $zero, .L80861B48   
/* 02450 80861AA0 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
.L80861AA4:
/* 02454 80861AA4 0C21801A */  jal     func_80860068              
/* 02458 80861AA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0245C 80861AAC 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 02460 80861AB0 00000000 */  nop
/* 02464 80861AB4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02468 80861AB8 44811000 */  mtc1    $at, $f2                   ## $f2 = 5.00
/* 0246C 80861ABC 00000000 */  nop
/* 02470 80861AC0 46020182 */  mul.s   $f6, $f0, $f2              
/* 02474 80861AC4 46023200 */  add.s   $f8, $f6, $f2              
/* 02478 80861AC8 4600428D */  trunc.w.s $f10, $f8                  
/* 0247C 80861ACC 44195000 */  mfc1    $t9, $f10                  
/* 02480 80861AD0 1000001C */  beq     $zero, $zero, .L80861B44   
/* 02484 80861AD4 AE1907E8 */  sw      $t9, 0x07E8($s0)           ## 000007E8
/* 02488 80861AD8 44818000 */  mtc1    $at, $f16                  ## $f16 = 5.00
.L80861ADC:
/* 0248C 80861ADC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02490 80861AE0 4610003E */  c.le.s  $f0, $f16                  
/* 02494 80861AE4 00000000 */  nop
/* 02498 80861AE8 45000009 */  bc1f    .L80861B10                 
/* 0249C 80861AEC 00000000 */  nop
/* 024A0 80861AF0 0C00B821 */  jal     Actor_IsFacingPlayer              
/* 024A4 80861AF4 24050E38 */  addiu   $a1, $zero, 0x0E38         ## $a1 = 00000E38
/* 024A8 80861AF8 10400005 */  beq     $v0, $zero, .L80861B10     
/* 024AC 80861AFC 00000000 */  nop
/* 024B0 80861B00 0C2186E5 */  jal     func_80861B94              
/* 024B4 80861B04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 024B8 80861B08 1000000F */  beq     $zero, $zero, .L80861B48   
/* 024BC 80861B0C 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
.L80861B10:
/* 024C0 80861B10 0C21801A */  jal     func_80860068              
/* 024C4 80861B14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 024C8 80861B18 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 024CC 80861B1C 00000000 */  nop
/* 024D0 80861B20 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 024D4 80861B24 44811000 */  mtc1    $at, $f2                   ## $f2 = 5.00
/* 024D8 80861B28 00000000 */  nop
/* 024DC 80861B2C 46020482 */  mul.s   $f18, $f0, $f2             
/* 024E0 80861B30 46029100 */  add.s   $f4, $f18, $f2             
/* 024E4 80861B34 4600218D */  trunc.w.s $f6, $f4                   
/* 024E8 80861B38 44093000 */  mfc1    $t1, $f6                   
/* 024EC 80861B3C 00000000 */  nop
/* 024F0 80861B40 AE0907E8 */  sw      $t1, 0x07E8($s0)           ## 000007E8
.L80861B44:
/* 024F4 80861B44 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
.L80861B48:
/* 024F8 80861B48 354B0001 */  ori     $t3, $t2, 0x0001           ## $t3 = 00000001
/* 024FC 80861B4C 1000000C */  beq     $zero, $zero, .L80861B80   
/* 02500 80861B50 AE0B0004 */  sw      $t3, 0x0004($s0)           ## 00000004
.L80861B54:
/* 02504 80861B54 C6080198 */  lwc1    $f8, 0x0198($s0)           ## 00000198
/* 02508 80861B58 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 0250C 80861B5C C61201A0 */  lwc1    $f18, 0x01A0($s0)          ## 000001A0
/* 02510 80861B60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02514 80861B64 460A4401 */  sub.s   $f16, $f8, $f10            
/* 02518 80861B68 46128032 */  c.eq.s  $f16, $f18                 
/* 0251C 80861B6C 00000000 */  nop
/* 02520 80861B70 45020004 */  bc1fl   .L80861B84                 
/* 02524 80861B74 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02528 80861B78 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0252C 80861B7C 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
.L80861B80:
/* 02530 80861B80 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80861B84:
/* 02534 80861B84 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02538 80861B88 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0253C 80861B8C 03E00008 */  jr      $ra                        
/* 02540 80861B90 00000000 */  nop
