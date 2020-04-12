.late_rodata
glabel jtbl_80A6EE68
.word L80A6EC84
.word L80A6ECB0
.word func_80A6ECBC
.word func_80A6ECC8
.word func_80A6ECE8
.word 0x00000000

.text
glabel func_80A6EC58
/* 008B8 80A6EC58 24AEFFF7 */  addiu   $t6, $a1, 0xFFF7           ## $t6 = FFFFFFF7
/* 008BC 80A6EC5C 2DC10005 */  sltiu   $at, $t6, 0x0005           
/* 008C0 80A6EC60 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 008C4 80A6EC64 10200028 */  beq     $at, $zero, .L80A6ED08     
/* 008C8 80A6EC68 AFA7000C */  sw      $a3, 0x000C($sp)           
/* 008CC 80A6EC6C 000E7080 */  sll     $t6, $t6,  2               
/* 008D0 80A6EC70 3C0180A7 */  lui     $at, %hi(jtbl_80A6EE68)       ## $at = 80A70000
/* 008D4 80A6EC74 002E0821 */  addu    $at, $at, $t6              
/* 008D8 80A6EC78 8C2EEE68 */  lw      $t6, %lo(jtbl_80A6EE68)($at)  
/* 008DC 80A6EC7C 01C00008 */  jr      $t6                        
/* 008E0 80A6EC80 00000000 */  nop
glabel L80A6EC84
/* 008E4 80A6EC84 8FA20014 */  lw      $v0, 0x0014($sp)           
/* 008E8 80A6EC88 8FA30010 */  lw      $v1, 0x0010($sp)           
/* 008EC 80A6EC8C 8458029E */  lh      $t8, 0x029E($v0)           ## 0000029E
/* 008F0 80A6EC90 846F0000 */  lh      $t7, 0x0000($v1)           ## 00000000
/* 008F4 80A6EC94 84680004 */  lh      $t0, 0x0004($v1)           ## 00000004
/* 008F8 80A6EC98 01F8C821 */  addu    $t9, $t7, $t8              
/* 008FC 80A6EC9C A4790000 */  sh      $t9, 0x0000($v1)           ## 00000000
/* 00900 80A6ECA0 8449029C */  lh      $t1, 0x029C($v0)           ## 0000029C
/* 00904 80A6ECA4 01095021 */  addu    $t2, $t0, $t1              
/* 00908 80A6ECA8 10000017 */  beq     $zero, $zero, .L80A6ED08   
/* 0090C 80A6ECAC A46A0004 */  sh      $t2, 0x0004($v1)           ## 00000004
glabel L80A6ECB0
/* 00910 80A6ECB0 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
/* 00914 80A6ECB4 03E00008 */  jr      $ra                        
/* 00918 80A6ECB8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
