.late_rodata
glabel jtbl_80A9A924
    .word L80A9859C
    .word L80A985AC
    .word L80A985BC
    .word L80A985CC
    .word L80A985DC
    .word L80A985EC
    .word L80A985FC
    .word L80A9860C
    .word L80A9861C
    .word L80A9862C
    .word L80A9863C
    .word L80A9864C
    .word L80A9865C

.text
glabel func_80A9856C
/* 017BC 80A9856C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 017C0 80A98570 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 017C4 80A98574 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 017C8 80A98578 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 017CC 80A9857C 2DE1000D */  sltiu   $at, $t7, 0x000D           
/* 017D0 80A98580 10200038 */  beq     $at, $zero, .L80A98664     
/* 017D4 80A98584 000F7880 */  sll     $t7, $t7,  2               
/* 017D8 80A98588 3C0180AA */  lui     $at, %hi(jtbl_80A9A924)       ## $at = 80AA0000
/* 017DC 80A9858C 002F0821 */  addu    $at, $at, $t7              
/* 017E0 80A98590 8C2FA924 */  lw      $t7, %lo(jtbl_80A9A924)($at)  
/* 017E4 80A98594 01E00008 */  jr      $t7                        
/* 017E8 80A98598 00000000 */  nop
glabel L80A9859C
/* 017EC 80A9859C 0C2A5FAC */  jal     func_80A97EB0              
/* 017F0 80A985A0 00000000 */  nop
/* 017F4 80A985A4 10000030 */  beq     $zero, $zero, .L80A98668   
/* 017F8 80A985A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A985AC
/* 017FC 80A985AC 0C2A6049 */  jal     func_80A98124              
/* 01800 80A985B0 00000000 */  nop
/* 01804 80A985B4 1000002C */  beq     $zero, $zero, .L80A98668   
/* 01808 80A985B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A985BC
/* 0180C 80A985BC 0C2A5FAC */  jal     func_80A97EB0              
/* 01810 80A985C0 00000000 */  nop
/* 01814 80A985C4 10000028 */  beq     $zero, $zero, .L80A98668   
/* 01818 80A985C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A985CC
/* 0181C 80A985CC 0C2A5FAC */  jal     func_80A97EB0              
/* 01820 80A985D0 00000000 */  nop
/* 01824 80A985D4 10000024 */  beq     $zero, $zero, .L80A98668   
/* 01828 80A985D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A985DC
/* 0182C 80A985DC 0C2A5FAC */  jal     func_80A97EB0              
/* 01830 80A985E0 00000000 */  nop
/* 01834 80A985E4 10000020 */  beq     $zero, $zero, .L80A98668   
/* 01838 80A985E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A985EC
/* 0183C 80A985EC 0C2A5FAC */  jal     func_80A97EB0              
/* 01840 80A985F0 00000000 */  nop
/* 01844 80A985F4 1000001C */  beq     $zero, $zero, .L80A98668   
/* 01848 80A985F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A985FC
/* 0184C 80A985FC 0C2A5FC8 */  jal     func_80A97F20              
/* 01850 80A98600 00000000 */  nop
/* 01854 80A98604 10000018 */  beq     $zero, $zero, .L80A98668   
/* 01858 80A98608 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A9860C
/* 0185C 80A9860C 0C2A5FAC */  jal     func_80A97EB0              
/* 01860 80A98610 00000000 */  nop
/* 01864 80A98614 10000014 */  beq     $zero, $zero, .L80A98668   
/* 01868 80A98618 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A9861C
/* 0186C 80A9861C 0C2A5FAC */  jal     func_80A97EB0              
/* 01870 80A98620 00000000 */  nop
/* 01874 80A98624 10000010 */  beq     $zero, $zero, .L80A98668   
/* 01878 80A98628 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A9862C
/* 0187C 80A9862C 0C2A5FAC */  jal     func_80A97EB0              
/* 01880 80A98630 00000000 */  nop
/* 01884 80A98634 1000000C */  beq     $zero, $zero, .L80A98668   
/* 01888 80A98638 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A9863C
/* 0188C 80A9863C 0C2A5F86 */  jal     func_80A97E18              
/* 01890 80A98640 00000000 */  nop
/* 01894 80A98644 10000008 */  beq     $zero, $zero, .L80A98668   
/* 01898 80A98648 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A9864C
/* 0189C 80A9864C 0C2A5FAC */  jal     func_80A97EB0              
/* 018A0 80A98650 00000000 */  nop
/* 018A4 80A98654 10000004 */  beq     $zero, $zero, .L80A98668   
/* 018A8 80A98658 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A9865C
/* 018AC 80A9865C 0C2A5F86 */  jal     func_80A97E18              
/* 018B0 80A98660 00000000 */  nop
.L80A98664:
/* 018B4 80A98664 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A98668:
/* 018B8 80A98668 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018BC 80A9866C 03E00008 */  jr      $ra                        
/* 018C0 80A98670 00000000 */  nop
