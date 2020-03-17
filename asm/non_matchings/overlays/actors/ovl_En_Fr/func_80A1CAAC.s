glabel func_80A1CAAC
/* 0210C 80A1CAAC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02110 80A1CAB0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02114 80A1CAB4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02118 80A1CAB8 0C00BD04 */  jal     func_8002F410              
/* 0211C 80A1CABC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02120 80A1CAC0 10400006 */  beq     $v0, $zero, .L80A1CADC     
/* 02124 80A1CAC4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02128 80A1CAC8 3C0E80A2 */  lui     $t6, %hi(func_80A1CB08)    ## $t6 = 80A20000
/* 0212C 80A1CACC 25CECB08 */  addiu   $t6, $t6, %lo(func_80A1CB08) ## $t6 = 80A1CB08
/* 02130 80A1CAD0 AC800118 */  sw      $zero, 0x0118($a0)         ## 00000118
/* 02134 80A1CAD4 10000008 */  beq     $zero, $zero, .L80A1CAF8   
/* 02138 80A1CAD8 AC8E0354 */  sw      $t6, 0x0354($a0)           ## 00000354
.L80A1CADC:
/* 0213C 80A1CADC 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 02140 80A1CAE0 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 02144 80A1CAE4 8C860388 */  lw      $a2, 0x0388($a0)           ## 00000388
/* 02148 80A1CAE8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0214C 80A1CAEC 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 02150 80A1CAF0 0C00BD0D */  jal     func_8002F434              
/* 02154 80A1CAF4 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80A1CAF8:
/* 02158 80A1CAF8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0215C 80A1CAFC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02160 80A1CB00 03E00008 */  jr      $ra                        
/* 02164 80A1CB04 00000000 */  nop


