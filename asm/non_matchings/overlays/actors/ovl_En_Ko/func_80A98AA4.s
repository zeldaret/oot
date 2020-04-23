glabel func_80A98AA4
/* 01CF4 80A98AA4 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01CF8 80A98AA8 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01CFC 80A98AAC 8C4F0004 */  lw      $t7, 0x0004($v0)           ## 8015E664
/* 01D00 80A98AB0 3C188012 */  lui     $t8, %hi(gBitFlags)
/* 01D04 80A98AB4 15E00011 */  bne     $t7, $zero, .L80A98AFC     
/* 01D08 80A98AB8 00000000 */  nop
/* 01D0C 80A98ABC 8F187120 */  lw      $t8, %lo(gBitFlags)($t8)
/* 01D10 80A98AC0 8C5900A4 */  lw      $t9, 0x00A4($v0)           ## 8015E704
/* 01D14 80A98AC4 03194024 */  and     $t0, $t8, $t9              
/* 01D18 80A98AC8 1500000C */  bne     $t0, $zero, .L80A98AFC     
/* 01D1C 80A98ACC 00000000 */  nop
/* 01D20 80A98AD0 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 01D24 80A98AD4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01D28 80A98AD8 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000060
/* 01D2C 80A98ADC 10400005 */  beq     $v0, $zero, .L80A98AF4     
/* 01D30 80A98AE0 00000000 */  nop
/* 01D34 80A98AE4 10410003 */  beq     $v0, $at, .L80A98AF4       
/* 01D38 80A98AE8 00000000 */  nop
/* 01D3C 80A98AEC 03E00008 */  jr      $ra                        
/* 01D40 80A98AF0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A98AF4:
/* 01D44 80A98AF4 03E00008 */  jr      $ra                        
/* 01D48 80A98AF8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A98AFC:
/* 01D4C 80A98AFC 03E00008 */  jr      $ra                        
/* 01D50 80A98B00 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
