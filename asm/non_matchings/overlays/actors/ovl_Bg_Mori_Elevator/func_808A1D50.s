glabel func_808A1D50
/* 00550 808A1D50 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00554 808A1D54 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00558 808A1D58 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0055C 808A1D5C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00560 808A1D60 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00564 808A1D64 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00568 808A1D68 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 0056C 808A1D6C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 00570 808A1D70 3C054000 */  lui     $a1, 0x4000                ## $a1 = 40000000
/* 00574 808A1D74 24840060 */  addiu   $a0, $a0, 0x0060           ## $a0 = 00000060
/* 00578 808A1D78 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 0057C 808A1D7C 0C228600 */  jal     func_808A1800              
/* 00580 808A1D80 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00584 808A1D84 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00588 808A1D88 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.50
/* 0058C 808A1D8C 3C063DA3 */  lui     $a2, 0x3DA3                ## $a2 = 3DA30000
/* 00590 808A1D90 8E070060 */  lw      $a3, 0x0060($s0)           ## 00000060
/* 00594 808A1D94 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3DA3D70A
/* 00598 808A1D98 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 0059C 808A1D9C 3C054369 */  lui     $a1, 0x4369                ## $a1 = 43690000
/* 005A0 808A1DA0 0C228600 */  jal     func_808A1800              
/* 005A4 808A1DA4 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 005A8 808A1DA8 3C01808A */  lui     $at, %hi(D_808A23BC)       ## $at = 808A0000
/* 005AC 808A1DAC C42823BC */  lwc1    $f8, %lo(D_808A23BC)($at)  
/* 005B0 808A1DB0 46000086 */  mov.s   $f2, $f0                   
/* 005B4 808A1DB4 46000005 */  abs.s   $f0, $f0                   
/* 005B8 808A1DB8 4608003C */  c.lt.s  $f0, $f8                   
/* 005BC 808A1DBC 00000000 */  nop
/* 005C0 808A1DC0 45020009 */  bc1fl   .L808A1DE8                 
/* 005C4 808A1DC4 44051000 */  mfc1    $a1, $f2                   
/* 005C8 808A1DC8 0C228781 */  jal     func_808A1E04              
/* 005CC 808A1DCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005D0 808A1DD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005D4 808A1DD4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 005D8 808A1DD8 2405287A */  addiu   $a1, $zero, 0x287A         ## $a1 = 0000287A
/* 005DC 808A1DDC 10000005 */  beq     $zero, $zero, .L808A1DF4   
/* 005E0 808A1DE0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 005E4 808A1DE4 44051000 */  mfc1    $a1, $f2                   
.L808A1DE8:
/* 005E8 808A1DE8 0C22863F */  jal     func_808A18FC              
/* 005EC 808A1DEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005F0 808A1DF0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808A1DF4:
/* 005F4 808A1DF4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 005F8 808A1DF8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 005FC 808A1DFC 03E00008 */  jr      $ra                        
/* 00600 808A1E00 00000000 */  nop


