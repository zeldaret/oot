glabel func_80A3A8A0
/* 00150 80A3A8A0 3C0A8016 */  lui     $t2, %hi(gSaveContext+0xef0)
/* 00154 80A3A8A4 954AF550 */  lhu     $t2, %lo(gSaveContext+0xef0)($t2)
/* 00158 80A3A8A8 240C0026 */  addiu   $t4, $zero, 0x0026         ## $t4 = 00000026
/* 0015C 80A3A8AC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00160 80A3A8B0 314B0020 */  andi    $t3, $t2, 0x0020           ## $t3 = 00000000
/* 00164 80A3A8B4 51600004 */  beql    $t3, $zero, .L80A3A8C8     
/* 00168 80A3A8B8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0016C 80A3A8BC 03E00008 */  jr      $ra                        
/* 00170 80A3A8C0 A48C001C */  sh      $t4, 0x001C($a0)           ## 0000001C
glabel L80A3A8C4
.L80A3A8C4:
/* 00174 80A3A8C4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A3A8C8:
/* 00178 80A3A8C8 03E00008 */  jr      $ra                        
/* 0017C 80A3A8CC 00000000 */  nop
