glabel func_80AF828C
/* 00A9C 80AF828C 948E01FA */  lhu     $t6, 0x01FA($a0)           ## 000001FA
/* 00AA0 80AF8290 2DC10005 */  sltiu   $at, $t6, 0x0005           
/* 00AA4 80AF8294 1020004C */  beq     $at, $zero, .L80AF83C8     
/* 00AA8 80AF8298 000E7080 */  sll     $t6, $t6,  2               
/* 00AAC 80AF829C 3C0180B0 */  lui     $at, %hi(jtbl_80AF8AA4)       ## $at = 80B00000
/* 00AB0 80AF82A0 002E0821 */  addu    $at, $at, $t6              
/* 00AB4 80AF82A4 8C2E8AA4 */  lw      $t6, %lo(jtbl_80AF8AA4)($at)  
/* 00AB8 80AF82A8 01C00008 */  jr      $t6                        
/* 00ABC 80AF82AC 00000000 */  nop
glabel L80AF82B0
/* 00AC0 80AF82B0 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00AC4 80AF82B4 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 00AC8 80AF82B8 C4800164 */  lwc1    $f0, 0x0164($a0)           ## 00000164
/* 00ACC 80AF82BC 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00AD0 80AF82C0 4600203E */  c.le.s  $f4, $f0                   
/* 00AD4 80AF82C4 00000000 */  nop
/* 00AD8 80AF82C8 45020040 */  bc1fl   .L80AF83CC                 
/* 00ADC 80AF82CC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00AE0 80AF82D0 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 00AE4 80AF82D4 00000000 */  nop
/* 00AE8 80AF82D8 4606003E */  c.le.s  $f0, $f6                   
/* 00AEC 80AF82DC 00000000 */  nop
/* 00AF0 80AF82E0 4502003A */  bc1fl   .L80AF83CC                 
/* 00AF4 80AF82E4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00AF8 80AF82E8 03E00008 */  jr      $ra                        
/* 00AFC 80AF82EC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001


