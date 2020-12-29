glabel func_808FFEBC
/* 02F7C 808FFEBC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02F80 808FFEC0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02F84 808FFEC4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02F88 808FFEC8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02F8C 808FFECC 848E0390 */  lh      $t6, 0x0390($a0)           ## 00000390
/* 02F90 808FFED0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02F94 808FFED4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 02F98 808FFED8 15C0000C */  bne     $t6, $zero, .L808FFF0C     
/* 02F9C 808FFEDC 00000000 */  nop
/* 02FA0 808FFEE0 44816000 */  mtc1    $at, $f12                  ## $f12 = 50.00
/* 02FA4 808FFEE4 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 02FA8 808FFEE8 00000000 */  nop
/* 02FAC 808FFEEC 4600010D */  trunc.w.s $f4, $f0                   
/* 02FB0 808FFEF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02FB4 808FFEF4 240539D9 */  addiu   $a1, $zero, 0x39D9         ## $a1 = 000039D9
/* 02FB8 808FFEF8 44082000 */  mfc1    $t0, $f4                   
/* 02FBC 808FFEFC 00000000 */  nop
/* 02FC0 808FFF00 2509001E */  addiu   $t1, $t0, 0x001E           ## $t1 = 0000001E
/* 02FC4 808FFF04 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02FC8 808FFF08 A6090390 */  sh      $t1, 0x0390($s0)           ## 00000390
.L808FFF0C:
/* 02FCC 808FFF0C 0C02927F */  jal     SkelAnime_Update
              
/* 02FD0 808FFF10 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02FD4 808FFF14 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 02FD8 808FFF18 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 02FDC 808FFF1C 0C01E123 */  jal     Math_ApproachZeroF
              
/* 02FE0 808FFF20 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02FE4 808FFF24 860A01A2 */  lh      $t2, 0x01A2($s0)           ## 000001A2
/* 02FE8 808FFF28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02FEC 808FFF2C 55400006 */  bnel    $t2, $zero, .L808FFF48     
/* 02FF0 808FFF30 860B01A4 */  lh      $t3, 0x01A4($s0)           ## 000001A4
/* 02FF4 808FFF34 0C2400B3 */  jal     func_809002CC              
/* 02FF8 808FFF38 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02FFC 808FFF3C 10000008 */  beq     $zero, $zero, .L808FFF60   
/* 03000 808FFF40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03004 808FFF44 860B01A4 */  lh      $t3, 0x01A4($s0)           ## 000001A4
.L808FFF48:
/* 03008 808FFF48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0300C 808FFF4C 55600004 */  bnel    $t3, $zero, .L808FFF60     
/* 03010 808FFF50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03014 808FFF54 0C23FF3F */  jal     func_808FFCFC              
/* 03018 808FFF58 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0301C 808FFF5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L808FFF60:
/* 03020 808FFF60 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03024 808FFF64 0C23FEB2 */  jal     func_808FFAC8              
/* 03028 808FFF68 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0302C 808FFF6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03030 808FFF70 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03034 808FFF74 0C23FEEF */  jal     func_808FFBBC              
/* 03038 808FFF78 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0303C 808FFF7C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03040 808FFF80 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03044 808FFF84 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03048 808FFF88 03E00008 */  jr      $ra                        
/* 0304C 808FFF8C 00000000 */  nop
