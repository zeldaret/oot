glabel func_80ACFBCC
/* 0072C 80ACFBCC 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00730 80ACFBD0 8DCEE670 */  lw      $t6, -0x1990($t6)          ## 8015E670
/* 00734 80ACFBD4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00738 80ACFBD8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0073C 80ACFBDC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00740 80ACFBE0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00744 80ACFBE4 15C0001B */  bne     $t6, $zero, .L80ACFC54     
/* 00748 80ACFBE8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0074C 80ACFBEC 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 00750 80ACFBF0 849902F6 */  lh      $t9, 0x02F6($a0)           ## 000002F6
/* 00754 80ACFBF4 3C05C47A */  lui     $a1, 0xC47A                ## $a1 = C47A0000
/* 00758 80ACFBF8 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 0075C 80ACFBFC 1720000B */  bne     $t9, $zero, .L80ACFC2C     
/* 00760 80ACFC00 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 00764 80ACFC04 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00768 80ACFC08 C48602DC */  lwc1    $f6, 0x02DC($a0)           ## 000002DC
/* 0076C 80ACFC0C 4606203C */  c.lt.s  $f4, $f6                   
/* 00770 80ACFC10 00000000 */  nop
/* 00774 80ACFC14 4502003E */  bc1fl   .L80ACFD10                 
/* 00778 80ACFC18 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0077C 80ACFC1C 0C2B401C */  jal     func_80AD0070              
/* 00780 80ACFC20 00000000 */  nop
/* 00784 80ACFC24 1000003A */  beq     $zero, $zero, .L80ACFD10   
/* 00788 80ACFC28 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ACFC2C:
/* 0078C 80ACFC2C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00790 80ACFC30 260400BC */  addiu   $a0, $s0, 0x00BC           ## $a0 = 000000BC
/* 00794 80ACFC34 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00798 80ACFC38 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 0079C 80ACFC3C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 007A0 80ACFC40 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 007A4 80ACFC44 860802F6 */  lh      $t0, 0x02F6($s0)           ## 000002F6
/* 007A8 80ACFC48 2509FFFF */  addiu   $t1, $t0, 0xFFFF           ## $t1 = FFFFFFFF
/* 007AC 80ACFC4C 1000002F */  beq     $zero, $zero, .L80ACFD0C   
/* 007B0 80ACFC50 A60902F6 */  sh      $t1, 0x02F6($s0)           ## 000002F6
.L80ACFC54:
/* 007B4 80ACFC54 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
/* 007B8 80ACFC58 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 007BC 80ACFC5C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 007C0 80ACFC60 01415824 */  and     $t3, $t2, $at              
/* 007C4 80ACFC64 AE0B0004 */  sw      $t3, 0x0004($s0)           ## 00000004
/* 007C8 80ACFC68 260400BC */  addiu   $a0, $s0, 0x00BC           ## $a0 = 000000BC
/* 007CC 80ACFC6C 3C05C47A */  lui     $a1, 0xC47A                ## $a1 = C47A0000
/* 007D0 80ACFC70 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 007D4 80ACFC74 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 007D8 80ACFC78 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 007DC 80ACFC7C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 007E0 80ACFC80 8E0202D4 */  lw      $v0, 0x02D4($s0)           ## 000002D4
/* 007E4 80ACFC84 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 007E8 80ACFC88 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 007EC 80ACFC8C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 007F0 80ACFC90 10400017 */  beq     $v0, $zero, .L80ACFCF0     
/* 007F4 80ACFC94 244CFFFF */  addiu   $t4, $v0, 0xFFFF           ## $t4 = FFFFFFFF
/* 007F8 80ACFC98 318E0004 */  andi    $t6, $t4, 0x0004           ## $t6 = 00000004
/* 007FC 80ACFC9C 11C0000B */  beq     $t6, $zero, .L80ACFCCC     
/* 00800 80ACFCA0 AE0C02D4 */  sw      $t4, 0x02D4($s0)           ## 000002D4
/* 00804 80ACFCA4 3C053E51 */  lui     $a1, 0x3E51                ## $a1 = 3E510000
/* 00808 80ACFCA8 44061000 */  mfc1    $a2, $f2                   
/* 0080C 80ACFCAC 3C073E70 */  lui     $a3, 0x3E70                ## $a3 = 3E700000
/* 00810 80ACFCB0 34E7A3D7 */  ori     $a3, $a3, 0xA3D7           ## $a3 = 3E70A3D7
/* 00814 80ACFCB4 34A5EB85 */  ori     $a1, $a1, 0xEB85           ## $a1 = 3E51EB85
/* 00818 80ACFCB8 260402EC */  addiu   $a0, $s0, 0x02EC           ## $a0 = 000002EC
/* 0081C 80ACFCBC 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00820 80ACFCC0 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00824 80ACFCC4 10000012 */  beq     $zero, $zero, .L80ACFD10   
/* 00828 80ACFCC8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ACFCCC:
/* 0082C 80ACFCCC 44050000 */  mfc1    $a1, $f0                   
/* 00830 80ACFCD0 44061000 */  mfc1    $a2, $f2                   
/* 00834 80ACFCD4 3C073BA3 */  lui     $a3, 0x3BA3                ## $a3 = 3BA30000
/* 00838 80ACFCD8 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3BA3D70A
/* 0083C 80ACFCDC 260402EC */  addiu   $a0, $s0, 0x02EC           ## $a0 = 000002EC
/* 00840 80ACFCE0 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00844 80ACFCE4 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00848 80ACFCE8 10000009 */  beq     $zero, $zero, .L80ACFD10   
/* 0084C 80ACFCEC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ACFCF0:
/* 00850 80ACFCF0 920F0311 */  lbu     $t7, 0x0311($s0)           ## 00000311
/* 00854 80ACFCF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00858 80ACFCF8 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 0085C 80ACFCFC 53000004 */  beql    $t8, $zero, .L80ACFD10     
/* 00860 80ACFD00 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00864 80ACFD04 0C2B3E48 */  jal     func_80ACF920              
/* 00868 80ACFD08 8FA5002C */  lw      $a1, 0x002C($sp)           
.L80ACFD0C:
/* 0086C 80ACFD0C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ACFD10:
/* 00870 80ACFD10 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00874 80ACFD14 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00878 80ACFD18 03E00008 */  jr      $ra                        
/* 0087C 80ACFD1C 00000000 */  nop


