glabel func_80A17894
/* 00384 80A17894 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00388 80A17898 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0038C 80A1789C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00390 80A178A0 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00394 80A178A4 24A59244 */  addiu   $a1, $a1, 0x9244           ## $a1 = 06009244
/* 00398 80A178A8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0039C 80A178AC 0C02947A */  jal     SkelAnimeChangeAnimationDefaultStop              
/* 003A0 80A178B0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 003A4 80A178B4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 003A8 80A178B8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 003AC 80A178BC 3C0E80A2 */  lui     $t6, %hi(func_80A187AC)    ## $t6 = 80A20000
/* 003B0 80A178C0 25CE87AC */  addiu   $t6, $t6, %lo(func_80A187AC) ## $t6 = 80A187AC
/* 003B4 80A178C4 ACCE0190 */  sw      $t6, 0x0190($a2)           ## 00000190
/* 003B8 80A178C8 E4C40068 */  swc1    $f4, 0x0068($a2)           ## 00000068
/* 003BC 80A178CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003C0 80A178D0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003C4 80A178D4 03E00008 */  jr      $ra                        
/* 003C8 80A178D8 00000000 */  nop


