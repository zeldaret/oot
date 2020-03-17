glabel func_8010773C
/* B7E8DC 8010773C 24997FFF */  addiu $t9, $a0, 0x7fff
/* B7E8E0 80107740 933962FE */  lbu   $t9, 0x62fe($t9)
/* B7E8E4 80107744 24010001 */  li    $at, 1
/* B7E8E8 80107748 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B7E8EC 8010774C 1721000E */  bne   $t9, $at, .L80107788
/* B7E8F0 80107750 2442FA90 */   addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B7E8F4 80107754 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B7E8F8 80107758 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B7E8FC 8010775C 8C480000 */  lw    $t0, ($v0)
/* B7E900 80107760 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E904 80107764 85090F56 */  lh    $t1, 0xf56($t0)
/* B7E908 80107768 A42963DD */  sh    $t1, 0x63dd($at)
/* B7E90C 8010776C 8C4A0000 */  lw    $t2, ($v0)
/* B7E910 80107770 854B0F58 */  lh    $t3, 0xf58($t2)
/* B7E914 80107774 A42B63DF */  sh    $t3, 0x63df($at)
/* B7E918 80107778 8C4C0000 */  lw    $t4, ($v0)
/* B7E91C 8010777C 858D0F5A */  lh    $t5, 0xf5a($t4)
/* B7E920 80107780 03E00008 */  jr    $ra
/* B7E924 80107784 A42D63E1 */   sh    $t5, 0x63e1($at)
.L80107788:
/* B7E928 80107788 8C4E0000 */  lw    $t6, ($v0)
/* B7E92C 8010778C 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E930 80107790 85CF0F5C */  lh    $t7, 0xf5c($t6)
/* B7E934 80107794 A42F63DD */  sh    $t7, 0x63dd($at)
/* B7E938 80107798 8C580000 */  lw    $t8, ($v0)
/* B7E93C 8010779C 87190F5E */  lh    $t9, 0xf5e($t8)
/* B7E940 801077A0 A43963DF */  sh    $t9, 0x63df($at)
/* B7E944 801077A4 8C480000 */  lw    $t0, ($v0)
/* B7E948 801077A8 85090F60 */  lh    $t1, 0xf60($t0)
/* B7E94C 801077AC 03E00008 */  jr    $ra
/* B7E950 801077B0 A42963E1 */   sh    $t1, 0x63e1($at)

