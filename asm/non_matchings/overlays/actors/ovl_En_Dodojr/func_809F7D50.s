glabel func_809F7D50
/* 01990 809F7D50 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01994 809F7D54 3C0F809F */  lui     $t7, %hi(D_809F7F64)       ## $t7 = 809F0000
/* 01998 809F7D58 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0199C 809F7D5C AFA40030 */  sw      $a0, 0x0030($sp)           
/* 019A0 809F7D60 AFA60038 */  sw      $a2, 0x0038($sp)           
/* 019A4 809F7D64 AFA7003C */  sw      $a3, 0x003C($sp)           
/* 019A8 809F7D68 25EF7F64 */  addiu   $t7, $t7, %lo(D_809F7F64)  ## $t7 = 809F7F64
/* 019AC 809F7D6C 8DF90000 */  lw      $t9, 0x0000($t7)           ## 809F7F64
/* 019B0 809F7D70 27AE0020 */  addiu   $t6, $sp, 0x0020           ## $t6 = FFFFFFF0
/* 019B4 809F7D74 8DF80004 */  lw      $t8, 0x0004($t7)           ## 809F7F68
/* 019B8 809F7D78 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF0
/* 019BC 809F7D7C 8DF90008 */  lw      $t9, 0x0008($t7)           ## 809F7F6C
/* 019C0 809F7D80 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 019C4 809F7D84 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF4
/* 019C8 809F7D88 14A10010 */  bne     $a1, $at, .L809F7DCC       
/* 019CC 809F7D8C ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF8
/* 019D0 809F7D90 8FA80044 */  lw      $t0, 0x0044($sp)           
/* 019D4 809F7D94 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 019D8 809F7D98 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 019DC 809F7D9C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 019E0 809F7DA0 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 019E4 809F7DA4 C5000208 */  lwc1    $f0, 0x0208($t0)           ## 00000208
/* 019E8 809F7DA8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 019EC 809F7DAC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 019F0 809F7DB0 46040182 */  mul.s   $f6, $f0, $f4              
/* 019F4 809F7DB4 46020380 */  add.s   $f14, $f0, $f2             
/* 019F8 809F7DB8 46023300 */  add.s   $f12, $f6, $f2             
/* 019FC 809F7DBC 44066000 */  mfc1    $a2, $f12                  
/* 01A00 809F7DC0 0C0342A3 */  jal     Matrix_Scale              
/* 01A04 809F7DC4 00000000 */  nop
/* 01A08 809F7DC8 8FA50034 */  lw      $a1, 0x0034($sp)           
.L809F7DCC:
/* 01A0C 809F7DCC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01A10 809F7DD0 54A10006 */  bnel    $a1, $at, .L809F7DEC       
/* 01A14 809F7DD4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A18 809F7DD8 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 01A1C 809F7DDC 27A40020 */  addiu   $a0, $sp, 0x0020           ## $a0 = FFFFFFF0
/* 01A20 809F7DE0 0C0346BD */  jal     Matrix_MultVec3f              
/* 01A24 809F7DE4 24A501E4 */  addiu   $a1, $a1, 0x01E4           ## $a1 = 000001E4
/* 01A28 809F7DE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809F7DEC:
/* 01A2C 809F7DEC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01A30 809F7DF0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01A34 809F7DF4 03E00008 */  jr      $ra                        
/* 01A38 809F7DF8 00000000 */  nop


