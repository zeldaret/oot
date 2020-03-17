glabel func_80B99950
/* 00EB0 80B99950 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00EB4 80B99954 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00EB8 80B99958 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00EBC 80B9995C 0C2E6489 */  jal     func_80B99224              
/* 00EC0 80B99960 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00EC4 80B99964 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00EC8 80B99968 3C0180BA */  lui     $at, %hi(D_80B99A50)       ## $at = 80BA0000
/* 00ECC 80B9996C 3C0E80BA */  lui     $t6, %hi(func_80B992F8)    ## $t6 = 80BA0000
/* 00ED0 80B99970 84820156 */  lh      $v0, 0x0156($a0)           ## 00000156
/* 00ED4 80B99974 C48000EC */  lwc1    $f0, 0x00EC($a0)           ## 000000EC
/* 00ED8 80B99978 3C0380BA */  lui     $v1, %hi(D_80B99A98)       ## $v1 = 80BA0000
/* 00EDC 80B9997C 00021080 */  sll     $v0, $v0,  2               
/* 00EE0 80B99980 00220821 */  addu    $at, $at, $v0              
/* 00EE4 80B99984 C4249A50 */  lwc1    $f4, %lo(D_80B99A50)($at)  
/* 00EE8 80B99988 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00EEC 80B9998C 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 00EF0 80B99990 46000005 */  abs.s   $f0, $f0                   
/* 00EF4 80B99994 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00EF8 80B99998 46062200 */  add.s   $f8, $f4, $f6              
/* 00EFC 80B9999C 25CE92F8 */  addiu   $t6, $t6, %lo(func_80B992F8) ## $t6 = 80B992F8
/* 00F00 80B999A0 00621821 */  addu    $v1, $v1, $v0              
/* 00F04 80B999A4 4600403E */  c.le.s  $f8, $f0                   
/* 00F08 80B999A8 00000000 */  nop
/* 00F0C 80B999AC 45000009 */  bc1f    .L80B999D4                 
/* 00F10 80B999B0 00000000 */  nop
/* 00F14 80B999B4 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 00F18 80B999B8 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 00F1C 80B999BC AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 00F20 80B999C0 01E1C024 */  and     $t8, $t7, $at              
/* 00F24 80B999C4 0C2E6481 */  jal     func_80B99204              
/* 00F28 80B999C8 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 00F2C 80B999CC 10000007 */  beq     $zero, $zero, .L80B999EC   
/* 00F30 80B999D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B999D4:
/* 00F34 80B999D4 8C639A98 */  lw      $v1, %lo(D_80B99A98)($v1)  
/* 00F38 80B999D8 50600004 */  beql    $v1, $zero, .L80B999EC     
/* 00F3C 80B999DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F40 80B999E0 0060F809 */  jalr    $ra, $v1                   
/* 00F44 80B999E4 00000000 */  nop
/* 00F48 80B999E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B999EC:
/* 00F4C 80B999EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F50 80B999F0 03E00008 */  jr      $ra                        
/* 00F54 80B999F4 00000000 */  nop


