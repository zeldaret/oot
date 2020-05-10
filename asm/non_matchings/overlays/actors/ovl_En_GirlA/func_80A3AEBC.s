glabel func_80A3AEBC
/* 0076C 80A3AEBC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00770 80A3AEC0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00774 80A3AEC4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00778 80A3AEC8 0C021AAF */  jal     Inventory_HasEmptyBottle              
/* 0077C 80A3AECC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00780 80A3AED0 14400003 */  bne     $v0, $zero, .L80A3AEE0     
/* 00784 80A3AED4 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 00788 80A3AED8 10000011 */  beq     $zero, $zero, .L80A3AF20   
/* 0078C 80A3AEDC 24020003 */  addiu   $v0, $zero, 0x0003         ## $v0 = 00000003
.L80A3AEE0:
/* 00790 80A3AEE0 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x34)
/* 00794 80A3AEE4 85CEE694 */  lh      $t6, %lo(gSaveContext+0x34)($t6)
/* 00798 80A3AEE8 85F801C8 */  lh      $t8, 0x01C8($t7)           ## 000001C8
/* 0079C 80A3AEEC 01D8082A */  slt     $at, $t6, $t8              
/* 007A0 80A3AEF0 10200003 */  beq     $at, $zero, .L80A3AF00     
/* 007A4 80A3AEF4 00000000 */  nop
/* 007A8 80A3AEF8 10000009 */  beq     $zero, $zero, .L80A3AF20   
/* 007AC 80A3AEFC 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3AF00:
/* 007B0 80A3AF00 0C0218E2 */  jal     Item_CheckObtainability              
/* 007B4 80A3AF04 24040017 */  addiu   $a0, $zero, 0x0017         ## $a0 = 00000017
/* 007B8 80A3AF08 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 007BC 80A3AF0C 54410004 */  bnel    $v0, $at, .L80A3AF20       
/* 007C0 80A3AF10 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 007C4 80A3AF14 10000002 */  beq     $zero, $zero, .L80A3AF20   
/* 007C8 80A3AF18 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 007CC 80A3AF1C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3AF20:
/* 007D0 80A3AF20 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007D4 80A3AF24 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007D8 80A3AF28 03E00008 */  jr      $ra                        
/* 007DC 80A3AF2C 00000000 */  nop
