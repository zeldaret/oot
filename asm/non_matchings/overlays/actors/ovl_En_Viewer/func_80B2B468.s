glabel func_80B2B468
/* 01268 80B2B468 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0126C 80B2B46C 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 01270 80B2B470 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01274 80B2B474 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01278 80B2B478 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0127C 80B2B47C 14A10006 */  bne     $a1, $at, .L80B2B498       
/* 01280 80B2B480 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 01284 80B2B484 3C0480B3 */  lui     $a0, %hi(D_80B2CFD0)       ## $a0 = 80B30000
/* 01288 80B2B488 3C0580B3 */  lui     $a1, %hi(D_80B2D448)       ## $a1 = 80B30000
/* 0128C 80B2B48C 24A5D448 */  addiu   $a1, $a1, %lo(D_80B2D448)  ## $a1 = 80B2D448
/* 01290 80B2B490 0C0346BD */  jal     Matrix_MultVec3f              
/* 01294 80B2B494 2484CFD0 */  addiu   $a0, $a0, %lo(D_80B2CFD0)  ## $a0 = 80B2CFD0
.L80B2B498:
/* 01298 80B2B498 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0129C 80B2B49C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 012A0 80B2B4A0 03E00008 */  jr      $ra                        
/* 012A4 80B2B4A4 00000000 */  nop
