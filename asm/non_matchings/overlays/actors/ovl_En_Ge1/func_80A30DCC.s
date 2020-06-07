glabel func_80A30DCC
/* 0045C 80A30DCC 3C028016 */  lui     $v0, %hi(gSaveContext+0xee6)
/* 00460 80A30DD0 9442F546 */  lhu     $v0, %lo(gSaveContext+0xee6)($v0)
/* 00464 80A30DD4 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 00468 80A30DD8 11C00007 */  beq     $t6, $zero, .L80A30DF8     
/* 0046C 80A30DDC 304F0002 */  andi    $t7, $v0, 0x0002           ## $t7 = 00000000
/* 00470 80A30DE0 11E00005 */  beq     $t7, $zero, .L80A30DF8     
/* 00474 80A30DE4 30580004 */  andi    $t8, $v0, 0x0004           ## $t8 = 00000000
/* 00478 80A30DE8 13000003 */  beq     $t8, $zero, .L80A30DF8     
/* 0047C 80A30DEC 30590008 */  andi    $t9, $v0, 0x0008           ## $t9 = 00000000
/* 00480 80A30DF0 17200003 */  bne     $t9, $zero, .L80A30E00     
/* 00484 80A30DF4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A30DF8:
/* 00488 80A30DF8 03E00008 */  jr      $ra                        
/* 0048C 80A30DFC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A30E00:
/* 00490 80A30E00 03E00008 */  jr      $ra                        
/* 00494 80A30E04 00000000 */  nop
