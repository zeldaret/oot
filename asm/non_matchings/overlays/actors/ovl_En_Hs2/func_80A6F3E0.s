glabel func_80A6F3E0
/* 00440 80A6F3E0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00444 80A6F3E4 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 00448 80A6F3E8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0044C 80A6F3EC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00450 80A6F3F0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00454 80A6F3F4 14A10006 */  bne     $a1, $at, .L80A6F410       
/* 00458 80A6F3F8 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 0045C 80A6F3FC 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00460 80A6F400 3C0480A7 */  lui     $a0, %hi(D_80A6F4CC)       ## $a0 = 80A70000
/* 00464 80A6F404 2484F4CC */  addiu   $a0, $a0, %lo(D_80A6F4CC)  ## $a0 = 80A6F4CC
/* 00468 80A6F408 0C0346BD */  jal     Matrix_MultVec3f              
/* 0046C 80A6F40C 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80A6F410:
/* 00470 80A6F410 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00474 80A6F414 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00478 80A6F418 03E00008 */  jr      $ra                        
/* 0047C 80A6F41C 00000000 */  nop


