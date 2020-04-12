glabel func_80986AD0
/* 01EF0 80986AD0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01EF4 80986AD4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01EF8 80986AD8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01EFC 80986ADC 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 01F00 80986AE0 35CF0009 */  ori     $t7, $t6, 0x0009           ## $t7 = 00000009
/* 01F04 80986AE4 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 01F08 80986AE8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01F0C 80986AEC 0C00BC65 */  jal     func_8002F194              
/* 01F10 80986AF0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01F14 80986AF4 14400007 */  bne     $v0, $zero, .L80986B14     
/* 01F18 80986AF8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01F1C 80986AFC 2418708E */  addiu   $t8, $zero, 0x708E         ## $t8 = 0000708E
/* 01F20 80986B00 A498010E */  sh      $t8, 0x010E($a0)           ## 0000010E
/* 01F24 80986B04 0C00BCBD */  jal     func_8002F2F4              
/* 01F28 80986B08 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01F2C 80986B0C 10000003 */  beq     $zero, $zero, .L80986B1C   
/* 01F30 80986B10 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80986B14:
/* 01F34 80986B14 10000001 */  beq     $zero, $zero, .L80986B1C   
/* 01F38 80986B18 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80986B1C:
/* 01F3C 80986B1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01F40 80986B20 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01F44 80986B24 03E00008 */  jr      $ra                        
/* 01F48 80986B28 00000000 */  nop
