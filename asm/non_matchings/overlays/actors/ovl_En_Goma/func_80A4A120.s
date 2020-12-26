glabel func_80A4A120
/* 01260 80A4A120 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01264 80A4A124 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01268 80A4A128 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0126C 80A4A12C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01270 80A4A130 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 01274 80A4A134 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01278 80A4A138 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0127C 80A4A13C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 01280 80A4A140 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 01284 80A4A144 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 01288 80A4A148 94EE0088 */  lhu     $t6, 0x0088($a3)           ## 00000088
/* 0128C 80A4A14C 24E40068 */  addiu   $a0, $a3, 0x0068           ## $a0 = 00000068
/* 01290 80A4A150 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 01294 80A4A154 51E00005 */  beql    $t7, $zero, .L80A4A16C     
/* 01298 80A4A158 84F802CC */  lh      $t8, 0x02CC($a3)           ## 000002CC
/* 0129C 80A4A15C 0C01E123 */  jal     Math_ApproachZeroF
              
/* 012A0 80A4A160 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 012A4 80A4A164 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 012A8 80A4A168 84F802CC */  lh      $t8, 0x02CC($a3)           ## 000002CC
.L80A4A16C:
/* 012AC 80A4A16C 57000004 */  bnel    $t8, $zero, .L80A4A180     
/* 012B0 80A4A170 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 012B4 80A4A174 0C2927A0 */  jal     func_80A49E80              
/* 012B8 80A4A178 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 012BC 80A4A17C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A4A180:
/* 012C0 80A4A180 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 012C4 80A4A184 03E00008 */  jr      $ra                        
/* 012C8 80A4A188 00000000 */  nop
