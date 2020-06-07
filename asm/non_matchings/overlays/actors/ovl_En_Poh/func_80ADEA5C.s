glabel func_80ADEA5C
/* 00D0C 80ADEA5C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00D10 80ADEA60 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D14 80ADEA64 24850008 */  addiu   $a1, $a0, 0x0008           ## $a1 = 00000008
/* 00D18 80ADEA68 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00D1C 80ADEA6C 0C00B6EC */  jal     func_8002DBB0              
/* 00D20 80ADEA70 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00D24 80ADEA74 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 00D28 80ADEA78 44812000 */  mtc1    $at, $f4                   ## $f4 = 400.00
/* 00D2C 80ADEA7C 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00D30 80ADEA80 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00D34 80ADEA84 4600203C */  c.lt.s  $f4, $f0                   
/* 00D38 80ADEA88 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00D3C 80ADEA8C 45020006 */  bc1fl   .L80ADEAA8                 
/* 00D40 80ADEA90 24E40032 */  addiu   $a0, $a3, 0x0032           ## $a0 = 00000032
/* 00D44 80ADEA94 0C00B6B0 */  jal     func_8002DAC0              
/* 00D48 80ADEA98 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00D4C 80ADEA9C 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00D50 80ADEAA0 A4E2019C */  sh      $v0, 0x019C($a3)           ## 0000019C
/* 00D54 80ADEAA4 24E40032 */  addiu   $a0, $a3, 0x0032           ## $a0 = 00000032
.L80ADEAA8:
/* 00D58 80ADEAA8 84E5019C */  lh      $a1, 0x019C($a3)           ## 0000019C
/* 00D5C 80ADEAAC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00D60 80ADEAB0 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 00D64 80ADEAB4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D68 80ADEAB8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00D6C 80ADEABC 03E00008 */  jr      $ra                        
/* 00D70 80ADEAC0 00000000 */  nop
