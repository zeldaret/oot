glabel func_80AF7E90
/* 006A0 80AF7E90 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 006A4 80AF7E94 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 006A8 80AF7E98 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 006AC 80AF7E9C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 006B0 80AF7EA0 848E01FE */  lh      $t6, 0x01FE($a0)           ## 000001FE
/* 006B4 80AF7EA4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 006B8 80AF7EA8 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 006BC 80AF7EAC A7AE002E */  sh      $t6, 0x002E($sp)           
/* 006C0 80AF7EB0 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 006C4 80AF7EB4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 006C8 80AF7EB8 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 006CC 80AF7EBC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 006D0 80AF7EC0 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 006D4 80AF7EC4 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 006D8 80AF7EC8 44812000 */  mtc1    $at, $f4                   ## $f4 = 160.00
/* 006DC 80AF7ECC C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 006E0 80AF7ED0 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 006E4 80AF7ED4 4600203C */  c.lt.s  $f4, $f0                   
/* 006E8 80AF7ED8 00000000 */  nop
/* 006EC 80AF7EDC 45010007 */  bc1t    .L80AF7EFC                 
/* 006F0 80AF7EE0 00000000 */  nop
/* 006F4 80AF7EE4 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 006F8 80AF7EE8 00000000 */  nop
/* 006FC 80AF7EEC 4606003E */  c.le.s  $f0, $f6                   
/* 00700 80AF7EF0 00000000 */  nop
/* 00704 80AF7EF4 45020004 */  bc1fl   .L80AF7F08                 
/* 00708 80AF7EF8 87A2002E */  lh      $v0, 0x002E($sp)           
.L80AF7EFC:
/* 0070C 80AF7EFC 0C2BDE6F */  jal     func_80AF79BC              
/* 00710 80AF7F00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00714 80AF7F04 87A2002E */  lh      $v0, 0x002E($sp)           
.L80AF7F08:
/* 00718 80AF7F08 3C1980AF */  lui     $t9, %hi(func_80AF7F44)    ## $t9 = 80AF0000
/* 0071C 80AF7F0C 27397F44 */  addiu   $t9, $t9, %lo(func_80AF7F44) ## $t9 = 80AF7F44
/* 00720 80AF7F10 10400003 */  beq     $v0, $zero, .L80AF7F20     
/* 00724 80AF7F14 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 00728 80AF7F18 10000005 */  beq     $zero, $zero, .L80AF7F30   
/* 0072C 80AF7F1C A60F01FE */  sh      $t7, 0x01FE($s0)           ## 000001FE
.L80AF7F20:
/* 00730 80AF7F20 8618008A */  lh      $t8, 0x008A($s0)           ## 0000008A
/* 00734 80AF7F24 A60001FE */  sh      $zero, 0x01FE($s0)         ## 000001FE
/* 00738 80AF7F28 AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
/* 0073C 80AF7F2C A6180200 */  sh      $t8, 0x0200($s0)           ## 00000200
.L80AF7F30:
/* 00740 80AF7F30 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00744 80AF7F34 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00748 80AF7F38 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0074C 80AF7F3C 03E00008 */  jr      $ra                        
/* 00750 80AF7F40 00000000 */  nop


