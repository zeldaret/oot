glabel func_80B05FB0
/* 01720 80B05FB0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01724 80B05FB4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01728 80B05FB8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0172C 80B05FBC 8CAE009C */  lw      $t6, 0x009C($a1)           ## 0000009C
/* 01730 80B05FC0 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01734 80B05FC4 44811000 */  mtc1    $at, $f2                   ## $f2 = 0.50
/* 01738 80B05FC8 31CF0008 */  andi    $t7, $t6, 0x0008           ## $t7 = 00000000
/* 0173C 80B05FCC 11E00006 */  beq     $t7, $zero, .L80B05FE8     
/* 01740 80B05FD0 46001006 */  mov.s   $f0, $f2                   
/* 01744 80B05FD4 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 01748 80B05FD8 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 0174C 80B05FDC 00000000 */  nop
/* 01750 80B05FE0 46041002 */  mul.s   $f0, $f2, $f4              
/* 01754 80B05FE4 00000000 */  nop
.L80B05FE8:
/* 01758 80B05FE8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0175C 80B05FEC 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01760 80B05FF0 44050000 */  mfc1    $a1, $f0                   
/* 01764 80B05FF4 3C063ECC */  lui     $a2, 0x3ECC                ## $a2 = 3ECC0000
/* 01768 80B05FF8 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3ECCCCCD
/* 0176C 80B05FFC 3C07447A */  lui     $a3, 0x447A                ## $a3 = 447A0000
/* 01770 80B06000 24840060 */  addiu   $a0, $a0, 0x0060           ## $a0 = 00000060
/* 01774 80B06004 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01778 80B06008 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 0177C 80B0600C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01780 80B06010 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01784 80B06014 03E00008 */  jr      $ra                        
/* 01788 80B06018 00000000 */  nop


