glabel func_80A31F9C
/* 0162C 80A31F9C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01630 80A31FA0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01634 80A31FA4 948E02AC */  lhu     $t6, 0x02AC($a0)           ## 000002AC
/* 01638 80A31FA8 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 0163C 80A31FAC A48F02AC */  sh      $t7, 0x02AC($a0)           ## 000002AC
/* 01640 80A31FB0 0C00BCCD */  jal     func_8002F334              
/* 01644 80A31FB4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01648 80A31FB8 10400005 */  beq     $v0, $zero, .L80A31FD0     
/* 0164C 80A31FBC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01650 80A31FC0 3C1880A3 */  lui     $t8, %hi(func_80A31FE0)    ## $t8 = 80A30000
/* 01654 80A31FC4 27181FE0 */  addiu   $t8, $t8, %lo(func_80A31FE0) ## $t8 = 80A31FE0
/* 01658 80A31FC8 0C28C352 */  jal     func_80A30D48              
/* 0165C 80A31FCC AC9802B4 */  sw      $t8, 0x02B4($a0)           ## 000002B4
.L80A31FD0:
/* 01660 80A31FD0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01664 80A31FD4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01668 80A31FD8 03E00008 */  jr      $ra                        
/* 0166C 80A31FDC 00000000 */  nop
