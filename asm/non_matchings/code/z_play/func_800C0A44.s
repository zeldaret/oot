glabel func_800C0A44
/* B37BE4 800C0A44 848E00A4 */  lh    $t6, 0xa4($a0)
/* B37BE8 800C0A48 8C881D38 */  lw    $t0, 0x1d38($a0)
/* B37BEC 800C0A4C 3C198016 */  lui   $t9, %hi(gSaveContext) # $t9, 0x8016
/* B37BF0 800C0A50 000E78C0 */  sll   $t7, $t6, 3
/* B37BF4 800C0A54 01EE7823 */  subu  $t7, $t7, $t6
/* B37BF8 800C0A58 000F7880 */  sll   $t7, $t7, 2
/* B37BFC 800C0A5C 25F800D4 */  addiu $t8, $t7, 0xd4
/* B37C00 800C0A60 2739E660 */  addiu $t9, %lo(gSaveContext) # addiu $t9, $t9, -0x19a0
/* B37C04 800C0A64 03191021 */  addu  $v0, $t8, $t9
/* B37C08 800C0A68 AC480000 */  sw    $t0, ($v0)
/* B37C0C 800C0A6C 8C891D28 */  lw    $t1, 0x1d28($a0)
/* B37C10 800C0A70 AC490004 */  sw    $t1, 4($v0)
/* B37C14 800C0A74 8C8A1D3C */  lw    $t2, 0x1d3c($a0)
/* B37C18 800C0A78 AC4A0008 */  sw    $t2, 8($v0)
/* B37C1C 800C0A7C 8C8B1D44 */  lw    $t3, 0x1d44($a0)
/* B37C20 800C0A80 03E00008 */  jr    $ra
/* B37C24 800C0A84 AC4B000C */   sw    $t3, 0xc($v0)

