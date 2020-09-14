.late_rodata
.late_rodata_alignment 4

glabel jtbl_808305DC
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044

.text
glabel func_8082A00C
/* 167EC 8082A00C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 167F0 8082A010 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 167F4 8082A014 0C20A658 */  jal     func_80829960              
/* 167F8 8082A018 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 167FC 8082A01C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 16800 8082A020 948E00A4 */  lhu     $t6, 0x00A4($a0)           ## 000000A4
/* 16804 8082A024 2DC1000A */  sltiu   $at, $t6, 0x000A           
/* 16808 8082A028 10200009 */  beq     $at, $zero, .L8082A050     
/* 1680C 8082A02C 000E7080 */  sll     $t6, $t6,  2               
/* 16810 8082A030 3C018083 */  lui     $at, %hi(jtbl_808305DC)       ## $at = 80830000
/* 16814 8082A034 002E0821 */  addu    $at, $at, $t6              
/* 16818 8082A038 8C2E05DC */  lw      $t6, %lo(jtbl_808305DC)($at)  
/* 1681C 8082A03C 01C00008 */  jr      $t6                        
/* 16820 8082A040 00000000 */  nop
glabel L8082A044
/* 16824 8082A044 0C20A668 */  jal     func_808299A0              
/* 16828 8082A048 00000000 */  nop
/* 1682C 8082A04C 8FA40018 */  lw      $a0, 0x0018($sp)           
.L8082A050:
/* 16830 8082A050 0C20A664 */  jal     func_80829990              
/* 16834 8082A054 00000000 */  nop
/* 16838 8082A058 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1683C 8082A05C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 16840 8082A060 03E00008 */  jr      $ra                        
/* 16844 8082A064 00000000 */  nop
/* 16848 8082A068 00000000 */  nop
/* 1684C 8082A06C 00000000 */  nop
