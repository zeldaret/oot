glabel func_80AAC104
/* 01EB4 80AAC104 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01EB8 80AAC108 3C0E80AB */  lui     $t6, %hi(D_80AAC498)       ## $t6 = 80AB0000
/* 01EBC 80AAC10C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01EC0 80AAC110 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01EC4 80AAC114 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 01EC8 80AAC118 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 01ECC 80AAC11C 25CEC498 */  addiu   $t6, $t6, %lo(D_80AAC498)  ## $t6 = 80AAC498
/* 01ED0 80AAC120 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80AAC498
/* 01ED4 80AAC124 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFF0
/* 01ED8 80AAC128 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 01EDC 80AAC12C AC980000 */  sw      $t8, 0x0000($a0)           ## FFFFFFF0
/* 01EE0 80AAC130 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80AAC49C
/* 01EE4 80AAC134 AC8F0004 */  sw      $t7, 0x0004($a0)           ## FFFFFFF4
/* 01EE8 80AAC138 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80AAC4A0
/* 01EEC 80AAC13C 14A10004 */  bne     $a1, $at, .L80AAC150       
/* 01EF0 80AAC140 AC980008 */  sw      $t8, 0x0008($a0)           ## FFFFFFF8
/* 01EF4 80AAC144 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 01EF8 80AAC148 0C0346BD */  jal     Matrix_MultVec3f              
/* 01EFC 80AAC14C 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80AAC150:
/* 01F00 80AAC150 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01F04 80AAC154 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01F08 80AAC158 03E00008 */  jr      $ra                        
/* 01F0C 80AAC15C 00000000 */  nop


