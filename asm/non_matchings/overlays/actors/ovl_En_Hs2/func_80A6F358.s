.late_rodata
.late_rodata_alignment 8

glabel D_80A6F500
 .word func_80A6F390
.word L80A6F3BC
.word func_80A6F3C8
.word L80A6F384
.word L80A6F384
.word 0x00000000, 0x00000000, 0x00000000

.text
glabel func_80A6F358
/* 003B8 80A6F358 24AEFFF7 */  addiu   $t6, $a1, 0xFFF7           ## $t6 = FFFFFFF7
/* 003BC 80A6F35C 2DC10005 */  sltiu   $at, $t6, 0x0005           
/* 003C0 80A6F360 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 003C4 80A6F364 1020001B */  beq     $at, $zero, .L80A6F3D4     
/* 003C8 80A6F368 AFA7000C */  sw      $a3, 0x000C($sp)           
/* 003CC 80A6F36C 000E7080 */  sll     $t6, $t6,  2               
/* 003D0 80A6F370 3C0180A7 */  lui     $at, %hi(D_80A6F500)       ## $at = 80A70000
/* 003D4 80A6F374 002E0821 */  addu    $at, $at, $t6              
/* 003D8 80A6F378 8C2EF500 */  lw      $t6, %lo(D_80A6F500)($at)  
/* 003DC 80A6F37C 01C00008 */  jr      $t6                        
/* 003E0 80A6F380 00000000 */  nop
glabel L80A6F384
/* 003E4 80A6F384 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
/* 003E8 80A6F388 03E00008 */  jr      $ra                        
/* 003EC 80A6F38C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
