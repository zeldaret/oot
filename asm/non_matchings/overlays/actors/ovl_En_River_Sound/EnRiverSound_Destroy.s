glabel EnRiverSound_Destroy
/* 000D0 80AE6A00 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000D4 80AE6A04 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000D8 80AE6A08 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000DC 80AE6A0C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 000E0 80AE6A10 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 000E4 80AE6A14 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 000E8 80AE6A18 54410006 */  bnel    $v0, $at, .L80AE6A34       
/* 000EC 80AE6A1C 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 000F0 80AE6A20 0C03D43B */  jal     func_800F50EC              
/* 000F4 80AE6A24 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 000F8 80AE6A28 10000007 */  beq     $zero, $zero, .L80AE6A48   
/* 000FC 80AE6A2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00100 80AE6A30 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
.L80AE6A34:
/* 00104 80AE6A34 54410004 */  bnel    $v0, $at, .L80AE6A48       
/* 00108 80AE6A38 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0010C 80AE6A3C 0C03D541 */  jal     func_800F5504              
/* 00110 80AE6A40 00000000 */  nop
/* 00114 80AE6A44 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE6A48:
/* 00118 80AE6A48 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0011C 80AE6A4C 03E00008 */  jr      $ra                        
/* 00120 80AE6A50 00000000 */  nop
