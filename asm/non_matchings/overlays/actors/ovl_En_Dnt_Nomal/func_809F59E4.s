glabel func_809F59E4
/* 02724 809F59E4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02728 809F59E8 3C0E809F */  lui     $t6, %hi(D_809F5E88)       ## $t6 = 809F0000
/* 0272C 809F59EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02730 809F59F0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 02734 809F59F4 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 02738 809F59F8 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 0273C 809F59FC 25CE5E88 */  addiu   $t6, $t6, %lo(D_809F5E88)  ## $t6 = 809F5E88
/* 02740 809F5A00 8DD80000 */  lw      $t8, 0x0000($t6)           ## 809F5E88
/* 02744 809F5A04 8FA60038 */  lw      $a2, 0x0038($sp)           
/* 02748 809F5A08 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFF0
/* 0274C 809F5A0C AC980000 */  sw      $t8, 0x0000($a0)           ## FFFFFFF0
/* 02750 809F5A10 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 809F5E8C
/* 02754 809F5A14 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 02758 809F5A18 AC8F0004 */  sw      $t7, 0x0004($a0)           ## FFFFFFF4
/* 0275C 809F5A1C 8DD80008 */  lw      $t8, 0x0008($t6)           ## 809F5E90
/* 02760 809F5A20 AC980008 */  sw      $t8, 0x0008($a0)           ## FFFFFFF8
/* 02764 809F5A24 84D9026A */  lh      $t9, 0x026A($a2)           ## 0000026A
/* 02768 809F5A28 17200008 */  bne     $t9, $zero, .L809F5A4C     
/* 0276C 809F5A2C 00000000 */  nop
/* 02770 809F5A30 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 02774 809F5A34 54A1000A */  bnel    $a1, $at, .L809F5A60       
/* 02778 809F5A38 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0277C 809F5A3C 0C0346BD */  jal     Matrix_MultVec3f              
/* 02780 809F5A40 24C5027C */  addiu   $a1, $a2, 0x027C           ## $a1 = 0000027C
/* 02784 809F5A44 10000006 */  beq     $zero, $zero, .L809F5A60   
/* 02788 809F5A48 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809F5A4C:
/* 0278C 809F5A4C 54A10004 */  bnel    $a1, $at, .L809F5A60       
/* 02790 809F5A50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02794 809F5A54 0C0346BD */  jal     Matrix_MultVec3f              
/* 02798 809F5A58 24C5027C */  addiu   $a1, $a2, 0x027C           ## $a1 = 0000027C
/* 0279C 809F5A5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809F5A60:
/* 027A0 809F5A60 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 027A4 809F5A64 03E00008 */  jr      $ra                        
/* 027A8 809F5A68 00000000 */  nop


