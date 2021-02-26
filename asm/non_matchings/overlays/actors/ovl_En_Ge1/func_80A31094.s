glabel func_80A31094
/* 00724 80A31094 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00728 80A31098 3C0E80A3 */  lui     $t6, %hi(func_80A31000)    ## $t6 = 80A30000
/* 0072C 80A3109C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00730 80A310A0 25CE1000 */  addiu   $t6, $t6, %lo(func_80A31000) ## $t6 = 80A31000
/* 00734 80A310A4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00738 80A310A8 24066001 */  addiu   $a2, $zero, 0x6001         ## $a2 = 00006001
/* 0073C 80A310AC 0C28C31C */  jal     func_80A30C70              
/* 00740 80A310B0 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 00744 80A310B4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00748 80A310B8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0074C 80A310BC 03E00008 */  jr      $ra                        
/* 00750 80A310C0 00000000 */  nop
