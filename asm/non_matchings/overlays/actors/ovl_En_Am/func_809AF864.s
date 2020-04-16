glabel func_809AF864
/* 01944 809AF864 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01948 809AF868 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0194C 809AF86C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01950 809AF870 848E0260 */  lh      $t6, 0x0260($a0)           ## 00000260
/* 01954 809AF874 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01958 809AF878 55C0005D */  bnel    $t6, $zero, .L809AF9F0     
/* 0195C 809AF87C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01960 809AF880 908202D1 */  lbu     $v0, 0x02D1($a0)           ## 000002D1
/* 01964 809AF884 304F0080 */  andi    $t7, $v0, 0x0080           ## $t7 = 00000000
/* 01968 809AF888 11E0000C */  beq     $t7, $zero, .L809AF8BC     
/* 0196C 809AF88C 3058FF7D */  andi    $t8, $v0, 0xFF7D           ## $t8 = 00000000
/* 01970 809AF890 90990285 */  lbu     $t9, 0x0285($a0)           ## 00000285
/* 01974 809AF894 8C8901A8 */  lw      $t1, 0x01A8($a0)           ## 000001A8
/* 01978 809AF898 A09802D1 */  sb      $t8, 0x02D1($a0)           ## 000002D1
/* 0197C 809AF89C 3328FFFD */  andi    $t0, $t9, 0xFFFD           ## $t0 = 00000000
/* 01980 809AF8A0 29210005 */  slti    $at, $t1, 0x0005           
/* 01984 809AF8A4 14200051 */  bne     $at, $zero, .L809AF9EC     
/* 01988 809AF8A8 A0880285 */  sb      $t0, 0x0285($a0)           ## 00000285
/* 0198C 809AF8AC 0C26B9FD */  jal     func_809AE7F4              
/* 01990 809AF8B0 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01994 809AF8B4 1000004E */  beq     $zero, $zero, .L809AF9F0   
/* 01998 809AF8B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809AF8BC:
/* 0199C 809AF8BC 90E20285 */  lbu     $v0, 0x0285($a3)           ## 00000285
/* 019A0 809AF8C0 304A0002 */  andi    $t2, $v0, 0x0002           ## $t2 = 00000000
/* 019A4 809AF8C4 5140004A */  beql    $t2, $zero, .L809AF9F0     
/* 019A8 809AF8C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 019AC 809AF8CC 8CEB01A8 */  lw      $t3, 0x01A8($a3)           ## 000001A8
/* 019B0 809AF8D0 29610005 */  slti    $at, $t3, 0x0005           
/* 019B4 809AF8D4 54200046 */  bnel    $at, $zero, .L809AF9F0     
/* 019B8 809AF8D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 019BC 809AF8DC 90E300B1 */  lbu     $v1, 0x00B1($a3)           ## 000000B1
/* 019C0 809AF8E0 304CFFFD */  andi    $t4, $v0, 0xFFFD           ## $t4 = 00000000
/* 019C4 809AF8E4 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 019C8 809AF8E8 10610040 */  beq     $v1, $at, .L809AF9EC       
/* 019CC 809AF8EC A0EC0285 */  sb      $t4, 0x0285($a3)           ## 00000285
/* 019D0 809AF8F0 A4E00264 */  sh      $zero, 0x0264($a3)         ## 00000264
/* 019D4 809AF8F4 A0E30267 */  sb      $v1, 0x0267($a3)           ## 00000267
/* 019D8 809AF8F8 AFA70030 */  sw      $a3, 0x0030($sp)           
/* 019DC 809AF8FC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 019E0 809AF900 24E5028C */  addiu   $a1, $a3, 0x028C           ## $a1 = 0000028C
/* 019E4 809AF904 0C00D594 */  jal     func_80035650              
/* 019E8 809AF908 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 019EC 809AF90C 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 019F0 809AF910 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 019F4 809AF914 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 019F8 809AF918 90E200B1 */  lbu     $v0, 0x00B1($a3)           ## 000000B1
/* 019FC 809AF91C 24030006 */  addiu   $v1, $zero, 0x0006         ## $v1 = 00000006
/* 01A00 809AF920 50410006 */  beql    $v0, $at, .L809AF93C       
/* 01A04 809AF924 8CED01A8 */  lw      $t5, 0x01A8($a3)           ## 000001A8
/* 01A08 809AF928 10620003 */  beq     $v1, $v0, .L809AF938       
/* 01A0C 809AF92C 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 01A10 809AF930 54410021 */  bnel    $v0, $at, .L809AF9B8       
/* 01A14 809AF934 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
.L809AF938:
/* 01A18 809AF938 8CED01A8 */  lw      $t5, 0x01A8($a3)           ## 000001A8
.L809AF93C:
/* 01A1C 809AF93C 24030006 */  addiu   $v1, $zero, 0x0006         ## $v1 = 00000006
/* 01A20 809AF940 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01A24 809AF944 106D0009 */  beq     $v1, $t5, .L809AF96C       
/* 01A28 809AF948 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 01A2C 809AF94C 0C26BD56 */  jal     func_809AF558              
/* 01A30 809AF950 AFA70030 */  sw      $a3, 0x0030($sp)           
/* 01A34 809AF954 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 01A38 809AF958 90EE00B0 */  lbu     $t6, 0x00B0($a3)           ## 000000B0
/* 01A3C 809AF95C 51C00024 */  beql    $t6, $zero, .L809AF9F0     
/* 01A40 809AF960 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A44 809AF964 10000021 */  beq     $zero, $zero, .L809AF9EC   
/* 01A48 809AF968 A0E000AF */  sb      $zero, 0x00AF($a3)         ## 000000AF
.L809AF96C:
/* 01A4C 809AF96C 54620020 */  bnel    $v1, $v0, .L809AF9F0       
/* 01A50 809AF970 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A54 809AF974 8CF80024 */  lw      $t8, 0x0024($a3)           ## 00000024
/* 01A58 809AF978 27A50020 */  addiu   $a1, $sp, 0x0020           ## $a1 = FFFFFFF0
/* 01A5C 809AF97C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 01A60 809AF980 ACB80000 */  sw      $t8, 0x0000($a1)           ## FFFFFFF0
/* 01A64 809AF984 8CEF0028 */  lw      $t7, 0x0028($a3)           ## 00000028
/* 01A68 809AF988 44813000 */  mtc1    $at, $f6                   ## $f6 = 50.00
/* 01A6C 809AF98C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01A70 809AF990 ACAF0004 */  sw      $t7, 0x0004($a1)           ## FFFFFFF4
/* 01A74 809AF994 8CF8002C */  lw      $t8, 0x002C($a3)           ## 0000002C
/* 01A78 809AF998 ACB80008 */  sw      $t8, 0x0008($a1)           ## FFFFFFF8
/* 01A7C 809AF99C C7A40024 */  lwc1    $f4, 0x0024($sp)           
/* 01A80 809AF9A0 46062200 */  add.s   $f8, $f4, $f6              
/* 01A84 809AF9A4 0C018B58 */  jal     func_80062D60              
/* 01A88 809AF9A8 E7A80024 */  swc1    $f8, 0x0024($sp)           
/* 01A8C 809AF9AC 10000010 */  beq     $zero, $zero, .L809AF9F0   
/* 01A90 809AF9B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A94 809AF9B4 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
.L809AF9B8:
/* 01A98 809AF9B8 10410005 */  beq     $v0, $at, .L809AF9D0       
/* 01A9C 809AF9BC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01AA0 809AF9C0 8CF901A8 */  lw      $t9, 0x01A8($a3)           ## 000001A8
/* 01AA4 809AF9C4 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 01AA8 809AF9C8 14790006 */  bne     $v1, $t9, .L809AF9E4       
/* 01AAC 809AF9CC 00000000 */  nop
.L809AF9D0:
/* 01AB0 809AF9D0 A0E000AF */  sb      $zero, 0x00AF($a3)         ## 000000AF
/* 01AB4 809AF9D4 0C26B9C7 */  jal     func_809AE71C              
/* 01AB8 809AF9D8 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 01ABC 809AF9DC 10000004 */  beq     $zero, $zero, .L809AF9F0   
/* 01AC0 809AF9E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809AF9E4:
/* 01AC4 809AF9E4 0C26B9FD */  jal     func_809AE7F4              
/* 01AC8 809AF9E8 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L809AF9EC:
/* 01ACC 809AF9EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809AF9F0:
/* 01AD0 809AF9F0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01AD4 809AF9F4 03E00008 */  jr      $ra                        
/* 01AD8 809AF9F8 00000000 */  nop
