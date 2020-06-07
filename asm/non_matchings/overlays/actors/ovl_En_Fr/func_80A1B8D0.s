glabel func_80A1B8D0
/* 00F30 80A1B8D0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00F34 80A1B8D4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00F38 80A1B8D8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00F3C 80A1B8DC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00F40 80A1B8E0 9082037F */  lbu     $v0, 0x037F($a0)           ## 0000037F
/* 00F44 80A1B8E4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F48 80A1B8E8 260403A0 */  addiu   $a0, $s0, 0x03A0           ## $a0 = 000003A0
/* 00F4C 80A1B8EC 10400006 */  beq     $v0, $zero, .L80A1B908     
/* 00F50 80A1B8F0 3C0580A2 */  lui     $a1, %hi(D_80A1D0CC)       ## $a1 = 80A20000
/* 00F54 80A1B8F4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00F58 80A1B8F8 1041001D */  beq     $v0, $at, .L80A1B970       
/* 00F5C 80A1B8FC 260403A0 */  addiu   $a0, $s0, 0x03A0           ## $a0 = 000003A0
/* 00F60 80A1B900 10000031 */  beq     $zero, $zero, .L80A1B9C8   
/* 00F64 80A1B904 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A1B908:
/* 00F68 80A1B908 920E037E */  lbu     $t6, 0x037E($s0)           ## 0000037E
/* 00F6C 80A1B90C 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 00F70 80A1B910 3C0741C8 */  lui     $a3, 0x41C8                ## $a3 = 41C80000
/* 00F74 80A1B914 000E7880 */  sll     $t7, $t6,  2               
/* 00F78 80A1B918 00AF2821 */  addu    $a1, $a1, $t7              
/* 00F7C 80A1B91C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00F80 80A1B920 8CA5D0CC */  lw      $a1, %lo(D_80A1D0CC)($a1)  
/* 00F84 80A1B924 9202037E */  lbu     $v0, 0x037E($s0)           ## 0000037E
/* 00F88 80A1B928 3C0180A2 */  lui     $at, %hi(D_80A1D0CC)       ## $at = 80A20000
/* 00F8C 80A1B92C C60403A0 */  lwc1    $f4, 0x03A0($s0)           ## 000003A0
/* 00F90 80A1B930 0002C080 */  sll     $t8, $v0,  2               
/* 00F94 80A1B934 00380821 */  addu    $at, $at, $t8              
/* 00F98 80A1B938 C420D0CC */  lwc1    $f0, %lo(D_80A1D0CC)($at)  
/* 00F9C 80A1B93C 28410003 */  slti    $at, $v0, 0x0003           
/* 00FA0 80A1B940 4604003E */  c.le.s  $f0, $f4                   
/* 00FA4 80A1B944 00000000 */  nop
/* 00FA8 80A1B948 4502001F */  bc1fl   .L80A1B9C8                 
/* 00FAC 80A1B94C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00FB0 80A1B950 10200004 */  beq     $at, $zero, .L80A1B964     
/* 00FB4 80A1B954 E60003A0 */  swc1    $f0, 0x03A0($s0)           ## 000003A0
/* 00FB8 80A1B958 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00FBC 80A1B95C 10000019 */  beq     $zero, $zero, .L80A1B9C4   
/* 00FC0 80A1B960 A219037F */  sb      $t9, 0x037F($s0)           ## 0000037F
.L80A1B964:
/* 00FC4 80A1B964 A2000379 */  sb      $zero, 0x0379($s0)         ## 00000379
/* 00FC8 80A1B968 10000016 */  beq     $zero, $zero, .L80A1B9C4   
/* 00FCC 80A1B96C A200037D */  sb      $zero, 0x037D($s0)         ## 0000037D
.L80A1B970:
/* 00FD0 80A1B970 3C054316 */  lui     $a1, 0x4316                ## $a1 = 43160000
/* 00FD4 80A1B974 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 00FD8 80A1B978 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00FDC 80A1B97C 3C0741C8 */  lui     $a3, 0x41C8                ## $a3 = 41C80000
/* 00FE0 80A1B980 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00FE4 80A1B984 44810000 */  mtc1    $at, $f0                   ## $f0 = 150.00
/* 00FE8 80A1B988 C60603A0 */  lwc1    $f6, 0x03A0($s0)           ## 000003A0
/* 00FEC 80A1B98C 4600303E */  c.le.s  $f6, $f0                   
/* 00FF0 80A1B990 00000000 */  nop
/* 00FF4 80A1B994 4502000C */  bc1fl   .L80A1B9C8                 
/* 00FF8 80A1B998 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00FFC 80A1B99C 9208037E */  lbu     $t0, 0x037E($s0)           ## 0000037E
/* 01000 80A1B9A0 E60003A0 */  swc1    $f0, 0x03A0($s0)           ## 000003A0
/* 01004 80A1B9A4 240B0003 */  addiu   $t3, $zero, 0x0003         ## $t3 = 00000003
/* 01008 80A1B9A8 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 0100C 80A1B9AC 312A00FF */  andi    $t2, $t1, 0x00FF           ## $t2 = 00000001
/* 01010 80A1B9B0 29410004 */  slti    $at, $t2, 0x0004           
/* 01014 80A1B9B4 14200002 */  bne     $at, $zero, .L80A1B9C0     
/* 01018 80A1B9B8 A209037E */  sb      $t1, 0x037E($s0)           ## 0000037E
/* 0101C 80A1B9BC A20B037E */  sb      $t3, 0x037E($s0)           ## 0000037E
.L80A1B9C0:
/* 01020 80A1B9C0 A200037F */  sb      $zero, 0x037F($s0)         ## 0000037F
.L80A1B9C4:
/* 01024 80A1B9C4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A1B9C8:
/* 01028 80A1B9C8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0102C 80A1B9CC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01030 80A1B9D0 03E00008 */  jr      $ra                        
/* 01034 80A1B9D4 00000000 */  nop
