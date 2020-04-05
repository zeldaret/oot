glabel func_80B0813C
/* 00BFC 80B0813C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00C00 80B08140 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 00C04 80B08144 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C08 80B08148 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 00C0C 80B0814C AFA60040 */  sw      $a2, 0x0040($sp)           
/* 00C10 80B08150 14A10022 */  bne     $a1, $at, .L80B081DC       
/* 00C14 80B08154 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 00C18 80B08158 8FA50048 */  lw      $a1, 0x0048($sp)           
/* 00C1C 80B0815C 3C0480B1 */  lui     $a0, %hi(D_80B0B49C)       ## $a0 = 80B10000
/* 00C20 80B08160 2484B49C */  addiu   $a0, $a0, %lo(D_80B0B49C)  ## $a0 = 80B0B49C
/* 00C24 80B08164 0C0346BD */  jal     Matrix_MultVec3f              
/* 00C28 80B08168 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
/* 00C2C 80B0816C 8FAE0048 */  lw      $t6, 0x0048($sp)           
/* 00C30 80B08170 3C0680B1 */  lui     $a2, %hi(D_80B0B550)       ## $a2 = 80B10000
/* 00C34 80B08174 24C6B550 */  addiu   $a2, $a2, %lo(D_80B0B550)  ## $a2 = 80B0B550
/* 00C38 80B08178 85CF001C */  lh      $t7, 0x001C($t6)           ## 0000001C
/* 00C3C 80B0817C 8FB80038 */  lw      $t8, 0x0038($sp)           
/* 00C40 80B08180 27A40020 */  addiu   $a0, $sp, 0x0020           ## $a0 = FFFFFFE8
/* 00C44 80B08184 51E00016 */  beql    $t7, $zero, .L80B081E0     
/* 00C48 80B08188 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C4C 80B0818C 8F050000 */  lw      $a1, 0x0000($t8)           ## 00000000
/* 00C50 80B08190 2407081F */  addiu   $a3, $zero, 0x081F         ## $a3 = 0000081F
/* 00C54 80B08194 0C031AB1 */  jal     Graph_OpenDisps              
/* 00C58 80B08198 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00C5C 80B0819C 8FA80030 */  lw      $t0, 0x0030($sp)           
/* 00C60 80B081A0 3C0A80B1 */  lui     $t2, %hi(D_80B0A3C0)       ## $t2 = 80B10000
/* 00C64 80B081A4 254AA3C0 */  addiu   $t2, $t2, %lo(D_80B0A3C0)  ## $t2 = 80B0A3C0
/* 00C68 80B081A8 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 00C6C 80B081AC 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 00C70 80B081B0 3C0680B1 */  lui     $a2, %hi(D_80B0B560)       ## $a2 = 80B10000
/* 00C74 80B081B4 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 00C78 80B081B8 AD1902C0 */  sw      $t9, 0x02C0($t0)           ## 000002C0
/* 00C7C 80B081BC AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
/* 00C80 80B081C0 AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 00C84 80B081C4 8FAB0038 */  lw      $t3, 0x0038($sp)           
/* 00C88 80B081C8 24C6B560 */  addiu   $a2, $a2, %lo(D_80B0B560)  ## $a2 = 80B0B560
/* 00C8C 80B081CC 27A40020 */  addiu   $a0, $sp, 0x0020           ## $a0 = FFFFFFE8
/* 00C90 80B081D0 24070821 */  addiu   $a3, $zero, 0x0821         ## $a3 = 00000821
/* 00C94 80B081D4 0C031AD5 */  jal     Graph_CloseDisps              
/* 00C98 80B081D8 8D650000 */  lw      $a1, 0x0000($t3)           ## 00000000
.L80B081DC:
/* 00C9C 80B081DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B081E0:
/* 00CA0 80B081E0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00CA4 80B081E4 03E00008 */  jr      $ra                        
/* 00CA8 80B081E8 00000000 */  nop


