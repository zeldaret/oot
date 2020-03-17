glabel func_80AA2354
/* 009B4 80AA2354 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 009B8 80AA2358 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 009BC 80AA235C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 009C0 80AA2360 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 009C4 80AA2364 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 009C8 80AA2368 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 009CC 80AA236C 10A10004 */  beq     $a1, $at, .L80AA2380       
/* 009D0 80AA2370 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 009D4 80AA2374 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 009D8 80AA2378 54A10003 */  bnel    $a1, $at, .L80AA2388       
/* 009DC 80AA237C 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
.L80AA2380:
/* 009E0 80AA2380 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
/* 009E4 80AA2384 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
.L80AA2388:
/* 009E8 80AA2388 5601002E */  bnel    $s0, $at, .L80AA2444       
/* 009EC 80AA238C 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 009F0 80AA2390 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 009F4 80AA2394 3C0144AF */  lui     $at, 0x44AF                ## $at = 44AF0000
/* 009F8 80AA2398 44816000 */  mtc1    $at, $f12                  ## $f12 = 1400.00
/* 009FC 80AA239C 44067000 */  mfc1    $a2, $f14                  
/* 00A00 80AA23A0 0C034261 */  jal     Matrix_Translate              
/* 00A04 80AA23A4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00A08 80AA23A8 8FAF004C */  lw      $t7, 0x004C($sp)           
/* 00A0C 80AA23AC 27AE002C */  addiu   $t6, $sp, 0x002C           ## $t6 = FFFFFFF4
/* 00A10 80AA23B0 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 00A14 80AA23B4 89F901E8 */  lwl     $t9, 0x01E8($t7)           ## 000001E8
/* 00A18 80AA23B8 99F901EB */  lwr     $t9, 0x01EB($t7)           ## 000001EB
/* 00A1C 80AA23BC 44814000 */  mtc1    $at, $f8                   ## $f8 = 32768.00
/* 00A20 80AA23C0 3C0180AA */  lui     $at, %hi(D_80AA2938)       ## $at = 80AA0000
/* 00A24 80AA23C4 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 00A28 80AA23C8 95F901EC */  lhu     $t9, 0x01EC($t7)           ## 000001EC
/* 00A2C 80AA23CC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00A30 80AA23D0 A5D90004 */  sh      $t9, 0x0004($t6)           ## FFFFFFF8
/* 00A34 80AA23D4 87A8002E */  lh      $t0, 0x002E($sp)           
/* 00A38 80AA23D8 C4302938 */  lwc1    $f16, %lo(D_80AA2938)($at) 
/* 00A3C 80AA23DC 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 00A40 80AA23E0 00000000 */  nop
/* 00A44 80AA23E4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00A48 80AA23E8 46083283 */  div.s   $f10, $f6, $f8             
/* 00A4C 80AA23EC 46105302 */  mul.s   $f12, $f10, $f16           
/* 00A50 80AA23F0 0C0342DC */  jal     Matrix_RotateX              
/* 00A54 80AA23F4 00000000 */  nop
/* 00A58 80AA23F8 87A9002C */  lh      $t1, 0x002C($sp)           
/* 00A5C 80AA23FC 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 00A60 80AA2400 44813000 */  mtc1    $at, $f6                   ## $f6 = 32768.00
/* 00A64 80AA2404 44899000 */  mtc1    $t1, $f18                  ## $f18 = 0.00
/* 00A68 80AA2408 3C0180AA */  lui     $at, %hi(D_80AA293C)       ## $at = 80AA0000
/* 00A6C 80AA240C C42A293C */  lwc1    $f10, %lo(D_80AA293C)($at) 
/* 00A70 80AA2410 46809120 */  cvt.s.w $f4, $f18                  
/* 00A74 80AA2414 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00A78 80AA2418 46062203 */  div.s   $f8, $f4, $f6              
/* 00A7C 80AA241C 460A4302 */  mul.s   $f12, $f8, $f10            
/* 00A80 80AA2420 0C0343B5 */  jal     Matrix_RotateZ              
/* 00A84 80AA2424 00000000 */  nop
/* 00A88 80AA2428 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 00A8C 80AA242C 3C01C4AF */  lui     $at, 0xC4AF                ## $at = C4AF0000
/* 00A90 80AA2430 44816000 */  mtc1    $at, $f12                  ## $f12 = -1400.00
/* 00A94 80AA2434 44067000 */  mfc1    $a2, $f14                  
/* 00A98 80AA2438 0C034261 */  jal     Matrix_Translate              
/* 00A9C 80AA243C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00AA0 80AA2440 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
.L80AA2444:
/* 00AA4 80AA2444 16010022 */  bne     $s0, $at, .L80AA24D0       
/* 00AA8 80AA2448 8FAB004C */  lw      $t3, 0x004C($sp)           
/* 00AAC 80AA244C 896D01EE */  lwl     $t5, 0x01EE($t3)           ## 000001EE
/* 00AB0 80AA2450 996D01F1 */  lwr     $t5, 0x01F1($t3)           ## 000001F1
/* 00AB4 80AA2454 27AA002C */  addiu   $t2, $sp, 0x002C           ## $t2 = FFFFFFF4
/* 00AB8 80AA2458 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 00ABC 80AA245C AD4D0000 */  sw      $t5, 0x0000($t2)           ## FFFFFFF4
/* 00AC0 80AA2460 956D01F2 */  lhu     $t5, 0x01F2($t3)           ## 000001F2
/* 00AC4 80AA2464 44812000 */  mtc1    $at, $f4                   ## $f4 = 32768.00
/* 00AC8 80AA2468 3C0180AA */  lui     $at, %hi(D_80AA2940)       ## $at = 80AA0000
/* 00ACC 80AA246C A54D0004 */  sh      $t5, 0x0004($t2)           ## FFFFFFF8
/* 00AD0 80AA2470 87AE002E */  lh      $t6, 0x002E($sp)           
/* 00AD4 80AA2474 C4282940 */  lwc1    $f8, %lo(D_80AA2940)($at)  
/* 00AD8 80AA2478 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00ADC 80AA247C 000E7823 */  subu    $t7, $zero, $t6            
/* 00AE0 80AA2480 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 00AE4 80AA2484 00000000 */  nop
/* 00AE8 80AA2488 468084A0 */  cvt.s.w $f18, $f16                 
/* 00AEC 80AA248C 46049183 */  div.s   $f6, $f18, $f4             
/* 00AF0 80AA2490 46083302 */  mul.s   $f12, $f6, $f8             
/* 00AF4 80AA2494 0C034348 */  jal     Matrix_RotateY              
/* 00AF8 80AA2498 00000000 */  nop
/* 00AFC 80AA249C 87B8002C */  lh      $t8, 0x002C($sp)           
/* 00B00 80AA24A0 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 00B04 80AA24A4 44819000 */  mtc1    $at, $f18                  ## $f18 = 32768.00
/* 00B08 80AA24A8 0018C823 */  subu    $t9, $zero, $t8            
/* 00B0C 80AA24AC 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 00B10 80AA24B0 3C0180AA */  lui     $at, %hi(D_80AA2944)       ## $at = 80AA0000
/* 00B14 80AA24B4 C4262944 */  lwc1    $f6, %lo(D_80AA2944)($at)  
/* 00B18 80AA24B8 46805420 */  cvt.s.w $f16, $f10                 
/* 00B1C 80AA24BC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00B20 80AA24C0 46128103 */  div.s   $f4, $f16, $f18            
/* 00B24 80AA24C4 46062302 */  mul.s   $f12, $f4, $f6             
/* 00B28 80AA24C8 0C0342DC */  jal     Matrix_RotateX              
/* 00B2C 80AA24CC 00000000 */  nop
.L80AA24D0:
/* 00B30 80AA24D0 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 00B34 80AA24D4 12010005 */  beq     $s0, $at, .L80AA24EC       
/* 00B38 80AA24D8 8FA8004C */  lw      $t0, 0x004C($sp)           
/* 00B3C 80AA24DC 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 00B40 80AA24E0 12010002 */  beq     $s0, $at, .L80AA24EC       
/* 00B44 80AA24E4 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 00B48 80AA24E8 16010024 */  bne     $s0, $at, .L80AA257C       
.L80AA24EC:
/* 00B4C 80AA24EC 00104880 */  sll     $t1, $s0,  2               
/* 00B50 80AA24F0 01304823 */  subu    $t1, $t1, $s0              
/* 00B54 80AA24F4 00094840 */  sll     $t1, $t1,  1               
/* 00B58 80AA24F8 01091821 */  addu    $v1, $t0, $t1              
/* 00B5C 80AA24FC 84640214 */  lh      $a0, 0x0214($v1)           ## 00000214
/* 00B60 80AA2500 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00B64 80AA2504 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 00B68 80AA2508 8FA20048 */  lw      $v0, 0x0048($sp)           
/* 00B6C 80AA250C 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00B70 80AA2510 44818000 */  mtc1    $at, $f16                  ## $f16 = 200.00
/* 00B74 80AA2514 844A0002 */  lh      $t2, 0x0002($v0)           ## 00000002
/* 00B78 80AA2518 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 00B7C 80AA251C 46100482 */  mul.s   $f18, $f0, $f16            
/* 00B80 80AA2520 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 00B84 80AA2524 00000000 */  nop
/* 00B88 80AA2528 468042A0 */  cvt.s.w $f10, $f8                  
/* 00B8C 80AA252C 46125100 */  add.s   $f4, $f10, $f18            
/* 00B90 80AA2530 4600218D */  trunc.w.s $f6, $f4                   
/* 00B94 80AA2534 440C3000 */  mfc1    $t4, $f6                   
/* 00B98 80AA2538 00000000 */  nop
/* 00B9C 80AA253C A44C0002 */  sh      $t4, 0x0002($v0)           ## 00000002
/* 00BA0 80AA2540 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00BA4 80AA2544 84640216 */  lh      $a0, 0x0216($v1)           ## 00000216
/* 00BA8 80AA2548 8FA20048 */  lw      $v0, 0x0048($sp)           
/* 00BAC 80AA254C 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00BB0 80AA2550 44815000 */  mtc1    $at, $f10                  ## $f10 = 200.00
/* 00BB4 80AA2554 844D0004 */  lh      $t5, 0x0004($v0)           ## 00000004
/* 00BB8 80AA2558 460A0482 */  mul.s   $f18, $f0, $f10            
/* 00BBC 80AA255C 448D4000 */  mtc1    $t5, $f8                   ## $f8 = 0.00
/* 00BC0 80AA2560 00000000 */  nop
/* 00BC4 80AA2564 46804420 */  cvt.s.w $f16, $f8                  
/* 00BC8 80AA2568 46128100 */  add.s   $f4, $f16, $f18            
/* 00BCC 80AA256C 4600218D */  trunc.w.s $f6, $f4                   
/* 00BD0 80AA2570 440F3000 */  mfc1    $t7, $f6                   
/* 00BD4 80AA2574 00000000 */  nop
/* 00BD8 80AA2578 A44F0004 */  sh      $t7, 0x0004($v0)           ## 00000004
.L80AA257C:
/* 00BDC 80AA257C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00BE0 80AA2580 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00BE4 80AA2584 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00BE8 80AA2588 03E00008 */  jr      $ra                        
/* 00BEC 80AA258C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000


