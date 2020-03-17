glabel func_80AF7D48
/* 00558 80AF7D48 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0055C 80AF7D4C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00560 80AF7D50 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00564 80AF7D54 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00568 80AF7D58 00807025 */  or      $t6, $a0, $zero            ## $t6 = 00000000
/* 0056C 80AF7D5C 85C5008A */  lh      $a1, 0x008A($t6)           ## 0000008A
/* 00570 80AF7D60 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00574 80AF7D64 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 00578 80AF7D68 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 0057C 80AF7D6C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00580 80AF7D70 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 00584 80AF7D74 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00588 80AF7D78 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 0058C 80AF7D7C 44812000 */  mtc1    $at, $f4                   ## $f4 = 160.00
/* 00590 80AF7D80 C4800090 */  lwc1    $f0, 0x0090($a0)           ## 00000090
/* 00594 80AF7D84 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00598 80AF7D88 4604003E */  c.le.s  $f0, $f4                   
/* 0059C 80AF7D8C 00000000 */  nop
/* 005A0 80AF7D90 4502000A */  bc1fl   .L80AF7DBC                 
/* 005A4 80AF7D94 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 005A8 80AF7D98 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 005AC 80AF7D9C 00000000 */  nop
/* 005B0 80AF7DA0 4600303C */  c.lt.s  $f6, $f0                   
/* 005B4 80AF7DA4 00000000 */  nop
/* 005B8 80AF7DA8 45020004 */  bc1fl   .L80AF7DBC                 
/* 005BC 80AF7DAC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 005C0 80AF7DB0 0C2BDE8D */  jal     func_80AF7A34              
/* 005C4 80AF7DB4 00000000 */  nop
/* 005C8 80AF7DB8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AF7DBC:
/* 005CC 80AF7DBC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 005D0 80AF7DC0 03E00008 */  jr      $ra                        
/* 005D4 80AF7DC4 00000000 */  nop


