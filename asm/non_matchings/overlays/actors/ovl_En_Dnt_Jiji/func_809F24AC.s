glabel func_809F24AC
/* 009CC 809F24AC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 009D0 809F24B0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 009D4 809F24B4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 009D8 809F24B8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 009DC 809F24BC C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 009E0 809F24C0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009E4 809F24C4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 009E8 809F24C8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 009EC 809F24CC E7A4002C */  swc1    $f4, 0x002C($sp)           
/* 009F0 809F24D0 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 009F4 809F24D4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 009F8 809F24D8 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 009FC 809F24DC 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 00A00 809F24E0 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 00A04 809F24E4 24071388 */  addiu   $a3, $zero, 0x1388         ## $a3 = 00001388
/* 00A08 809F24E8 860E0248 */  lh      $t6, 0x0248($s0)           ## 00000248
/* 00A0C 809F24EC C7A6002C */  lwc1    $f6, 0x002C($sp)           
/* 00A10 809F24F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A14 809F24F4 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 00A18 809F24F8 00000000 */  nop
/* 00A1C 809F24FC 468042A0 */  cvt.s.w $f10, $f8                  
/* 00A20 809F2500 4606503E */  c.le.s  $f10, $f6                  
/* 00A24 809F2504 00000000 */  nop
/* 00A28 809F2508 4502000D */  bc1fl   .L809F2540                 
/* 00A2C 809F250C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A30 809F2510 0C00BC65 */  jal     func_8002F194              
/* 00A34 809F2514 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00A38 809F2518 10400005 */  beq     $v0, $zero, .L809F2530     
/* 00A3C 809F251C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A40 809F2520 3C0F809F */  lui     $t7, %hi(func_809F2550)    ## $t7 = 809F0000
/* 00A44 809F2524 25EF2550 */  addiu   $t7, $t7, %lo(func_809F2550) ## $t7 = 809F2550
/* 00A48 809F2528 10000004 */  beq     $zero, $zero, .L809F253C   
/* 00A4C 809F252C AE0F022C */  sw      $t7, 0x022C($s0)           ## 0000022C
.L809F2530:
/* 00A50 809F2530 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00A54 809F2534 0C00BCB3 */  jal     func_8002F2CC              
/* 00A58 809F2538 3C0642C8 */  lui     $a2, 0x42C8                ## $a2 = 42C80000
.L809F253C:
/* 00A5C 809F253C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809F2540:
/* 00A60 809F2540 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00A64 809F2544 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00A68 809F2548 03E00008 */  jr      $ra                        
/* 00A6C 809F254C 00000000 */  nop
