glabel func_80AFCE5C
/* 004BC 80AFCE5C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 004C0 80AFCE60 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 004C4 80AFCE64 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 004C8 80AFCE68 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 004CC 80AFCE6C 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 004D0 80AFCE70 44813000 */  mtc1    $at, $f6                   ## $f6 = 4.00
/* 004D4 80AFCE74 C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 004D8 80AFCE78 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 004DC 80AFCE7C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004E0 80AFCE80 4606203C */  c.lt.s  $f4, $f6                   
/* 004E4 80AFCE84 44050000 */  mfc1    $a1, $f0                   
/* 004E8 80AFCE88 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 004EC 80AFCE8C 3C074448 */  lui     $a3, 0x4448                ## $a3 = 44480000
/* 004F0 80AFCE90 45020006 */  bc1fl   .L80AFCEAC                 
/* 004F4 80AFCE94 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 004F8 80AFCE98 8482008A */  lh      $v0, 0x008A($a0)           ## 0000008A
/* 004FC 80AFCE9C A4820032 */  sh      $v0, 0x0032($a0)           ## 00000032
/* 00500 80AFCEA0 10000004 */  beq     $zero, $zero, .L80AFCEB4   
/* 00504 80AFCEA4 A48200B6 */  sh      $v0, 0x00B6($a0)           ## 000000B6
/* 00508 80AFCEA8 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
.L80AFCEAC:
/* 0050C 80AFCEAC 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00510 80AFCEB0 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
.L80AFCEB4:
/* 00514 80AFCEB4 260400BC */  addiu   $a0, $s0, 0x00BC           ## $a0 = 000000BC
/* 00518 80AFCEB8 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 0051C 80AFCEBC E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00520 80AFCEC0 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00524 80AFCEC4 260400C4 */  addiu   $a0, $s0, 0x00C4           ## $a0 = 000000C4
/* 00528 80AFCEC8 3C0541C8 */  lui     $a1, 0x41C8                ## $a1 = 41C80000
/* 0052C 80AFCECC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00530 80AFCED0 3C074020 */  lui     $a3, 0x4020                ## $a3 = 40200000
/* 00534 80AFCED4 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 00538 80AFCED8 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 0053C 80AFCEDC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00540 80AFCEE0 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 00544 80AFCEE4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00548 80AFCEE8 0304C021 */  addu    $t8, $t8, $a0              
/* 0054C 80AFCEEC 8F181DE4 */  lw      $t8, 0x1DE4($t8)           ## 00011DE4
/* 00550 80AFCEF0 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 00554 80AFCEF4 13200003 */  beq     $t9, $zero, .L80AFCF04     
/* 00558 80AFCEF8 00000000 */  nop
/* 0055C 80AFCEFC 0C2BF26A */  jal     func_80AFC9A8              
/* 00560 80AFCF00 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
.L80AFCF04:
/* 00564 80AFCF04 0C02927F */  jal     SkelAnime_Update
              
/* 00568 80AFCF08 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0056C 80AFCF0C 5040000A */  beql    $v0, $zero, .L80AFCF38     
/* 00570 80AFCF10 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00574 80AFCF14 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00578 80AFCF18 C61000BC */  lwc1    $f16, 0x00BC($s0)          ## 000000BC
/* 0057C 80AFCF1C 46105032 */  c.eq.s  $f10, $f16                 
/* 00580 80AFCF20 00000000 */  nop
/* 00584 80AFCF24 45020004 */  bc1fl   .L80AFCF38                 
/* 00588 80AFCF28 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0058C 80AFCF2C 0C2BF358 */  jal     func_80AFCD60              
/* 00590 80AFCF30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00594 80AFCF34 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AFCF38:
/* 00598 80AFCF38 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0059C 80AFCF3C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 005A0 80AFCF40 03E00008 */  jr      $ra                        
/* 005A4 80AFCF44 00000000 */  nop
