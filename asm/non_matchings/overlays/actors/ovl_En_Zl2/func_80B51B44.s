glabel func_80B51B44
/* 031B4 80B51B44 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 031B8 80B51B48 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 031BC 80B51B4C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 031C0 80B51B50 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 031C4 80B51B54 0C2D3F33 */  jal     func_80B4FCCC              
/* 031C8 80B51B58 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 031CC 80B51B5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031D0 80B51B60 0C2D3B4B */  jal     func_80B4ED2C              
/* 031D4 80B51B64 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 031D8 80B51B68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031DC 80B51B6C 0C2D4527 */  jal     func_80B5149C              
/* 031E0 80B51B70 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 031E4 80B51B74 0C2D3B5D */  jal     func_80B4ED74              
/* 031E8 80B51B78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031EC 80B51B7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031F0 80B51B80 0C2D45B4 */  jal     func_80B516D0              
/* 031F4 80B51B84 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 031F8 80B51B88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031FC 80B51B8C 0C2D4652 */  jal     func_80B51948              
/* 03200 80B51B90 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03204 80B51B94 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03208 80B51B98 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0320C 80B51B9C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03210 80B51BA0 03E00008 */  jr      $ra                        
/* 03214 80B51BA4 00000000 */  nop


