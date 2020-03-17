glabel func_80ACC23C
/* 0231C 80ACC23C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02320 80ACC240 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02324 80ACC244 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02328 80ACC248 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0232C 80ACC24C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02330 80ACC250 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 02334 80ACC254 C48401B0 */  lwc1    $f4, 0x01B0($a0)           ## 000001B0
/* 02338 80ACC258 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0233C 80ACC25C 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 02340 80ACC260 4606203C */  c.lt.s  $f4, $f6                   
/* 02344 80ACC264 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02348 80ACC268 24070384 */  addiu   $a3, $zero, 0x0384         ## $a3 = 00000384
/* 0234C 80ACC26C 240E0258 */  addiu   $t6, $zero, 0x0258         ## $t6 = 00000258
/* 02350 80ACC270 45020005 */  bc1fl   .L80ACC288                 
/* 02354 80ACC274 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 02358 80ACC278 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.50
/* 0235C 80ACC27C 10000009 */  beq     $zero, $zero, .L80ACC2A4   
/* 02360 80ACC280 E4880068 */  swc1    $f8, 0x0068($a0)           ## 00000068
/* 02364 80ACC284 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
.L80ACC288:
/* 02368 80ACC288 86050400 */  lh      $a1, 0x0400($s0)           ## 00000400
/* 0236C 80ACC28C 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 02370 80ACC290 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 02374 80ACC294 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02378 80ACC298 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0237C 80ACC29C 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 02380 80ACC2A0 A60F00B6 */  sh      $t7, 0x00B6($s0)           ## 000000B6
.L80ACC2A4:
/* 02384 80ACC2A4 3C014214 */  lui     $at, 0x4214                ## $at = 42140000
/* 02388 80ACC2A8 44819000 */  mtc1    $at, $f18                  ## $f18 = 37.00
/* 0238C 80ACC2AC C61001B0 */  lwc1    $f16, 0x01B0($s0)          ## 000001B0
/* 02390 80ACC2B0 3C1880AD */  lui     $t8, %hi(func_80ACC00C)    ## $t8 = 80AD0000
/* 02394 80ACC2B4 3C0141A8 */  lui     $at, 0x41A8                ## $at = 41A80000
/* 02398 80ACC2B8 4610903E */  c.le.s  $f18, $f16                 
/* 0239C 80ACC2BC 2718C00C */  addiu   $t8, $t8, %lo(func_80ACC00C) ## $t8 = 80ACC00C
/* 023A0 80ACC2C0 24190005 */  addiu   $t9, $zero, 0x0005         ## $t9 = 00000005
/* 023A4 80ACC2C4 4502000A */  bc1fl   .L80ACC2F0                 
/* 023A8 80ACC2C8 960803FC */  lhu     $t0, 0x03FC($s0)           ## 000003FC
/* 023AC 80ACC2CC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 023B0 80ACC2D0 44812000 */  mtc1    $at, $f4                   ## $f4 = 21.00
/* 023B4 80ACC2D4 AE18040C */  sw      $t8, 0x040C($s0)           ## 0000040C
/* 023B8 80ACC2D8 A61903FE */  sh      $t9, 0x03FE($s0)           ## 000003FE
/* 023BC 80ACC2DC E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 023C0 80ACC2E0 E600006C */  swc1    $f0, 0x006C($s0)           ## 0000006C
/* 023C4 80ACC2E4 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 023C8 80ACC2E8 E60401B0 */  swc1    $f4, 0x01B0($s0)           ## 000001B0
/* 023CC 80ACC2EC 960803FC */  lhu     $t0, 0x03FC($s0)           ## 000003FC
.L80ACC2F0:
/* 023D0 80ACC2F0 35090008 */  ori     $t1, $t0, 0x0008           ## $t1 = 00000008
/* 023D4 80ACC2F4 A60903FC */  sh      $t1, 0x03FC($s0)           ## 000003FC
/* 023D8 80ACC2F8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 023DC 80ACC2FC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 023E0 80ACC300 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 023E4 80ACC304 03E00008 */  jr      $ra                        
/* 023E8 80ACC308 00000000 */  nop


