glabel func_80AC65B8
/* 03918 80AC65B8 27BDFFF8 */  addiu   $sp, $sp, 0xFFF8           ## $sp = FFFFFFF8
/* 0391C 80AC65BC AFB00004 */  sw      $s0, 0x0004($sp)           
/* 03920 80AC65C0 24820200 */  addiu   $v0, $a0, 0x0200           ## $v0 = 00000200
/* 03924 80AC65C4 24100001 */  addiu   $s0, $zero, 0x0001         ## $s0 = 00000001
/* 03928 80AC65C8 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 0392C 80AC65CC 240D000E */  addiu   $t5, $zero, 0x000E         ## $t5 = 0000000E
/* 03930 80AC65D0 240C0018 */  addiu   $t4, $zero, 0x0018         ## $t4 = 00000018
/* 03934 80AC65D4 240B000D */  addiu   $t3, $zero, 0x000D         ## $t3 = 0000000D
/* 03938 80AC65D8 240A000C */  addiu   $t2, $zero, 0x000C         ## $t2 = 0000000C
/* 0393C 80AC65DC 2409000B */  addiu   $t1, $zero, 0x000B         ## $t1 = 0000000B
/* 03940 80AC65E0 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 03944 80AC65E4 24070009 */  addiu   $a3, $zero, 0x0009         ## $a3 = 00000009
.L80AC65E8:
/* 03948 80AC65E8 8C450000 */  lw      $a1, 0x0000($v0)           ## 00000200
/* 0394C 80AC65EC 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 03950 80AC65F0 50A0001C */  beql    $a1, $zero, .L80AC6664     
/* 03954 80AC65F4 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000204
/* 03958 80AC65F8 848601FC */  lh      $a2, 0x01FC($a0)           ## 000001FC
/* 0395C 80AC65FC 50E60013 */  beql    $a3, $a2, .L80AC664C       
/* 03960 80AC6600 908F0252 */  lbu     $t7, 0x0252($a0)           ## 00000252
/* 03964 80AC6604 51060011 */  beql    $t0, $a2, .L80AC664C       
/* 03968 80AC6608 908F0252 */  lbu     $t7, 0x0252($a0)           ## 00000252
/* 0396C 80AC660C 5126000F */  beql    $t1, $a2, .L80AC664C       
/* 03970 80AC6610 908F0252 */  lbu     $t7, 0x0252($a0)           ## 00000252
/* 03974 80AC6614 5146000D */  beql    $t2, $a2, .L80AC664C       
/* 03978 80AC6618 908F0252 */  lbu     $t7, 0x0252($a0)           ## 00000252
/* 0397C 80AC661C 5166000B */  beql    $t3, $a2, .L80AC664C       
/* 03980 80AC6620 908F0252 */  lbu     $t7, 0x0252($a0)           ## 00000252
/* 03984 80AC6624 51860009 */  beql    $t4, $a2, .L80AC664C       
/* 03988 80AC6628 908F0252 */  lbu     $t7, 0x0252($a0)           ## 00000252
/* 0398C 80AC662C 51A60007 */  beql    $t5, $a2, .L80AC664C       
/* 03990 80AC6630 908F0252 */  lbu     $t7, 0x0252($a0)           ## 00000252
/* 03994 80AC6634 908E0251 */  lbu     $t6, 0x0251($a0)           ## 00000251
/* 03998 80AC6638 55C00004 */  bnel    $t6, $zero, .L80AC664C     
/* 0399C 80AC663C 908F0252 */  lbu     $t7, 0x0252($a0)           ## 00000252
/* 039A0 80AC6640 10000007 */  beq     $zero, $zero, .L80AC6660   
/* 039A4 80AC6644 A4A001B4 */  sh      $zero, 0x01B4($a1)         ## 000001B4
/* 039A8 80AC6648 908F0252 */  lbu     $t7, 0x0252($a0)           ## 00000252
.L80AC664C:
/* 039AC 80AC664C 546F0004 */  bnel    $v1, $t7, .L80AC6660       
/* 039B0 80AC6650 A4A001B4 */  sh      $zero, 0x01B4($a1)         ## 000001B4
/* 039B4 80AC6654 10000002 */  beq     $zero, $zero, .L80AC6660   
/* 039B8 80AC6658 A4B001B4 */  sh      $s0, 0x01B4($a1)           ## 000001B4
/* 039BC 80AC665C A4A001B4 */  sh      $zero, 0x01B4($a1)         ## 000001B4
.L80AC6660:
/* 039C0 80AC6660 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000204
.L80AC6664:
/* 039C4 80AC6664 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000204
/* 039C8 80AC6668 50A0001D */  beql    $a1, $zero, .L80AC66E0     
/* 039CC 80AC666C 24630002 */  addiu   $v1, $v1, 0x0002           ## $v1 = 00000002
/* 039D0 80AC6670 848601FC */  lh      $a2, 0x01FC($a0)           ## 000001FC
/* 039D4 80AC6674 50E60013 */  beql    $a3, $a2, .L80AC66C4       
/* 039D8 80AC6678 908E0252 */  lbu     $t6, 0x0252($a0)           ## 00000252
/* 039DC 80AC667C 51060011 */  beql    $t0, $a2, .L80AC66C4       
/* 039E0 80AC6680 908E0252 */  lbu     $t6, 0x0252($a0)           ## 00000252
/* 039E4 80AC6684 5126000F */  beql    $t1, $a2, .L80AC66C4       
/* 039E8 80AC6688 908E0252 */  lbu     $t6, 0x0252($a0)           ## 00000252
/* 039EC 80AC668C 5146000D */  beql    $t2, $a2, .L80AC66C4       
/* 039F0 80AC6690 908E0252 */  lbu     $t6, 0x0252($a0)           ## 00000252
/* 039F4 80AC6694 5166000B */  beql    $t3, $a2, .L80AC66C4       
/* 039F8 80AC6698 908E0252 */  lbu     $t6, 0x0252($a0)           ## 00000252
/* 039FC 80AC669C 51860009 */  beql    $t4, $a2, .L80AC66C4       
/* 03A00 80AC66A0 908E0252 */  lbu     $t6, 0x0252($a0)           ## 00000252
/* 03A04 80AC66A4 51A60007 */  beql    $t5, $a2, .L80AC66C4       
/* 03A08 80AC66A8 908E0252 */  lbu     $t6, 0x0252($a0)           ## 00000252
/* 03A0C 80AC66AC 90980251 */  lbu     $t8, 0x0251($a0)           ## 00000251
/* 03A10 80AC66B0 57000004 */  bnel    $t8, $zero, .L80AC66C4     
/* 03A14 80AC66B4 908E0252 */  lbu     $t6, 0x0252($a0)           ## 00000252
/* 03A18 80AC66B8 10000008 */  beq     $zero, $zero, .L80AC66DC   
/* 03A1C 80AC66BC A4A001B4 */  sh      $zero, 0x01B4($a1)         ## 000001B4
/* 03A20 80AC66C0 908E0252 */  lbu     $t6, 0x0252($a0)           ## 00000252
.L80AC66C4:
/* 03A24 80AC66C4 24790001 */  addiu   $t9, $v1, 0x0001           ## $t9 = 00000003
/* 03A28 80AC66C8 572E0004 */  bnel    $t9, $t6, .L80AC66DC       
/* 03A2C 80AC66CC A4A001B4 */  sh      $zero, 0x01B4($a1)         ## 000001B4
/* 03A30 80AC66D0 10000002 */  beq     $zero, $zero, .L80AC66DC   
/* 03A34 80AC66D4 A4B001B4 */  sh      $s0, 0x01B4($a1)           ## 000001B4
/* 03A38 80AC66D8 A4A001B4 */  sh      $zero, 0x01B4($a1)         ## 000001B4
.L80AC66DC:
/* 03A3C 80AC66DC 24630002 */  addiu   $v1, $v1, 0x0002           ## $v1 = 00000004
.L80AC66E0:
/* 03A40 80AC66E0 1461FFC1 */  bne     $v1, $at, .L80AC65E8       
/* 03A44 80AC66E4 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000208
/* 03A48 80AC66E8 8FB00004 */  lw      $s0, 0x0004($sp)           
/* 03A4C 80AC66EC 03E00008 */  jr      $ra                        
/* 03A50 80AC66F0 27BD0008 */  addiu   $sp, $sp, 0x0008           ## $sp = 00000000
