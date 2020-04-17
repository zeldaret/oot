glabel func_80A18AB4
/* 015A4 80A18AB4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 015A8 80A18AB8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 015AC 80A18ABC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 015B0 80A18AC0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 015B4 80A18AC4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 015B8 80A18AC8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 015BC 80A18ACC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 015C0 80A18AD0 50400004 */  beql    $v0, $zero, .L80A18AE4     
/* 015C4 80A18AD4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 015C8 80A18AD8 0C285EC4 */  jal     func_80A17B10              
/* 015CC 80A18ADC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015D0 80A18AE0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
.L80A18AE4:
/* 015D4 80A18AE4 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 015D8 80A18AE8 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 015DC 80A18AEC 860E00B4 */  lh      $t6, 0x00B4($s0)           ## 000000B4
/* 015E0 80A18AF0 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 015E4 80A18AF4 46062200 */  add.s   $f8, $f4, $f6              
/* 015E8 80A18AF8 25CF0140 */  addiu   $t7, $t6, 0x0140           ## $t7 = 00000140
/* 015EC 80A18AFC A60F00B4 */  sh      $t7, 0x00B4($s0)           ## 000000B4
/* 015F0 80A18B00 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 015F4 80A18B04 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 015F8 80A18B08 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 015FC 80A18B0C 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 01600 80A18B10 24070AAA */  addiu   $a3, $zero, 0x0AAA         ## $a3 = 00000AAA
/* 01604 80A18B14 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 01608 80A18B18 240504B0 */  addiu   $a1, $zero, 0x04B0         ## $a1 = 000004B0
/* 0160C 80A18B1C 0C01DE5F */  jal     Math_ApproxS
              
/* 01610 80A18B20 24060064 */  addiu   $a2, $zero, 0x0064         ## $a2 = 00000064
/* 01614 80A18B24 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01618 80A18B28 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0161C 80A18B2C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01620 80A18B30 03E00008 */  jr      $ra                        
/* 01624 80A18B34 00000000 */  nop
