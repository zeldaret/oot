glabel func_80A0D614
/* 01F54 80A0D614 3C0E80A1 */  lui     $t6, %hi(D_80A0E0E8)       ## $t6 = 80A10000
/* 01F58 80A0D618 25CEE0E8 */  addiu   $t6, $t6, %lo(D_80A0E0E8)  ## $t6 = 80A0E0E8
/* 01F5C 80A0D61C 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80A0E0E8
/* 01F60 80A0D620 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01F64 80A0D624 27A60008 */  addiu   $a2, $sp, 0x0008           ## $a2 = FFFFFFE8
/* 01F68 80A0D628 ACD80000 */  sw      $t8, 0x0000($a2)           ## FFFFFFE8
/* 01F6C 80A0D62C 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80A0E0EC
/* 01F70 80A0D630 24820620 */  addiu   $v0, $a0, 0x0620           ## $v0 = 00000620
/* 01F74 80A0D634 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 01F78 80A0D638 ACCF0004 */  sw      $t7, 0x0004($a2)           ## FFFFFFEC
/* 01F7C 80A0D63C 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80A0E0F0
/* 01F80 80A0D640 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 01F84 80A0D644 ACD80008 */  sw      $t8, 0x0008($a2)           ## FFFFFFF0
/* 01F88 80A0D648 8DCF000C */  lw      $t7, 0x000C($t6)           ## 80A0E0F4
/* 01F8C 80A0D64C ACCF000C */  sw      $t7, 0x000C($a2)           ## FFFFFFF4
.L80A0D650:
/* 01F90 80A0D650 90590000 */  lbu     $t9, 0x0000($v0)           ## 00000620
/* 01F94 80A0D654 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000001
/* 01F98 80A0D658 00031C00 */  sll     $v1, $v1, 16               
/* 01F9C 80A0D65C 14F9002F */  bne     $a3, $t9, .L80A0D71C       
/* 01FA0 80A0D660 00031C03 */  sra     $v1, $v1, 16               
/* 01FA4 80A0D664 C4400020 */  lwc1    $f0, 0x0020($v0)           ## 00000640
/* 01FA8 80A0D668 C4440014 */  lwc1    $f4, 0x0014($v0)           ## 00000634
/* 01FAC 80A0D66C C4420024 */  lwc1    $f2, 0x0024($v0)           ## 00000644
/* 01FB0 80A0D670 C4480018 */  lwc1    $f8, 0x0018($v0)           ## 00000638
/* 01FB4 80A0D674 C44C0028 */  lwc1    $f12, 0x0028($v0)          ## 00000648
/* 01FB8 80A0D678 C450001C */  lwc1    $f16, 0x001C($v0)          ## 0000063C
/* 01FBC 80A0D67C 46002180 */  add.s   $f6, $f4, $f0              
/* 01FC0 80A0D680 90480001 */  lbu     $t0, 0x0001($v0)           ## 00000621
/* 01FC4 80A0D684 C444002C */  lwc1    $f4, 0x002C($v0)           ## 0000064C
/* 01FC8 80A0D688 46024280 */  add.s   $f10, $f8, $f2             
/* 01FCC 80A0D68C C4480030 */  lwc1    $f8, 0x0030($v0)           ## 00000650
/* 01FD0 80A0D690 E4460014 */  swc1    $f6, 0x0014($v0)           ## 00000634
/* 01FD4 80A0D694 460C8480 */  add.s   $f18, $f16, $f12           
/* 01FD8 80A0D698 C4500034 */  lwc1    $f16, 0x0034($v0)          ## 00000654
/* 01FDC 80A0D69C E44A0018 */  swc1    $f10, 0x0018($v0)          ## 00000638
/* 01FE0 80A0D6A0 46040180 */  add.s   $f6, $f0, $f4              
/* 01FE4 80A0D6A4 E452001C */  swc1    $f18, 0x001C($v0)          ## 0000063C
/* 01FE8 80A0D6A8 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 01FEC 80A0D6AC 46081280 */  add.s   $f10, $f2, $f8             
/* 01FF0 80A0D6B0 312A00FF */  andi    $t2, $t1, 0x00FF           ## $t2 = 00000001
/* 01FF4 80A0D6B4 A0490001 */  sb      $t1, 0x0001($v0)           ## 00000621
/* 01FF8 80A0D6B8 46106480 */  add.s   $f18, $f12, $f16           
/* 01FFC 80A0D6BC E4460020 */  swc1    $f6, 0x0020($v0)           ## 00000640
/* 02000 80A0D6C0 E44A0024 */  swc1    $f10, 0x0024($v0)          ## 00000644
/* 02004 80A0D6C4 9045000F */  lbu     $a1, 0x000F($v0)           ## 0000062F
/* 02008 80A0D6C8 E4520028 */  swc1    $f18, 0x0028($v0)          ## 00000648
/* 0200C 80A0D6CC 05410004 */  bgez    $t2, .L80A0D6E0            
/* 02010 80A0D6D0 314B0003 */  andi    $t3, $t2, 0x0003           ## $t3 = 00000001
/* 02014 80A0D6D4 11600002 */  beq     $t3, $zero, .L80A0D6E0     
/* 02018 80A0D6D8 00000000 */  nop
/* 0201C 80A0D6DC 256BFFFC */  addiu   $t3, $t3, 0xFFFC           ## $t3 = FFFFFFFD
.L80A0D6E0:
/* 02020 80A0D6E0 000B6080 */  sll     $t4, $t3,  2               
/* 02024 80A0D6E4 00CC2021 */  addu    $a0, $a2, $t4              
/* 02028 80A0D6E8 908D0000 */  lbu     $t5, 0x0000($a0)           ## 00000000
/* 0202C 80A0D6EC 28A1001F */  slti    $at, $a1, 0x001F           
/* 02030 80A0D6F0 24B8FFE2 */  addiu   $t8, $a1, 0xFFE2           ## $t8 = FFFFFFE2
/* 02034 80A0D6F4 A04D000C */  sb      $t5, 0x000C($v0)           ## 0000062C
/* 02038 80A0D6F8 908E0001 */  lbu     $t6, 0x0001($a0)           ## 00000001
/* 0203C 80A0D6FC A04E000D */  sb      $t6, 0x000D($v0)           ## 0000062D
/* 02040 80A0D700 908F0002 */  lbu     $t7, 0x0002($a0)           ## 00000002
/* 02044 80A0D704 14200003 */  bne     $at, $zero, .L80A0D714     
/* 02048 80A0D708 A04F000E */  sb      $t7, 0x000E($v0)           ## 0000062E
/* 0204C 80A0D70C 10000003 */  beq     $zero, $zero, .L80A0D71C   
/* 02050 80A0D710 A058000F */  sb      $t8, 0x000F($v0)           ## 0000062F
.L80A0D714:
/* 02054 80A0D714 A040000F */  sb      $zero, 0x000F($v0)         ## 0000062F
/* 02058 80A0D718 A0400000 */  sb      $zero, 0x0000($v0)         ## 00000620
.L80A0D71C:
/* 0205C 80A0D71C 286100C8 */  slti    $at, $v1, 0x00C8           
/* 02060 80A0D720 1420FFCB */  bne     $at, $zero, .L80A0D650     
/* 02064 80A0D724 24420038 */  addiu   $v0, $v0, 0x0038           ## $v0 = 00000658
/* 02068 80A0D728 03E00008 */  jr      $ra                        
/* 0206C 80A0D72C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
