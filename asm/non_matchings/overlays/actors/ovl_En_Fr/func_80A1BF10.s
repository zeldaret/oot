glabel func_80A1BF10
/* 01570 80A1BF10 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01574 80A1BF14 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01578 80A1BF18 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0157C 80A1BF1C 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 01580 80A1BF20 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01584 80A1BF24 A08E0382 */  sb      $t6, 0x0382($a0)           ## 00000382
/* 01588 80A1BF28 00A11021 */  addu    $v0, $a1, $at              
/* 0158C 80A1BF2C 944F04C6 */  lhu     $t7, 0x04C6($v0)           ## 000004C6
/* 01590 80A1BF30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01594 80A1BF34 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 01598 80A1BF38 2F01000A */  sltiu   $at, $t8, 0x000A           
/* 0159C 80A1BF3C 1020003B */  beq     $at, $zero, .L80A1C02C     
/* 015A0 80A1BF40 0018C080 */  sll     $t8, $t8,  2               
/* 015A4 80A1BF44 3C0180A2 */  lui     $at, %hi(jtbl_80A1D2A0)       ## $at = 80A20000
/* 015A8 80A1BF48 00380821 */  addu    $at, $at, $t8              
/* 015AC 80A1BF4C 8C38D2A0 */  lw      $t8, %lo(jtbl_80A1D2A0)($at)  
/* 015B0 80A1BF50 03000008 */  jr      $t8                        
/* 015B4 80A1BF54 00000000 */  nop
glabel L80A1BF58
/* 015B8 80A1BF58 10000034 */  beq     $zero, $zero, .L80A1C02C   
/* 015BC 80A1BF5C A2000382 */  sb      $zero, 0x0382($s0)         ## 00000382
glabel L80A1BF60
/* 015C0 80A1BF60 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 015C4 80A1BF64 10000031 */  beq     $zero, $zero, .L80A1C02C   
/* 015C8 80A1BF68 A2190382 */  sb      $t9, 0x0382($s0)           ## 00000382
glabel L80A1BF6C
/* 015CC 80A1BF6C 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 015D0 80A1BF70 1000002E */  beq     $zero, $zero, .L80A1C02C   
/* 015D4 80A1BF74 A2080382 */  sb      $t0, 0x0382($s0)           ## 00000382
glabel L80A1BF78
/* 015D8 80A1BF78 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 015DC 80A1BF7C 1000002B */  beq     $zero, $zero, .L80A1C02C   
/* 015E0 80A1BF80 A2090382 */  sb      $t1, 0x0382($s0)           ## 00000382
glabel L80A1BF84
/* 015E4 80A1BF84 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 015E8 80A1BF88 10000028 */  beq     $zero, $zero, .L80A1C02C   
/* 015EC 80A1BF8C A20A0382 */  sb      $t2, 0x0382($s0)           ## 00000382
glabel L80A1BF90
/* 015F0 80A1BF90 240B0005 */  addiu   $t3, $zero, 0x0005         ## $t3 = 00000005
/* 015F4 80A1BF94 10000025 */  beq     $zero, $zero, .L80A1C02C   
/* 015F8 80A1BF98 A20B0382 */  sb      $t3, 0x0382($s0)           ## 00000382
glabel L80A1BF9C
/* 015FC 80A1BF9C 0C287149 */  jal     func_80A1C524              
/* 01600 80A1BFA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01604 80A1BFA4 10000022 */  beq     $zero, $zero, .L80A1C030   
/* 01608 80A1BFA8 920D0382 */  lbu     $t5, 0x0382($s0)           ## 00000382
glabel L80A1BFAC
/* 0160C 80A1BFAC 904C04E8 */  lbu     $t4, 0x04E8($v0)           ## 000004E8
/* 01610 80A1BFB0 2D810005 */  sltiu   $at, $t4, 0x0005           
/* 01614 80A1BFB4 1020001D */  beq     $at, $zero, .L80A1C02C     
/* 01618 80A1BFB8 000C6080 */  sll     $t4, $t4,  2               
/* 0161C 80A1BFBC 3C0180A2 */  lui     $at, %hi(jtbl_80A1D2C8)       ## $at = 80A20000
/* 01620 80A1BFC0 002C0821 */  addu    $at, $at, $t4              
/* 01624 80A1BFC4 8C2CD2C8 */  lw      $t4, %lo(jtbl_80A1D2C8)($at)  
/* 01628 80A1BFC8 01800008 */  jr      $t4                        
/* 0162C 80A1BFCC 00000000 */  nop
glabel L80A1BFD0
/* 01630 80A1BFD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01634 80A1BFD4 0C286F05 */  jal     func_80A1BC14              
/* 01638 80A1BFD8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0163C 80A1BFDC 10000014 */  beq     $zero, $zero, .L80A1C030   
/* 01640 80A1BFE0 920D0382 */  lbu     $t5, 0x0382($s0)           ## 00000382
glabel L80A1BFE4
/* 01644 80A1BFE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01648 80A1BFE8 0C286F05 */  jal     func_80A1BC14              
/* 0164C 80A1BFEC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01650 80A1BFF0 1000000F */  beq     $zero, $zero, .L80A1C030   
/* 01654 80A1BFF4 920D0382 */  lbu     $t5, 0x0382($s0)           ## 00000382
glabel L80A1BFF8
/* 01658 80A1BFF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0165C 80A1BFFC 0C286F05 */  jal     func_80A1BC14              
/* 01660 80A1C000 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 01664 80A1C004 1000000A */  beq     $zero, $zero, .L80A1C030   
/* 01668 80A1C008 920D0382 */  lbu     $t5, 0x0382($s0)           ## 00000382
glabel L80A1C00C
/* 0166C 80A1C00C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01670 80A1C010 0C286F05 */  jal     func_80A1BC14              
/* 01674 80A1C014 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01678 80A1C018 10000005 */  beq     $zero, $zero, .L80A1C030   
/* 0167C 80A1C01C 920D0382 */  lbu     $t5, 0x0382($s0)           ## 00000382
glabel L80A1C020
/* 01680 80A1C020 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01684 80A1C024 0C286F05 */  jal     func_80A1BC14              
/* 01688 80A1C028 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
glabel L80A1C02C
.L80A1C02C:
/* 0168C 80A1C02C 920D0382 */  lbu     $t5, 0x0382($s0)           ## 00000382
.L80A1C030:
/* 01690 80A1C030 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 01694 80A1C034 3C0E80A2 */  lui     $t6, %hi(func_80A1C05C)    ## $t6 = 80A20000
/* 01698 80A1C038 11A10003 */  beq     $t5, $at, .L80A1C048       
/* 0169C 80A1C03C 25CEC05C */  addiu   $t6, $t6, %lo(func_80A1C05C) ## $t6 = 80A1C05C
/* 016A0 80A1C040 AE00036C */  sw      $zero, 0x036C($s0)         ## 0000036C
/* 016A4 80A1C044 AE0E0354 */  sw      $t6, 0x0354($s0)           ## 00000354
.L80A1C048:
/* 016A8 80A1C048 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 016AC 80A1C04C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 016B0 80A1C050 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 016B4 80A1C054 03E00008 */  jr      $ra                        
/* 016B8 80A1C058 00000000 */  nop


