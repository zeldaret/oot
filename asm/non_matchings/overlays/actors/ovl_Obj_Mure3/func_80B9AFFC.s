.late_rodata
glabel D_80B9B0E4
    .float 2102500.0

.text
glabel func_80B9AFFC
/* 0062C 80B9AFFC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00630 80B9B000 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00634 80B9B004 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00638 80B9B008 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0063C 80B9B00C 0C2E6B73 */  jal     func_80B9ADCC              
/* 00640 80B9B010 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00644 80B9B014 C60C00E4 */  lwc1    $f12, 0x00E4($s0)          ## 000000E4
/* 00648 80B9B018 0C032D57 */  jal     Math3D_Dist1DSq              
/* 0064C 80B9B01C C60E00EC */  lwc1    $f14, 0x00EC($s0)          ## 000000EC
/* 00650 80B9B020 3C0180BA */  lui     $at, %hi(D_80B9B0E4)       ## $at = 80BA0000
/* 00654 80B9B024 C424B0E4 */  lwc1    $f4, %lo(D_80B9B0E4)($at)  
/* 00658 80B9B028 4600203E */  c.le.s  $f4, $f0                   
/* 0065C 80B9B02C 00000000 */  nop
/* 00660 80B9B030 4502000B */  bc1fl   .L80B9B060                 
/* 00664 80B9B034 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00668 80B9B038 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 0066C 80B9B03C 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 00670 80B9B040 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00674 80B9B044 01C17824 */  and     $t7, $t6, $at              
/* 00678 80B9B048 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 0067C 80B9B04C 0C2E6B39 */  jal     func_80B9ACE4              
/* 00680 80B9B050 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00684 80B9B054 0C2E6BD5 */  jal     func_80B9AF54              
/* 00688 80B9B058 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0068C 80B9B05C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9B060:
/* 00690 80B9B060 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00694 80B9B064 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00698 80B9B068 03E00008 */  jr      $ra                        
/* 0069C 80B9B06C 00000000 */  nop
