glabel func_80A31934
/* 00FC4 80A31934 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00FC8 80A31938 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00FCC 80A3193C 0C00BCCD */  jal     func_8002F334              
/* 00FD0 80A31940 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00FD4 80A31944 10400005 */  beq     $v0, $zero, .L80A3195C     
/* 00FD8 80A31948 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00FDC 80A3194C 3C0E80A3 */  lui     $t6, %hi(func_80A31FE0)    ## $t6 = 80A30000
/* 00FE0 80A31950 25CE1FE0 */  addiu   $t6, $t6, %lo(func_80A31FE0) ## $t6 = 80A31FE0
/* 00FE4 80A31954 0C28C352 */  jal     func_80A30D48              
/* 00FE8 80A31958 AC8E02B4 */  sw      $t6, 0x02B4($a0)           ## 000002B4
.L80A3195C:
/* 00FEC 80A3195C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00FF0 80A31960 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00FF4 80A31964 03E00008 */  jr      $ra                        
/* 00FF8 80A31968 00000000 */  nop
