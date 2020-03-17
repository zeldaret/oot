glabel func_80AAA93C
/* 006EC 80AAA93C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006F0 80AAA940 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006F4 80AAA944 908E020B */  lbu     $t6, 0x020B($a0)           ## 0000020B
/* 006F8 80AAA948 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 006FC 80AAA94C 2DE1000B */  sltiu   $at, $t7, 0x000B           
/* 00700 80AAA950 10200030 */  beq     $at, $zero, .L80AAAA14     
/* 00704 80AAA954 000F7880 */  sll     $t7, $t7,  2               
/* 00708 80AAA958 3C0180AB */  lui     $at, %hi(jtbl_80AAC4D0)       ## $at = 80AB0000
/* 0070C 80AAA95C 002F0821 */  addu    $at, $at, $t7              
/* 00710 80AAA960 8C2FC4D0 */  lw      $t7, %lo(jtbl_80AAC4D0)($at)  
/* 00714 80AAA964 01E00008 */  jr      $t7                        
/* 00718 80AAA968 00000000 */  nop
glabel L80AAA96C
/* 0071C 80AAA96C 0C2AA89D */  jal     func_80AAA274              
/* 00720 80AAA970 00000000 */  nop
/* 00724 80AAA974 10000028 */  beq     $zero, $zero, .L80AAAA18   
/* 00728 80AAA978 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80AAA97C
/* 0072C 80AAA97C 0C2AA8C2 */  jal     func_80AAA308              
/* 00730 80AAA980 00000000 */  nop
/* 00734 80AAA984 10000024 */  beq     $zero, $zero, .L80AAAA18   
/* 00738 80AAA988 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80AAA98C
/* 0073C 80AAA98C 0C2AA8E7 */  jal     func_80AAA39C              
/* 00740 80AAA990 00000000 */  nop
/* 00744 80AAA994 10000020 */  beq     $zero, $zero, .L80AAAA18   
/* 00748 80AAA998 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80AAA99C
/* 0074C 80AAA99C 0C2AA91D */  jal     func_80AAA474              
/* 00750 80AAA9A0 00000000 */  nop
/* 00754 80AAA9A4 1000001C */  beq     $zero, $zero, .L80AAAA18   
/* 00758 80AAA9A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80AAA9AC
/* 0075C 80AAA9AC 0C2AA942 */  jal     func_80AAA508              
/* 00760 80AAA9B0 00000000 */  nop
/* 00764 80AAA9B4 10000018 */  beq     $zero, $zero, .L80AAAA18   
/* 00768 80AAA9B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80AAA9BC
/* 0076C 80AAA9BC 0C2AA969 */  jal     func_80AAA5A4              
/* 00770 80AAA9C0 00000000 */  nop
/* 00774 80AAA9C4 10000014 */  beq     $zero, $zero, .L80AAAA18   
/* 00778 80AAA9C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80AAA9CC
/* 0077C 80AAA9CC 0C2AA98E */  jal     func_80AAA638              
/* 00780 80AAA9D0 00000000 */  nop
/* 00784 80AAA9D4 10000010 */  beq     $zero, $zero, .L80AAAA18   
/* 00788 80AAA9D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80AAA9DC
/* 0078C 80AAA9DC 0C2AA9B5 */  jal     func_80AAA6D4              
/* 00790 80AAA9E0 00000000 */  nop
/* 00794 80AAA9E4 1000000C */  beq     $zero, $zero, .L80AAAA18   
/* 00798 80AAA9E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80AAA9EC
/* 0079C 80AAA9EC 0C2AA9DA */  jal     func_80AAA768              
/* 007A0 80AAA9F0 00000000 */  nop
/* 007A4 80AAA9F4 10000008 */  beq     $zero, $zero, .L80AAAA18   
/* 007A8 80AAA9F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80AAA9FC
/* 007AC 80AAA9FC 0C2AA9FF */  jal     func_80AAA7FC              
/* 007B0 80AAAA00 00000000 */  nop
/* 007B4 80AAAA04 10000004 */  beq     $zero, $zero, .L80AAAA18   
/* 007B8 80AAAA08 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80AAAA0C
/* 007BC 80AAAA0C 0C2AAA24 */  jal     func_80AAA890              
/* 007C0 80AAAA10 00000000 */  nop
.L80AAAA14:
/* 007C4 80AAAA14 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AAAA18:
/* 007C8 80AAAA18 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007CC 80AAAA1C 03E00008 */  jr      $ra                        
/* 007D0 80AAAA20 00000000 */  nop


