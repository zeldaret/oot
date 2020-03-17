glabel func_80979F9C
/* 0166C 80979F9C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01670 80979FA0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01674 80979FA4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01678 80979FA8 0C25E5F9 */  jal     func_809797E4              
/* 0167C 80979FAC 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01680 80979FB0 10400003 */  beq     $v0, $zero, .L80979FC0     
/* 01684 80979FB4 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 01688 80979FB8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0168C 80979FBC ADEE017C */  sw      $t6, 0x017C($t7)           ## 0000017C
.L80979FC0:
/* 01690 80979FC0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01694 80979FC4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01698 80979FC8 03E00008 */  jr      $ra                        
/* 0169C 80979FCC 00000000 */  nop


