glabel func_808AEE0C
/* 0068C 808AEE0C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00690 808AEE10 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00694 808AEE14 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00698 808AEE18 14C00009 */  bne     $a2, $zero, .L808AEE40     
/* 0069C 808AEE1C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 006A0 808AEE20 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 006A4 808AEE24 01E57821 */  addu    $t7, $t7, $a1              
/* 006A8 808AEE28 8DEF1DE4 */  lw      $t7, 0x1DE4($t7)           ## 00011DE4
/* 006AC 808AEE2C 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 006B0 808AEE30 01E1001B */  divu    $zero, $t7, $at            
/* 006B4 808AEE34 0000C010 */  mfhi    $t8                        
/* 006B8 808AEE38 57000009 */  bnel    $t8, $zero, .L808AEE60     
/* 006BC 808AEE3C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808AEE40:
/* 006C0 808AEE40 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 006C4 808AEE44 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 006C8 808AEE48 2406012C */  addiu   $a2, $zero, 0x012C         ## $a2 = 0000012C
/* 006CC 808AEE4C 240702BC */  addiu   $a3, $zero, 0x02BC         ## $a3 = 000002BC
/* 006D0 808AEE50 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 006D4 808AEE54 0C00A511 */  jal     func_80029444              
/* 006D8 808AEE58 24A50008 */  addiu   $a1, $a1, 0x0008           ## $a1 = 00000008
/* 006DC 808AEE5C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808AEE60:
/* 006E0 808AEE60 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 006E4 808AEE64 03E00008 */  jr      $ra                        
/* 006E8 808AEE68 00000000 */  nop


