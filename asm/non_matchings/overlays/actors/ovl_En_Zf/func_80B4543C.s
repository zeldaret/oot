.late_rodata
glabel D_80B4A348
    .float 0.3

glabel D_80B4A34C
    .float 0.3

.text
glabel func_80B4543C
/* 013EC 80B4543C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 013F0 80B45440 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 013F4 80B45444 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 013F8 80B45448 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 013FC 80B4544C 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 01400 80B45450 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01404 80B45454 AFAF002C */  sw      $t7, 0x002C($sp)           
/* 01408 80B45458 849903EC */  lh      $t9, 0x03EC($a0)           ## 000003EC
/* 0140C 80B4545C 8498008A */  lh      $t8, 0x008A($a0)           ## 0000008A
/* 01410 80B45460 848900B6 */  lh      $t1, 0x00B6($a0)           ## 000000B6
/* 01414 80B45464 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01418 80B45468 03194023 */  subu    $t0, $t8, $t9              
/* 0141C 80B4546C 01091823 */  subu    $v1, $t0, $t1              
/* 01420 80B45470 00031C00 */  sll     $v1, $v1, 16               
/* 01424 80B45474 00031C03 */  sra     $v1, $v1, 16               
/* 01428 80B45478 04610004 */  bgez    $v1, .L80B4548C            
/* 0142C 80B4547C 00000000 */  nop
/* 01430 80B45480 00031823 */  subu    $v1, $zero, $v1            
/* 01434 80B45484 00031C00 */  sll     $v1, $v1, 16               
/* 01438 80B45488 00031C03 */  sra     $v1, $v1, 16               
.L80B4548C:
/* 0143C 80B4548C 0C02927F */  jal     SkelAnime_Update
              
/* 01440 80B45490 A7A30026 */  sh      $v1, 0x0026($sp)           
/* 01444 80B45494 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01448 80B45498 0C2D270B */  jal     func_80B49C2C              
/* 0144C 80B4549C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01450 80B454A0 1440007F */  bne     $v0, $zero, .L80B456A0     
/* 01454 80B454A4 87A30026 */  lh      $v1, 0x0026($sp)           
/* 01458 80B454A8 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 0145C 80B454AC 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 01460 80B454B0 5541000F */  bnel    $t2, $at, .L80B454F0       
/* 01464 80B454B4 8FA2002C */  lw      $v0, 0x002C($sp)           
/* 01468 80B454B8 860203F4 */  lh      $v0, 0x03F4($s0)           ## 000003F4
/* 0146C 80B454BC 28611FFE */  slti    $at, $v1, 0x1FFE           
/* 01470 80B454C0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01474 80B454C4 10400005 */  beq     $v0, $zero, .L80B454DC     
/* 01478 80B454C8 244BFFFF */  addiu   $t3, $v0, 0xFFFF           ## $t3 = FFFFFFFF
/* 0147C 80B454CC 10200074 */  beq     $at, $zero, .L80B456A0     
/* 01480 80B454D0 A60B03F4 */  sh      $t3, 0x03F4($s0)           ## 000003F4
/* 01484 80B454D4 10000005 */  beq     $zero, $zero, .L80B454EC   
/* 01488 80B454D8 A60003F4 */  sh      $zero, 0x03F4($s0)         ## 000003F4
.L80B454DC:
/* 0148C 80B454DC 0C2D13A3 */  jal     func_80B44E8C              
/* 01490 80B454E0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01494 80B454E4 5440006F */  bnel    $v0, $zero, .L80B456A4     
/* 01498 80B454E8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B454EC:
/* 0149C 80B454EC 8FA2002C */  lw      $v0, 0x002C($sp)           
.L80B454F0:
/* 014A0 80B454F0 860D00B6 */  lh      $t5, 0x00B6($s0)           ## 000000B6
/* 014A4 80B454F4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 014A8 80B454F8 844C00B6 */  lh      $t4, 0x00B6($v0)           ## 000000B6
/* 014AC 80B454FC 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 014B0 80B45500 018D1823 */  subu    $v1, $t4, $t5              
/* 014B4 80B45504 00031C00 */  sll     $v1, $v1, 16               
/* 014B8 80B45508 00031C03 */  sra     $v1, $v1, 16               
/* 014BC 80B4550C 04630005 */  bgezl   $v1, .L80B45524            
/* 014C0 80B45510 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 014C4 80B45514 00031823 */  subu    $v1, $zero, $v1            
/* 014C8 80B45518 00031C00 */  sll     $v1, $v1, 16               
/* 014CC 80B4551C 00031C03 */  sra     $v1, $v1, 16               
/* 014D0 80B45520 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
.L80B45524:
/* 014D4 80B45524 4606203C */  c.lt.s  $f4, $f6                   
/* 014D8 80B45528 00000000 */  nop
/* 014DC 80B4552C 45020010 */  bc1fl   .L80B45570                 
/* 014E0 80B45530 8E0203F0 */  lw      $v0, 0x03F0($s0)           ## 000003F0
/* 014E4 80B45534 804E0843 */  lb      $t6, 0x0843($v0)           ## 00000843
/* 014E8 80B45538 28611F40 */  slti    $at, $v1, 0x1F40           
/* 014EC 80B4553C 51C0000C */  beql    $t6, $zero, .L80B45570     
/* 014F0 80B45540 8E0203F0 */  lw      $v0, 0x03F0($s0)           ## 000003F0
/* 014F4 80B45544 5420000A */  bnel    $at, $zero, .L80B45570     
/* 014F8 80B45548 8E0203F0 */  lw      $v0, 0x03F0($s0)           ## 000003F0
/* 014FC 80B4554C 8602008A */  lh      $v0, 0x008A($s0)           ## 0000008A
/* 01500 80B45550 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01504 80B45554 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 01508 80B45558 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 0150C 80B4555C 0C2D20F9 */  jal     func_80B483E4              
/* 01510 80B45560 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01514 80B45564 1000004F */  beq     $zero, $zero, .L80B456A4   
/* 01518 80B45568 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0151C 80B4556C 8E0203F0 */  lw      $v0, 0x03F0($s0)           ## 000003F0
.L80B45570:
/* 01520 80B45570 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01524 80B45574 10400003 */  beq     $v0, $zero, .L80B45584     
/* 01528 80B45578 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 0152C 80B4557C 10000048 */  beq     $zero, $zero, .L80B456A0   
/* 01530 80B45580 AE0F03F0 */  sw      $t7, 0x03F0($s0)           ## 000003F0
.L80B45584:
/* 01534 80B45584 0C00B821 */  jal     Actor_YawInRangeWithPlayer              
/* 01538 80B45588 24051555 */  addiu   $a1, $zero, 0x1555         ## $a1 = 00001555
/* 0153C 80B4558C 10400038 */  beq     $v0, $zero, .L80B45670     
/* 01540 80B45590 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 01544 80B45594 C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 01548 80B45598 44814000 */  mtc1    $at, $f8                   ## $f8 = 200.00
/* 0154C 80B4559C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01550 80B455A0 4608003C */  c.lt.s  $f0, $f8                   
/* 01554 80B455A4 00000000 */  nop
/* 01558 80B455A8 4500001F */  bc1f    .L80B45628                 
/* 0155C 80B455AC 00000000 */  nop
/* 01560 80B455B0 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 01564 80B455B4 00000000 */  nop
/* 01568 80B455B8 4600503C */  c.lt.s  $f10, $f0                  
/* 0156C 80B455BC 00000000 */  nop
/* 01570 80B455C0 45000019 */  bc1f    .L80B45628                 
/* 01574 80B455C4 00000000 */  nop
/* 01578 80B455C8 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 0157C 80B455CC 00000000 */  nop
/* 01580 80B455D0 3C0180B5 */  lui     $at, %hi(D_80B4A348)       ## $at = 80B50000
/* 01584 80B455D4 C430A348 */  lwc1    $f16, %lo(D_80B4A348)($at) 
/* 01588 80B455D8 4610003C */  c.lt.s  $f0, $f16                  
/* 0158C 80B455DC 00000000 */  nop
/* 01590 80B455E0 45000011 */  bc1f    .L80B45628                 
/* 01594 80B455E4 00000000 */  nop
/* 01598 80B455E8 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 0159C 80B455EC 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 015A0 80B455F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015A4 80B455F4 17010008 */  bne     $t8, $at, .L80B45618       
/* 015A8 80B455F8 00000000 */  nop
/* 015AC 80B455FC 8602008A */  lh      $v0, 0x008A($s0)           ## 0000008A
/* 015B0 80B45600 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015B4 80B45604 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 015B8 80B45608 0C2D178C */  jal     func_80B45E30              
/* 015BC 80B4560C A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 015C0 80B45610 1000001A */  beq     $zero, $zero, .L80B4567C   
/* 015C4 80B45614 8FB90034 */  lw      $t9, 0x0034($sp)           
.L80B45618:
/* 015C8 80B45618 0C2D20F9 */  jal     func_80B483E4              
/* 015CC 80B4561C 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 015D0 80B45620 10000016 */  beq     $zero, $zero, .L80B4567C   
/* 015D4 80B45624 8FB90034 */  lw      $t9, 0x0034($sp)           
.L80B45628:
/* 015D8 80B45628 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 015DC 80B4562C 00000000 */  nop
/* 015E0 80B45630 3C0180B5 */  lui     $at, %hi(D_80B4A34C)       ## $at = 80B50000
/* 015E4 80B45634 C432A34C */  lwc1    $f18, %lo(D_80B4A34C)($at) 
/* 015E8 80B45638 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 015EC 80B4563C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015F0 80B45640 4600903C */  c.lt.s  $f18, $f0                  
/* 015F4 80B45644 00000000 */  nop
/* 015F8 80B45648 45000005 */  bc1f    .L80B45660                 
/* 015FC 80B4564C 00000000 */  nop
/* 01600 80B45650 0C2D15AD */  jal     func_80B456B4              
/* 01604 80B45654 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01608 80B45658 10000008 */  beq     $zero, $zero, .L80B4567C   
/* 0160C 80B4565C 8FB90034 */  lw      $t9, 0x0034($sp)           
.L80B45660:
/* 01610 80B45660 0C2D20F9 */  jal     func_80B483E4              
/* 01614 80B45664 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01618 80B45668 10000004 */  beq     $zero, $zero, .L80B4567C   
/* 0161C 80B4566C 8FB90034 */  lw      $t9, 0x0034($sp)           
.L80B45670:
/* 01620 80B45670 0C2D1813 */  jal     func_80B4604C              
/* 01624 80B45674 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01628 80B45678 8FB90034 */  lw      $t9, 0x0034($sp)           
.L80B4567C:
/* 0162C 80B4567C 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 01630 80B45680 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01634 80B45684 01194021 */  addu    $t0, $t0, $t9              
/* 01638 80B45688 8D081DE4 */  lw      $t0, 0x1DE4($t0)           ## 00011DE4
/* 0163C 80B4568C 3109005F */  andi    $t1, $t0, 0x005F           ## $t1 = 00000000
/* 01640 80B45690 55200004 */  bnel    $t1, $zero, .L80B456A4     
/* 01644 80B45694 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01648 80B45698 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0164C 80B4569C 24053829 */  addiu   $a1, $zero, 0x3829         ## $a1 = 00003829
.L80B456A0:
/* 01650 80B456A0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B456A4:
/* 01654 80B456A4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01658 80B456A8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0165C 80B456AC 03E00008 */  jr      $ra                        
/* 01660 80B456B0 00000000 */  nop
