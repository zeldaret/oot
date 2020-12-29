glabel func_80B49B60
/* 05B10 80B49B60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 05B14 80B49B64 AFA5001C */  sw      $a1, 0x001C($sp)
/* 05B18 80B49B68 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 05B1C 80B49B6C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 05B20 80B49B70 3C050601 */  lui     $a1, %hi(D_06016388)                ## $a1 = 06010000
/* 05B24 80B49B74 24A56388 */  addiu   $a1, $a1, %lo(D_06016388)           ## $a1 = 06016388
/* 05B28 80B49B78 AFA70018 */  sw      $a3, 0x0018($sp)
/* 05B2C 80B49B7C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 05B30 80B49B80 0C0294D3 */  jal     Animation_MorphToLoop
/* 05B34 80B49B84 3C06BF80 */  lui     $a2, 0xBF80                ## $a2 = BF800000
/* 05B38 80B49B88 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 05B3C 80B49B8C 00000000 */  nop
/* 05B40 80B49B90 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 05B44 80B49B94 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 05B48 80B49B98 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 05B4C 80B49B9C 44814000 */  mtc1    $at, $f8                   ## $f8 = 8.00
/* 05B50 80B49BA0 46040182 */  mul.s   $f6, $f0, $f4
/* 05B54 80B49BA4 8FA70018 */  lw      $a3, 0x0018($sp)
/* 05B58 80B49BA8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 05B5C 80B49BAC 3C0580B5 */  lui     $a1, %hi(func_80B48578)    ## $a1 = 80B50000
/* 05B60 80B49BB0 84F8001C */  lh      $t8, 0x001C($a3)           ## 0000001C
/* 05B64 80B49BB4 240B000C */  addiu   $t3, $zero, 0x000C         ## $t3 = 0000000C
/* 05B68 80B49BB8 24A58578 */  addiu   $a1, $a1, %lo(func_80B48578) ## $a1 = 80B48578
/* 05B6C 80B49BBC 46083280 */  add.s   $f10, $f6, $f8
/* 05B70 80B49BC0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 05B74 80B49BC4 4600540D */  trunc.w.s $f16, $f10
/* 05B78 80B49BC8 440F8000 */  mfc1    $t7, $f16
/* 05B7C 80B49BCC 1701000B */  bne     $t8, $at, .L80B49BFC
/* 05B80 80B49BD0 ACEF03F0 */  sw      $t7, 0x03F0($a3)           ## 000003F0
/* 05B84 80B49BD4 C7A0001C */  lwc1    $f0, 0x001C($sp)
/* 05B88 80B49BD8 01E0C825 */  or      $t9, $t7, $zero            ## $t9 = 00000000
/* 05B8C 80B49BDC 46000480 */  add.s   $f18, $f0, $f0
/* 05B90 80B49BE0 E4F20068 */  swc1    $f18, 0x0068($a3)          ## 00000068
/* 05B94 80B49BE4 07210003 */  bgez    $t9, .L80B49BF4
/* 05B98 80B49BE8 00194043 */  sra     $t0, $t9,  1
/* 05B9C 80B49BEC 27210001 */  addiu   $at, $t9, 0x0001           ## $at = 00000001
/* 05BA0 80B49BF0 00014043 */  sra     $t0, $at,  1
.L80B49BF4:
/* 05BA4 80B49BF4 10000003 */  beq     $zero, $zero, .L80B49C04
/* 05BA8 80B49BF8 ACE803F0 */  sw      $t0, 0x03F0($a3)           ## 000003F0
.L80B49BFC:
/* 05BAC 80B49BFC C7A4001C */  lwc1    $f4, 0x001C($sp)
/* 05BB0 80B49C00 E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
.L80B49C04:
/* 05BB4 80B49C04 84E900B6 */  lh      $t1, 0x00B6($a3)           ## 000000B6
/* 05BB8 80B49C08 ACE003E4 */  sw      $zero, 0x03E4($a3)         ## 000003E4
/* 05BBC 80B49C0C ACEB03DC */  sw      $t3, 0x03DC($a3)           ## 000003DC
/* 05BC0 80B49C10 252A3FFF */  addiu   $t2, $t1, 0x3FFF           ## $t2 = 00003FFF
/* 05BC4 80B49C14 0C2D1014 */  jal     func_80B44050
/* 05BC8 80B49C18 A4EA0032 */  sh      $t2, 0x0032($a3)           ## 00000032
/* 05BCC 80B49C1C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 05BD0 80B49C20 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 05BD4 80B49C24 03E00008 */  jr      $ra
/* 05BD8 80B49C28 00000000 */  nop
