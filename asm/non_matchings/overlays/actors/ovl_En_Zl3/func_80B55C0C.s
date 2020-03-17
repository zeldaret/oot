glabel func_80B55C0C
/* 0285C 80B55C0C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02860 80B55C10 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02864 80B55C14 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02868 80B55C18 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0286C 80B55C1C 24A554E0 */  addiu   $a1, $a1, 0x54E0           ## $a1 = 060054E0
/* 02870 80B55C20 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02874 80B55C24 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02878 80B55C28 0C2D5385 */  jal     func_80B54E14              
/* 0287C 80B55C2C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02880 80B55C30 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 02884 80B55C34 240E000B */  addiu   $t6, $zero, 0x000B         ## $t6 = 0000000B
/* 02888 80B55C38 ADEE024C */  sw      $t6, 0x024C($t7)           ## 0000024C
/* 0288C 80B55C3C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02890 80B55C40 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02894 80B55C44 03E00008 */  jr      $ra                        
/* 02898 80B55C48 00000000 */  nop


