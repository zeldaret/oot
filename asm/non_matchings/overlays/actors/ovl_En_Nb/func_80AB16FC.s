glabel func_80AB16FC
/* 0096C 80AB16FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00970 80AB1700 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00974 80AB1704 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00978 80AB1708 51C0000D */  beql    $t6, $zero, .L80AB1740     
/* 0097C 80AB170C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00980 80AB1710 8CA21D90 */  lw      $v0, 0x1D90($a1)           ## 00001D90
/* 00984 80AB1714 5040000A */  beql    $v0, $zero, .L80AB1740     
/* 00988 80AB1718 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0098C 80AB171C 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 00990 80AB1720 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
/* 00994 80AB1724 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00998 80AB1728 546F0005 */  bnel    $v1, $t7, .L80AB1740       
/* 0099C 80AB172C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 009A0 80AB1730 AC830278 */  sw      $v1, 0x0278($a0)           ## 00000278
/* 009A4 80AB1734 0C2AC55E */  jal     func_80AB1578              
/* 009A8 80AB1738 AC98027C */  sw      $t8, 0x027C($a0)           ## 0000027C
/* 009AC 80AB173C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB1740:
/* 009B0 80AB1740 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 009B4 80AB1744 03E00008 */  jr      $ra                        
/* 009B8 80AB1748 00000000 */  nop


