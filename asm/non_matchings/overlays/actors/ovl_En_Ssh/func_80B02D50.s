glabel func_80B02D50
/* 00AE0 80B02D50 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00AE4 80B02D54 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00AE8 80B02D58 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00AEC 80B02D5C 8CAE009C */  lw      $t6, 0x009C($a1)           ## 0000009C
/* 00AF0 80B02D60 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00AF4 80B02D64 44811000 */  mtc1    $at, $f2                   ## $f2 = 0.50
/* 00AF8 80B02D68 31CF0008 */  andi    $t7, $t6, 0x0008           ## $t7 = 00000000
/* 00AFC 80B02D6C 11E00006 */  beq     $t7, $zero, .L80B02D88     
/* 00B00 80B02D70 46001006 */  mov.s   $f0, $f2                   
/* 00B04 80B02D74 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00B08 80B02D78 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 00B0C 80B02D7C 00000000 */  nop
/* 00B10 80B02D80 46041002 */  mul.s   $f0, $f2, $f4              
/* 00B14 80B02D84 00000000 */  nop
.L80B02D88:
/* 00B18 80B02D88 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00B1C 80B02D8C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00B20 80B02D90 44050000 */  mfc1    $a1, $f0                   
/* 00B24 80B02D94 3C063ECC */  lui     $a2, 0x3ECC                ## $a2 = 3ECC0000
/* 00B28 80B02D98 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3ECCCCCD
/* 00B2C 80B02D9C 3C07447A */  lui     $a3, 0x447A                ## $a3 = 447A0000
/* 00B30 80B02DA0 24840060 */  addiu   $a0, $a0, 0x0060           ## $a0 = 00000060
/* 00B34 80B02DA4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00B38 80B02DA8 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00B3C 80B02DAC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00B40 80B02DB0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00B44 80B02DB4 03E00008 */  jr      $ra                        
/* 00B48 80B02DB8 00000000 */  nop


