glabel func_808CEC34
/* 03E74 808CEC34 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03E78 808CEC38 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 03E7C 808CEC3C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 03E80 808CEC40 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 03E84 808CEC44 8C8214AC */  lw      $v0, 0x14AC($a0)           ## 000014AC
/* 03E88 808CEC48 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 03E8C 808CEC4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03E90 808CEC50 90450016 */  lbu     $a1, 0x0016($v0)           ## 00000016
/* 03E94 808CEC54 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 03E98 808CEC58 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 03E9C 808CEC5C 30AE0002 */  andi    $t6, $a1, 0x0002           ## $t6 = 00000000
/* 03EA0 808CEC60 11C0001B */  beq     $t6, $zero, .L808CECD0     
/* 03EA4 808CEC64 30AFFFFD */  andi    $t7, $a1, 0xFFFD           ## $t7 = 00000000
/* 03EA8 808CEC68 A04F0016 */  sb      $t7, 0x0016($v0)           ## 00000016
/* 03EAC 808CEC6C 909800AF */  lbu     $t8, 0x00AF($a0)           ## 000000AF
/* 03EB0 808CEC70 8C430024 */  lw      $v1, 0x0024($v0)           ## 00000024
/* 03EB4 808CEC74 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 03EB8 808CEC78 2719FFFE */  addiu   $t9, $t8, 0xFFFE           ## $t9 = FFFFFFFE
/* 03EBC 808CEC7C A09900AF */  sb      $t9, 0x00AF($a0)           ## 000000AF
/* 03EC0 808CEC80 8C680000 */  lw      $t0, 0x0000($v1)           ## 00000000
/* 03EC4 808CEC84 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 03EC8 808CEC88 3C188013 */  lui     $t8, 0x8013                ## $t8 = 80130000
/* 03ECC 808CEC8C 31091000 */  andi    $t1, $t0, 0x1000           ## $t1 = 00000000
/* 03ED0 808CEC90 11200003 */  beq     $t1, $zero, .L808CECA0     
/* 03ED4 808CEC94 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 03ED8 808CEC98 272BFFFE */  addiu   $t3, $t9, 0xFFFE           ## $t3 = FFFFFFFC
/* 03EDC 808CEC9C A08B00AF */  sb      $t3, 0x00AF($a0)           ## 000000AF
.L808CECA0:
/* 03EE0 808CECA0 820C00AF */  lb      $t4, 0x00AF($s0)           ## 000000AF
/* 03EE4 808CECA4 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 03EE8 808CECA8 240438D5 */  addiu   $a0, $zero, 0x38D5         ## $a0 = 000038D5
/* 03EEC 808CECAC 29810003 */  slti    $at, $t4, 0x0003           
/* 03EF0 808CECB0 10200002 */  beq     $at, $zero, .L808CECBC     
/* 03EF4 808CECB4 271833E8 */  addiu   $t8, $t8, 0x33E8           ## $t8 = 801333E8
/* 03EF8 808CECB8 A20D00AF */  sb      $t5, 0x00AF($s0)           ## 000000AF
.L808CECBC:
/* 03EFC 808CECBC A60E0230 */  sh      $t6, 0x0230($s0)           ## 00000230
/* 03F00 808CECC0 A60F023E */  sh      $t7, 0x023E($s0)           ## 0000023E
/* 03F04 808CECC4 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 03F08 808CECC8 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 03F0C 808CECCC AFA70010 */  sw      $a3, 0x0010($sp)           
.L808CECD0:
/* 03F10 808CECD0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03F14 808CECD4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 03F18 808CECD8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03F1C 808CECDC 03E00008 */  jr      $ra                        
/* 03F20 808CECE0 00000000 */  nop


