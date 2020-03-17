glabel func_80A9D744
/* 011F4 80A9D744 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 011F8 80A9D748 3C0E80AA */  lui     $t6, %hi(D_80A9D958)       ## $t6 = 80AA0000
/* 011FC 80A9D74C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01200 80A9D750 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01204 80A9D754 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 01208 80A9D758 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 0120C 80A9D75C 25CED958 */  addiu   $t6, $t6, %lo(D_80A9D958)  ## $t6 = 80A9D958
/* 01210 80A9D760 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80A9D958
/* 01214 80A9D764 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFF0
/* 01218 80A9D768 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 0121C 80A9D76C AC980000 */  sw      $t8, 0x0000($a0)           ## FFFFFFF0
/* 01220 80A9D770 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80A9D95C
/* 01224 80A9D774 AC8F0004 */  sw      $t7, 0x0004($a0)           ## FFFFFFF4
/* 01228 80A9D778 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80A9D960
/* 0122C 80A9D77C 14A10004 */  bne     $a1, $at, .L80A9D790       
/* 01230 80A9D780 AC980008 */  sw      $t8, 0x0008($a0)           ## FFFFFFF8
/* 01234 80A9D784 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 01238 80A9D788 0C0346BD */  jal     Matrix_MultVec3f              
/* 0123C 80A9D78C 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80A9D790:
/* 01240 80A9D790 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01244 80A9D794 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01248 80A9D798 03E00008 */  jr      $ra                        
/* 0124C 80A9D79C 00000000 */  nop


