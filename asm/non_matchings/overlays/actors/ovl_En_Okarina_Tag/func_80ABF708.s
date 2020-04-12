glabel func_80ABF708
/* 009E8 80ABF708 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009EC 80ABF70C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 009F0 80ABF710 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 009F4 80ABF714 0C00BC65 */  jal     func_8002F194              
/* 009F8 80ABF718 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 009FC 80ABF71C 10400005 */  beq     $v0, $zero, .L80ABF734     
/* 00A00 80ABF720 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00A04 80ABF724 3C0E80AC */  lui     $t6, %hi(func_80ABF7CC)    ## $t6 = 80AC0000
/* 00A08 80ABF728 25CEF7CC */  addiu   $t6, $t6, %lo(func_80ABF7CC) ## $t6 = 80ABF7CC
/* 00A0C 80ABF72C 10000023 */  beq     $zero, $zero, .L80ABF7BC   
/* 00A10 80ABF730 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
.L80ABF734:
/* 00A14 80ABF734 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00A18 80ABF738 44812000 */  mtc1    $at, $f4                   ## $f4 = 120.00
/* 00A1C 80ABF73C C4860090 */  lwc1    $f6, 0x0090($a0)           ## 00000090
/* 00A20 80ABF740 848F008A */  lh      $t7, 0x008A($a0)           ## 0000008A
/* 00A24 80ABF744 84980032 */  lh      $t8, 0x0032($a0)           ## 00000032
/* 00A28 80ABF748 4606203C */  c.lt.s  $f4, $f6                   
/* 00A2C 80ABF74C 8499015A */  lh      $t9, 0x015A($a0)           ## 0000015A
/* 00A30 80ABF750 01F81823 */  subu    $v1, $t7, $t8              
/* 00A34 80ABF754 00031C00 */  sll     $v1, $v1, 16               
/* 00A38 80ABF758 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 00A3C 80ABF75C 00031C03 */  sra     $v1, $v1, 16               
/* 00A40 80ABF760 45010016 */  bc1t    .L80ABF7BC                 
/* 00A44 80ABF764 A488015A */  sh      $t0, 0x015A($a0)           ## 0000015A
/* 00A48 80ABF768 3C098012 */  lui     $t1, 0x8012                ## $t1 = 80120000
/* 00A4C 80ABF76C 3C0A8016 */  lui     $t2, 0x8016                ## $t2 = 80160000
/* 00A50 80ABF770 8D4AE704 */  lw      $t2, -0x18FC($t2)          ## 8015E704
/* 00A54 80ABF774 8D29715C */  lw      $t1, 0x715C($t1)           ## 8012715C
/* 00A58 80ABF778 00031023 */  subu    $v0, $zero, $v1            
/* 00A5C 80ABF77C 240C5021 */  addiu   $t4, $zero, 0x5021         ## $t4 = 00005021
/* 00A60 80ABF780 012A5824 */  and     $t3, $t1, $t2              
/* 00A64 80ABF784 11600002 */  beq     $t3, $zero, .L80ABF790     
/* 00A68 80ABF788 00021400 */  sll     $v0, $v0, 16               
/* 00A6C 80ABF78C A48C010E */  sh      $t4, 0x010E($a0)           ## 0000010E
.L80ABF790:
/* 00A70 80ABF790 04600004 */  bltz    $v1, .L80ABF7A4            
/* 00A74 80ABF794 00021403 */  sra     $v0, $v0, 16               
/* 00A78 80ABF798 00031400 */  sll     $v0, $v1, 16               
/* 00A7C 80ABF79C 10000001 */  beq     $zero, $zero, .L80ABF7A4   
/* 00A80 80ABF7A0 00021403 */  sra     $v0, $v0, 16               
.L80ABF7A4:
/* 00A84 80ABF7A4 28414300 */  slti    $at, $v0, 0x4300           
/* 00A88 80ABF7A8 10200004 */  beq     $at, $zero, .L80ABF7BC     
/* 00A8C 80ABF7AC 3C06428C */  lui     $a2, 0x428C                ## $a2 = 428C0000
/* 00A90 80ABF7B0 A480015A */  sh      $zero, 0x015A($a0)         ## 0000015A
/* 00A94 80ABF7B4 0C00BCB3 */  jal     func_8002F2CC              
/* 00A98 80ABF7B8 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80ABF7BC:
/* 00A9C 80ABF7BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AA0 80ABF7C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AA4 80ABF7C4 03E00008 */  jr      $ra                        
/* 00AA8 80ABF7C8 00000000 */  nop
