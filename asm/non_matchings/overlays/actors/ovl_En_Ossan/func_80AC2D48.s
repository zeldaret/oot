glabel func_80AC2D48
/* 000A8 80AC2D48 3C0E8016 */  lui     $t6, %hi(gSaveContext+0xef6)
/* 000AC 80AC2D4C 95CEF556 */  lhu     $t6, %lo(gSaveContext+0xef6)($t6)
/* 000B0 80AC2D50 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 000B4 80AC2D54 00042400 */  sll     $a0, $a0, 16               
/* 000B8 80AC2D58 31CF8000 */  andi    $t7, $t6, 0x8000           ## $t7 = 00000000
/* 000BC 80AC2D5C 11E00003 */  beq     $t7, $zero, .L80AC2D6C     
/* 000C0 80AC2D60 00042403 */  sra     $a0, $a0, 16               
/* 000C4 80AC2D64 03E00008 */  jr      $ra                        
/* 000C8 80AC2D68 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
.L80AC2D6C:
/* 000CC 80AC2D6C 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
/* 000D0 80AC2D70 03E00008 */  jr      $ra                        
/* 000D4 80AC2D74 00000000 */  nop
