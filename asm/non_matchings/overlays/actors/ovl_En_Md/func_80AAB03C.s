glabel func_80AAB03C
/* 00DEC 80AAB03C AFA40000 */  sw      $a0, 0x0000($sp)           
/* 00DF0 80AAB040 84A200A4 */  lh      $v0, 0x00A4($a1)           ## 000000A4
/* 00DF4 80AAB044 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
/* 00DF8 80AAB048 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00DFC 80AAB04C 1441000B */  bne     $v0, $at, .L80AAB07C       
/* 00E00 80AAB050 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00E04 80AAB054 946E0ED6 */  lhu     $t6, 0x0ED6($v1)           ## 8015F536
/* 00E08 80AAB058 31CF1000 */  andi    $t7, $t6, 0x1000           ## $t7 = 00000000
/* 00E0C 80AAB05C 15E00007 */  bne     $t7, $zero, .L80AAB07C     
/* 00E10 80AAB060 00000000 */  nop
/* 00E14 80AAB064 94780EDC */  lhu     $t8, 0x0EDC($v1)           ## 8015F53C
/* 00E18 80AAB068 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 00E1C 80AAB06C 17200003 */  bne     $t9, $zero, .L80AAB07C     
/* 00E20 80AAB070 00000000 */  nop
/* 00E24 80AAB074 03E00008 */  jr      $ra                        
/* 00E28 80AAB078 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AAB07C:
/* 00E2C 80AAB07C 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00E30 80AAB080 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
/* 00E34 80AAB084 1441000E */  bne     $v0, $at, .L80AAB0C0       
/* 00E38 80AAB088 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00E3C 80AAB08C 94680ED6 */  lhu     $t0, 0x0ED6($v1)           ## 8015F536
/* 00E40 80AAB090 31091000 */  andi    $t1, $t0, 0x1000           ## $t1 = 00000000
/* 00E44 80AAB094 55200006 */  bnel    $t1, $zero, .L80AAB0B0     
/* 00E48 80AAB098 8C6C0004 */  lw      $t4, 0x0004($v1)           ## 8015E664
/* 00E4C 80AAB09C 946A0EDC */  lhu     $t2, 0x0EDC($v1)           ## 8015F53C
/* 00E50 80AAB0A0 314B0001 */  andi    $t3, $t2, 0x0001           ## $t3 = 00000000
/* 00E54 80AAB0A4 51600007 */  beql    $t3, $zero, .L80AAB0C4     
/* 00E58 80AAB0A8 2401005B */  addiu   $at, $zero, 0x005B         ## $at = 0000005B
/* 00E5C 80AAB0AC 8C6C0004 */  lw      $t4, 0x0004($v1)           ## 8015E664
.L80AAB0B0:
/* 00E60 80AAB0B0 51800004 */  beql    $t4, $zero, .L80AAB0C4     
/* 00E64 80AAB0B4 2401005B */  addiu   $at, $zero, 0x005B         ## $at = 0000005B
/* 00E68 80AAB0B8 03E00008 */  jr      $ra                        
/* 00E6C 80AAB0BC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AAB0C0:
/* 00E70 80AAB0C0 2401005B */  addiu   $at, $zero, 0x005B         ## $at = 0000005B
.L80AAB0C4:
/* 00E74 80AAB0C4 54410004 */  bnel    $v0, $at, .L80AAB0D8       
/* 00E78 80AAB0C8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00E7C 80AAB0CC 03E00008 */  jr      $ra                        
/* 00E80 80AAB0D0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AAB0D4:
/* 00E84 80AAB0D4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AAB0D8:
/* 00E88 80AAB0D8 03E00008 */  jr      $ra                        
/* 00E8C 80AAB0DC 00000000 */  nop


