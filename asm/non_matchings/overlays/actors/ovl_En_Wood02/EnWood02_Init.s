.late_rodata
glabel jtbl_80B3BFF0
.word L80B3B3C4
.word L80B3B40C
.word L80B3B438
.word L80B3B3FC
.word L80B3B400
.word L80B3B40C
.word L80B3B3FC
.word L80B3B400
.word L80B3B3FC
.word L80B3B400
.word L80B3B40C
.word L80B3B40C
.word L80B3B3C4
.word L80B3B3FC
.word L80B3B400
.word L80B3B3B4
.word L80B3B3B8
.word L80B3B40C
.word L80B3B3C4
.word L80B3B3FC
.word L80B3B400
.word L80B3B3B4
.word L80B3B3B8
.word L80B3B470
.word L80B3B470
glabel D_80B3C054
    .float 0.6

glabel D_80B3C058
    .float 0.02

glabel D_80B3C05C
 .word 0xC0466666

.text
glabel EnWood02_Init
/* 0033C 80B3B2AC 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00340 80B3B2B0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00344 80B3B2B4 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 00348 80B3B2B8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0034C 80B3B2BC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00350 80B3B2C0 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00354 80B3B2C4 E7A40048 */  swc1    $f4, 0x0048($sp)           
/* 00358 80B3B2C8 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 0035C 80B3B2CC 84830018 */  lh      $v1, 0x0018($a0)           ## 00000018
/* 00360 80B3B2D0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00364 80B3B2D4 00027203 */  sra     $t6, $v0,  8               
/* 00368 80B3B2D8 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 0036C 80B3B2DC 00004025 */  or      $t0, $zero, $zero          ## $t0 = 00000000
/* 00370 80B3B2E0 1060000C */  beq     $v1, $zero, .L80B3B314     
/* 00374 80B3B2E4 A48F014C */  sh      $t7, 0x014C($a0)           ## 0000014C
/* 00378 80B3B2E8 8499014C */  lh      $t9, 0x014C($a0)           ## 0000014C
/* 0037C 80B3B2EC A48000B8 */  sh      $zero, 0x00B8($a0)         ## 000000B8
/* 00380 80B3B2F0 848B00B8 */  lh      $t3, 0x00B8($a0)           ## 000000B8
/* 00384 80B3B2F4 0003C200 */  sll     $t8, $v1,  8               
/* 00388 80B3B2F8 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 0038C 80B3B2FC 03194825 */  or      $t1, $t8, $t9              ## $t1 = 00000000
/* 00390 80B3B300 A4890018 */  sh      $t1, 0x0018($a0)           ## 00000018
/* 00394 80B3B304 A48A014C */  sh      $t2, 0x014C($a0)           ## 0000014C
/* 00398 80B3B308 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 0039C 80B3B30C 10000008 */  beq     $zero, $zero, .L80B3B330   
/* 003A0 80B3B310 A48B0034 */  sh      $t3, 0x0034($a0)           ## 00000034
.L80B3B314:
/* 003A4 80B3B314 860C014C */  lh      $t4, 0x014C($s0)           ## 0000014C
/* 003A8 80B3B318 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 003AC 80B3B31C 318D0080 */  andi    $t5, $t4, 0x0080           ## $t5 = 00000000
/* 003B0 80B3B320 51A00004 */  beql    $t5, $zero, .L80B3B334     
/* 003B4 80B3B324 304F00FF */  andi    $t7, $v0, 0x00FF           ## $t7 = 00000000
/* 003B8 80B3B328 A60E014C */  sh      $t6, 0x014C($s0)           ## 0000014C
/* 003BC 80B3B32C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L80B3B330:
/* 003C0 80B3B330 304F00FF */  andi    $t7, $v0, 0x00FF           ## $t7 = 00000000
.L80B3B334:
/* 003C4 80B3B334 A60F001C */  sh      $t7, 0x001C($s0)           ## 0000001C
/* 003C8 80B3B338 3C0580B4 */  lui     $a1, %hi(D_80B3BF50)       ## $a1 = 80B40000
/* 003CC 80B3B33C 24A5BF50 */  addiu   $a1, $a1, %lo(D_80B3BF50)  ## $a1 = 80B3BF50
/* 003D0 80B3B340 A7A8004E */  sh      $t0, 0x004E($sp)           
/* 003D4 80B3B344 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 003D8 80B3B348 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003DC 80B3B34C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 003E0 80B3B350 87A8004E */  lh      $t0, 0x004E($sp)           
/* 003E4 80B3B354 2841000B */  slti    $at, $v0, 0x000B           
/* 003E8 80B3B358 5020000F */  beql    $at, $zero, .L80B3B398     
/* 003EC 80B3B35C 2C410019 */  sltiu   $at, $v0, 0x0019           
/* 003F0 80B3B360 26050158 */  addiu   $a1, $s0, 0x0158           ## $a1 = 00000158
/* 003F4 80B3B364 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 003F8 80B3B368 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 003FC 80B3B36C 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00400 80B3B370 A7A8004E */  sh      $t0, 0x004E($sp)           
/* 00404 80B3B374 3C0780B4 */  lui     $a3, %hi(D_80B3BF00)       ## $a3 = 80B40000
/* 00408 80B3B378 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0040C 80B3B37C 24E7BF00 */  addiu   $a3, $a3, %lo(D_80B3BF00)  ## $a3 = 80B3BF00
/* 00410 80B3B380 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00414 80B3B384 0C01712B */  jal     Collider_SetCylinder
              
/* 00418 80B3B388 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0041C 80B3B38C 87A8004E */  lh      $t0, 0x004E($sp)           
/* 00420 80B3B390 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00424 80B3B394 2C410019 */  sltiu   $at, $v0, 0x0019           
.L80B3B398:
/* 00428 80B3B398 1020004D */  beq     $at, $zero, .L80B3B4D0     
/* 0042C 80B3B39C 0002C080 */  sll     $t8, $v0,  2               
/* 00430 80B3B3A0 3C0180B4 */  lui     $at, %hi(jtbl_80B3BFF0)       ## $at = 80B40000
/* 00434 80B3B3A4 00380821 */  addu    $at, $at, $t8              
/* 00438 80B3B3A8 8C38BFF0 */  lw      $t8, %lo(jtbl_80B3BFF0)($at)  
/* 0043C 80B3B3AC 03000008 */  jr      $t8                        
/* 00440 80B3B3B0 00000000 */  nop
glabel L80B3B3B4
/* 00444 80B3B3B4 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
glabel L80B3B3B8
/* 00448 80B3B3B8 25080001 */  addiu   $t0, $t0, 0x0001           ## $t0 = 00000002
/* 0044C 80B3B3BC 00084400 */  sll     $t0, $t0, 16               
/* 00450 80B3B3C0 00084403 */  sra     $t0, $t0, 16               
glabel L80B3B3C4
/* 00454 80B3B3C4 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00458 80B3B3C8 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.50
/* 0045C 80B3B3CC 3C01457A */  lui     $at, 0x457A                ## $at = 457A0000
/* 00460 80B3B3D0 44814000 */  mtc1    $at, $f8                   ## $f8 = 4000.00
/* 00464 80B3B3D4 3C0144FA */  lui     $at, 0x44FA                ## $at = 44FA0000
/* 00468 80B3B3D8 44815000 */  mtc1    $at, $f10                  ## $f10 = 2000.00
/* 0046C 80B3B3DC 3C014516 */  lui     $at, 0x4516                ## $at = 45160000
/* 00470 80B3B3E0 E7A60048 */  swc1    $f6, 0x0048($sp)           
/* 00474 80B3B3E4 44818000 */  mtc1    $at, $f16                  ## $f16 = 2400.00
/* 00478 80B3B3E8 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 0047C 80B3B3EC E60800F4 */  swc1    $f8, 0x00F4($s0)           ## 000000F4
/* 00480 80B3B3F0 E60A00F8 */  swc1    $f10, 0x00F8($s0)          ## 000000F8
/* 00484 80B3B3F4 10000036 */  beq     $zero, $zero, .L80B3B4D0   
/* 00488 80B3B3F8 E61000FC */  swc1    $f16, 0x00FC($s0)          ## 000000FC
glabel L80B3B3FC
/* 0048C 80B3B3FC 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
glabel L80B3B400
/* 00490 80B3B400 25080001 */  addiu   $t0, $t0, 0x0001           ## $t0 = 00000002
/* 00494 80B3B404 00084400 */  sll     $t0, $t0, 16               
/* 00498 80B3B408 00084403 */  sra     $t0, $t0, 16               
glabel L80B3B40C
/* 0049C 80B3B40C 3C01457A */  lui     $at, 0x457A                ## $at = 457A0000
/* 004A0 80B3B410 44819000 */  mtc1    $at, $f18                  ## $f18 = 4000.00
/* 004A4 80B3B414 3C014448 */  lui     $at, 0x4448                ## $at = 44480000
/* 004A8 80B3B418 44812000 */  mtc1    $at, $f4                   ## $f4 = 800.00
/* 004AC 80B3B41C 3C0144E1 */  lui     $at, 0x44E1                ## $at = 44E10000
/* 004B0 80B3B420 44813000 */  mtc1    $at, $f6                   ## $f6 = 1800.00
/* 004B4 80B3B424 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 004B8 80B3B428 E61200F4 */  swc1    $f18, 0x00F4($s0)          ## 000000F4
/* 004BC 80B3B42C E60400F8 */  swc1    $f4, 0x00F8($s0)           ## 000000F8
/* 004C0 80B3B430 10000027 */  beq     $zero, $zero, .L80B3B4D0   
/* 004C4 80B3B434 E60600FC */  swc1    $f6, 0x00FC($s0)           ## 000000FC
glabel L80B3B438
/* 004C8 80B3B438 3C0180B4 */  lui     $at, %hi(D_80B3C054)       ## $at = 80B40000
/* 004CC 80B3B43C C428C054 */  lwc1    $f8, %lo(D_80B3C054)($at)  
/* 004D0 80B3B440 3C01457A */  lui     $at, 0x457A                ## $at = 457A0000
/* 004D4 80B3B444 44815000 */  mtc1    $at, $f10                  ## $f10 = 4000.00
/* 004D8 80B3B448 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 004DC 80B3B44C 44818000 */  mtc1    $at, $f16                  ## $f16 = 400.00
/* 004E0 80B3B450 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 004E4 80B3B454 E7A80048 */  swc1    $f8, 0x0048($sp)           
/* 004E8 80B3B458 44819000 */  mtc1    $at, $f18                  ## $f18 = 1000.00
/* 004EC 80B3B45C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 004F0 80B3B460 E60A00F4 */  swc1    $f10, 0x00F4($s0)          ## 000000F4
/* 004F4 80B3B464 E61000F8 */  swc1    $f16, 0x00F8($s0)          ## 000000F8
/* 004F8 80B3B468 10000019 */  beq     $zero, $zero, .L80B3B4D0   
/* 004FC 80B3B46C E61200FC */  swc1    $f18, 0x00FC($s0)          ## 000000FC
glabel L80B3B470
/* 00500 80B3B470 2419004B */  addiu   $t9, $zero, 0x004B         ## $t9 = 0000004B
/* 00504 80B3B474 A219014E */  sb      $t9, 0x014E($s0)           ## 0000014E
/* 00508 80B3B478 3C0180B4 */  lui     $at, %hi(D_80B3C058)       ## $at = 80B40000
/* 0050C 80B3B47C C424C058 */  lwc1    $f4, %lo(D_80B3C058)($at)  
/* 00510 80B3B480 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00514 80B3B484 44816000 */  mtc1    $at, $f12                  ## $f12 = 6.00
/* 00518 80B3B488 A7A8004E */  sh      $t0, 0x004E($sp)           
/* 0051C 80B3B48C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00520 80B3B490 E7A40048 */  swc1    $f4, 0x0048($sp)           
/* 00524 80B3B494 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00528 80B3B498 44816000 */  mtc1    $at, $f12                  ## $f12 = 6.00
/* 0052C 80B3B49C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00530 80B3B4A0 E600005C */  swc1    $f0, 0x005C($s0)           ## 0000005C
/* 00534 80B3B4A4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00538 80B3B4A8 E6000064 */  swc1    $f0, 0x0064($s0)           ## 00000064
/* 0053C 80B3B4AC 3C013FA0 */  lui     $at, 0x3FA0                ## $at = 3FA00000
/* 00540 80B3B4B0 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.25
/* 00544 80B3B4B4 3C0180B4 */  lui     $at, %hi(D_80B3C05C)       ## $at = 80B40000
/* 00548 80B3B4B8 C42AC05C */  lwc1    $f10, %lo(D_80B3C05C)($at) 
/* 0054C 80B3B4BC 46060202 */  mul.s   $f8, $f0, $f6              
/* 00550 80B3B4C0 87A8004E */  lh      $t0, 0x004E($sp)           
/* 00554 80B3B4C4 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00558 80B3B4C8 460A4400 */  add.s   $f16, $f8, $f10            
/* 0055C 80B3B4CC E6100060 */  swc1    $f16, 0x0060($s0)          ## 00000060
.L80B3B4D0:
/* 00560 80B3B4D0 28410005 */  slti    $at, $v0, 0x0005           
/* 00564 80B3B4D4 10200003 */  beq     $at, $zero, .L80B3B4E4     
/* 00568 80B3B4D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0056C 80B3B4DC 10000017 */  beq     $zero, $zero, .L80B3B53C   
/* 00570 80B3B4E0 A2000154 */  sb      $zero, 0x0154($s0)         ## 00000154
.L80B3B4E4:
/* 00574 80B3B4E4 2841000A */  slti    $at, $v0, 0x000A           
/* 00578 80B3B4E8 10200003 */  beq     $at, $zero, .L80B3B4F8     
/* 0057C 80B3B4EC 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00580 80B3B4F0 10000012 */  beq     $zero, $zero, .L80B3B53C   
/* 00584 80B3B4F4 A2090154 */  sb      $t1, 0x0154($s0)           ## 00000154
.L80B3B4F8:
/* 00588 80B3B4F8 2841000B */  slti    $at, $v0, 0x000B           
/* 0058C 80B3B4FC 10200003 */  beq     $at, $zero, .L80B3B50C     
/* 00590 80B3B500 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 00594 80B3B504 1000000D */  beq     $zero, $zero, .L80B3B53C   
/* 00598 80B3B508 A20A0154 */  sb      $t2, 0x0154($s0)           ## 00000154
.L80B3B50C:
/* 0059C 80B3B50C 28410011 */  slti    $at, $v0, 0x0011           
/* 005A0 80B3B510 10200003 */  beq     $at, $zero, .L80B3B520     
/* 005A4 80B3B514 240B0003 */  addiu   $t3, $zero, 0x0003         ## $t3 = 00000003
/* 005A8 80B3B518 10000008 */  beq     $zero, $zero, .L80B3B53C   
/* 005AC 80B3B51C A20B0154 */  sb      $t3, 0x0154($s0)           ## 00000154
.L80B3B520:
/* 005B0 80B3B520 28410018 */  slti    $at, $v0, 0x0018           
/* 005B4 80B3B524 10200004 */  beq     $at, $zero, .L80B3B538     
/* 005B8 80B3B528 240D0005 */  addiu   $t5, $zero, 0x0005         ## $t5 = 00000005
/* 005BC 80B3B52C 240C0004 */  addiu   $t4, $zero, 0x0004         ## $t4 = 00000004
/* 005C0 80B3B530 10000002 */  beq     $zero, $zero, .L80B3B53C   
/* 005C4 80B3B534 A20C0154 */  sb      $t4, 0x0154($s0)           ## 00000154
.L80B3B538:
/* 005C8 80B3B538 A20D0154 */  sb      $t5, 0x0154($s0)           ## 00000154
.L80B3B53C:
/* 005CC 80B3B53C 8FA50048 */  lw      $a1, 0x0048($sp)           
/* 005D0 80B3B540 0C00B58B */  jal     Actor_SetScale
              
/* 005D4 80B3B544 A7A8004E */  sh      $t0, 0x004E($sp)           
/* 005D8 80B3B548 87A8004E */  lh      $t0, 0x004E($sp)           
/* 005DC 80B3B54C 11000057 */  beq     $t0, $zero, .L80B3B6AC     
/* 005E0 80B3B550 A2080153 */  sb      $t0, 0x0153($s0)           ## 00000153
/* 005E4 80B3B554 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 005E8 80B3B558 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 005EC 80B3B55C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 005F0 80B3B560 55C10003 */  bnel    $t6, $at, .L80B3B570       
/* 005F4 80B3B564 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 005F8 80B3B568 24024000 */  addiu   $v0, $zero, 0x4000         ## $v0 = 00004000
/* 005FC 80B3B56C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L80B3B570:
/* 00600 80B3B570 55010032 */  bnel    $t0, $at, .L80B3B63C       
/* 00604 80B3B574 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 00608 80B3B578 8618014C */  lh      $t8, 0x014C($s0)           ## 0000014C
/* 0060C 80B3B57C 920F0154 */  lbu     $t7, 0x0154($s0)           ## 00000154
/* 00610 80B3B580 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00614 80B3B584 0018C900 */  sll     $t9, $t8,  4               
/* 00618 80B3B588 01F94825 */  or      $t1, $t7, $t9              ## $t1 = 00000000
/* 0061C 80B3B58C A2090154 */  sb      $t1, 0x0154($s0)           ## 00000154
/* 00620 80B3B590 A7A20032 */  sh      $v0, 0x0032($sp)           
/* 00624 80B3B594 0C2CEC25 */  jal     func_80B3B094              
/* 00628 80B3B598 8FA50054 */  lw      $a1, 0x0054($sp)           
/* 0062C 80B3B59C 3C0A80B4 */  lui     $t2, %hi(D_80B3BF44+0xA)       ## $t2 = 80B40000
/* 00630 80B3B5A0 854ABF4E */  lh      $t2, %lo(D_80B3BF44+0xA)($t2)  
/* 00634 80B3B5A4 860B0032 */  lh      $t3, 0x0032($s0)           ## 00000032
/* 00638 80B3B5A8 87A20032 */  lh      $v0, 0x0032($sp)           
/* 0063C 80B3B5AC 014B6021 */  addu    $t4, $t2, $t3              
/* 00640 80B3B5B0 01822021 */  addu    $a0, $t4, $v0              
/* 00644 80B3B5B4 00042400 */  sll     $a0, $a0, 16               
/* 00648 80B3B5B8 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 0064C 80B3B5BC 00042403 */  sra     $a0, $a0, 16               
/* 00650 80B3B5C0 3C0180B4 */  lui     $at, %hi(D_80B3C1D0)       ## $at = 80B40000
/* 00654 80B3B5C4 E420C1D0 */  swc1    $f0, %lo(D_80B3C1D0)($at)  
/* 00658 80B3B5C8 3C0D80B4 */  lui     $t5, %hi(D_80B3BF44+0xA)       ## $t5 = 80B40000
/* 0065C 80B3B5CC 85ADBF4E */  lh      $t5, %lo(D_80B3BF44+0xA)($t5)  
/* 00660 80B3B5D0 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 00664 80B3B5D4 87A20032 */  lh      $v0, 0x0032($sp)           
/* 00668 80B3B5D8 01AEC021 */  addu    $t8, $t5, $t6              
/* 0066C 80B3B5DC 03022021 */  addu    $a0, $t8, $v0              
/* 00670 80B3B5E0 00042400 */  sll     $a0, $a0, 16               
/* 00674 80B3B5E4 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00678 80B3B5E8 00042403 */  sra     $a0, $a0, 16               
/* 0067C 80B3B5EC 3C0280B4 */  lui     $v0, %hi(D_80B3C1D4)       ## $v0 = 80B40000
/* 00680 80B3B5F0 2442C1D4 */  addiu   $v0, $v0, %lo(D_80B3C1D4)  ## $v0 = 80B3C1D4
/* 00684 80B3B5F4 3C0380B4 */  lui     $v1, %hi(D_80B3BF2C)       ## $v1 = 80B40000
/* 00688 80B3B5F8 2463BF2C */  addiu   $v1, $v1, %lo(D_80B3BF2C)  ## $v1 = 80B3BF2C
/* 0068C 80B3B5FC E4400000 */  swc1    $f0, 0x0000($v0)           ## 80B3C1D4
/* 00690 80B3B600 C4520000 */  lwc1    $f18, 0x0000($v0)          ## 80B3C1D4
/* 00694 80B3B604 C4640014 */  lwc1    $f4, 0x0014($v1)           ## 80B3BF40
/* 00698 80B3B608 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 0069C 80B3B60C 3C0180B4 */  lui     $at, %hi(D_80B3C1D0)       ## $at = 80B40000
/* 006A0 80B3B610 46049182 */  mul.s   $f6, $f18, $f4             
/* 006A4 80B3B614 46064280 */  add.s   $f10, $f8, $f6             
/* 006A8 80B3B618 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 006AC 80B3B61C E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 006B0 80B3B620 C4720014 */  lwc1    $f18, 0x0014($v1)          ## 80B3BF40
/* 006B4 80B3B624 C430C1D0 */  lwc1    $f16, %lo(D_80B3C1D0)($at) 
/* 006B8 80B3B628 46128102 */  mul.s   $f4, $f16, $f18            
/* 006BC 80B3B62C 46044180 */  add.s   $f6, $f8, $f4              
/* 006C0 80B3B630 10000004 */  beq     $zero, $zero, .L80B3B644   
/* 006C4 80B3B634 E606002C */  swc1    $f6, 0x002C($s0)           ## 0000002C
/* 006C8 80B3B638 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
.L80B3B63C:
/* 006CC 80B3B63C 35F90010 */  ori     $t9, $t7, 0x0010           ## $t9 = 00000010
/* 006D0 80B3B640 AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
.L80B3B644:
/* 006D4 80B3B644 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 006D8 80B3B648 44818000 */  mtc1    $at, $f16                  ## $f16 = 200.00
/* 006DC 80B3B64C C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 006E0 80B3B650 26090024 */  addiu   $t1, $s0, 0x0024           ## $t1 = 00000024
/* 006E4 80B3B654 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFEC
/* 006E8 80B3B658 46105480 */  add.s   $f18, $f10, $f16           
/* 006EC 80B3B65C 27A60038 */  addiu   $a2, $sp, 0x0038           ## $a2 = FFFFFFE8
/* 006F0 80B3B660 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 006F4 80B3B664 E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
/* 006F8 80B3B668 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 006FC 80B3B66C AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00700 80B3B670 0C00F269 */  jal     func_8003C9A4              
/* 00704 80B3B674 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 00708 80B3B678 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 0070C 80B3B67C 44814000 */  mtc1    $at, $f8                   ## $f8 = -32000.00
/* 00710 80B3B680 00000000 */  nop
/* 00714 80B3B684 4600403C */  c.lt.s  $f8, $f0                   
/* 00718 80B3B688 00000000 */  nop
/* 0071C 80B3B68C 45000003 */  bc1f    .L80B3B69C                 
/* 00720 80B3B690 00000000 */  nop
/* 00724 80B3B694 10000005 */  beq     $zero, $zero, .L80B3B6AC   
/* 00728 80B3B698 E6000028 */  swc1    $f0, 0x0028($s0)           ## 00000028
.L80B3B69C:
/* 0072C 80B3B69C 0C00B55C */  jal     Actor_Kill
              
/* 00730 80B3B6A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00734 80B3B6A4 1000000C */  beq     $zero, $zero, .L80B3B6D8   
/* 00738 80B3B6A8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B3B6AC:
/* 0073C 80B3B6AC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00740 80B3B6B0 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00744 80B3B6B4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00748 80B3B6B8 44050000 */  mfc1    $a1, $f0                   
/* 0074C 80B3B6BC 44070000 */  mfc1    $a3, $f0                   
/* 00750 80B3B6C0 0C00AC78 */  jal     ActorShape_Init
              
/* 00754 80B3B6C4 00000000 */  nop
/* 00758 80B3B6C8 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 0075C 80B3B6CC A6000016 */  sh      $zero, 0x0016($s0)         ## 00000016
/* 00760 80B3B6D0 A20A00AE */  sb      $t2, 0x00AE($s0)           ## 000000AE
/* 00764 80B3B6D4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B3B6D8:
/* 00768 80B3B6D8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0076C 80B3B6DC 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00770 80B3B6E0 03E00008 */  jr      $ra                        
/* 00774 80B3B6E4 00000000 */  nop
