glabel func_80A3B5C0
/* 00E70 80A3B5C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E74 80A3B5C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E78 80A3B5C8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00E7C 80A3B5CC 0C021AAF */  jal     Inventory_HasEmptyBottle              
/* 00E80 80A3B5D0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00E84 80A3B5D4 14400003 */  bne     $v0, $zero, .L80A3B5E4     
/* 00E88 80A3B5D8 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 00E8C 80A3B5DC 10000011 */  beq     $zero, $zero, .L80A3B624   
/* 00E90 80A3B5E0 24020003 */  addiu   $v0, $zero, 0x0003         ## $v0 = 00000003
.L80A3B5E4:
/* 00E94 80A3B5E4 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00E98 80A3B5E8 85CEE694 */  lh      $t6, -0x196C($t6)          ## 8015E694
/* 00E9C 80A3B5EC 85F801C8 */  lh      $t8, 0x01C8($t7)           ## 000001C8
/* 00EA0 80A3B5F0 01D8082A */  slt     $at, $t6, $t8              
/* 00EA4 80A3B5F4 10200003 */  beq     $at, $zero, .L80A3B604     
/* 00EA8 80A3B5F8 00000000 */  nop
/* 00EAC 80A3B5FC 10000009 */  beq     $zero, $zero, .L80A3B624   
/* 00EB0 80A3B600 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3B604:
/* 00EB4 80A3B604 0C0218E2 */  jal     Item_CheckObtainability              
/* 00EB8 80A3B608 24040018 */  addiu   $a0, $zero, 0x0018         ## $a0 = 00000018
/* 00EBC 80A3B60C 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00EC0 80A3B610 54410004 */  bnel    $v0, $at, .L80A3B624       
/* 00EC4 80A3B614 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00EC8 80A3B618 10000002 */  beq     $zero, $zero, .L80A3B624   
/* 00ECC 80A3B61C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00ED0 80A3B620 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3B624:
/* 00ED4 80A3B624 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00ED8 80A3B628 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00EDC 80A3B62C 03E00008 */  jr      $ra                        
/* 00EE0 80A3B630 00000000 */  nop


