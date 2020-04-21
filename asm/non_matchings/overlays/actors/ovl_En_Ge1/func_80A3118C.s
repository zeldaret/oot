glabel func_80A3118C
/* 0081C 80A3118C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00820 80A31190 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00824 80A31194 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00828 80A31198 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0082C 80A3119C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00830 80A311A0 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 00834 80A311A4 24050022 */  addiu   $a1, $zero, 0x0022         ## $a1 = 00000022
/* 00838 80A311A8 14400002 */  bne     $v0, $zero, .L80A311B4     
/* 0083C 80A311AC 3046FFFF */  andi    $a2, $v0, 0xFFFF           ## $a2 = 00000000
/* 00840 80A311B0 24066019 */  addiu   $a2, $zero, 0x6019         ## $a2 = 00006019
.L80A311B4:
/* 00844 80A311B4 3C0E80A3 */  lui     $t6, %hi(func_80A31000)    ## $t6 = 80A30000
/* 00848 80A311B8 25CE1000 */  addiu   $t6, $t6, %lo(func_80A31000) ## $t6 = 80A31000
/* 0084C 80A311BC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00850 80A311C0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00854 80A311C4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00858 80A311C8 0C28C31C */  jal     func_80A30C70              
/* 0085C 80A311CC 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 00860 80A311D0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00864 80A311D4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00868 80A311D8 03E00008 */  jr      $ra                        
/* 0086C 80A311DC 00000000 */  nop
