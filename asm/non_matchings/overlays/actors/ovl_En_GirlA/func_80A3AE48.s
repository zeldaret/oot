glabel func_80A3AE48
/* 006F8 80A3AE48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006FC 80A3AE4C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00700 80A3AE50 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00704 80A3AE54 0C021AAF */  jal     Inventory_HasEmptyBottle              
/* 00708 80A3AE58 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0070C 80A3AE5C 14400003 */  bne     $v0, $zero, .L80A3AE6C     
/* 00710 80A3AE60 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 00714 80A3AE64 10000011 */  beq     $zero, $zero, .L80A3AEAC   
/* 00718 80A3AE68 24020003 */  addiu   $v0, $zero, 0x0003         ## $v0 = 00000003
.L80A3AE6C:
/* 0071C 80A3AE6C 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x34)
/* 00720 80A3AE70 85CEE694 */  lh      $t6, %lo(gSaveContext+0x34)($t6)
/* 00724 80A3AE74 85F801C8 */  lh      $t8, 0x01C8($t7)           ## 000001C8
/* 00728 80A3AE78 01D8082A */  slt     $at, $t6, $t8              
/* 0072C 80A3AE7C 10200003 */  beq     $at, $zero, .L80A3AE8C     
/* 00730 80A3AE80 00000000 */  nop
/* 00734 80A3AE84 10000009 */  beq     $zero, $zero, .L80A3AEAC   
/* 00738 80A3AE88 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3AE8C:
/* 0073C 80A3AE8C 0C0218E2 */  jal     Item_CheckObtainability              
/* 00740 80A3AE90 24040016 */  addiu   $a0, $zero, 0x0016         ## $a0 = 00000016
/* 00744 80A3AE94 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00748 80A3AE98 54410004 */  bnel    $v0, $at, .L80A3AEAC       
/* 0074C 80A3AE9C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00750 80A3AEA0 10000002 */  beq     $zero, $zero, .L80A3AEAC   
/* 00754 80A3AEA4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00758 80A3AEA8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3AEAC:
/* 0075C 80A3AEAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00760 80A3AEB0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00764 80A3AEB4 03E00008 */  jr      $ra                        
/* 00768 80A3AEB8 00000000 */  nop
