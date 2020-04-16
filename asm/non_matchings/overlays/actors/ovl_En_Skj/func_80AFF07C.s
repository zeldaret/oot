glabel func_80AFF07C
/* 00DCC 80AFF07C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00DD0 80AFF080 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00DD4 80AFF084 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00DD8 80AFF088 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00DDC 80AFF08C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00DE0 80AFF090 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 00DE4 80AFF094 15C0002A */  bne     $t6, $zero, .L80AFF140     
/* 00DE8 80AFF098 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00DEC 80AFF09C 95EFF552 */  lhu     $t7, -0x0AAE($t7)          ## 8015F552
/* 00DF0 80AFF0A0 3C0280B0 */  lui     $v0, %hi(D_80B01640)       ## $v0 = 80B00000
/* 00DF4 80AFF0A4 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00DF8 80AFF0A8 31F80040 */  andi    $t8, $t7, 0x0040           ## $t8 = 00000000
/* 00DFC 80AFF0AC 1700000C */  bne     $t8, $zero, .L80AFF0E0     
/* 00E00 80AFF0B0 24421640 */  addiu   $v0, $v0, %lo(D_80B01640)  ## $v0 = 80B01640
/* 00E04 80AFF0B4 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00E08 80AFF0B8 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 00E0C 80AFF0BC 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00E10 80AFF0C0 4606203C */  c.lt.s  $f4, $f6                   
/* 00E14 80AFF0C4 00000000 */  nop
/* 00E18 80AFF0C8 45020006 */  bc1fl   .L80AFF0E4                 
/* 00E1C 80AFF0CC 90480000 */  lbu     $t0, 0x0000($v0)           ## 80B01640
/* 00E20 80AFF0D0 0C2BFBA1 */  jal     func_80AFEE84              
/* 00E24 80AFF0D4 A09902D2 */  sb      $t9, 0x02D2($a0)           ## 000002D2
/* 00E28 80AFF0D8 10000021 */  beq     $zero, $zero, .L80AFF160   
/* 00E2C 80AFF0DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFF0E0:
/* 00E30 80AFF0E0 90480000 */  lbu     $t0, 0x0000($v0)           ## 00000000
.L80AFF0E4:
/* 00E34 80AFF0E4 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 00E38 80AFF0E8 5100001D */  beql    $t0, $zero, .L80AFF160     
/* 00E3C 80AFF0EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E40 80AFF0F0 8D241C44 */  lw      $a0, 0x1C44($t1)           ## 00001C44
/* 00E44 80AFF0F4 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00E48 80AFF0F8 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000004
/* 00E4C 80AFF0FC 0C2BFA3B */  jal     func_80AFE8EC              
/* 00E50 80AFF100 AFA4001C */  sw      $a0, 0x001C($sp)           
/* 00E54 80AFF104 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 00E58 80AFF108 10400014 */  beq     $v0, $zero, .L80AFF15C     
/* 00E5C 80AFF10C 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00E60 80AFF110 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00E64 80AFF114 0C2BFDE8 */  jal     func_80AFF7A0              
/* 00E68 80AFF118 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 00E6C 80AFF11C 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 00E70 80AFF120 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 00E74 80AFF124 3C0C80B0 */  lui     $t4, %hi(D_80B01644)       ## $t4 = 80B00000
/* 00E78 80AFF128 8CCA0680 */  lw      $t2, 0x0680($a2)           ## 00000680
/* 00E7C 80AFF12C 01415825 */  or      $t3, $t2, $at              ## $t3 = 00800000
/* 00E80 80AFF130 ACCB0680 */  sw      $t3, 0x0680($a2)           ## 00000680
/* 00E84 80AFF134 8D8C1644 */  lw      $t4, %lo(D_80B01644)($t4)  
/* 00E88 80AFF138 10000008 */  beq     $zero, $zero, .L80AFF15C   
/* 00E8C 80AFF13C ACCC06A8 */  sw      $t4, 0x06A8($a2)           ## 000006A8
.L80AFF140:
/* 00E90 80AFF140 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00E94 80AFF144 0C2BFB7E */  jal     func_80AFEDF8              
/* 00E98 80AFF148 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00E9C 80AFF14C 10400003 */  beq     $v0, $zero, .L80AFF15C     
/* 00EA0 80AFF150 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00EA4 80AFF154 0C2BFCCD */  jal     func_80AFF334              
/* 00EA8 80AFF158 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L80AFF15C:
/* 00EAC 80AFF15C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFF160:
/* 00EB0 80AFF160 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00EB4 80AFF164 03E00008 */  jr      $ra                        
/* 00EB8 80AFF168 00000000 */  nop
