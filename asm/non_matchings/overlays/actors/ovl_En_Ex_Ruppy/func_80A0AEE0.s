glabel func_80A0AEE0
/* 00AD0 80A0AEE0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AD4 80A0AEE4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AD8 80A0AEE8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00ADC 80A0AEEC 848E0154 */  lh      $t6, 0x0154($a0)           ## 00000154
/* 00AE0 80A0AEF0 84880156 */  lh      $t0, 0x0156($a0)           ## 00000156
/* 00AE4 80A0AEF4 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00AE8 80A0AEF8 A48F0154 */  sh      $t7, 0x0154($a0)           ## 00000154
/* 00AEC 80A0AEFC 84980154 */  lh      $t8, 0x0154($a0)           ## 00000154
/* 00AF0 80A0AF00 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 00AF4 80A0AF04 15000003 */  bne     $t0, $zero, .L80A0AF14     
/* 00AF8 80A0AF08 A4990154 */  sh      $t9, 0x0154($a0)           ## 00000154
/* 00AFC 80A0AF0C 0C00B55C */  jal     Actor_Kill
              
/* 00B00 80A0AF10 00000000 */  nop
.L80A0AF14:
/* 00B04 80A0AF14 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B08 80A0AF18 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B0C 80A0AF1C 03E00008 */  jr      $ra                        
/* 00B10 80A0AF20 00000000 */  nop


