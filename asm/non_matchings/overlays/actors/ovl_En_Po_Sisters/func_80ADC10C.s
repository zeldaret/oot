.late_rodata
glabel D_80ADD89C
    .float 0.2

.text
glabel func_80ADC10C
/* 0317C 80ADC10C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 03180 80ADC110 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03184 80ADC114 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03188 80ADC118 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0318C 80ADC11C 908202BD */  lbu     $v0, 0x02BD($a0)           ## 000002BD
/* 03190 80ADC120 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03194 80ADC124 260502C4 */  addiu   $a1, $s0, 0x02C4           ## $a1 = 000002C4
/* 03198 80ADC128 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 0319C 80ADC12C 11C00062 */  beq     $t6, $zero, .L80ADC2B8     
/* 031A0 80ADC130 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 031A4 80ADC134 A08F02BD */  sb      $t7, 0x02BD($a0)           ## 000002BD
/* 031A8 80ADC138 0C00D594 */  jal     func_80035650              
/* 031AC 80ADC13C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 031B0 80ADC140 92180195 */  lbu     $t8, 0x0195($s0)           ## 00000195
/* 031B4 80ADC144 53000020 */  beql    $t8, $zero, .L80ADC1C8     
/* 031B8 80ADC148 920902C0 */  lbu     $t1, 0x02C0($s0)           ## 000002C0
/* 031BC 80ADC14C 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
/* 031C0 80ADC150 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031C4 80ADC154 240538EF */  addiu   $a1, $zero, 0x38EF         ## $a1 = 000038EF
/* 031C8 80ADC158 8459019C */  lh      $t9, 0x019C($v0)           ## 0000019C
/* 031CC 80ADC15C 2728FFFF */  addiu   $t0, $t9, 0xFFFF           ## $t0 = FFFFFFFF
/* 031D0 80ADC160 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 031D4 80ADC164 A448019C */  sh      $t0, 0x019C($v0)           ## 0000019C
/* 031D8 80ADC168 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031DC 80ADC16C 0C2B6709 */  jal     func_80AD9C24              
/* 031E0 80ADC170 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 031E4 80ADC174 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 031E8 80ADC178 00000000 */  nop
/* 031EC 80ADC17C 3C0180AE */  lui     $at, %hi(D_80ADD89C)       ## $at = 80AE0000
/* 031F0 80ADC180 C424D89C */  lwc1    $f4, %lo(D_80ADD89C)($at)  
/* 031F4 80ADC184 4604003C */  c.lt.s  $f0, $f4                   
/* 031F8 80ADC188 00000000 */  nop
/* 031FC 80ADC18C 4502004B */  bc1fl   .L80ADC2BC                 
/* 03200 80ADC190 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03204 80ADC194 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 03208 80ADC198 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0320C 80ADC19C 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 03210 80ADC1A0 E7A60024 */  swc1    $f6, 0x0024($sp)           
/* 03214 80ADC1A4 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 03218 80ADC1A8 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 0321C 80ADC1AC E7A80028 */  swc1    $f8, 0x0028($sp)           
/* 03220 80ADC1B0 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 03224 80ADC1B4 0C007D52 */  jal     Item_DropCollectible
              
/* 03228 80ADC1B8 E7AA002C */  swc1    $f10, 0x002C($sp)          
/* 0322C 80ADC1BC 1000003F */  beq     $zero, $zero, .L80ADC2BC   
/* 03230 80ADC1C0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03234 80ADC1C4 920902C0 */  lbu     $t1, 0x02C0($s0)           ## 000002C0
.L80ADC1C8:
/* 03238 80ADC1C8 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 0323C 80ADC1CC 51210009 */  beql    $t1, $at, .L80ADC1F4       
/* 03240 80ADC1D0 920B0194 */  lbu     $t3, 0x0194($s0)           ## 00000194
/* 03244 80ADC1D4 920200B1 */  lbu     $v0, 0x00B1($s0)           ## 000000B1
/* 03248 80ADC1D8 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 0324C 80ADC1DC 14400009 */  bne     $v0, $zero, .L80ADC204     
/* 03250 80ADC1E0 00000000 */  nop
/* 03254 80ADC1E4 920A00B0 */  lbu     $t2, 0x00B0($s0)           ## 000000B0
/* 03258 80ADC1E8 15400006 */  bne     $t2, $zero, .L80ADC204     
/* 0325C 80ADC1EC 00000000 */  nop
/* 03260 80ADC1F0 920B0194 */  lbu     $t3, 0x0194($s0)           ## 00000194
.L80ADC1F4:
/* 03264 80ADC1F4 55600031 */  bnel    $t3, $zero, .L80ADC2BC     
/* 03268 80ADC1F8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0326C 80ADC1FC 1000002E */  beq     $zero, $zero, .L80ADC2B8   
/* 03270 80ADC200 A6000110 */  sh      $zero, 0x0110($s0)         ## 00000110
.L80ADC204:
/* 03274 80ADC204 5441000C */  bnel    $v0, $at, .L80ADC238       
/* 03278 80ADC208 920F0194 */  lbu     $t7, 0x0194($s0)           ## 00000194
/* 0327C 80ADC20C 920D0199 */  lbu     $t5, 0x0199($s0)           ## 00000199
/* 03280 80ADC210 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
/* 03284 80ADC214 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03288 80ADC218 35AE0002 */  ori     $t6, $t5, 0x0002           ## $t6 = 00000002
/* 0328C 80ADC21C A20E0199 */  sb      $t6, 0x0199($s0)           ## 00000199
/* 03290 80ADC220 A60C0032 */  sh      $t4, 0x0032($s0)           ## 00000032
/* 03294 80ADC224 0C2B663D */  jal     func_80AD98F4              
/* 03298 80ADC228 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 0329C 80ADC22C 10000023 */  beq     $zero, $zero, .L80ADC2BC   
/* 032A0 80ADC230 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 032A4 80ADC234 920F0194 */  lbu     $t7, 0x0194($s0)           ## 00000194
.L80ADC238:
/* 032A8 80ADC238 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 032AC 80ADC23C 15E0000E */  bne     $t7, $zero, .L80ADC278     
/* 032B0 80ADC240 00000000 */  nop
/* 032B4 80ADC244 1441000C */  bne     $v0, $at, .L80ADC278       
/* 032B8 80ADC248 00000000 */  nop
/* 032BC 80ADC24C 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 032C0 80ADC250 3C1880AE */  lui     $t8, %hi(func_80ADB770)    ## $t8 = 80AE0000
/* 032C4 80ADC254 2718B770 */  addiu   $t8, $t8, %lo(func_80ADB770) ## $t8 = 80ADB770
/* 032C8 80ADC258 17190007 */  bne     $t8, $t9, .L80ADC278       
/* 032CC 80ADC25C 00000000 */  nop
/* 032D0 80ADC260 8608019C */  lh      $t0, 0x019C($s0)           ## 0000019C
/* 032D4 80ADC264 2409FFD3 */  addiu   $t1, $zero, 0xFFD3         ## $t1 = FFFFFFD3
/* 032D8 80ADC268 55000014 */  bnel    $t0, $zero, .L80ADC2BC     
/* 032DC 80ADC26C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 032E0 80ADC270 10000011 */  beq     $zero, $zero, .L80ADC2B8   
/* 032E4 80ADC274 A609019C */  sh      $t1, 0x019C($s0)           ## 0000019C
.L80ADC278:
/* 032E8 80ADC278 0C00D58A */  jal     Actor_ApplyDamage
              
/* 032EC 80ADC27C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 032F0 80ADC280 10400006 */  beq     $v0, $zero, .L80ADC29C     
/* 032F4 80ADC284 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 032F8 80ADC288 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 032FC 80ADC28C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 03300 80ADC290 24053875 */  addiu   $a1, $zero, 0x3875         ## $a1 = 00003875
/* 03304 80ADC294 10000006 */  beq     $zero, $zero, .L80ADC2B0   
/* 03308 80ADC298 00000000 */  nop
.L80ADC29C:
/* 0330C 80ADC29C 0C00CB1F */  jal     func_80032C7C              
/* 03310 80ADC2A0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 03314 80ADC2A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03318 80ADC2A8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0331C 80ADC2AC 24053886 */  addiu   $a1, $zero, 0x3886         ## $a1 = 00003886
.L80ADC2B0:
/* 03320 80ADC2B0 0C2B6576 */  jal     func_80AD95D8              
/* 03324 80ADC2B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ADC2B8:
/* 03328 80ADC2B8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ADC2BC:
/* 0332C 80ADC2BC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03330 80ADC2C0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 03334 80ADC2C4 03E00008 */  jr      $ra                        
/* 03338 80ADC2C8 00000000 */  nop
