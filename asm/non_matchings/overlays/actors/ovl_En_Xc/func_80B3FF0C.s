glabel func_80B3FF0C
/* 03D2C 80B3FF0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03D30 80B3FF10 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03D34 80B3FF14 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03D38 80B3FF18 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03D3C 80B3FF1C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 03D40 80B3FF20 0C2CF14F */  jal     func_80B3C53C              
/* 03D44 80B3FF24 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 03D48 80B3FF28 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03D4C 80B3FF2C 1040001D */  beq     $v0, $zero, .L80B3FFA4     
/* 03D50 80B3FF30 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03D54 80B3FF34 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 03D58 80B3FF38 24080036 */  addiu   $t0, $zero, 0x0036         ## $t0 = 00000036
/* 03D5C 80B3FF3C 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 03D60 80B3FF40 51C00017 */  beql    $t6, $zero, .L80B3FFA0     
/* 03D64 80B3FF44 AC880260 */  sw      $t0, 0x0260($a0)           ## 00000260
/* 03D68 80B3FF48 8CA21D9C */  lw      $v0, 0x1D9C($a1)           ## 00001D9C
/* 03D6C 80B3FF4C 50400014 */  beql    $v0, $zero, .L80B3FFA0     
/* 03D70 80B3FF50 AC880260 */  sw      $t0, 0x0260($a0)           ## 00000260
/* 03D74 80B3FF54 8C4F000C */  lw      $t7, 0x000C($v0)           ## 0000000C
/* 03D78 80B3FF58 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 03D7C 80B3FF5C 00000000 */  nop
/* 03D80 80B3FF60 468021A0 */  cvt.s.w $f6, $f4                   
/* 03D84 80B3FF64 E4860024 */  swc1    $f6, 0x0024($a0)           ## 00000024
/* 03D88 80B3FF68 8C580010 */  lw      $t8, 0x0010($v0)           ## 00000010
/* 03D8C 80B3FF6C 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 03D90 80B3FF70 00000000 */  nop
/* 03D94 80B3FF74 468042A0 */  cvt.s.w $f10, $f8                  
/* 03D98 80B3FF78 E48A0028 */  swc1    $f10, 0x0028($a0)          ## 00000028
/* 03D9C 80B3FF7C 8C590014 */  lw      $t9, 0x0014($v0)           ## 00000014
/* 03DA0 80B3FF80 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 03DA4 80B3FF84 00000000 */  nop
/* 03DA8 80B3FF88 468084A0 */  cvt.s.w $f18, $f16                 
/* 03DAC 80B3FF8C E492002C */  swc1    $f18, 0x002C($a0)          ## 0000002C
/* 03DB0 80B3FF90 84430008 */  lh      $v1, 0x0008($v0)           ## 00000008
/* 03DB4 80B3FF94 A48300B6 */  sh      $v1, 0x00B6($a0)           ## 000000B6
/* 03DB8 80B3FF98 A4830032 */  sh      $v1, 0x0032($a0)           ## 00000032
/* 03DBC 80B3FF9C AC880260 */  sw      $t0, 0x0260($a0)           ## 00000260
.L80B3FFA0:
/* 03DC0 80B3FFA0 AC890264 */  sw      $t1, 0x0264($a0)           ## 00000264
.L80B3FFA4:
/* 03DC4 80B3FFA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03DC8 80B3FFA8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03DCC 80B3FFAC 03E00008 */  jr      $ra                        
/* 03DD0 80B3FFB0 00000000 */  nop


