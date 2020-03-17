glabel func_80A3BD8C
/* 0163C 80A3BD8C AFA40000 */  sw      $a0, 0x0000($sp)           
/* 01640 80A3BD90 84A3001C */  lh      $v1, 0x001C($a1)           ## 0000001C
/* 01644 80A3BD94 3C0F80A4 */  lui     $t7, %hi(D_80A3C674)       ## $t7 = 80A40000
/* 01648 80A3BD98 25EFC674 */  addiu   $t7, $t7, %lo(D_80A3C674)  ## $t7 = 80A3C674
/* 0164C 80A3BD9C 00037140 */  sll     $t6, $v1,  5               
/* 01650 80A3BDA0 2861001E */  slti    $at, $v1, 0x001E           
/* 01654 80A3BDA4 1420003A */  bne     $at, $zero, .L80A3BE90     
/* 01658 80A3BDA8 01CF1021 */  addu    $v0, $t6, $t7              
/* 0165C 80A3BDAC 28610023 */  slti    $at, $v1, 0x0023           
/* 01660 80A3BDB0 10200037 */  beq     $at, $zero, .L80A3BE90     
/* 01664 80A3BDB4 2464FFE2 */  addiu   $a0, $v1, 0xFFE2           ## $a0 = FFFFFFE2
/* 01668 80A3BDB8 2478FFE2 */  addiu   $t8, $v1, 0xFFE2           ## $t8 = FFFFFFE2
/* 0166C 80A3BDBC 2F010005 */  sltiu   $at, $t8, 0x0005           
/* 01670 80A3BDC0 10200029 */  beq     $at, $zero, .L80A3BE68     
/* 01674 80A3BDC4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01678 80A3BDC8 0018C080 */  sll     $t8, $t8,  2               
/* 0167C 80A3BDCC 3C0180A4 */  lui     $at, %hi(jtbl_80A3D110)       ## $at = 80A40000
/* 01680 80A3BDD0 00380821 */  addu    $at, $at, $t8              
/* 01684 80A3BDD4 8C38D110 */  lw      $t8, %lo(jtbl_80A3D110)($at)  
/* 01688 80A3BDD8 03000008 */  jr      $t8                        
/* 0168C 80A3BDDC 00000000 */  nop
glabel L80A3BDE0
/* 01690 80A3BDE0 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 01694 80A3BDE4 9739F556 */  lhu     $t9, -0x0AAA($t9)          ## 8015F556
/* 01698 80A3BDE8 33280100 */  andi    $t0, $t9, 0x0100           ## $t0 = 00000000
/* 0169C 80A3BDEC 1100001E */  beq     $t0, $zero, .L80A3BE68     
/* 016A0 80A3BDF0 00000000 */  nop
/* 016A4 80A3BDF4 1000001C */  beq     $zero, $zero, .L80A3BE68   
/* 016A8 80A3BDF8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
glabel L80A3BDFC
/* 016AC 80A3BDFC 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 016B0 80A3BE00 9529F556 */  lhu     $t1, -0x0AAA($t1)          ## 8015F556
/* 016B4 80A3BE04 312A0400 */  andi    $t2, $t1, 0x0400           ## $t2 = 00000000
/* 016B8 80A3BE08 11400017 */  beq     $t2, $zero, .L80A3BE68     
/* 016BC 80A3BE0C 00000000 */  nop
/* 016C0 80A3BE10 10000015 */  beq     $zero, $zero, .L80A3BE68   
/* 016C4 80A3BE14 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
glabel L80A3BE18
/* 016C8 80A3BE18 3C0B8016 */  lui     $t3, 0x8016                ## $t3 = 80160000
/* 016CC 80A3BE1C 956BF556 */  lhu     $t3, -0x0AAA($t3)          ## 8015F556
/* 016D0 80A3BE20 316C0200 */  andi    $t4, $t3, 0x0200           ## $t4 = 00000000
/* 016D4 80A3BE24 11800010 */  beq     $t4, $zero, .L80A3BE68     
/* 016D8 80A3BE28 00000000 */  nop
/* 016DC 80A3BE2C 1000000E */  beq     $zero, $zero, .L80A3BE68   
/* 016E0 80A3BE30 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
glabel L80A3BE34
/* 016E4 80A3BE34 3C0D8016 */  lui     $t5, 0x8016                ## $t5 = 80160000
/* 016E8 80A3BE38 95ADF556 */  lhu     $t5, -0x0AAA($t5)          ## 8015F556
/* 016EC 80A3BE3C 31AE0800 */  andi    $t6, $t5, 0x0800           ## $t6 = 00000000
/* 016F0 80A3BE40 11C00009 */  beq     $t6, $zero, .L80A3BE68     
/* 016F4 80A3BE44 00000000 */  nop
/* 016F8 80A3BE48 10000007 */  beq     $zero, $zero, .L80A3BE68   
/* 016FC 80A3BE4C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
glabel L80A3BE50
/* 01700 80A3BE50 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 01704 80A3BE54 95EFF556 */  lhu     $t7, -0x0AAA($t7)          ## 8015F556
/* 01708 80A3BE58 31F80800 */  andi    $t8, $t7, 0x0800           ## $t8 = 00000000
/* 0170C 80A3BE5C 13000002 */  beq     $t8, $zero, .L80A3BE68     
/* 01710 80A3BE60 00000000 */  nop
/* 01714 80A3BE64 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
.L80A3BE68:
/* 01718 80A3BE68 10C00006 */  beq     $a2, $zero, .L80A3BE84     
/* 0171C 80A3BE6C 0004C840 */  sll     $t9, $a0,  1               
/* 01720 80A3BE70 3C0880A4 */  lui     $t0, %hi(D_80A3C668)       ## $t0 = 80A40000
/* 01724 80A3BE74 01194021 */  addu    $t0, $t0, $t9              
/* 01728 80A3BE78 9508C668 */  lhu     $t0, %lo(D_80A3C668)($t0)  
/* 0172C 80A3BE7C 10000006 */  beq     $zero, $zero, .L80A3BE98   
/* 01730 80A3BE80 A4A8010E */  sh      $t0, 0x010E($a1)           ## 0000010E
.L80A3BE84:
/* 01734 80A3BE84 9449000C */  lhu     $t1, 0x000C($v0)           ## 0000000C
/* 01738 80A3BE88 10000003 */  beq     $zero, $zero, .L80A3BE98   
/* 0173C 80A3BE8C A4A9010E */  sh      $t1, 0x010E($a1)           ## 0000010E
.L80A3BE90:
/* 01740 80A3BE90 944A000C */  lhu     $t2, 0x000C($v0)           ## 0000000C
/* 01744 80A3BE94 A4AA010E */  sh      $t2, 0x010E($a1)           ## 0000010E
.L80A3BE98:
/* 01748 80A3BE98 3C0B80A4 */  lui     $t3, %hi(func_80A3C4D4)    ## $t3 = 80A40000
/* 0174C 80A3BE9C 256BC4D4 */  addiu   $t3, $t3, %lo(func_80A3C4D4) ## $t3 = 80A3C4D4
/* 01750 80A3BEA0 A4A001A8 */  sh      $zero, 0x01A8($a1)         ## 000001A8
/* 01754 80A3BEA4 03E00008 */  jr      $ra                        
/* 01758 80A3BEA8 ACAB0134 */  sw      $t3, 0x0134($a1)           ## 00000134


