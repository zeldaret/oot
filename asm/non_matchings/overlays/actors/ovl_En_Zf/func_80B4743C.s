glabel func_80B4743C
/* 033EC 80B4743C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 033F0 80B47440 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 033F4 80B47444 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 033F8 80B47448 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 033FC 80B4744C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 03400 80B47450 860E0402 */  lh      $t6, 0x0402($s0)           ## 00000402
/* 03404 80B47454 3C1880B5 */  lui     $t8, %hi(D_80B4A090)       ## $t8 = 80B50000
/* 03408 80B47458 2718A090 */  addiu   $t8, $t8, %lo(D_80B4A090)  ## $t8 = 80B4A090
/* 0340C 80B4745C 000E7880 */  sll     $t7, $t6,  2               
/* 03410 80B47460 01EE7823 */  subu    $t7, $t7, $t6              
/* 03414 80B47464 000F7880 */  sll     $t7, $t7,  2               
/* 03418 80B47468 0C00B6B0 */  jal     func_8002DAC0              
/* 0341C 80B4746C 01F82821 */  addu    $a1, $t7, $t8              
/* 03420 80B47470 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 03424 80B47474 00411821 */  addu    $v1, $v0, $at              
/* 03428 80B47478 00032C00 */  sll     $a1, $v1, 16               
/* 0342C 80B4747C A7A3002E */  sh      $v1, 0x002E($sp)           
/* 03430 80B47480 00052C03 */  sra     $a1, $a1, 16               
/* 03434 80B47484 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 03438 80B47488 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0343C 80B4748C 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 03440 80B47490 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 03444 80B47494 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 03448 80B47498 86190032 */  lh      $t9, 0x0032($s0)           ## 00000032
/* 0344C 80B4749C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 03450 80B474A0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 03454 80B474A4 A61900B6 */  sh      $t9, 0x00B6($s0)           ## 000000B6
/* 03458 80B474A8 10400009 */  beq     $v0, $zero, .L80B474D0     
/* 0345C 80B474AC 87A8002E */  lh      $t0, 0x002E($sp)           
/* 03460 80B474B0 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 03464 80B474B4 01014821 */  addu    $t1, $t0, $at              
/* 03468 80B474B8 A6090032 */  sh      $t1, 0x0032($s0)           ## 00000032
/* 0346C 80B474BC 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 03470 80B474C0 0C2D1DE7 */  jal     func_80B4779C              
/* 03474 80B474C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03478 80B474C8 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 0347C 80B474CC A60A03FA */  sh      $t2, 0x03FA($s0)           ## 000003FA
.L80B474D0:
/* 03480 80B474D0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03484 80B474D4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 03488 80B474D8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0348C 80B474DC 03E00008 */  jr      $ra                        
/* 03490 80B474E0 00000000 */  nop
