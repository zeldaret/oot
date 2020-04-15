glabel func_80AB37E0
/* 02A50 80AB37E0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02A54 80AB37E4 10A00010 */  beq     $a1, $zero, .L80AB3828     
/* 02A58 80AB37E8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02A5C 80AB37EC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02A60 80AB37F0 24A54BB4 */  addiu   $a1, $a1, 0x4BB4           ## $a1 = 06004BB4
/* 02A64 80AB37F4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02A68 80AB37F8 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02A6C 80AB37FC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02A70 80AB3800 0C2AC528 */  jal     func_80AB14A0              
/* 02A74 80AB3804 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02A78 80AB3808 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02A7C 80AB380C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 02A80 80AB3810 2419001A */  addiu   $t9, $zero, 0x001A         ## $t9 = 0000001A
/* 02A84 80AB3814 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 02A88 80AB3818 AC8E02E0 */  sw      $t6, 0x02E0($a0)           ## 000002E0
/* 02A8C 80AB381C AC990278 */  sw      $t9, 0x0278($a0)           ## 00000278
/* 02A90 80AB3820 35F80009 */  ori     $t8, $t7, 0x0009           ## $t8 = 00000009
/* 02A94 80AB3824 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
.L80AB3828:
/* 02A98 80AB3828 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02A9C 80AB382C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02AA0 80AB3830 03E00008 */  jr      $ra                        
/* 02AA4 80AB3834 00000000 */  nop
