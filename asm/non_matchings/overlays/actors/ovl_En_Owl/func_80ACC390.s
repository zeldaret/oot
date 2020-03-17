glabel func_80ACC390
/* 02470 80ACC390 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 02474 80ACC394 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 02478 80ACC398 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0247C 80ACC39C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 02480 80ACC3A0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02484 80ACC3A4 8C8403DC */  lw      $a0, 0x03DC($a0)           ## 000003DC
/* 02488 80ACC3A8 960303FE */  lhu     $v1, 0x03FE($s0)           ## 000003FE
/* 0248C 80ACC3AC 3C1980AD */  lui     $t9, %hi(func_80ACC460)    ## $t9 = 80AD0000
/* 02490 80ACC3B0 2739C460 */  addiu   $t9, $t9, %lo(func_80ACC460) ## $t9 = 80ACC460
/* 02494 80ACC3B4 18600012 */  blez    $v1, .L80ACC400            
/* 02498 80ACC3B8 24080006 */  addiu   $t0, $zero, 0x0006         ## $t0 = 00000006
/* 0249C 80ACC3BC 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 024A0 80ACC3C0 31C4FFFF */  andi    $a0, $t6, 0xFFFF           ## $a0 = 0000FFFF
/* 024A4 80ACC3C4 24010333 */  addiu   $at, $zero, 0x0333         ## $at = 00000333
/* 024A8 80ACC3C8 00810019 */  multu   $a0, $at                   
/* 024AC 80ACC3CC A60E03FE */  sh      $t6, 0x03FE($s0)           ## 000003FE
/* 024B0 80ACC3D0 00002012 */  mflo    $a0                        
/* 024B4 80ACC3D4 00042400 */  sll     $a0, $a0, 16               
/* 024B8 80ACC3D8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 024BC 80ACC3DC 00042403 */  sra     $a0, $a0, 16               
/* 024C0 80ACC3E0 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 024C4 80ACC3E4 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 024C8 80ACC3E8 00000000 */  nop
/* 024CC 80ACC3EC 46040182 */  mul.s   $f6, $f0, $f4              
/* 024D0 80ACC3F0 4600320D */  trunc.w.s $f8, $f6                   
/* 024D4 80ACC3F4 44184000 */  mfc1    $t8, $f8                   
/* 024D8 80ACC3F8 10000014 */  beq     $zero, $zero, .L80ACC44C   
/* 024DC 80ACC3FC A61800B8 */  sh      $t8, 0x00B8($s0)           ## 000000B8
.L80ACC400:
/* 024E0 80ACC400 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 024E4 80ACC404 AE190410 */  sw      $t9, 0x0410($s0)           ## 00000410
/* 024E8 80ACC408 A60803FE */  sh      $t0, 0x03FE($s0)           ## 000003FE
/* 024EC 80ACC40C 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 024F0 80ACC410 248415CC */  addiu   $a0, $a0, 0x15CC           ## $a0 = 060015CC
/* 024F4 80ACC414 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 024F8 80ACC418 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 024FC 80ACC41C 44819000 */  mtc1    $at, $f18                  ## $f18 = 5.00
/* 02500 80ACC420 46805420 */  cvt.s.w $f16, $f10                 
/* 02504 80ACC424 8E0403DC */  lw      $a0, 0x03DC($s0)           ## 000003DC
/* 02508 80ACC428 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0250C 80ACC42C 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 02510 80ACC430 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 02514 80ACC434 24A515CC */  addiu   $a1, $a1, 0x15CC           ## $a1 = 060015CC
/* 02518 80ACC438 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 0251C 80ACC43C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02520 80ACC440 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02524 80ACC444 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 02528 80ACC448 E7B20018 */  swc1    $f18, 0x0018($sp)          
.L80ACC44C:
/* 0252C 80ACC44C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 02530 80ACC450 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 02534 80ACC454 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02538 80ACC458 03E00008 */  jr      $ra                        
/* 0253C 80ACC45C 00000000 */  nop


