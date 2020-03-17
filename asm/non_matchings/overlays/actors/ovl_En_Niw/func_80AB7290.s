glabel func_80AB7290
/* 01B10 80AB7290 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01B14 80AB7294 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01B18 80AB7298 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01B1C 80AB729C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01B20 80AB72A0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01B24 80AB72A4 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 01B28 80AB72A8 248400E8 */  addiu   $a0, $a0, 0x00E8           ## $a0 = 060000E8
/* 01B2C 80AB72AC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01B30 80AB72B0 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 01B34 80AB72B4 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 01B38 80AB72B8 468021A0 */  cvt.s.w $f6, $f4                   
/* 01B3C 80AB72BC 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01B40 80AB72C0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01B44 80AB72C4 24A500E8 */  addiu   $a1, $a1, 0x00E8           ## $a1 = 060000E8
/* 01B48 80AB72C8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01B4C 80AB72CC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01B50 80AB72D0 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01B54 80AB72D4 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 01B58 80AB72D8 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 01B5C 80AB72DC 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 01B60 80AB72E0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01B64 80AB72E4 3C0180AC */  lui     $at, %hi(D_80AB8B00)       ## $at = 80AC0000
/* 01B68 80AB72E8 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 01B6C 80AB72EC C42C8B00 */  lwc1    $f12, %lo(D_80AB8B00)($at) 
/* 01B70 80AB72F0 4600028D */  trunc.w.s $f10, $f0                  
/* 01B74 80AB72F4 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 01B78 80AB72F8 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 01B7C 80AB72FC 44818000 */  mtc1    $at, $f16                  ## $f16 = 4.00
/* 01B80 80AB7300 440F5000 */  mfc1    $t7, $f10                  
/* 01B84 80AB7304 3C1880AB */  lui     $t8, %hi(func_80AB7328)    ## $t8 = 80AB0000
/* 01B88 80AB7308 27187328 */  addiu   $t8, $t8, %lo(func_80AB7328) ## $t8 = 80AB7328
/* 01B8C 80AB730C AC580250 */  sw      $t8, 0x0250($v0)           ## 00000250
/* 01B90 80AB7310 E4500068 */  swc1    $f16, 0x0068($v0)          ## 00000068
/* 01B94 80AB7314 A44F02A0 */  sh      $t7, 0x02A0($v0)           ## 000002A0
/* 01B98 80AB7318 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01B9C 80AB731C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01BA0 80AB7320 03E00008 */  jr      $ra                        
/* 01BA4 80AB7324 00000000 */  nop


