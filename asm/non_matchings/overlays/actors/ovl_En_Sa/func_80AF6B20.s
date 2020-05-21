glabel func_80AF6B20
/* 015C0 80AF6B20 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 015C4 80AF6B24 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 015C8 80AF6B28 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 015CC 80AF6B2C 84A200A4 */  lh      $v0, 0x00A4($a1)           ## 000000A4
/* 015D0 80AF6B30 24010056 */  addiu   $at, $zero, 0x0056         ## $at = 00000056
/* 015D4 80AF6B34 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 015D8 80AF6B38 1441000A */  bne     $v0, $at, .L80AF6B64       
/* 015DC 80AF6B3C 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 015E0 80AF6B40 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 015E4 80AF6B44 24050062 */  addiu   $a1, $zero, 0x0062         ## $a1 = 00000062
/* 015E8 80AF6B48 0C021344 */  jal     Item_Give              
/* 015EC 80AF6B4C AFA60024 */  sw      $a2, 0x0024($sp)           
/* 015F0 80AF6B50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015F4 80AF6B54 0C2BD763 */  jal     func_80AF5D8C              
/* 015F8 80AF6B58 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 015FC 80AF6B5C 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 01600 80AF6B60 85C200A4 */  lh      $v0, 0x00A4($t6)           ## 000000A4
.L80AF6B64:
/* 01604 80AF6B64 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
/* 01608 80AF6B68 14410015 */  bne     $v0, $at, .L80AF6BC0       
/* 0160C 80AF6B6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01610 80AF6B70 0C2BD763 */  jal     func_80AF5D8C              
/* 01614 80AF6B74 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 01618 80AF6B78 8A08021A */  lwl     $t0, 0x021A($s0)           ## 0000021A
/* 0161C 80AF6B7C 9A08021D */  lwr     $t0, 0x021D($s0)           ## 0000021D
/* 01620 80AF6B80 8E180008 */  lw      $t8, 0x0008($s0)           ## 00000008
/* 01624 80AF6B84 8E0F000C */  lw      $t7, 0x000C($s0)           ## 0000000C
/* 01628 80AF6B88 AA080030 */  swl     $t0, 0x0030($s0)           ## 00000030
/* 0162C 80AF6B8C BA080033 */  swr     $t0, 0x0033($s0)           ## 00000033
/* 01630 80AF6B90 AE180024 */  sw      $t8, 0x0024($s0)           ## 00000024
/* 01634 80AF6B94 8E180010 */  lw      $t8, 0x0010($s0)           ## 00000010
/* 01638 80AF6B98 9608021E */  lhu     $t0, 0x021E($s0)           ## 0000021E
/* 0163C 80AF6B9C 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01640 80AF6BA0 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01644 80AF6BA4 A6000216 */  sh      $zero, 0x0216($s0)         ## 00000216
/* 01648 80AF6BA8 AE0F0028 */  sw      $t7, 0x0028($s0)           ## 00000028
/* 0164C 80AF6BAC AE18002C */  sw      $t8, 0x002C($s0)           ## 0000002C
/* 01650 80AF6BB0 A6080034 */  sh      $t0, 0x0034($s0)           ## 00000034
/* 01654 80AF6BB4 94490EF8 */  lhu     $t1, 0x0EF8($v0)           ## 8015F558
/* 01658 80AF6BB8 352A0001 */  ori     $t2, $t1, 0x0001           ## $t2 = 00000001
/* 0165C 80AF6BBC A44A0EF8 */  sh      $t2, 0x0EF8($v0)           ## 8015F558
.L80AF6BC0:
/* 01660 80AF6BC0 3C0B80AF */  lui     $t3, %hi(func_80AF6448)    ## $t3 = 80AF0000
/* 01664 80AF6BC4 256B6448 */  addiu   $t3, $t3, %lo(func_80AF6448) ## $t3 = 80AF6448
/* 01668 80AF6BC8 AE0B0190 */  sw      $t3, 0x0190($s0)           ## 00000190
/* 0166C 80AF6BCC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01670 80AF6BD0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01674 80AF6BD4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01678 80AF6BD8 03E00008 */  jr      $ra                        
/* 0167C 80AF6BDC 00000000 */  nop
