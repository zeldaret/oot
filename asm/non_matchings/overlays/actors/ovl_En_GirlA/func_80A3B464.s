glabel func_80A3B464
/* 00D14 80A3B464 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D18 80A3B468 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D1C 80A3B46C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00D20 80A3B470 0C021AAF */  jal     Inventory_HasEmptyBottle              
/* 00D24 80A3B474 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00D28 80A3B478 14400003 */  bne     $v0, $zero, .L80A3B488     
/* 00D2C 80A3B47C 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 00D30 80A3B480 10000011 */  beq     $zero, $zero, .L80A3B4C8   
/* 00D34 80A3B484 24020003 */  addiu   $v0, $zero, 0x0003         ## $v0 = 00000003
.L80A3B488:
/* 00D38 80A3B488 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x34)
/* 00D3C 80A3B48C 85CEE694 */  lh      $t6, %lo(gSaveContext+0x34)($t6)
/* 00D40 80A3B490 85F801C8 */  lh      $t8, 0x01C8($t7)           ## 000001C8
/* 00D44 80A3B494 01D8082A */  slt     $at, $t6, $t8              
/* 00D48 80A3B498 10200003 */  beq     $at, $zero, .L80A3B4A8     
/* 00D4C 80A3B49C 00000000 */  nop
/* 00D50 80A3B4A0 10000009 */  beq     $zero, $zero, .L80A3B4C8   
/* 00D54 80A3B4A4 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3B4A8:
/* 00D58 80A3B4A8 0C0218E2 */  jal     Item_CheckObtainability              
/* 00D5C 80A3B4AC 2404001C */  addiu   $a0, $zero, 0x001C         ## $a0 = 0000001C
/* 00D60 80A3B4B0 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00D64 80A3B4B4 54410004 */  bnel    $v0, $at, .L80A3B4C8       
/* 00D68 80A3B4B8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00D6C 80A3B4BC 10000002 */  beq     $zero, $zero, .L80A3B4C8   
/* 00D70 80A3B4C0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00D74 80A3B4C4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3B4C8:
/* 00D78 80A3B4C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D7C 80A3B4CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D80 80A3B4D0 03E00008 */  jr      $ra                        
/* 00D84 80A3B4D4 00000000 */  nop
