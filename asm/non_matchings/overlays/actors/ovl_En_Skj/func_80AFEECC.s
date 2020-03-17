glabel func_80AFEECC
/* 00C1C 80AFEECC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C20 80AFEED0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C24 80AFEED4 908E02D6 */  lbu     $t6, 0x02D6($a0)           ## 000002D6
/* 00C28 80AFEED8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00C2C 80AFEEDC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00C30 80AFEEE0 15C10005 */  bne     $t6, $at, .L80AFEEF8       
/* 00C34 80AFEEE4 8C8202DC */  lw      $v0, 0x02DC($a0)           ## 000002DC
/* 00C38 80AFEEE8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00C3C 80AFEEEC 00250821 */  addu    $at, $at, $a1              
/* 00C40 80AFEEF0 A42004C6 */  sh      $zero, 0x04C6($at)         ## 000104C6
/* 00C44 80AFEEF4 A08002D6 */  sb      $zero, 0x02D6($a0)         ## 000002D6
.L80AFEEF8:
/* 00C48 80AFEEF8 908F02D2 */  lbu     $t7, 0x02D2($a0)           ## 000002D2
/* 00C4C 80AFEEFC 2442FFEC */  addiu   $v0, $v0, 0xFFEC           ## $v0 = FFFFFFEC
/* 00C50 80AFEF00 2C410100 */  sltiu   $at, $v0, 0x0100           
/* 00C54 80AFEF04 51E00007 */  beql    $t7, $zero, .L80AFEF24     
/* 00C58 80AFEF08 C4860060 */  lwc1    $f6, 0x0060($a0)           ## 00000060
/* 00C5C 80AFEF0C 54200003 */  bnel    $at, $zero, .L80AFEF1C     
/* 00C60 80AFEF10 AC8202DC */  sw      $v0, 0x02DC($a0)           ## 000002DC
/* 00C64 80AFEF14 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00C68 80AFEF18 AC8202DC */  sw      $v0, 0x02DC($a0)           ## 000002DC
.L80AFEF1C:
/* 00C6C 80AFEF1C A08200C8 */  sb      $v0, 0x00C8($a0)           ## 000000C8
/* 00C70 80AFEF20 C4860060 */  lwc1    $f6, 0x0060($a0)           ## 00000060
.L80AFEF24:
/* 00C74 80AFEF24 4604303E */  c.le.s  $f6, $f4                   
/* 00C78 80AFEF28 00000000 */  nop
/* 00C7C 80AFEF2C 45020008 */  bc1fl   .L80AFEF50                 
/* 00C80 80AFEF30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C84 80AFEF34 94820088 */  lhu     $v0, 0x0088($a0)           ## 00000088
/* 00C88 80AFEF38 30580002 */  andi    $t8, $v0, 0x0002           ## $t8 = 00000000
/* 00C8C 80AFEF3C 13000003 */  beq     $t8, $zero, .L80AFEF4C     
/* 00C90 80AFEF40 3059FFFD */  andi    $t9, $v0, 0xFFFD           ## $t9 = 00000000
/* 00C94 80AFEF44 0C2BFCA8 */  jal     func_80AFF2A0              
/* 00C98 80AFEF48 A4990088 */  sh      $t9, 0x0088($a0)           ## 00000088
.L80AFEF4C:
/* 00C9C 80AFEF4C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFEF50:
/* 00CA0 80AFEF50 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CA4 80AFEF54 03E00008 */  jr      $ra                        
/* 00CA8 80AFEF58 00000000 */  nop


