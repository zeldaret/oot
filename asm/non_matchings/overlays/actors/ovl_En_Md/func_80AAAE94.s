glabel func_80AAAE94
/* 00C44 80AAAE94 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C48 80AAAE98 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C4C 80AAAE9C 848200A4 */  lh      $v0, 0x00A4($a0)           ## 000000A4
/* 00C50 80AAAEA0 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
/* 00C54 80AAAEA4 1041000B */  beq     $v0, $at, .L80AAAED4       
/* 00C58 80AAAEA8 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
/* 00C5C 80AAAEAC 10410005 */  beq     $v0, $at, .L80AAAEC4       
/* 00C60 80AAAEB0 2401005B */  addiu   $at, $zero, 0x005B         ## $at = 0000005B
/* 00C64 80AAAEB4 1041000B */  beq     $v0, $at, .L80AAAEE4       
/* 00C68 80AAAEB8 00000000 */  nop
/* 00C6C 80AAAEBC 1000000D */  beq     $zero, $zero, .L80AAAEF4   
/* 00C70 80AAAEC0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AAAEC4:
/* 00C74 80AAAEC4 0C2AAB3E */  jal     func_80AAACF8              
/* 00C78 80AAAEC8 00000000 */  nop
/* 00C7C 80AAAECC 1000000A */  beq     $zero, $zero, .L80AAAEF8   
/* 00C80 80AAAED0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AAAED4:
/* 00C84 80AAAED4 0C2AAB78 */  jal     func_80AAADE0              
/* 00C88 80AAAED8 00000000 */  nop
/* 00C8C 80AAAEDC 10000006 */  beq     $zero, $zero, .L80AAAEF8   
/* 00C90 80AAAEE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AAAEE4:
/* 00C94 80AAAEE4 0C2AAB85 */  jal     func_80AAAE14              
/* 00C98 80AAAEE8 00000000 */  nop
/* 00C9C 80AAAEEC 10000002 */  beq     $zero, $zero, .L80AAAEF8   
/* 00CA0 80AAAEF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AAAEF4:
/* 00CA4 80AAAEF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AAAEF8:
/* 00CA8 80AAAEF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CAC 80AAAEFC 03E00008 */  jr      $ra                        
/* 00CB0 80AAAF00 00000000 */  nop


