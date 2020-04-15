glabel func_80A008A4
/* 00904 80A008A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00908 80A008A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0090C 80A008AC 9082029B */  lbu     $v0, 0x029B($a0)           ## 0000029B
/* 00910 80A008B0 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 00914 80A008B4 11C00003 */  beq     $t6, $zero, .L80A008C4     
/* 00918 80A008B8 304FFFFE */  andi    $t7, $v0, 0xFFFE           ## $t7 = 00000000
/* 0091C 80A008BC 0C2800F7 */  jal     func_80A003DC              
/* 00920 80A008C0 A08F029B */  sb      $t7, 0x029B($a0)           ## 0000029B
.L80A008C4:
/* 00924 80A008C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00928 80A008C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0092C 80A008CC 03E00008 */  jr      $ra                        
/* 00930 80A008D0 00000000 */  nop
