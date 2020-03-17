glabel func_80B55CCC
/* 0291C 80B55CCC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02920 80B55CD0 10A00007 */  beq     $a1, $zero, .L80B55CF0     
/* 02924 80B55CD4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02928 80B55CD8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0292C 80B55CDC 24A56F04 */  addiu   $a1, $a1, 0x6F04           ## $a1 = 06006F04
/* 02930 80B55CE0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02934 80B55CE4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02938 80B55CE8 0C2D5385 */  jal     func_80B54E14              
/* 0293C 80B55CEC AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B55CF0:
/* 02940 80B55CF0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02944 80B55CF4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02948 80B55CF8 03E00008 */  jr      $ra                        
/* 0294C 80B55CFC 00000000 */  nop


