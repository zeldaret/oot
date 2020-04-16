.late_rodata
glabel jtbl_80AF74D8
.word L80AF5D14
.word L80AF5D24
.word L80AF5D34
.word L80AF5D44
.word L80AF5D54
.word L80AF5D64
.word L80AF5D74

.text
glabel func_80AF5CE4
/* 00784 80AF5CE4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00788 80AF5CE8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0078C 80AF5CEC 908E020B */  lbu     $t6, 0x020B($a0)           ## 0000020B
/* 00790 80AF5CF0 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 00794 80AF5CF4 2DE10007 */  sltiu   $at, $t7, 0x0007           
/* 00798 80AF5CF8 10200020 */  beq     $at, $zero, .L80AF5D7C     
/* 0079C 80AF5CFC 000F7880 */  sll     $t7, $t7,  2               
/* 007A0 80AF5D00 3C0180AF */  lui     $at, %hi(jtbl_80AF74D8)       ## $at = 80AF0000
/* 007A4 80AF5D04 002F0821 */  addu    $at, $at, $t7              
/* 007A8 80AF5D08 8C2F74D8 */  lw      $t7, %lo(jtbl_80AF74D8)($at)  
/* 007AC 80AF5D0C 01E00008 */  jr      $t7                        
/* 007B0 80AF5D10 00000000 */  nop
glabel L80AF5D14
/* 007B4 80AF5D14 0C2BD62E */  jal     func_80AF58B8              
/* 007B8 80AF5D18 00000000 */  nop
/* 007BC 80AF5D1C 10000018 */  beq     $zero, $zero, .L80AF5D80   
/* 007C0 80AF5D20 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80AF5D24
/* 007C4 80AF5D24 0C2BD653 */  jal     func_80AF594C              
/* 007C8 80AF5D28 00000000 */  nop
/* 007CC 80AF5D2C 10000014 */  beq     $zero, $zero, .L80AF5D80   
/* 007D0 80AF5D30 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80AF5D34
/* 007D4 80AF5D34 0C2BD678 */  jal     func_80AF59E0              
/* 007D8 80AF5D38 00000000 */  nop
/* 007DC 80AF5D3C 10000010 */  beq     $zero, $zero, .L80AF5D80   
/* 007E0 80AF5D40 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80AF5D44
/* 007E4 80AF5D44 0C2BD69D */  jal     func_80AF5A74              
/* 007E8 80AF5D48 00000000 */  nop
/* 007EC 80AF5D4C 1000000C */  beq     $zero, $zero, .L80AF5D80   
/* 007F0 80AF5D50 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80AF5D54
/* 007F4 80AF5D54 0C2BD6C4 */  jal     func_80AF5B10              
/* 007F8 80AF5D58 00000000 */  nop
/* 007FC 80AF5D5C 10000008 */  beq     $zero, $zero, .L80AF5D80   
/* 00800 80AF5D60 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80AF5D64
/* 00804 80AF5D64 0C2BD6E9 */  jal     func_80AF5BA4              
/* 00808 80AF5D68 00000000 */  nop
/* 0080C 80AF5D6C 10000004 */  beq     $zero, $zero, .L80AF5D80   
/* 00810 80AF5D70 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80AF5D74
/* 00814 80AF5D74 0C2BD710 */  jal     func_80AF5C40              
/* 00818 80AF5D78 00000000 */  nop
.L80AF5D7C:
/* 0081C 80AF5D7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AF5D80:
/* 00820 80AF5D80 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00824 80AF5D84 03E00008 */  jr      $ra                        
/* 00828 80AF5D88 00000000 */  nop
