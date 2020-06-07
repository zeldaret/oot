glabel func_80ACCF34
/* 03014 80ACCF34 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03018 80ACCF38 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0301C 80ACCF3C AFA60030 */  sw      $a2, 0x0030($sp)           
/* 03020 80ACCF40 8FA60038 */  lw      $a2, 0x0038($sp)           
/* 03024 80ACCF44 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03028 80ACCF48 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0302C 80ACCF4C AFA70034 */  sw      $a3, 0x0034($sp)           
/* 03030 80ACCF50 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 03034 80ACCF54 94CE03FC */  lhu     $t6, 0x03FC($a2)           ## 000003FC
/* 03038 80ACCF58 3C0144AF */  lui     $at, 0x44AF                ## $at = 44AF0000
/* 0303C 80ACCF5C 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFF0
/* 03040 80ACCF60 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 03044 80ACCF64 51E00009 */  beql    $t7, $zero, .L80ACCF8C     
/* 03048 80ACCF68 44814000 */  mtc1    $at, $f8                   ## $f8 = 1400.00
/* 0304C 80ACCF6C 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
/* 03050 80ACCF70 44812000 */  mtc1    $at, $f4                   ## $f4 = 700.00
/* 03054 80ACCF74 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 03058 80ACCF78 44813000 */  mtc1    $at, $f6                   ## $f6 = 400.00
/* 0305C 80ACCF7C E7A40018 */  swc1    $f4, 0x0018($sp)           
/* 03060 80ACCF80 10000004 */  beq     $zero, $zero, .L80ACCF94   
/* 03064 80ACCF84 E7A6001C */  swc1    $f6, 0x001C($sp)           
/* 03068 80ACCF88 44814000 */  mtc1    $at, $f8                   ## $f8 = 400.00
.L80ACCF8C:
/* 0306C 80ACCF8C E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 03070 80ACCF90 E7A80018 */  swc1    $f8, 0x0018($sp)           
.L80ACCF94:
/* 03074 80ACCF94 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 03078 80ACCF98 54A10004 */  bnel    $a1, $at, .L80ACCFAC       
/* 0307C 80ACCF9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03080 80ACCFA0 0C0346BD */  jal     Matrix_MultVec3f              
/* 03084 80ACCFA4 24C50038 */  addiu   $a1, $a2, 0x0038           ## $a1 = 00000038
/* 03088 80ACCFA8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ACCFAC:
/* 0308C 80ACCFAC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03090 80ACCFB0 03E00008 */  jr      $ra                        
/* 03094 80ACCFB4 00000000 */  nop
