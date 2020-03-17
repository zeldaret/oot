glabel func_80B58A50
/* 056A0 80B58A50 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 056A4 80B58A54 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 056A8 80B58A58 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 056AC 80B58A5C 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 056B0 80B58A60 80620A78 */  lb      $v0, 0x0A78($v1)           ## 00000A78
/* 056B4 80B58A64 5C40000E */  bgtzl   $v0, .L80B58AA0            
/* 056B8 80B58A68 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 056BC 80B58A6C 846E0896 */  lh      $t6, 0x0896($v1)           ## 00000896
/* 056C0 80B58A70 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 056C4 80B58A74 24A59BE4 */  addiu   $a1, $a1, 0x9BE4           ## $a1 = 06009BE4
/* 056C8 80B58A78 29C10033 */  slti    $at, $t6, 0x0033           
/* 056CC 80B58A7C 10200007 */  beq     $at, $zero, .L80B58A9C     
/* 056D0 80B58A80 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 056D4 80B58A84 3C07C130 */  lui     $a3, 0xC130                ## $a3 = C1300000
/* 056D8 80B58A88 0C2D5385 */  jal     func_80B54E14              
/* 056DC 80B58A8C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 056E0 80B58A90 8FB80020 */  lw      $t8, 0x0020($sp)           
/* 056E4 80B58A94 240F0022 */  addiu   $t7, $zero, 0x0022         ## $t7 = 00000022
/* 056E8 80B58A98 AF0F024C */  sw      $t7, 0x024C($t8)           ## 0000024C
.L80B58A9C:
/* 056EC 80B58A9C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B58AA0:
/* 056F0 80B58AA0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 056F4 80B58AA4 03E00008 */  jr      $ra                        
/* 056F8 80B58AA8 00000000 */  nop


