glabel func_80A6F1A4
/* 00204 80A6F1A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00208 80A6F1A8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0020C 80A6F1AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00210 80A6F1B0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00214 80A6F1B4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00218 80A6F1B8 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 0021C 80A6F1BC 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 00220 80A6F1C0 14400002 */  bne     $v0, $zero, .L80A6F1CC     
/* 00224 80A6F1C4 3046FFFF */  andi    $a2, $v0, 0xFFFF           ## $a2 = 00000000
/* 00228 80A6F1C8 24065069 */  addiu   $a2, $zero, 0x5069         ## $a2 = 00005069
.L80A6F1CC:
/* 0022C 80A6F1CC 3C0780A7 */  lui     $a3, %hi(func_80A6F164)    ## $a3 = 80A70000
/* 00230 80A6F1D0 24E7F164 */  addiu   $a3, $a3, %lo(func_80A6F164) ## $a3 = 80A6F164
/* 00234 80A6F1D4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00238 80A6F1D8 0C29BC2D */  jal     func_80A6F0B4              
/* 0023C 80A6F1DC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00240 80A6F1E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00244 80A6F1E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00248 80A6F1E8 03E00008 */  jr      $ra                        
/* 0024C 80A6F1EC 00000000 */  nop
