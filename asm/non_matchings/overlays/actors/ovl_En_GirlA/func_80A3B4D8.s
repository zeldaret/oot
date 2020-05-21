glabel func_80A3B4D8
/* 00D88 80A3B4D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D8C 80A3B4DC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D90 80A3B4E0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00D94 80A3B4E4 0C021AAF */  jal     Inventory_HasEmptyBottle              
/* 00D98 80A3B4E8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00D9C 80A3B4EC 14400003 */  bne     $v0, $zero, .L80A3B4FC     
/* 00DA0 80A3B4F0 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 00DA4 80A3B4F4 10000011 */  beq     $zero, $zero, .L80A3B53C   
/* 00DA8 80A3B4F8 24020003 */  addiu   $v0, $zero, 0x0003         ## $v0 = 00000003
.L80A3B4FC:
/* 00DAC 80A3B4FC 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x34)
/* 00DB0 80A3B500 85CEE694 */  lh      $t6, %lo(gSaveContext+0x34)($t6)
/* 00DB4 80A3B504 85F801C8 */  lh      $t8, 0x01C8($t7)           ## 000001C8
/* 00DB8 80A3B508 01D8082A */  slt     $at, $t6, $t8              
/* 00DBC 80A3B50C 10200003 */  beq     $at, $zero, .L80A3B51C     
/* 00DC0 80A3B510 00000000 */  nop
/* 00DC4 80A3B514 10000009 */  beq     $zero, $zero, .L80A3B53C   
/* 00DC8 80A3B518 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3B51C:
/* 00DCC 80A3B51C 0C0218E2 */  jal     Item_CheckObtainability              
/* 00DD0 80A3B520 2404001D */  addiu   $a0, $zero, 0x001D         ## $a0 = 0000001D
/* 00DD4 80A3B524 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00DD8 80A3B528 54410004 */  bnel    $v0, $at, .L80A3B53C       
/* 00DDC 80A3B52C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00DE0 80A3B530 10000002 */  beq     $zero, $zero, .L80A3B53C   
/* 00DE4 80A3B534 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00DE8 80A3B538 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3B53C:
/* 00DEC 80A3B53C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DF0 80A3B540 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00DF4 80A3B544 03E00008 */  jr      $ra                        
/* 00DF8 80A3B548 00000000 */  nop
