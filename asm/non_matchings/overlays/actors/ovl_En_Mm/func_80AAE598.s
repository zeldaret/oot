glabel func_80AAE598
/* 00E28 80AAE598 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00E2C 80AAE59C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00E30 80AAE5A0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E34 80AAE5A4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00E38 80AAE5A8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00E3C 80AAE5AC 8E0F0038 */  lw      $t7, 0x0038($s0)           ## 00000038
/* 00E40 80AAE5B0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00E44 80AAE5B4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00E48 80AAE5B8 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00E4C 80AAE5BC 8E0E003C */  lw      $t6, 0x003C($s0)           ## 0000003C
/* 00E50 80AAE5C0 26060248 */  addiu   $a2, $s0, 0x0248           ## $a2 = 00000248
/* 00E54 80AAE5C4 2607024E */  addiu   $a3, $s0, 0x024E           ## $a3 = 0000024E
/* 00E58 80AAE5C8 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00E5C 80AAE5CC 8E0F0040 */  lw      $t7, 0x0040($s0)           ## 00000040
/* 00E60 80AAE5D0 0C00E0A4 */  jal     func_80038290              
/* 00E64 80AAE5D4 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 00E68 80AAE5D8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00E6C 80AAE5DC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00E70 80AAE5E0 0C2AB69C */  jal     func_80AADA70              
/* 00E74 80AAE5E4 00000000 */  nop
/* 00E78 80AAE5E8 50400011 */  beql    $v0, $zero, .L80AAE630     
/* 00E7C 80AAE5EC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00E80 80AAE5F0 8E1801E0 */  lw      $t8, 0x01E0($s0)           ## 000001E0
/* 00E84 80AAE5F4 3C0880AB */  lui     $t0, %hi(func_80AAE50C)    ## $t0 = 80AB0000
/* 00E88 80AAE5F8 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 00E8C 80AAE5FC 1700000B */  bne     $t8, $zero, .L80AAE62C     
/* 00E90 80AAE600 2508E50C */  addiu   $t0, $t0, %lo(func_80AAE50C) ## $t0 = 80AAE50C
/* 00E94 80AAE604 8E090254 */  lw      $t1, 0x0254($s0)           ## 00000254
/* 00E98 80AAE608 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00E9C 80AAE60C AE1901E0 */  sw      $t9, 0x01E0($s0)           ## 000001E0
/* 00EA0 80AAE610 01215024 */  and     $t2, $t1, $at              
/* 00EA4 80AAE614 AE080190 */  sw      $t0, 0x0190($s0)           ## 00000190
/* 00EA8 80AAE618 AE0A0254 */  sw      $t2, 0x0254($s0)           ## 00000254
/* 00EAC 80AAE61C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EB0 80AAE620 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00EB4 80AAE624 0C2AB5DC */  jal     func_80AAD770              
/* 00EB8 80AAE628 26060258 */  addiu   $a2, $s0, 0x0258           ## $a2 = 00000258
.L80AAE62C:
/* 00EBC 80AAE62C 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AAE630:
/* 00EC0 80AAE630 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00EC4 80AAE634 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00EC8 80AAE638 03E00008 */  jr      $ra                        
/* 00ECC 80AAE63C 00000000 */  nop


