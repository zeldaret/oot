glabel func_809C0600
/* 00D60 809C0600 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00D64 809C0604 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00D68 809C0608 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D6C 809C060C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00D70 809C0610 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00D74 809C0614 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00D78 809C0618 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00D7C 809C061C 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
/* 00D80 809C0620 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00D84 809C0624 10400002 */  beq     $v0, $zero, .L809C0630     
/* 00D88 809C0628 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00D8C 809C062C A60E0196 */  sh      $t6, 0x0196($s0)           ## 00000196
.L809C0630:
/* 00D90 809C0630 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00D94 809C0634 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00D98 809C0638 2406038E */  addiu   $a2, $zero, 0x038E         ## $a2 = 0000038E
/* 00D9C 809C063C 00A12821 */  addu    $a1, $a1, $at              
/* 00DA0 809C0640 00052C00 */  sll     $a1, $a1, 16               
/* 00DA4 809C0644 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 00DA8 809C0648 00052C03 */  sra     $a1, $a1, 16               
/* 00DAC 809C064C 0C270023 */  jal     func_809C008C              
/* 00DB0 809C0650 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DB4 809C0654 860F0196 */  lh      $t7, 0x0196($s0)           ## 00000196
/* 00DB8 809C0658 55E00004 */  bnel    $t7, $zero, .L809C066C     
/* 00DBC 809C065C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00DC0 809C0660 0C26FE6F */  jal     func_809BF9BC              
/* 00DC4 809C0664 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DC8 809C0668 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809C066C:
/* 00DCC 809C066C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00DD0 809C0670 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00DD4 809C0674 03E00008 */  jr      $ra                        
/* 00DD8 809C0678 00000000 */  nop
