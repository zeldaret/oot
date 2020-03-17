glabel func_80A895F4
/* 007E4 80A895F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007E8 80A895F8 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 007EC 80A895FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007F0 80A89600 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 007F4 80A89604 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 007F8 80A89608 14A10006 */  bne     $a1, $at, .L80A89624       
/* 007FC 80A8960C AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00800 80A89610 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00804 80A89614 3C0480A9 */  lui     $a0, %hi(D_80A896DC)       ## $a0 = 80A90000
/* 00808 80A89618 248496DC */  addiu   $a0, $a0, %lo(D_80A896DC)  ## $a0 = 80A896DC
/* 0080C 80A8961C 0C0346BD */  jal     Matrix_MultVec3f              
/* 00810 80A89620 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80A89624:
/* 00814 80A89624 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00818 80A89628 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0081C 80A8962C 03E00008 */  jr      $ra                        
/* 00820 80A89630 00000000 */  nop


