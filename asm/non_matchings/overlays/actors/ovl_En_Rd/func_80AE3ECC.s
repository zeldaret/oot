glabel func_80AE3ECC
/* 01ACC 80AE3ECC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01AD0 80AE3ED0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01AD4 80AE3ED4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01AD8 80AE3ED8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01ADC 80AE3EDC 908E0318 */  lbu     $t6, 0x0318($a0)           ## 00000318
/* 01AE0 80AE3EE0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01AE4 80AE3EE4 51C00014 */  beql    $t6, $zero, .L80AE3F38     
/* 01AE8 80AE3EE8 92190114 */  lbu     $t9, 0x0114($s0)           ## 00000114
/* 01AEC 80AE3EEC 84820316 */  lh      $v0, 0x0316($a0)           ## 00000316
/* 01AF0 80AE3EF0 10400010 */  beq     $v0, $zero, .L80AE3F34     
/* 01AF4 80AE3EF4 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 01AF8 80AE3EF8 A48F0316 */  sh      $t7, 0x0316($a0)           ## 00000316
/* 01AFC 80AE3EFC 84820316 */  lh      $v0, 0x0316($a0)           ## 00000316
/* 01B00 80AE3F00 24058000 */  addiu   $a1, $zero, 0x8000         ## $a1 = FFFF8000
/* 01B04 80AE3F04 240600C8 */  addiu   $a2, $zero, 0x00C8         ## $a2 = 000000C8
/* 01B08 80AE3F08 284100FF */  slti    $at, $v0, 0x00FF           
/* 01B0C 80AE3F0C 14200005 */  bne     $at, $zero, .L80AE3F24     
/* 01B10 80AE3F10 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01B14 80AE3F14 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 01B18 80AE3F18 0C00D09B */  jal     func_8003426C              
/* 01B1C 80AE3F1C AFB80010 */  sw      $t8, 0x0010($sp)           
/* 01B20 80AE3F20 86020316 */  lh      $v0, 0x0316($s0)           ## 00000316
.L80AE3F24:
/* 01B24 80AE3F24 14400003 */  bne     $v0, $zero, .L80AE3F34     
/* 01B28 80AE3F28 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 01B2C 80AE3F2C A2000318 */  sb      $zero, 0x0318($s0)         ## 00000318
/* 01B30 80AE3F30 A420FA82 */  sh      $zero, -0x057E($at)        ## 8015FA82
.L80AE3F34:
/* 01B34 80AE3F34 92190114 */  lbu     $t9, 0x0114($s0)           ## 00000114
.L80AE3F38:
/* 01B38 80AE3F38 57200014 */  bnel    $t9, $zero, .L80AE3F8C     
/* 01B3C 80AE3F3C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01B40 80AE3F40 920800AF */  lbu     $t0, 0x00AF($s0)           ## 000000AF
/* 01B44 80AE3F44 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01B48 80AE3F48 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01B4C 80AE3F4C 1500000C */  bne     $t0, $zero, .L80AE3F80     
/* 01B50 80AE3F50 00000000 */  nop
/* 01B54 80AE3F54 0C2B898C */  jal     func_80AE2630              
/* 01B58 80AE3F58 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01B5C 80AE3F5C 0C2B8F08 */  jal     func_80AE3C20              
/* 01B60 80AE3F60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B64 80AE3F64 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01B68 80AE3F68 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01B6C 80AE3F6C 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 01B70 80AE3F70 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 01B74 80AE3F74 24070090 */  addiu   $a3, $zero, 0x0090         ## $a3 = 00000090
/* 01B78 80AE3F78 10000004 */  beq     $zero, $zero, .L80AE3F8C   
/* 01B7C 80AE3F7C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE3F80:
/* 01B80 80AE3F80 0C2B8EA3 */  jal     func_80AE3A8C              
/* 01B84 80AE3F84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B88 80AE3F88 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE3F8C:
/* 01B8C 80AE3F8C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01B90 80AE3F90 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01B94 80AE3F94 03E00008 */  jr      $ra                        
/* 01B98 80AE3F98 00000000 */  nop


