glabel func_80B51C0C
/* 0327C 80B51C0C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03280 80B51C10 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03284 80B51C14 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03288 80B51C18 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0328C 80B51C1C 0C2D3F33 */  jal     func_80B4FCCC              
/* 03290 80B51C20 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03294 80B51C24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03298 80B51C28 0C2D3B4B */  jal     func_80B4ED2C              
/* 0329C 80B51C2C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 032A0 80B51C30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 032A4 80B51C34 0C2D451B */  jal     func_80B5146C              
/* 032A8 80B51C38 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 032AC 80B51C3C 0C2D3B5D */  jal     func_80B4ED74              
/* 032B0 80B51C40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 032B4 80B51C44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 032B8 80B51C48 0C2D45F8 */  jal     func_80B517E0              
/* 032BC 80B51C4C 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 032C0 80B51C50 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 032C4 80B51C54 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 032C8 80B51C58 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 032CC 80B51C5C 03E00008 */  jr      $ra                        
/* 032D0 80B51C60 00000000 */  nop


