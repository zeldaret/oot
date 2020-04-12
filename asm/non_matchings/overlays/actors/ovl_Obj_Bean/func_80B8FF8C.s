.late_rodata
glabel D_80B91048
    .float 0.17434467
glabel D_80B9104C
    .float 0.12207746

.text
glabel func_80B8FF8C
/* 0150C 80B8FF8C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01510 80B8FF90 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01514 80B8FF94 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01518 80B8FF98 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0151C 80B8FF9C 848E01B6 */  lh      $t6, 0x01B6($a0)           ## 000001B6
/* 01520 80B8FFA0 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 01524 80B8FFA4 25CFF6A0 */  addiu   $t7, $t6, 0xF6A0           ## $t7 = FFFFF6A0
/* 01528 80B8FFA8 A48F01B6 */  sh      $t7, 0x01B6($a0)           ## 000001B6
/* 0152C 80B8FFAC 848401B6 */  lh      $a0, 0x01B6($a0)           ## 000001B6
/* 01530 80B8FFB0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01534 80B8FFB4 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 01538 80B8FFB8 3C0180B9 */  lui     $at, %hi(D_80B91048)       ## $at = 80B90000
/* 0153C 80B8FFBC C4241048 */  lwc1    $f4, %lo(D_80B91048)($at)  
/* 01540 80B8FFC0 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 01544 80B8FFC4 46040182 */  mul.s   $f6, $f0, $f4              
/* 01548 80B8FFC8 84A401B6 */  lh      $a0, 0x01B6($a1)           ## 000001B6
/* 0154C 80B8FFCC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01550 80B8FFD0 E4A60054 */  swc1    $f6, 0x0054($a1)           ## 00000054
/* 01554 80B8FFD4 3C0180B9 */  lui     $at, %hi(D_80B9104C)       ## $at = 80B90000
/* 01558 80B8FFD8 C428104C */  lwc1    $f8, %lo(D_80B9104C)($at)  
/* 0155C 80B8FFDC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 01560 80B8FFE0 46080082 */  mul.s   $f2, $f0, $f8              
/* 01564 80B8FFE4 84B801B6 */  lh      $t8, 0x01B6($a1)           ## 000001B6
/* 01568 80B8FFE8 2B0118E4 */  slti    $at, $t8, 0x18E4           
/* 0156C 80B8FFEC E4A20058 */  swc1    $f2, 0x0058($a1)           ## 00000058
/* 01570 80B8FFF0 10200003 */  beq     $at, $zero, .L80B90000     
/* 01574 80B8FFF4 E4A20050 */  swc1    $f2, 0x0050($a1)           ## 00000050
/* 01578 80B8FFF8 0C2E4004 */  jal     func_80B90010              
/* 0157C 80B8FFFC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
.L80B90000:
/* 01580 80B90000 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01584 80B90004 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01588 80B90008 03E00008 */  jr      $ra                        
/* 0158C 80B9000C 00000000 */  nop
