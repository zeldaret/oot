glabel func_80A35004
/* 009E4 80A35004 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 009E8 80A35008 3C0E80A3 */  lui     $t6, %hi(D_80A351C8)       ## $t6 = 80A30000
/* 009EC 80A3500C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 009F0 80A35010 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 009F4 80A35014 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 009F8 80A35018 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 009FC 80A3501C 25CE51C8 */  addiu   $t6, $t6, %lo(D_80A351C8)  ## $t6 = 80A351C8
/* 00A00 80A35020 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80A351C8
/* 00A04 80A35024 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFF0
/* 00A08 80A35028 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00A0C 80A3502C AC980000 */  sw      $t8, 0x0000($a0)           ## FFFFFFF0
/* 00A10 80A35030 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80A351CC
/* 00A14 80A35034 AC8F0004 */  sw      $t7, 0x0004($a0)           ## FFFFFFF4
/* 00A18 80A35038 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80A351D0
/* 00A1C 80A3503C 14A10004 */  bne     $a1, $at, .L80A35050       
/* 00A20 80A35040 AC980008 */  sw      $t8, 0x0008($a0)           ## FFFFFFF8
/* 00A24 80A35044 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 00A28 80A35048 0C0346BD */  jal     Matrix_MultVec3f              
/* 00A2C 80A3504C 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80A35050:
/* 00A30 80A35050 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A34 80A35054 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00A38 80A35058 03E00008 */  jr      $ra                        
/* 00A3C 80A3505C 00000000 */  nop


