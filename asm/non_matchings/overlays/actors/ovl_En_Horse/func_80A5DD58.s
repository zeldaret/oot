glabel func_80A5DD58
/* 02A68 80A5DD58 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02A6C 80A5DD5C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 02A70 80A5DD60 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 02A74 80A5DD64 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 02A78 80A5DD68 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 02A7C 80A5DD6C AC800154 */  sw      $zero, 0x0154($a0)         ## 00000154
/* 02A80 80A5DD70 AC800150 */  sw      $zero, 0x0150($a0)         ## 00000150
/* 02A84 80A5DD74 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 02A88 80A5DD78 AC8F0210 */  sw      $t7, 0x0210($a0)           ## 00000210
/* 02A8C 80A5DD7C AC800234 */  sw      $zero, 0x0234($a0)         ## 00000234
/* 02A90 80A5DD80 8CD80158 */  lw      $t8, 0x0158($a2)           ## 00000158
/* 02A94 80A5DD84 3C0880A6 */  lui     $t0, %hi(D_80A65E58)       ## $t0 = 80A60000
/* 02A98 80A5DD88 248401AC */  addiu   $a0, $a0, 0x01AC           ## $a0 = 000001AC
/* 02A9C 80A5DD8C 0018C880 */  sll     $t9, $t8,  2
/* 02AA0 80A5DD90 01194021 */  addu    $t0, $t0, $t9
/* 02AA4 80A5DD94 8D085E58 */  lw      $t0, %lo(D_80A65E58)($t0)
/* 02AA8 80A5DD98 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 02AAC 80A5DD9C 8D050018 */  lw      $a1, 0x0018($t0)           ## 80A60018
/* 02AB0 80A5DDA0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 02AB4 80A5DDA4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02AB8 80A5DDA8 03E00008 */  jr      $ra
/* 02ABC 80A5DDAC 00000000 */  nop
