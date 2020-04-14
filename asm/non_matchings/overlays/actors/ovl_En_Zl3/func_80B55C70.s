glabel func_80B55C70
/* 028C0 80B55C70 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 028C4 80B55C74 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 028C8 80B55C78 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 028CC 80B55C7C 24A58684 */  addiu   $a1, $a1, 0x8684           ## $a1 = 06008684
/* 028D0 80B55C80 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 028D4 80B55C84 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 028D8 80B55C88 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 028DC 80B55C8C 0C2D5385 */  jal     func_80B54E14              
/* 028E0 80B55C90 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 028E4 80B55C94 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 028E8 80B55C98 2401FFF6 */  addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
/* 028EC 80B55C9C 240E000C */  addiu   $t6, $zero, 0x000C         ## $t6 = 0000000C
/* 028F0 80B55CA0 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 028F4 80B55CA4 AC8E024C */  sw      $t6, 0x024C($a0)           ## 0000024C
/* 028F8 80B55CA8 01E1C024 */  and     $t8, $t7, $at              
/* 028FC 80B55CAC 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 02900 80B55CB0 03014024 */  and     $t0, $t8, $at              
/* 02904 80B55CB4 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 02908 80B55CB8 AC880004 */  sw      $t0, 0x0004($a0)           ## 00000004
/* 0290C 80B55CBC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02910 80B55CC0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02914 80B55CC4 03E00008 */  jr      $ra                        
/* 02918 80B55CC8 00000000 */  nop
