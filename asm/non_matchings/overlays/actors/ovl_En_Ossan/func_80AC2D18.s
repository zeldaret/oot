glabel func_80AC2D18
/* 00078 80AC2D18 3C0E8016 */  lui     $t6, %hi(gSaveContext+0xef6)
/* 0007C 80AC2D1C 95CEF556 */  lhu     $t6, %lo(gSaveContext+0xef6)($t6)
/* 00080 80AC2D20 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 00084 80AC2D24 00042400 */  sll     $a0, $a0, 16               
/* 00088 80AC2D28 31CF0400 */  andi    $t7, $t6, 0x0400           ## $t7 = 00000000
/* 0008C 80AC2D2C 11E00003 */  beq     $t7, $zero, .L80AC2D3C     
/* 00090 80AC2D30 00042403 */  sra     $a0, $a0, 16               
/* 00094 80AC2D34 03E00008 */  jr      $ra                        
/* 00098 80AC2D38 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
.L80AC2D3C:
/* 0009C 80AC2D3C 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
/* 000A0 80AC2D40 03E00008 */  jr      $ra                        
/* 000A4 80AC2D44 00000000 */  nop
