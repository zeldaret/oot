glabel func_80AFE338
/* 00088 80AFE338 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 0008C 80AFE33C 30A500FF */  andi    $a1, $a1, 0x00FF           ## $a1 = 00000000
/* 00090 80AFE340 00057080 */  sll     $t6, $a1,  2               
/* 00094 80AFE344 3C0F80B0 */  lui     $t7, %hi(D_80B0174C)       ## $t7 = 80B00000
/* 00098 80AFE348 A08502D1 */  sb      $a1, 0x02D1($a0)           ## 000002D1
/* 0009C 80AFE34C 01EE7821 */  addu    $t7, $t7, $t6              
/* 000A0 80AFE350 8DEF174C */  lw      $t7, %lo(D_80B0174C)($t7)  
/* 000A4 80AFE354 2CA1001D */  sltiu   $at, $a1, 0x001D           
/* 000A8 80AFE358 10200009 */  beq     $at, $zero, .L80AFE380     
/* 000AC 80AFE35C AC8F0274 */  sw      $t7, 0x0274($a0)           ## 00000274
/* 000B0 80AFE360 0005C080 */  sll     $t8, $a1,  2               
/* 000B4 80AFE364 3C0180B0 */  lui     $at, %hi(jtbl_80B01880)       ## $at = 80B00000
/* 000B8 80AFE368 00380821 */  addu    $at, $at, $t8              
/* 000BC 80AFE36C 8C381880 */  lw      $t8, %lo(jtbl_80B01880)($at)  
/* 000C0 80AFE370 03000008 */  jr      $t8                        
/* 000C4 80AFE374 00000000 */  nop
glabel L80AFE378
/* 000C8 80AFE378 03E00008 */  jr      $ra                        
/* 000CC 80AFE37C A08002D3 */  sb      $zero, 0x02D3($a0)         ## 000002D3
glabel L80AFE380
.L80AFE380:
/* 000D0 80AFE380 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 000D4 80AFE384 A09902D3 */  sb      $t9, 0x02D3($a0)           ## 000002D3
/* 000D8 80AFE388 03E00008 */  jr      $ra                        
/* 000DC 80AFE38C 00000000 */  nop


