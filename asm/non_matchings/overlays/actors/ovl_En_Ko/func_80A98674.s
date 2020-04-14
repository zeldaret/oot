glabel func_80A98674
/* 018C4 80A98674 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 018C8 80A98678 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 018CC 80A9867C 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 018D0 80A98680 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 018D4 80A98684 2DE1000D */  sltiu   $at, $t7, 0x000D           
/* 018D8 80A98688 10200038 */  beq     $at, $zero, .L80A9876C     
/* 018DC 80A9868C 000F7880 */  sll     $t7, $t7,  2               
/* 018E0 80A98690 3C0180AA */  lui     $at, %hi(jtbl_80A9A958)       ## $at = 80AA0000
/* 018E4 80A98694 002F0821 */  addu    $at, $at, $t7              
/* 018E8 80A98698 8C2FA958 */  lw      $t7, %lo(jtbl_80A9A958)($at)  
/* 018EC 80A9869C 01E00008 */  jr      $t7                        
/* 018F0 80A986A0 00000000 */  nop
glabel L80A986A4
/* 018F4 80A986A4 0C2A600D */  jal     func_80A98034              
/* 018F8 80A986A8 00000000 */  nop
/* 018FC 80A986AC 10000030 */  beq     $zero, $zero, .L80A98770   
/* 01900 80A986B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A986B4
/* 01904 80A986B4 0C2A5F86 */  jal     func_80A97E18              
/* 01908 80A986B8 00000000 */  nop
/* 0190C 80A986BC 1000002C */  beq     $zero, $zero, .L80A98770   
/* 01910 80A986C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A986C4
/* 01914 80A986C4 0C2A5F86 */  jal     func_80A97E18              
/* 01918 80A986C8 00000000 */  nop
/* 0191C 80A986CC 10000028 */  beq     $zero, $zero, .L80A98770   
/* 01920 80A986D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A986D4
/* 01924 80A986D4 0C2A5FAC */  jal     func_80A97EB0              
/* 01928 80A986D8 00000000 */  nop
/* 0192C 80A986DC 10000024 */  beq     $zero, $zero, .L80A98770   
/* 01930 80A986E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A986E4
/* 01934 80A986E4 0C2A5F86 */  jal     func_80A97E18              
/* 01938 80A986E8 00000000 */  nop
/* 0193C 80A986EC 10000020 */  beq     $zero, $zero, .L80A98770   
/* 01940 80A986F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A986F4
/* 01944 80A986F4 0C2A5FAC */  jal     func_80A97EB0              
/* 01948 80A986F8 00000000 */  nop
/* 0194C 80A986FC 1000001C */  beq     $zero, $zero, .L80A98770   
/* 01950 80A98700 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98704
/* 01954 80A98704 0C2A5FC8 */  jal     func_80A97F20              
/* 01958 80A98708 00000000 */  nop
/* 0195C 80A9870C 10000018 */  beq     $zero, $zero, .L80A98770   
/* 01960 80A98710 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98714
/* 01964 80A98714 0C2A5FAC */  jal     func_80A97EB0              
/* 01968 80A98718 00000000 */  nop
/* 0196C 80A9871C 10000014 */  beq     $zero, $zero, .L80A98770   
/* 01970 80A98720 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98724
/* 01974 80A98724 0C2A5FAC */  jal     func_80A97EB0              
/* 01978 80A98728 00000000 */  nop
/* 0197C 80A9872C 10000010 */  beq     $zero, $zero, .L80A98770   
/* 01980 80A98730 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98734
/* 01984 80A98734 0C2A5FAC */  jal     func_80A97EB0              
/* 01988 80A98738 00000000 */  nop
/* 0198C 80A9873C 1000000C */  beq     $zero, $zero, .L80A98770   
/* 01990 80A98740 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98744
/* 01994 80A98744 0C2A5F86 */  jal     func_80A97E18              
/* 01998 80A98748 00000000 */  nop
/* 0199C 80A9874C 10000008 */  beq     $zero, $zero, .L80A98770   
/* 019A0 80A98750 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98754
/* 019A4 80A98754 0C2A5FAC */  jal     func_80A97EB0              
/* 019A8 80A98758 00000000 */  nop
/* 019AC 80A9875C 10000004 */  beq     $zero, $zero, .L80A98770   
/* 019B0 80A98760 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98764
/* 019B4 80A98764 0C2A5F86 */  jal     func_80A97E18              
/* 019B8 80A98768 00000000 */  nop
.L80A9876C:
/* 019BC 80A9876C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A98770:
/* 019C0 80A98770 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 019C4 80A98774 03E00008 */  jr      $ra                        
/* 019C8 80A98778 00000000 */  nop
