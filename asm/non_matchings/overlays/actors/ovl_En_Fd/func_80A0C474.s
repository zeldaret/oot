glabel func_80A0C474
/* 00DB4 80A0C474 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00DB8 80A0C478 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00DBC 80A0C47C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00DC0 80A0C480 948E0088 */  lhu     $t6, 0x0088($a0)           ## 00000088
/* 00DC4 80A0C484 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00DC8 80A0C488 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00DCC 80A0C48C 51E00015 */  beql    $t7, $zero, .L80A0C4E4     
/* 00DD0 80A0C490 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DD4 80A0C494 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00DD8 80A0C498 C4840060 */  lwc1    $f4, 0x0060($a0)           ## 00000060
/* 00DDC 80A0C49C 3C0580A1 */  lui     $a1, %hi(D_80A0DFEC)       ## $a1 = 80A10000
/* 00DE0 80A0C4A0 24A5DFEC */  addiu   $a1, $a1, %lo(D_80A0DFEC)  ## $a1 = 80A0DFEC
/* 00DE4 80A0C4A4 4604003C */  c.lt.s  $f0, $f4                   
/* 00DE8 80A0C4A8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00DEC 80A0C4AC 4503000D */  bc1tl   .L80A0C4E4                 
/* 00DF0 80A0C4B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DF4 80A0C4B4 849800B6 */  lh      $t8, 0x00B6($a0)           ## 000000B6
/* 00DF8 80A0C4B8 E4800060 */  swc1    $f0, 0x0060($a0)           ## 00000060
/* 00DFC 80A0C4BC E4800068 */  swc1    $f0, 0x0068($a0)           ## 00000068
/* 00E00 80A0C4C0 A4980032 */  sh      $t8, 0x0032($a0)           ## 00000032
/* 00E04 80A0C4C4 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00E08 80A0C4C8 0C00D3B0 */  jal     func_80034EC0              
/* 00E0C 80A0C4CC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00E10 80A0C4D0 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00E14 80A0C4D4 3C1980A1 */  lui     $t9, %hi(func_80A0C4F0)    ## $t9 = 80A10000
/* 00E18 80A0C4D8 2739C4F0 */  addiu   $t9, $t9, %lo(func_80A0C4F0) ## $t9 = 80A0C4F0
/* 00E1C 80A0C4DC ACF90190 */  sw      $t9, 0x0190($a3)           ## 00000190
/* 00E20 80A0C4E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A0C4E4:
/* 00E24 80A0C4E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E28 80A0C4E8 03E00008 */  jr      $ra                        
/* 00E2C 80A0C4EC 00000000 */  nop


