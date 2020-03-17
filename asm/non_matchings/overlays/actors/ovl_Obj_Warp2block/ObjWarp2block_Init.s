glabel ObjWarp2block_Init
/* 00558 80BA2348 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0055C 80BA234C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00560 80BA2350 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00564 80BA2354 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00568 80BA2358 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 0056C 80BA235C A48000B8 */  sh      $zero, 0x00B8($a0)         ## 000000B8
/* 00570 80BA2360 848E00B8 */  lh      $t6, 0x00B8($a0)           ## 000000B8
/* 00574 80BA2364 3C0580BA */  lui     $a1, %hi(D_80BA2878)       ## $a1 = 80BA0000
/* 00578 80BA2368 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0057C 80BA236C 24A52878 */  addiu   $a1, $a1, %lo(D_80BA2878)  ## $a1 = 80BA2878
/* 00580 80BA2370 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00584 80BA2374 A48E0034 */  sh      $t6, 0x0034($a0)           ## 00000034
/* 00588 80BA2378 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 0058C 80BA237C 3C0580BA */  lui     $a1, %hi(D_80BA2840)       ## $a1 = 80BA0000
/* 00590 80BA2380 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00594 80BA2384 000FC203 */  sra     $t8, $t7,  8               
/* 00598 80BA2388 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 0059C 80BA238C 00194080 */  sll     $t0, $t9,  2               
/* 005A0 80BA2390 01194023 */  subu    $t0, $t0, $t9              
/* 005A4 80BA2394 00084080 */  sll     $t0, $t0,  2               
/* 005A8 80BA2398 00A82821 */  addu    $a1, $a1, $t0              
/* 005AC 80BA239C 0C00B58B */  jal     Actor_SetScale
              
/* 005B0 80BA23A0 8CA52840 */  lw      $a1, %lo(D_80BA2840)($a1)  
/* 005B4 80BA23A4 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 005B8 80BA23A8 3C0980BA */  lui     $t1, %hi(func_80BA2218)    ## $t1 = 80BA0000
/* 005BC 80BA23AC 25292218 */  addiu   $t1, $t1, %lo(func_80BA2218) ## $t1 = 80BA2218
/* 005C0 80BA23B0 000A5A03 */  sra     $t3, $t2,  8               
/* 005C4 80BA23B4 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 005C8 80BA23B8 000C6880 */  sll     $t5, $t4,  2               
/* 005CC 80BA23BC 01AC6823 */  subu    $t5, $t5, $t4              
/* 005D0 80BA23C0 000D6880 */  sll     $t5, $t5,  2               
/* 005D4 80BA23C4 3C0580BA */  lui     $a1, %hi(D_80BA2844)       ## $a1 = 80BA0000
/* 005D8 80BA23C8 AE090168 */  sw      $t1, 0x0168($s0)           ## 00000168
/* 005DC 80BA23CC 00AD2821 */  addu    $a1, $a1, $t5              
/* 005E0 80BA23D0 8CA52844 */  lw      $a1, %lo(D_80BA2844)($a1)  
/* 005E4 80BA23D4 0C00B56E */  jal     Actor_SetHeight
              
/* 005E8 80BA23D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005EC 80BA23DC 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 005F0 80BA23E0 000E7BC3 */  sra     $t7, $t6, 15               
/* 005F4 80BA23E4 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 005F8 80BA23E8 13000017 */  beq     $t8, $zero, .L80BA2448     
/* 005FC 80BA23EC 00000000 */  nop
/* 00600 80BA23F0 0C2E893A */  jal     func_80BA24E8              
/* 00604 80BA23F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00608 80BA23F8 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 0060C 80BA23FC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00610 80BA2400 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00614 80BA2404 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00618 80BA2408 10400002 */  beq     $v0, $zero, .L80BA2414     
/* 0061C 80BA240C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00620 80BA2410 AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
.L80BA2414:
/* 00624 80BA2414 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00628 80BA2418 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0062C 80BA241C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00630 80BA2420 24840B30 */  addiu   $a0, $a0, 0x0B30           ## $a0 = 06000B30
/* 00634 80BA2424 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00638 80BA2428 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 0063C 80BA242C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00640 80BA2430 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00644 80BA2434 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 00648 80BA2438 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 0064C 80BA243C 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00650 80BA2440 10000003 */  beq     $zero, $zero, .L80BA2450   
/* 00654 80BA2444 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
.L80BA2448:
/* 00658 80BA2448 0C2E8932 */  jal     func_80BA24C8              
/* 0065C 80BA244C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80BA2450:
/* 00660 80BA2450 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00664 80BA2454 86060018 */  lh      $a2, 0x0018($s0)           ## 00000018
/* 00668 80BA2458 3C0480BA */  lui     $a0, %hi(D_80BA28A0)       ## $a0 = 80BA0000
/* 0066C 80BA245C 00023AC3 */  sra     $a3, $v0, 11               
/* 00670 80BA2460 30E70007 */  andi    $a3, $a3, 0x0007           ## $a3 = 00000000
/* 00674 80BA2464 248428A0 */  addiu   $a0, $a0, %lo(D_80BA28A0)  ## $a0 = 80BA28A0
/* 00678 80BA2468 3045FFFF */  andi    $a1, $v0, 0xFFFF           ## $a1 = 00000000
/* 0067C 80BA246C 0C00084C */  jal     osSyncPrintf
              
/* 00680 80BA2470 30C60007 */  andi    $a2, $a2, 0x0007           ## $a2 = 00000000
/* 00684 80BA2474 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00688 80BA2478 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0068C 80BA247C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00690 80BA2480 03E00008 */  jr      $ra                        
/* 00694 80BA2484 00000000 */  nop


