glabel func_80B43AD4
/* 00114 80B43AD4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00118 80B43AD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0011C 80B43ADC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00120 80B43AE0 848E0150 */  lh      $t6, 0x0150($a0)           ## 00000150
/* 00124 80B43AE4 849800B6 */  lh      $t8, 0x00B6($a0)           ## 000000B6
/* 00128 80B43AE8 3C0980B4 */  lui     $t1, %hi(func_80B43B6C)    ## $t1 = 80B40000
/* 0012C 80B43AEC 25CF00A0 */  addiu   $t7, $t6, 0x00A0           ## $t7 = 000000A0
/* 00130 80B43AF0 A48F0150 */  sh      $t7, 0x0150($a0)           ## 00000150
/* 00134 80B43AF4 84820150 */  lh      $v0, 0x0150($a0)           ## 00000150
/* 00138 80B43AF8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0013C 80B43AFC 25293B6C */  addiu   $t1, $t1, %lo(func_80B43B6C) ## $t1 = 80B43B6C
/* 00140 80B43B00 0302C821 */  addu    $t9, $t8, $v0              
/* 00144 80B43B04 28412000 */  slti    $at, $v0, 0x2000           
/* 00148 80B43B08 14200007 */  bne     $at, $zero, .L80B43B28     
/* 0014C 80B43B0C A49900B6 */  sh      $t9, 0x00B6($a0)           ## 000000B6
/* 00150 80B43B10 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00154 80B43B14 8488008A */  lh      $t0, 0x008A($a0)           ## 0000008A
/* 00158 80B43B18 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 0015C 80B43B1C AC89014C */  sw      $t1, 0x014C($a0)           ## 0000014C
/* 00160 80B43B20 A4880032 */  sh      $t0, 0x0032($a0)           ## 00000032
/* 00164 80B43B24 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
.L80B43B28:
/* 00168 80B43B28 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 0016C 80B43B2C 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 00170 80B43B30 C4E6000C */  lwc1    $f6, 0x000C($a3)           ## 0000000C
/* 00174 80B43B34 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00178 80B43B38 24E40028 */  addiu   $a0, $a3, 0x0028           ## $a0 = 00000028
/* 0017C 80B43B3C 46083280 */  add.s   $f10, $f6, $f8             
/* 00180 80B43B40 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00184 80B43B44 44055000 */  mfc1    $a1, $f10                  
/* 00188 80B43B48 0C01DE80 */  jal     Math_ApproxF
              
/* 0018C 80B43B4C 00000000 */  nop
/* 00190 80B43B50 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00194 80B43B54 0C00BE5D */  jal     func_8002F974              
/* 00198 80B43B58 24053179 */  addiu   $a1, $zero, 0x3179         ## $a1 = 00003179
/* 0019C 80B43B5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001A0 80B43B60 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001A4 80B43B64 03E00008 */  jr      $ra                        
/* 001A8 80B43B68 00000000 */  nop
