glabel func_80A3B2AC
/* 00B5C 80A3B2AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B60 80A3B2B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B64 80A3B2B4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B68 80A3B2B8 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00B6C 80A3B2BC 85CEE694 */  lh      $t6, -0x196C($t6)          ## 8015E694
/* 00B70 80A3B2C0 84AF01C8 */  lh      $t7, 0x01C8($a1)           ## 000001C8
/* 00B74 80A3B2C4 01CF082A */  slt     $at, $t6, $t7              
/* 00B78 80A3B2C8 10200003 */  beq     $at, $zero, .L80A3B2D8     
/* 00B7C 80A3B2CC 00000000 */  nop
/* 00B80 80A3B2D0 10000009 */  beq     $zero, $zero, .L80A3B2F8   
/* 00B84 80A3B2D4 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3B2D8:
/* 00B88 80A3B2D8 0C0218E2 */  jal     Item_CheckObtainability              
/* 00B8C 80A3B2DC 24040023 */  addiu   $a0, $zero, 0x0023         ## $a0 = 00000023
/* 00B90 80A3B2E0 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00B94 80A3B2E4 54410004 */  bnel    $v0, $at, .L80A3B2F8       
/* 00B98 80A3B2E8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00B9C 80A3B2EC 10000002 */  beq     $zero, $zero, .L80A3B2F8   
/* 00BA0 80A3B2F0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00BA4 80A3B2F4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3B2F8:
/* 00BA8 80A3B2F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BAC 80A3B2FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BB0 80A3B300 03E00008 */  jr      $ra                        
/* 00BB4 80A3B304 00000000 */  nop


