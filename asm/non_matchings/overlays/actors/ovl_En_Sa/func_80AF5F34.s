glabel func_80AF5F34
/* 009D4 80AF5F34 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009D8 80AF5F38 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 009DC 80AF5F3C 84A200A4 */  lh      $v0, 0x00A4($a1)           ## 000000A4
/* 009E0 80AF5F40 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
/* 009E4 80AF5F44 8CA81C44 */  lw      $t0, 0x1C44($a1)           ## 00001C44
/* 009E8 80AF5F48 14410008 */  bne     $v0, $at, .L80AF5F6C       
/* 009EC 80AF5F4C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 009F0 80AF5F50 8C8F0190 */  lw      $t7, 0x0190($a0)           ## 00000190
/* 009F4 80AF5F54 3C0E80AF */  lui     $t6, %hi(func_80AF68E4)    ## $t6 = 80AF0000
/* 009F8 80AF5F58 25CE68E4 */  addiu   $t6, $t6, %lo(func_80AF68E4) ## $t6 = 80AF68E4
/* 009FC 80AF5F5C 15CF0003 */  bne     $t6, $t7, .L80AF5F6C       
/* 00A00 80AF5F60 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 00A04 80AF5F64 10000001 */  beq     $zero, $zero, .L80AF5F6C   
/* 00A08 80AF5F68 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
.L80AF5F6C:
/* 00A0C 80AF5F6C 24030056 */  addiu   $v1, $zero, 0x0056         ## $v1 = 00000056
/* 00A10 80AF5F70 14620008 */  bne     $v1, $v0, .L80AF5F94       
/* 00A14 80AF5F74 00000000 */  nop
/* 00A18 80AF5F78 8C990154 */  lw      $t9, 0x0154($a0)           ## 00000154
/* 00A1C 80AF5F7C 3C180601 */  lui     $t8, %hi(D_0600BAEC)                ## $t8 = 06010000
/* 00A20 80AF5F80 2718BAEC */  addiu   $t8, $t8, %lo(D_0600BAEC)           ## $t8 = 0600BAEC
/* 00A24 80AF5F84 17190003 */  bne     $t8, $t9, .L80AF5F94       
/* 00A28 80AF5F88 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
/* 00A2C 80AF5F8C 10000001 */  beq     $zero, $zero, .L80AF5F94   
/* 00A30 80AF5F90 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
.L80AF5F94:
/* 00A34 80AF5F94 1462000C */  bne     $v1, $v0, .L80AF5FC8       
/* 00A38 80AF5F98 00000000 */  nop
/* 00A3C 80AF5F9C 8C8A0190 */  lw      $t2, 0x0190($a0)           ## 00000190
/* 00A40 80AF5FA0 3C0980AF */  lui     $t1, %hi(func_80AF6448)    ## $t1 = 80AF0000
/* 00A44 80AF5FA4 25296448 */  addiu   $t1, $t1, %lo(func_80AF6448) ## $t1 = 80AF6448
/* 00A48 80AF5FA8 152A0007 */  bne     $t1, $t2, .L80AF5FC8       
/* 00A4C 80AF5FAC 00000000 */  nop
/* 00A50 80AF5FB0 8C8C0154 */  lw      $t4, 0x0154($a0)           ## 00000154
/* 00A54 80AF5FB4 3C0B0601 */  lui     $t3, %hi(D_0600C500)                ## $t3 = 06010000
/* 00A58 80AF5FB8 256BC500 */  addiu   $t3, $t3, %lo(D_0600C500)           ## $t3 = 0600C500
/* 00A5C 80AF5FBC 156C0002 */  bne     $t3, $t4, .L80AF5FC8       
/* 00A60 80AF5FC0 00000000 */  nop
/* 00A64 80AF5FC4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
.L80AF5FC8:
/* 00A68 80AF5FC8 5462000D */  bnel    $v1, $v0, .L80AF6000       
/* 00A6C 80AF5FCC 8D090024 */  lw      $t1, 0x0024($t0)           ## 00000024
/* 00A70 80AF5FD0 8C8E0190 */  lw      $t6, 0x0190($a0)           ## 00000190
/* 00A74 80AF5FD4 3C0D80AF */  lui     $t5, %hi(func_80AF68E4)    ## $t5 = 80AF0000
/* 00A78 80AF5FD8 25AD68E4 */  addiu   $t5, $t5, %lo(func_80AF68E4) ## $t5 = 80AF68E4
/* 00A7C 80AF5FDC 55AE0008 */  bnel    $t5, $t6, .L80AF6000       
/* 00A80 80AF5FE0 8D090024 */  lw      $t1, 0x0024($t0)           ## 00000024
/* 00A84 80AF5FE4 8C980154 */  lw      $t8, 0x0154($a0)           ## 00000154
/* 00A88 80AF5FE8 3C0F0600 */  lui     $t7, %hi(D_06001D50)                ## $t7 = 06000000
/* 00A8C 80AF5FEC 25EF1D50 */  addiu   $t7, $t7, %lo(D_06001D50)           ## $t7 = 06001D50
/* 00A90 80AF5FF0 55F80003 */  bnel    $t7, $t8, .L80AF6000       
/* 00A94 80AF5FF4 8D090024 */  lw      $t1, 0x0024($t0)           ## 00000024
/* 00A98 80AF5FF8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00A9C 80AF5FFC 8D090024 */  lw      $t1, 0x0024($t0)           ## 00000024
.L80AF6000:
/* 00AA0 80AF6000 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00AA4 80AF6004 44812000 */  mtc1    $at, $f4                   ## $f4 = 4.00
/* 00AA8 80AF6008 AC8901F8 */  sw      $t1, 0x01F8($a0)           ## 000001F8
/* 00AAC 80AF600C 8D190028 */  lw      $t9, 0x0028($t0)           ## 00000028
/* 00AB0 80AF6010 248501E0 */  addiu   $a1, $a0, 0x01E0           ## $a1 = 000001E0
/* 00AB4 80AF6014 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00AB8 80AF6018 AC9901FC */  sw      $t9, 0x01FC($a0)           ## 000001FC
/* 00ABC 80AF601C 8D09002C */  lw      $t1, 0x002C($t0)           ## 0000002C
/* 00AC0 80AF6020 E48401F4 */  swc1    $f4, 0x01F4($a0)           ## 000001F4
/* 00AC4 80AF6024 0C00D285 */  jal     func_80034A14              
/* 00AC8 80AF6028 AC890200 */  sw      $t1, 0x0200($a0)           ## 00000200
/* 00ACC 80AF602C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AD0 80AF6030 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AD4 80AF6034 03E00008 */  jr      $ra                        
/* 00AD8 80AF6038 00000000 */  nop
