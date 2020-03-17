glabel func_80A1C474
/* 01AD4 80A1C474 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01AD8 80A1C478 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01ADC 80A1C47C 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 01AE0 80A1C480 01E57821 */  addu    $t7, $t7, $a1              
/* 01AE4 80A1C484 91EF04E8 */  lbu     $t7, 0x04E8($t7)           ## 000104E8
/* 01AE8 80A1C488 908E0381 */  lbu     $t6, 0x0381($a0)           ## 00000381
/* 01AEC 80A1C48C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01AF0 80A1C490 55CF0020 */  bnel    $t6, $t7, .L80A1C514       
/* 01AF4 80A1C494 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01AF8 80A1C498 90980380 */  lbu     $t8, 0x0380($a0)           ## 00000380
/* 01AFC 80A1C49C 2408000D */  addiu   $t0, $zero, 0x000D         ## $t0 = 0000000D
/* 01B00 80A1C4A0 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 01B04 80A1C4A4 A0990380 */  sb      $t9, 0x0380($a0)           ## 00000380
/* 01B08 80A1C4A8 332400FF */  andi    $a0, $t9, 0x00FF           ## $a0 = 00000001
/* 01B0C 80A1C4AC 2881000E */  slti    $at, $a0, 0x000E           
/* 01B10 80A1C4B0 14200004 */  bne     $at, $zero, .L80A1C4C4     
/* 01B14 80A1C4B4 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000001
/* 01B18 80A1C4B8 A0C80380 */  sb      $t0, 0x0380($a2)           ## 00000380
/* 01B1C 80A1C4BC 10000015 */  beq     $zero, $zero, .L80A1C514   
/* 01B20 80A1C4C0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A1C4C4:
/* 01B24 80A1C4C4 28410004 */  slti    $at, $v0, 0x0004           
/* 01B28 80A1C4C8 10200003 */  beq     $at, $zero, .L80A1C4D8     
/* 01B2C 80A1C4CC 24030004 */  addiu   $v1, $zero, 0x0004         ## $v1 = 00000004
/* 01B30 80A1C4D0 10000001 */  beq     $zero, $zero, .L80A1C4D8   
/* 01B34 80A1C4D4 304300FF */  andi    $v1, $v0, 0x00FF           ## $v1 = 00000001
.L80A1C4D8:
/* 01B38 80A1C4D8 A3A3001F */  sb      $v1, 0x001F($sp)           
/* 01B3C 80A1C4DC 0C2870E2 */  jal     func_80A1C388              
/* 01B40 80A1C4E0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 01B44 80A1C4E4 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 01B48 80A1C4E8 304400FF */  andi    $a0, $v0, 0x00FF           ## $a0 = 00000000
/* 01B4C 80A1C4EC 0C287092 */  jal     func_80A1C248              
/* 01B50 80A1C4F0 A0C20381 */  sb      $v0, 0x0381($a2)           ## 00000381
/* 01B54 80A1C4F4 93A3001F */  lbu     $v1, 0x001F($sp)           
/* 01B58 80A1C4F8 3C0A80A2 */  lui     $t2, %hi(D_80A1D0B0)       ## $t2 = 80A20000
/* 01B5C 80A1C4FC 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 01B60 80A1C500 00034840 */  sll     $t1, $v1,  1               
/* 01B64 80A1C504 01495021 */  addu    $t2, $t2, $t1              
/* 01B68 80A1C508 854AD0B0 */  lh      $t2, %lo(D_80A1D0B0)($t2)  
/* 01B6C 80A1C50C A4CA0386 */  sh      $t2, 0x0386($a2)           ## 00000386
/* 01B70 80A1C510 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A1C514:
/* 01B74 80A1C514 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01B78 80A1C518 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01B7C 80A1C51C 03E00008 */  jr      $ra                        
/* 01B80 80A1C520 00000000 */  nop


