glabel func_8083CE0C
/* 0ABFC 8083CE0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0AC00 8083CE10 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0AC04 8083CE14 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 0AC08 8083CE18 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0AC0C 8083CE1C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0AC10 8083CE20 3C068084 */  lui     $a2, %hi(func_80840BC8)    ## $a2 = 80840000
/* 0AC14 8083CE24 24C60BC8 */  addiu   $a2, $a2, %lo(func_80840BC8) ## $a2 = 80840BC8
/* 0AC18 8083CE28 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0AC1C 8083CE2C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0AC20 8083CE30 0C20D716 */  jal     func_80835C58              
/* 0AC24 8083CE34 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0AC28 8083CE38 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0AC2C 8083CE3C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0AC30 8083CE40 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 0AC34 8083CE44 C4A40870 */  lwc1    $f4, 0x0870($a1)           ## 00000870
/* 0AC38 8083CE48 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0AC3C 8083CE4C 4606203C */  c.lt.s  $f4, $f6                   
/* 0AC40 8083CE50 00000000 */  nop
/* 0AC44 8083CE54 45020008 */  bc1fl   .L8083CE78                 
/* 0AC48 8083CE58 90B8015B */  lbu     $t8, 0x015B($a1)           ## 0000015B
/* 0AC4C 8083CE5C 90AE015B */  lbu     $t6, 0x015B($a1)           ## 0000015B
/* 0AC50 8083CE60 3C068085 */  lui     $a2, %hi(D_80853BB4)       ## $a2 = 80850000
/* 0AC54 8083CE64 000E7880 */  sll     $t7, $t6,  2               
/* 0AC58 8083CE68 00CF3021 */  addu    $a2, $a2, $t7              
/* 0AC5C 8083CE6C 10000006 */  beq     $zero, $zero, .L8083CE88   
/* 0AC60 8083CE70 8CC63BB4 */  lw      $a2, %lo(D_80853BB4)($a2)  
/* 0AC64 8083CE74 90B8015B */  lbu     $t8, 0x015B($a1)           ## 0000015B
.L8083CE78:
/* 0AC68 8083CE78 3C068085 */  lui     $a2, %hi(D_80853B9C)       ## $a2 = 80850000
/* 0AC6C 8083CE7C 0018C880 */  sll     $t9, $t8,  2               
/* 0AC70 8083CE80 00D93021 */  addu    $a2, $a2, $t9              
/* 0AC74 8083CE84 8CC63B9C */  lw      $a2, %lo(D_80853B9C)($a2)  
.L8083CE88:
/* 0AC78 8083CE88 0C20C899 */  jal     func_80832264              
/* 0AC7C 8083CE8C AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0AC80 8083CE90 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0AC84 8083CE94 84A800B6 */  lh      $t0, 0x00B6($a1)           ## 000000B6
/* 0AC88 8083CE98 A4A8083C */  sh      $t0, 0x083C($a1)           ## 0000083C
/* 0AC8C 8083CE9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0AC90 8083CEA0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0AC94 8083CEA4 03E00008 */  jr      $ra                        
/* 0AC98 8083CEA8 00000000 */  nop
