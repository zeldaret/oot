.late_rodata
glabel jtbl_80A486B8
    .word L80A446A8
    .word L80A446B8
    .word L80A446C8
    .word L80A446D8
    .word L80A446E8
    .word L80A446F8
    .word L80A44708
    .word L80A44718
    .word L80A44728
    .word L80A44738
    .word L80A44748
    .word L80A44758
    .word L80A44768
    .word L80A44778

.text
glabel func_80A44678
/* 01948 80A44678 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0194C 80A4467C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01950 80A44680 84AE001C */  lh      $t6, 0x001C($a1)           ## 0000001C
/* 01954 80A44684 31CF001F */  andi    $t7, $t6, 0x001F           ## $t7 = 00000000
/* 01958 80A44688 2DE1000E */  sltiu   $at, $t7, 0x000E           
/* 0195C 80A4468C 1020003C */  beq     $at, $zero, .L80A44780     
/* 01960 80A44690 000F7880 */  sll     $t7, $t7,  2               
/* 01964 80A44694 3C0180A5 */  lui     $at, %hi(jtbl_80A486B8)       ## $at = 80A50000
/* 01968 80A44698 002F0821 */  addu    $at, $at, $t7              
/* 0196C 80A4469C 8C2F86B8 */  lw      $t7, %lo(jtbl_80A486B8)($at)  
/* 01970 80A446A0 01E00008 */  jr      $t7                        
/* 01974 80A446A4 00000000 */  nop
glabel L80A446A8
/* 01978 80A446A8 0C290D7A */  jal     func_80A435E8              
/* 0197C 80A446AC 00000000 */  nop
/* 01980 80A446B0 10000034 */  beq     $zero, $zero, .L80A44784   
/* 01984 80A446B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A446B8
/* 01988 80A446B8 0C290F5E */  jal     func_80A43D78              
/* 0198C 80A446BC 00000000 */  nop
/* 01990 80A446C0 10000030 */  beq     $zero, $zero, .L80A44784   
/* 01994 80A446C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A446C8
/* 01998 80A446C8 0C291004 */  jal     func_80A44010              
/* 0199C 80A446CC 00000000 */  nop
/* 019A0 80A446D0 1000002C */  beq     $zero, $zero, .L80A44784   
/* 019A4 80A446D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A446D8
/* 019A8 80A446D8 0C291096 */  jal     func_80A44258              
/* 019AC 80A446DC 00000000 */  nop
/* 019B0 80A446E0 10000028 */  beq     $zero, $zero, .L80A44784   
/* 019B4 80A446E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A446E8
/* 019B8 80A446E8 0C290DC5 */  jal     func_80A43714              
/* 019BC 80A446EC 00000000 */  nop
/* 019C0 80A446F0 10000024 */  beq     $zero, $zero, .L80A44784   
/* 019C4 80A446F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A446F8
/* 019C8 80A446F8 0C290E1F */  jal     func_80A4387C              
/* 019CC 80A446FC 00000000 */  nop
/* 019D0 80A44700 10000020 */  beq     $zero, $zero, .L80A44784   
/* 019D4 80A44704 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A44708
/* 019D8 80A44708 0C290E54 */  jal     func_80A43950              
/* 019DC 80A4470C 00000000 */  nop
/* 019E0 80A44710 1000001C */  beq     $zero, $zero, .L80A44784   
/* 019E4 80A44714 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A44718
/* 019E8 80A44718 0C290E8B */  jal     func_80A43A2C              
/* 019EC 80A4471C 00000000 */  nop
/* 019F0 80A44720 10000018 */  beq     $zero, $zero, .L80A44784   
/* 019F4 80A44724 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A44728
/* 019F8 80A44728 0C290EC2 */  jal     func_80A43B08              
/* 019FC 80A4472C 00000000 */  nop
/* 01A00 80A44730 10000014 */  beq     $zero, $zero, .L80A44784   
/* 01A04 80A44734 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A44738
/* 01A08 80A44738 0C290F10 */  jal     func_80A43C40              
/* 01A0C 80A4473C 00000000 */  nop
/* 01A10 80A44740 10000010 */  beq     $zero, $zero, .L80A44784   
/* 01A14 80A44744 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A44748
/* 01A18 80A44748 0C2910CF */  jal     func_80A4433C              
/* 01A1C 80A4474C 00000000 */  nop
/* 01A20 80A44750 1000000C */  beq     $zero, $zero, .L80A44784   
/* 01A24 80A44754 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A44758
/* 01A28 80A44758 0C291113 */  jal     func_80A4444C              
/* 01A2C 80A4475C 00000000 */  nop
/* 01A30 80A44760 10000008 */  beq     $zero, $zero, .L80A44784   
/* 01A34 80A44764 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A44768
/* 01A38 80A44768 0C29113F */  jal     func_80A444FC              
/* 01A3C 80A4476C 00000000 */  nop
/* 01A40 80A44770 10000004 */  beq     $zero, $zero, .L80A44784   
/* 01A44 80A44774 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A44778
/* 01A48 80A44778 0C2910EA */  jal     func_80A443A8              
/* 01A4C 80A4477C 00000000 */  nop
.L80A44780:
/* 01A50 80A44780 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A44784:
/* 01A54 80A44784 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01A58 80A44788 03E00008 */  jr      $ra                        
/* 01A5C 80A4478C 00000000 */  nop
