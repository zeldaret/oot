glabel func_808DE734
/* 07EC4 808DE734 24AEFFF6 */  addiu   $t6, $a1, 0xFFF6           ## $t6 = FFFFFFF6
/* 07EC8 808DE738 2DC10010 */  sltiu   $at, $t6, 0x0010           
/* 07ECC 808DE73C AFA40000 */  sw      $a0, 0x0000($sp)           
/* 07ED0 808DE740 1020008F */  beq     $at, $zero, .L808DE980     
/* 07ED4 808DE744 AFA7000C */  sw      $a3, 0x000C($sp)           
/* 07ED8 808DE748 000E7080 */  sll     $t6, $t6,  2               
/* 07EDC 808DE74C 3C018090 */  lui     $at, %hi(jtbl_808F80EC)       ## $at = 80900000
/* 07EE0 808DE750 002E0821 */  addu    $at, $at, $t6              
/* 07EE4 808DE754 8C2E80EC */  lw      $t6, %lo(jtbl_808F80EC)($at)  
/* 07EE8 808DE758 01C00008 */  jr      $t6                        
/* 07EEC 808DE75C 00000000 */  nop
glabel L808DE760
/* 07EF0 808DE760 8FA20014 */  lw      $v0, 0x0014($sp)           
/* 07EF4 808DE764 3C180601 */  lui     $t8, 0x0601                ## $t8 = 06010000
/* 07EF8 808DE768 2718C9E8 */  addiu   $t8, $t8, 0xC9E8           ## $t8 = 0600C9E8
/* 07EFC 808DE76C 904F071A */  lbu     $t7, 0x071A($v0)           ## 0000071A
/* 07F00 808DE770 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 07F04 808DE774 11E00082 */  beq     $t7, $zero, .L808DE980     
/* 07F08 808DE778 00000000 */  nop
/* 07F0C 808DE77C 03E00008 */  jr      $ra                        
/* 07F10 808DE780 ACD80000 */  sw      $t8, 0x0000($a2)           ## 00000000
