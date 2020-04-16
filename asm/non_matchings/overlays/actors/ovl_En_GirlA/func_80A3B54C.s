glabel func_80A3B54C
/* 00DFC 80A3B54C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E00 80A3B550 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E04 80A3B554 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00E08 80A3B558 0C021AAF */  jal     Inventory_HasEmptyBottle              
/* 00E0C 80A3B55C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00E10 80A3B560 14400003 */  bne     $v0, $zero, .L80A3B570     
/* 00E14 80A3B564 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 00E18 80A3B568 10000011 */  beq     $zero, $zero, .L80A3B5B0   
/* 00E1C 80A3B56C 24020003 */  addiu   $v0, $zero, 0x0003         ## $v0 = 00000003
.L80A3B570:
/* 00E20 80A3B570 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00E24 80A3B574 85CEE694 */  lh      $t6, -0x196C($t6)          ## 8015E694
/* 00E28 80A3B578 85F801C8 */  lh      $t8, 0x01C8($t7)           ## 000001C8
/* 00E2C 80A3B57C 01D8082A */  slt     $at, $t6, $t8              
/* 00E30 80A3B580 10200003 */  beq     $at, $zero, .L80A3B590     
/* 00E34 80A3B584 00000000 */  nop
/* 00E38 80A3B588 10000009 */  beq     $zero, $zero, .L80A3B5B0   
/* 00E3C 80A3B58C 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3B590:
/* 00E40 80A3B590 0C0218E2 */  jal     Item_CheckObtainability              
/* 00E44 80A3B594 24040020 */  addiu   $a0, $zero, 0x0020         ## $a0 = 00000020
/* 00E48 80A3B598 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00E4C 80A3B59C 54410004 */  bnel    $v0, $at, .L80A3B5B0       
/* 00E50 80A3B5A0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00E54 80A3B5A4 10000002 */  beq     $zero, $zero, .L80A3B5B0   
/* 00E58 80A3B5A8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00E5C 80A3B5AC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3B5B0:
/* 00E60 80A3B5B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E64 80A3B5B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E68 80A3B5B8 03E00008 */  jr      $ra                        
/* 00E6C 80A3B5BC 00000000 */  nop
