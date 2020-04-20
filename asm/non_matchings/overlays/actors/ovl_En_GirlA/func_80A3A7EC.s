glabel func_80A3A7EC
/* 0009C 80A3A7EC 3C0F8016 */  lui     $t7, %hi(gSaveContext+0xef0)
/* 000A0 80A3A7F0 95EFF550 */  lhu     $t7, %lo(gSaveContext+0xef0)($t7)
/* 000A4 80A3A7F4 24190026 */  addiu   $t9, $zero, 0x0026         ## $t9 = 00000026
/* 000A8 80A3A7F8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 000AC 80A3A7FC 31F80100 */  andi    $t8, $t7, 0x0100           ## $t8 = 00000000
/* 000B0 80A3A800 53000031 */  beql    $t8, $zero, .L80A3A8C8     
/* 000B4 80A3A804 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 000B8 80A3A808 03E00008 */  jr      $ra                        
/* 000BC 80A3A80C A499001C */  sh      $t9, 0x001C($a0)           ## 0000001C
