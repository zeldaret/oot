glabel func_80A96EC4
/* 00114 80A96EC4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00118 80A96EC8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0011C 80A96ECC 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 00120 80A96ED0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00124 80A96ED4 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00128 80A96ED8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0012C 80A96EDC 00A12021 */  addu    $a0, $a1, $at              
/* 00130 80A96EE0 81C50196 */  lb      $a1, 0x0196($t6)           ## 00000196
/* 00134 80A96EE4 0C026062 */  jal     Object_IsLoaded
              
/* 00138 80A96EE8 AFA4001C */  sw      $a0, 0x001C($sp)           
/* 0013C 80A96EEC 14400003 */  bne     $v0, $zero, .L80A96EFC     
/* 00140 80A96EF0 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 00144 80A96EF4 10000010 */  beq     $zero, $zero, .L80A96F38   
/* 00148 80A96EF8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A96EFC:
/* 0014C 80A96EFC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00150 80A96F00 0C026062 */  jal     Object_IsLoaded
              
/* 00154 80A96F04 81E50195 */  lb      $a1, 0x0195($t7)           ## 00000195
/* 00158 80A96F08 14400003 */  bne     $v0, $zero, .L80A96F18     
/* 0015C 80A96F0C 8FB80020 */  lw      $t8, 0x0020($sp)           
/* 00160 80A96F10 10000009 */  beq     $zero, $zero, .L80A96F38   
/* 00164 80A96F14 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A96F18:
/* 00168 80A96F18 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0016C 80A96F1C 0C026062 */  jal     Object_IsLoaded
              
/* 00170 80A96F20 83050194 */  lb      $a1, 0x0194($t8)           ## 00000194
/* 00174 80A96F24 54400004 */  bnel    $v0, $zero, .L80A96F38     
/* 00178 80A96F28 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 0017C 80A96F2C 10000002 */  beq     $zero, $zero, .L80A96F38   
/* 00180 80A96F30 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00184 80A96F34 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A96F38:
/* 00188 80A96F38 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0018C 80A96F3C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00190 80A96F40 03E00008 */  jr      $ra                        
/* 00194 80A96F44 00000000 */  nop


