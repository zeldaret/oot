glabel func_80A5DB0C
/* 0281C 80A5DB0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02820 80A5DB10 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 02824 80A5DB14 240E0009 */  addiu   $t6, $zero, 0x0009         ## $t6 = 00000009
/* 02828 80A5DB18 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 0282C 80A5DB1C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 02830 80A5DB20 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 02834 80A5DB24 AC8F0210 */  sw      $t7, 0x0210($a0)           ## 00000210
/* 02838 80A5DB28 8CD80158 */  lw      $t8, 0x0158($a2)           ## 00000158
/* 0283C 80A5DB2C 3C0880A6 */  lui     $t0, %hi(D_80A65E58)       ## $t0 = 80A60000
/* 02840 80A5DB30 248401AC */  addiu   $a0, $a0, 0x01AC           ## $a0 = 000001AC
/* 02844 80A5DB34 0018C880 */  sll     $t9, $t8,  2
/* 02848 80A5DB38 01194021 */  addu    $t0, $t0, $t9
/* 0284C 80A5DB3C 8D085E58 */  lw      $t0, %lo(D_80A65E58)($t0)
/* 02850 80A5DB40 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 02854 80A5DB44 8D050014 */  lw      $a1, 0x0014($t0)           ## 80A60014
/* 02858 80A5DB48 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0285C 80A5DB4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02860 80A5DB50 03E00008 */  jr      $ra
/* 02864 80A5DB54 00000000 */  nop


