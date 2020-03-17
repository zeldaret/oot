glabel func_80AF30AC
/* 00B5C 80AF30AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B60 80AF30B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B64 80AF30B4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00B68 80AF30B8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B6C 80AF30BC 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00B70 80AF30C0 0C2BCA07 */  jal     func_80AF281C              
/* 00B74 80AF30C4 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
/* 00B78 80AF30C8 1040001A */  beq     $v0, $zero, .L80AF3134     
/* 00B7C 80AF30CC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B80 80AF30D0 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 00B84 80AF30D4 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 00B88 80AF30D8 AC8E02A8 */  sw      $t6, 0x02A8($a0)           ## 000002A8
/* 00B8C 80AF30DC AC8F02AC */  sw      $t7, 0x02AC($a0)           ## 000002AC
/* 00B90 80AF30E0 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 00B94 80AF30E4 8F18FA90 */  lw      $t8, -0x0570($t8)          ## 8015FA90
/* 00B98 80AF30E8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00B9C 80AF30EC 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 00BA0 80AF30F0 8719145E */  lh      $t9, 0x145E($t8)           ## 8016145E
/* 00BA4 80AF30F4 8C8902B8 */  lw      $t1, 0x02B8($a0)           ## 000002B8
/* 00BA8 80AF30F8 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 00BAC 80AF30FC 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 00BB0 80AF3100 AC8802B4 */  sw      $t0, 0x02B4($a0)           ## 000002B4
/* 00BB4 80AF3104 468021A0 */  cvt.s.w $f6, $f4                   
/* 00BB8 80AF3108 46083280 */  add.s   $f10, $f6, $f8             
/* 00BBC 80AF310C 15200007 */  bne     $t1, $zero, .L80AF312C     
/* 00BC0 80AF3110 E48A02B0 */  swc1    $f10, 0x02B0($a0)          ## 000002B0
/* 00BC4 80AF3114 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00BC8 80AF3118 0C2BCBA1 */  jal     func_80AF2E84              
/* 00BCC 80AF311C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00BD0 80AF3120 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00BD4 80AF3124 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00BD8 80AF3128 AC8A02B8 */  sw      $t2, 0x02B8($a0)           ## 000002B8
.L80AF312C:
/* 00BDC 80AF312C 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 00BE0 80AF3130 A08B00C8 */  sb      $t3, 0x00C8($a0)           ## 000000C8
.L80AF3134:
/* 00BE4 80AF3134 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BE8 80AF3138 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BEC 80AF313C 03E00008 */  jr      $ra                        
/* 00BF0 80AF3140 00000000 */  nop


