glabel func_80B3F3F8
/* 03218 80B3F3F8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0321C 80B3F3FC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03220 80B3F400 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 03224 80B3F404 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 03228 80B3F408 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0322C 80B3F40C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03230 80B3F410 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03234 80B3F414 34211D60 */  ori     $at, $at, 0x1D60           ## $at = 00011D60
/* 03238 80B3F418 3C0680B4 */  lui     $a2, %hi(D_80B42DA0)       ## $a2 = 80B40000
/* 0323C 80B3F41C 24C62DA0 */  addiu   $a2, $a2, %lo(D_80B42DA0)  ## $a2 = 80B42DA0
/* 03240 80B3F420 27A70018 */  addiu   $a3, $sp, 0x0018           ## $a3 = FFFFFFF8
/* 03244 80B3F424 0C029B84 */  jal     SkinMatrix_Vec3fMtxFMultXYZW              
/* 03248 80B3F428 00812021 */  addu    $a0, $a0, $at              
/* 0324C 80B3F42C 3C0480B4 */  lui     $a0, %hi(D_80B42DA0)       ## $a0 = 80B40000
/* 03250 80B3F430 24842DA0 */  addiu   $a0, $a0, %lo(D_80B42DA0)  ## $a0 = 80B42DA0
/* 03254 80B3F434 0C01E245 */  jal     func_80078914              
/* 03258 80B3F438 24052889 */  addiu   $a1, $zero, 0x2889         ## $a1 = 00002889
/* 0325C 80B3F43C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03260 80B3F440 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03264 80B3F444 03E00008 */  jr      $ra                        
/* 03268 80B3F448 00000000 */  nop
