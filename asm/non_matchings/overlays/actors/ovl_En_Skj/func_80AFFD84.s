glabel func_80AFFD84
/* 01AD4 80AFFD84 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01AD8 80AFFD88 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01ADC 80AFFD8C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01AE0 80AFFD90 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01AE4 80AFFD94 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 01AE8 80AFFD98 0C042F6F */  jal     func_8010BDBC              
/* 01AEC 80AFFD9C 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 01AF0 80AFFDA0 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 01AF4 80AFFDA4 5441001B */  bnel    $v0, $at, .L80AFFE14       
/* 01AF8 80AFFDA8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01AFC 80AFFDAC 0C041AF2 */  jal     func_80106BC8              
/* 01B00 80AFFDB0 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 01B04 80AFFDB4 10400016 */  beq     $v0, $zero, .L80AFFE10     
/* 01B08 80AFFDB8 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 01B0C 80AFFDBC 95CEF552 */  lhu     $t6, -0x0AAE($t6)          ## 8015F552
/* 01B10 80AFFDC0 31CF0040 */  andi    $t7, $t6, 0x0040           ## $t7 = 00000000
/* 01B14 80AFFDC4 11E00005 */  beq     $t7, $zero, .L80AFFDDC     
/* 01B18 80AFFDC8 00000000 */  nop
/* 01B1C 80AFFDCC 0C2BFDE8 */  jal     func_80AFF7A0              
/* 01B20 80AFFDD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B24 80AFFDD4 1000000F */  beq     $zero, $zero, .L80AFFE14   
/* 01B28 80AFFDD8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AFFDDC:
/* 01B2C 80AFFDDC 0C2BFF89 */  jal     func_80AFFE24              
/* 01B30 80AFFDE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B34 80AFFDE4 0C2BFA5A */  jal     func_80AFE968              
/* 01B38 80AFFDE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B3C 80AFFDEC E7A0002C */  swc1    $f0, 0x002C($sp)           
/* 01B40 80AFFDF0 0C2BFA6B */  jal     func_80AFE9AC              
/* 01B44 80AFFDF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B48 80AFFDF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B4C 80AFFDFC 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 01B50 80AFFE00 2406003E */  addiu   $a2, $zero, 0x003E         ## $a2 = 0000003E
/* 01B54 80AFFE04 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 01B58 80AFFE08 0C00BD0D */  jal     func_8002F434              
/* 01B5C 80AFFE0C E7A00010 */  swc1    $f0, 0x0010($sp)           
.L80AFFE10:
/* 01B60 80AFFE10 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AFFE14:
/* 01B64 80AFFE14 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01B68 80AFFE18 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01B6C 80AFFE1C 03E00008 */  jr      $ra                        
/* 01B70 80AFFE20 00000000 */  nop
