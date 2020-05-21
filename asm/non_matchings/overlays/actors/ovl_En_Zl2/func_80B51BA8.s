glabel func_80B51BA8
/* 03218 80B51BA8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0321C 80B51BAC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03220 80B51BB0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03224 80B51BB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03228 80B51BB8 0C2D3F33 */  jal     func_80B4FCCC              
/* 0322C 80B51BBC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03230 80B51BC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03234 80B51BC4 0C2D3B4B */  jal     func_80B4ED2C              
/* 03238 80B51BC8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0323C 80B51BCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03240 80B51BD0 0C2D453E */  jal     func_80B514F8              
/* 03244 80B51BD4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03248 80B51BD8 0C2D3B5D */  jal     func_80B4ED74              
/* 0324C 80B51BDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03250 80B51BE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03254 80B51BE4 0C2D45D7 */  jal     func_80B5175C              
/* 03258 80B51BE8 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 0325C 80B51BEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03260 80B51BF0 0C2D4652 */  jal     func_80B51948              
/* 03264 80B51BF4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03268 80B51BF8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0326C 80B51BFC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03270 80B51C00 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03274 80B51C04 03E00008 */  jr      $ra                        
/* 03278 80B51C08 00000000 */  nop
