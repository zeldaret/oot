glabel func_80B2B928
/* 01728 80B2B928 AFA7000C */  sw      $a3, 0x000C($sp)           
/* 0172C 80B2B92C 848E00A4 */  lh      $t6, 0x00A4($a0)           ## 000000A4
/* 01730 80B2B930 24010051 */  addiu   $at, $zero, 0x0051         ## $at = 00000051
/* 01734 80B2B934 15C10019 */  bne     $t6, $at, .L80B2B99C       
/* 01738 80B2B938 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0173C 80B2B93C 14A10003 */  bne     $a1, $at, .L80B2B94C       
/* 01740 80B2B940 3C0F0601 */  lui     $t7, %hi(D_0600C410)                ## $t7 = 06010000
/* 01744 80B2B944 25EFC410 */  addiu   $t7, $t7, %lo(D_0600C410)           ## $t7 = 0600C410
/* 01748 80B2B948 ACCF0000 */  sw      $t7, 0x0000($a2)           ## 00000000
.L80B2B94C:
/* 0174C 80B2B94C 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 01750 80B2B950 54A10003 */  bnel    $a1, $at, .L80B2B960       
/* 01754 80B2B954 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 01758 80B2B958 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
/* 0175C 80B2B95C 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
.L80B2B960:
/* 01760 80B2B960 54A10003 */  bnel    $a1, $at, .L80B2B970       
/* 01764 80B2B964 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 01768 80B2B968 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
/* 0176C 80B2B96C 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
.L80B2B970:
/* 01770 80B2B970 54A10003 */  bnel    $a1, $at, .L80B2B980       
/* 01774 80B2B974 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01778 80B2B978 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
/* 0177C 80B2B97C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L80B2B980:
/* 01780 80B2B980 54A10003 */  bnel    $a1, $at, .L80B2B990       
/* 01784 80B2B984 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01788 80B2B988 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
/* 0178C 80B2B98C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
.L80B2B990:
/* 01790 80B2B990 14A10002 */  bne     $a1, $at, .L80B2B99C       
/* 01794 80B2B994 00000000 */  nop
/* 01798 80B2B998 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
.L80B2B99C:
/* 0179C 80B2B99C 03E00008 */  jr      $ra                        
/* 017A0 80B2B9A0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
