glabel func_80ABA9B8
/* 00D78 80ABA9B8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00D7C 80ABA9BC AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00D80 80ABA9C0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D84 80ABA9C4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00D88 80ABA9C8 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00D8C 80ABA9CC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00D90 80ABA9D0 0C042F6F */  jal     func_8010BDBC              
/* 00D94 80ABA9D4 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00D98 80ABA9D8 860E0262 */  lh      $t6, 0x0262($s0)           ## 00000262
/* 00D9C 80ABA9DC 55C2002B */  bnel    $t6, $v0, .L80ABAA8C       
/* 00DA0 80ABA9E0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DA4 80ABA9E4 0C041AF2 */  jal     func_80106BC8              
/* 00DA8 80ABA9E8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00DAC 80ABA9EC 10400026 */  beq     $v0, $zero, .L80ABAA88     
/* 00DB0 80ABA9F0 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 00DB4 80ABA9F4 00511021 */  addu    $v0, $v0, $s1              
/* 00DB8 80ABA9F8 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 00DBC 80ABA9FC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00DC0 80ABAA00 10400005 */  beq     $v0, $zero, .L80ABAA18     
/* 00DC4 80ABAA04 00000000 */  nop
/* 00DC8 80ABAA08 10410012 */  beq     $v0, $at, .L80ABAA54       
/* 00DCC 80ABAA0C 3C1880AC */  lui     $t8, %hi(D_80ABB3F6)       ## $t8 = 80AC0000
/* 00DD0 80ABAA10 1000001E */  beq     $zero, $zero, .L80ABAA8C   
/* 00DD4 80ABAA14 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ABAA18:
/* 00DD8 80ABAA18 0C041B33 */  jal     func_80106CCC              
/* 00DDC 80ABAA1C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00DE0 80ABAA20 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00DE4 80ABAA24 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 00DE8 80ABAA28 AE000118 */  sw      $zero, 0x0118($s0)         ## 00000118
/* 00DEC 80ABAA2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DF0 80ABAA30 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00DF4 80ABAA34 2406001D */  addiu   $a2, $zero, 0x001D         ## $a2 = 0000001D
/* 00DF8 80ABAA38 3C074348 */  lui     $a3, 0x4348                ## $a3 = 43480000
/* 00DFC 80ABAA3C 0C00BD0D */  jal     func_8002F434              
/* 00E00 80ABAA40 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00E04 80ABAA44 3C0F80AC */  lui     $t7, %hi(func_80ABAC00)    ## $t7 = 80AC0000
/* 00E08 80ABAA48 25EFAC00 */  addiu   $t7, $t7, %lo(func_80ABAC00) ## $t7 = 80ABAC00
/* 00E0C 80ABAA4C 1000000E */  beq     $zero, $zero, .L80ABAA88   
/* 00E10 80ABAA50 AE0F0250 */  sw      $t7, 0x0250($s0)           ## 00000250
.L80ABAA54:
/* 00E14 80ABAA54 8619027A */  lh      $t9, 0x027A($s0)           ## 0000027A
/* 00E18 80ABAA58 8718B3F6 */  lh      $t8, %lo(D_80ABB3F6)($t8)  
/* 00E1C 80ABAA5C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E20 80ABAA60 27280015 */  addiu   $t0, $t9, 0x0015           ## $t0 = 00000015
/* 00E24 80ABAA64 A608026E */  sh      $t0, 0x026E($s0)           ## 0000026E
/* 00E28 80ABAA68 A618010E */  sh      $t8, 0x010E($s0)           ## 0000010E
/* 00E2C 80ABAA6C 0C042DC8 */  jal     func_8010B720              
/* 00E30 80ABAA70 3305FFFF */  andi    $a1, $t8, 0xFFFF           ## $a1 = 00000000
/* 00E34 80ABAA74 3C0A80AC */  lui     $t2, %hi(func_80ABAA9C)    ## $t2 = 80AC0000
/* 00E38 80ABAA78 24090005 */  addiu   $t1, $zero, 0x0005         ## $t1 = 00000005
/* 00E3C 80ABAA7C 254AAA9C */  addiu   $t2, $t2, %lo(func_80ABAA9C) ## $t2 = 80ABAA9C
/* 00E40 80ABAA80 A6090262 */  sh      $t1, 0x0262($s0)           ## 00000262
/* 00E44 80ABAA84 AE0A0250 */  sw      $t2, 0x0250($s0)           ## 00000250
.L80ABAA88:
/* 00E48 80ABAA88 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ABAA8C:
/* 00E4C 80ABAA8C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00E50 80ABAA90 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00E54 80ABAA94 03E00008 */  jr      $ra                        
/* 00E58 80ABAA98 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


