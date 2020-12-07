glabel func_80A4A368
/* 014A8 80A4A368 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 014AC 80A4A36C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 014B0 80A4A370 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 014B4 80A4A374 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 014B8 80A4A378 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 014BC 80A4A37C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 014C0 80A4A380 0C02927F */  jal     SkelAnime_Update
              
/* 014C4 80A4A384 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 014C8 80A4A388 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 014CC 80A4A38C 0C0295B2 */  jal     Animation_OnFrame              
/* 014D0 80A4A390 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 014D4 80A4A394 14400005 */  bne     $v0, $zero, .L80A4A3AC     
/* 014D8 80A4A398 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 014DC 80A4A39C 0C0295B2 */  jal     Animation_OnFrame              
/* 014E0 80A4A3A0 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 014E4 80A4A3A4 5040000E */  beql    $v0, $zero, .L80A4A3E0     
/* 014E8 80A4A3A8 3C054055 */  lui     $a1, 0x4055                ## $a1 = 40550000
.L80A4A3AC:
/* 014EC 80A4A3AC 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 014F0 80A4A3B0 24053816 */  addiu   $a1, $zero, 0x3816         ## $a1 = 00003816
/* 014F4 80A4A3B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014F8 80A4A3B8 29C10006 */  slti    $at, $t6, 0x0006           
/* 014FC 80A4A3BC 10200005 */  beq     $at, $zero, .L80A4A3D4     
/* 01500 80A4A3C0 00000000 */  nop
/* 01504 80A4A3C4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01508 80A4A3C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0150C 80A4A3CC 10000004 */  beq     $zero, $zero, .L80A4A3E0   
/* 01510 80A4A3D0 3C054055 */  lui     $a1, 0x4055                ## $a1 = 40550000
.L80A4A3D4:
/* 01514 80A4A3D4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01518 80A4A3D8 2405395C */  addiu   $a1, $zero, 0x395C         ## $a1 = 0000395C
/* 0151C 80A4A3DC 3C054055 */  lui     $a1, 0x4055                ## $a1 = 40550000
.L80A4A3E0:
/* 01520 80A4A3E0 34A55555 */  ori     $a1, $a1, 0x5555           ## $a1 = 40555555
/* 01524 80A4A3E4 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 01528 80A4A3E8 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 0152C 80A4A3EC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01530 80A4A3F0 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 01534 80A4A3F4 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 01538 80A4A3F8 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 0153C 80A4A3FC 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 01540 80A4A400 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 01544 80A4A404 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 01548 80A4A408 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 0154C 80A4A40C 86050032 */  lh      $a1, 0x0032($s0)           ## 00000032
/* 01550 80A4A410 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01554 80A4A414 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 01558 80A4A418 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 0155C 80A4A41C 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 01560 80A4A420 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 01564 80A4A424 44813000 */  mtc1    $at, $f6                   ## $f6 = 150.00
/* 01568 80A4A428 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 0156C 80A4A42C 53000005 */  beql    $t8, $zero, .L80A4A444     
/* 01570 80A4A430 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 01574 80A4A434 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01578 80A4A438 00000000 */  nop
/* 0157C 80A4A43C E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 01580 80A4A440 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
.L80A4A444:
/* 01584 80A4A444 4606403E */  c.le.s  $f8, $f6                   
/* 01588 80A4A448 00000000 */  nop
/* 0158C 80A4A44C 45020004 */  bc1fl   .L80A4A460                 
/* 01590 80A4A450 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01594 80A4A454 0C2927E5 */  jal     func_80A49F94              
/* 01598 80A4A458 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0159C 80A4A45C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A4A460:
/* 015A0 80A4A460 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 015A4 80A4A464 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 015A8 80A4A468 03E00008 */  jr      $ra                        
/* 015AC 80A4A46C 00000000 */  nop
