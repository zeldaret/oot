glabel func_80A9D0C0
/* 00B70 80A9D0C0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00B74 80A9D0C4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00B78 80A9D0C8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00B7C 80A9D0CC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00B80 80A9D0D0 848E01E0 */  lh      $t6, 0x01E0($a0)           ## 000001E0
/* 00B84 80A9D0D4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B88 80A9D0D8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00B8C 80A9D0DC 15C1000B */  bne     $t6, $at, .L80A9D10C       
/* 00B90 80A9D0E0 260502A6 */  addiu   $a1, $s0, 0x02A6           ## $a1 = 000002A6
/* 00B94 80A9D0E4 3C0580AA */  lui     $a1, %hi(D_80A9D8F8)       ## $a1 = 80AA0000
/* 00B98 80A9D0E8 24A5D8F8 */  addiu   $a1, $a1, %lo(D_80A9D8F8)  ## $a1 = 80A9D8F8
/* 00B9C 80A9D0EC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00BA0 80A9D0F0 0C00D3B0 */  jal     func_80034EC0              
/* 00BA4 80A9D0F4 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00BA8 80A9D0F8 3C0F80AA */  lui     $t7, %hi(func_80A9D130)    ## $t7 = 80AA0000
/* 00BAC 80A9D0FC 25EFD130 */  addiu   $t7, $t7, %lo(func_80A9D130) ## $t7 = 80A9D130
/* 00BB0 80A9D100 A60001E0 */  sh      $zero, 0x01E0($s0)         ## 000001E0
/* 00BB4 80A9D104 10000005 */  beq     $zero, $zero, .L80A9D11C   
/* 00BB8 80A9D108 AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
.L80A9D10C:
/* 00BBC 80A9D10C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00BC0 80A9D110 260602BE */  addiu   $a2, $s0, 0x02BE           ## $a2 = 000002BE
/* 00BC4 80A9D114 0C00D3D5 */  jal     func_80034F54              
/* 00BC8 80A9D118 2407000C */  addiu   $a3, $zero, 0x000C         ## $a3 = 0000000C
.L80A9D11C:
/* 00BCC 80A9D11C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00BD0 80A9D120 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00BD4 80A9D124 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00BD8 80A9D128 03E00008 */  jr      $ra                        
/* 00BDC 80A9D12C 00000000 */  nop


