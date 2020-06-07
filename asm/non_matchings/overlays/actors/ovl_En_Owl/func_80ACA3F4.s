glabel func_80ACA3F4
/* 004D4 80ACA3F4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 004D8 80ACA3F8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 004DC 80ACA3FC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 004E0 80ACA400 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004E4 80ACA404 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 004E8 80ACA408 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 004EC 80ACA40C 0C00BC65 */  jal     func_8002F194              
/* 004F0 80ACA410 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 004F4 80ACA414 1040002E */  beq     $v0, $zero, .L80ACA4D0     
/* 004F8 80ACA418 C7A20034 */  lwc1    $f2, 0x0034($sp)           
/* 004FC 80ACA41C 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00500 80ACA420 24010FFF */  addiu   $at, $zero, 0x0FFF         ## $at = 00000FFF
/* 00504 80ACA424 15C10006 */  bne     $t6, $at, .L80ACA440       
/* 00508 80ACA428 00000000 */  nop
/* 0050C 80ACA42C 960F03FC */  lhu     $t7, 0x03FC($s0)           ## 000003FC
/* 00510 80ACA430 2402FF9C */  addiu   $v0, $zero, 0xFF9C         ## $v0 = FFFFFF9C
/* 00514 80ACA434 35F80040 */  ori     $t8, $t7, 0x0040           ## $t8 = 00000040
/* 00518 80ACA438 1000001B */  beq     $zero, $zero, .L80ACA4A8   
/* 0051C 80ACA43C A61803FC */  sh      $t8, 0x03FC($s0)           ## 000003FC
.L80ACA440:
/* 00520 80ACA440 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00524 80ACA444 00000000 */  nop
/* 00528 80ACA448 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0052C 80ACA44C 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00530 80ACA450 97B9003A */  lhu     $t9, 0x003A($sp)           
/* 00534 80ACA454 97AB003A */  lhu     $t3, 0x003A($sp)           
/* 00538 80ACA458 4604003C */  c.lt.s  $f0, $f4                   
/* 0053C 80ACA45C 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 00540 80ACA460 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 00544 80ACA464 45000009 */  bc1f    .L80ACA48C                 
/* 00548 80ACA468 00000000 */  nop
/* 0054C 80ACA46C 11000003 */  beq     $t0, $zero, .L80ACA47C     
/* 00550 80ACA470 2402FF9D */  addiu   $v0, $zero, 0xFF9D         ## $v0 = FFFFFF9D
/* 00554 80ACA474 10000001 */  beq     $zero, $zero, .L80ACA47C   
/* 00558 80ACA478 2402FF9F */  addiu   $v0, $zero, 0xFF9F         ## $v0 = FFFFFF9F
.L80ACA47C:
/* 0055C 80ACA47C 960903FC */  lhu     $t1, 0x03FC($s0)           ## 000003FC
/* 00560 80ACA480 352A0040 */  ori     $t2, $t1, 0x0040           ## $t2 = 00000040
/* 00564 80ACA484 10000008 */  beq     $zero, $zero, .L80ACA4A8   
/* 00568 80ACA488 A60A03FC */  sh      $t2, 0x03FC($s0)           ## 000003FC
.L80ACA48C:
/* 0056C 80ACA48C 11800003 */  beq     $t4, $zero, .L80ACA49C     
/* 00570 80ACA490 2402FF9E */  addiu   $v0, $zero, 0xFF9E         ## $v0 = FFFFFF9E
/* 00574 80ACA494 10000001 */  beq     $zero, $zero, .L80ACA49C   
/* 00578 80ACA498 2402FFA0 */  addiu   $v0, $zero, 0xFFA0         ## $v0 = FFFFFFA0
.L80ACA49C:
/* 0057C 80ACA49C 960D03FC */  lhu     $t5, 0x03FC($s0)           ## 000003FC
/* 00580 80ACA4A0 31AEFFBF */  andi    $t6, $t5, 0xFFBF           ## $t6 = 00000000
/* 00584 80ACA4A4 A60E03FC */  sh      $t6, 0x03FC($s0)           ## 000003FC
.L80ACA4A8:
/* 00588 80ACA4A8 00023400 */  sll     $a2, $v0, 16               
/* 0058C 80ACA4AC 00063403 */  sra     $a2, $a2, 16               
/* 00590 80ACA4B0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00594 80ACA4B4 240521FC */  addiu   $a1, $zero, 0x21FC         ## $a1 = 000021FC
/* 00598 80ACA4B8 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 0059C 80ACA4BC 0C02003E */  jal     func_800800F8              
/* 005A0 80ACA4C0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 005A4 80ACA4C4 A6020402 */  sh      $v0, 0x0402($s0)           ## 00000402
/* 005A8 80ACA4C8 1000001E */  beq     $zero, $zero, .L80ACA544   
/* 005AC 80ACA4CC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80ACA4D0:
/* 005B0 80ACA4D0 97AF0032 */  lhu     $t7, 0x0032($sp)           
/* 005B4 80ACA4D4 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 005B8 80ACA4D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005BC 80ACA4DC A60F010E */  sh      $t7, 0x010E($s0)           ## 0000010E
/* 005C0 80ACA4E0 97B8003A */  lhu     $t8, 0x003A($sp)           
/* 005C4 80ACA4E4 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 005C8 80ACA4E8 53200006 */  beql    $t9, $zero, .L80ACA504     
/* 005CC 80ACA4EC 44810000 */  mtc1    $at, $f0                   ## $f0 = 1000.00
/* 005D0 80ACA4F0 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 005D4 80ACA4F4 44810000 */  mtc1    $at, $f0                   ## $f0 = 200.00
/* 005D8 80ACA4F8 10000004 */  beq     $zero, $zero, .L80ACA50C   
/* 005DC 80ACA4FC C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 005E0 80ACA500 44810000 */  mtc1    $at, $f0                   ## $f0 = 200.00
.L80ACA504:
/* 005E4 80ACA504 00000000 */  nop
/* 005E8 80ACA508 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
.L80ACA50C:
/* 005EC 80ACA50C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 005F0 80ACA510 4602303C */  c.lt.s  $f6, $f2                   
/* 005F4 80ACA514 00000000 */  nop
/* 005F8 80ACA518 4502000A */  bc1fl   .L80ACA544                 
/* 005FC 80ACA51C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00600 80ACA520 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 00604 80ACA524 44061000 */  mfc1    $a2, $f2                   
/* 00608 80ACA528 44070000 */  mfc1    $a3, $f0                   
/* 0060C 80ACA52C 01014825 */  or      $t1, $t0, $at              ## $t1 = 00010000
/* 00610 80ACA530 AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
/* 00614 80ACA534 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00618 80ACA538 0C00BC71 */  jal     func_8002F1C4              
/* 0061C 80ACA53C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00620 80ACA540 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80ACA544:
/* 00624 80ACA544 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00628 80ACA548 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0062C 80ACA54C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00630 80ACA550 03E00008 */  jr      $ra                        
/* 00634 80ACA554 00000000 */  nop
