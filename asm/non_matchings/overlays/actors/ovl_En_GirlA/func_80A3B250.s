glabel func_80A3B250
/* 00B00 80A3B250 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B04 80A3B254 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B08 80A3B258 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B0C 80A3B25C 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x34)
/* 00B10 80A3B260 85CEE694 */  lh      $t6, %lo(gSaveContext+0x34)($t6)
/* 00B14 80A3B264 84AF01C8 */  lh      $t7, 0x01C8($a1)           ## 000001C8
/* 00B18 80A3B268 01CF082A */  slt     $at, $t6, $t7              
/* 00B1C 80A3B26C 10200003 */  beq     $at, $zero, .L80A3B27C     
/* 00B20 80A3B270 00000000 */  nop
/* 00B24 80A3B274 10000009 */  beq     $zero, $zero, .L80A3B29C   
/* 00B28 80A3B278 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3B27C:
/* 00B2C 80A3B27C 0C0218E2 */  jal     Item_CheckObtainability              
/* 00B30 80A3B280 2404001A */  addiu   $a0, $zero, 0x001A         ## $a0 = 0000001A
/* 00B34 80A3B284 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00B38 80A3B288 54410004 */  bnel    $v0, $at, .L80A3B29C       
/* 00B3C 80A3B28C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00B40 80A3B290 10000002 */  beq     $zero, $zero, .L80A3B29C   
/* 00B44 80A3B294 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00B48 80A3B298 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3B29C:
/* 00B4C 80A3B29C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B50 80A3B2A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B54 80A3B2A4 03E00008 */  jr      $ra                        
/* 00B58 80A3B2A8 00000000 */  nop
