glabel func_80A3ADD4
/* 00684 80A3ADD4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00688 80A3ADD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0068C 80A3ADDC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00690 80A3ADE0 0C021AAF */  jal     Inventory_HasEmptyBottle              
/* 00694 80A3ADE4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00698 80A3ADE8 14400003 */  bne     $v0, $zero, .L80A3ADF8     
/* 0069C 80A3ADEC 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 006A0 80A3ADF0 10000011 */  beq     $zero, $zero, .L80A3AE38   
/* 006A4 80A3ADF4 24020003 */  addiu   $v0, $zero, 0x0003         ## $v0 = 00000003
.L80A3ADF8:
/* 006A8 80A3ADF8 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 006AC 80A3ADFC 85CEE694 */  lh      $t6, -0x196C($t6)          ## 8015E694
/* 006B0 80A3AE00 85F801C8 */  lh      $t8, 0x01C8($t7)           ## 000001C8
/* 006B4 80A3AE04 01D8082A */  slt     $at, $t6, $t8              
/* 006B8 80A3AE08 10200003 */  beq     $at, $zero, .L80A3AE18     
/* 006BC 80A3AE0C 00000000 */  nop
/* 006C0 80A3AE10 10000009 */  beq     $zero, $zero, .L80A3AE38   
/* 006C4 80A3AE14 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3AE18:
/* 006C8 80A3AE18 0C0218E2 */  jal     Item_CheckObtainability              
/* 006CC 80A3AE1C 24040015 */  addiu   $a0, $zero, 0x0015         ## $a0 = 00000015
/* 006D0 80A3AE20 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 006D4 80A3AE24 54410004 */  bnel    $v0, $at, .L80A3AE38       
/* 006D8 80A3AE28 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 006DC 80A3AE2C 10000002 */  beq     $zero, $zero, .L80A3AE38   
/* 006E0 80A3AE30 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 006E4 80A3AE34 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3AE38:
/* 006E8 80A3AE38 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006EC 80A3AE3C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006F0 80A3AE40 03E00008 */  jr      $ra                        
/* 006F4 80A3AE44 00000000 */  nop


