glabel func_80986BA0
/* 01FC0 80986BA0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01FC4 80986BA4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01FC8 80986BA8 0C261A7E */  jal     func_809869F8              
/* 01FCC 80986BAC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01FD0 80986BB0 10400008 */  beq     $v0, $zero, .L80986BD4     
/* 01FD4 80986BB4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01FD8 80986BB8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 01FDC 80986BBC 240E0015 */  addiu   $t6, $zero, 0x0015         ## $t6 = 00000015
/* 01FE0 80986BC0 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 01FE4 80986BC4 AC8E0260 */  sw      $t6, 0x0260($a0)           ## 00000260
/* 01FE8 80986BC8 AC820264 */  sw      $v0, 0x0264($a0)           ## 00000264
/* 01FEC 80986BCC AC820280 */  sw      $v0, 0x0280($a0)           ## 00000280
/* 01FF0 80986BD0 A08F00C8 */  sb      $t7, 0x00C8($a0)           ## 000000C8
.L80986BD4:
/* 01FF4 80986BD4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01FF8 80986BD8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01FFC 80986BDC 03E00008 */  jr      $ra                        
/* 02000 80986BE0 00000000 */  nop


