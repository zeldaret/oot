glabel func_80B5E4F0
/* 02D40 80B5E4F0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02D44 80B5E4F4 3C0E80B6 */  lui     $t6, %hi(D_80B5FB3C)       ## $t6 = 80B60000
/* 02D48 80B5E4F8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02D4C 80B5E4FC AFA40028 */  sw      $a0, 0x0028($sp)           
/* 02D50 80B5E500 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 02D54 80B5E504 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 02D58 80B5E508 25CEFB3C */  addiu   $t6, $t6, %lo(D_80B5FB3C)  ## $t6 = 80B5FB3C
/* 02D5C 80B5E50C 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80B5FB3C
/* 02D60 80B5E510 27A4001C */  addiu   $a0, $sp, 0x001C           ## $a0 = FFFFFFF4
/* 02D64 80B5E514 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 02D68 80B5E518 AC980000 */  sw      $t8, 0x0000($a0)           ## FFFFFFF4
/* 02D6C 80B5E51C 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80B5FB40
/* 02D70 80B5E520 AC8F0004 */  sw      $t7, 0x0004($a0)           ## FFFFFFF8
/* 02D74 80B5E524 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80B5FB44
/* 02D78 80B5E528 14A10004 */  bne     $a1, $at, .L80B5E53C       
/* 02D7C 80B5E52C AC980008 */  sw      $t8, 0x0008($a0)           ## FFFFFFFC
/* 02D80 80B5E530 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 02D84 80B5E534 0C0346BD */  jal     Matrix_MultVec3f              
/* 02D88 80B5E538 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80B5E53C:
/* 02D8C 80B5E53C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02D90 80B5E540 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02D94 80B5E544 03E00008 */  jr      $ra                        
/* 02D98 80B5E548 00000000 */  nop
