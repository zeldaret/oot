glabel func_80A1C790
/* 01DF0 80A1C790 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01DF4 80A1C794 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01DF8 80A1C798 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01DFC 80A1C79C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01E00 80A1C7A0 94C5010E */  lhu     $a1, 0x010E($a2)           ## 0000010E
/* 01E04 80A1C7A4 0C042DA0 */  jal     func_8010B680              
/* 01E08 80A1C7A8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01E0C 80A1C7AC 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01E10 80A1C7B0 3C0E80A2 */  lui     $t6, %hi(func_80A1C7CC)    ## $t6 = 80A20000
/* 01E14 80A1C7B4 25CEC7CC */  addiu   $t6, $t6, %lo(func_80A1C7CC) ## $t6 = 80A1C7CC
/* 01E18 80A1C7B8 ACCE0354 */  sw      $t6, 0x0354($a2)           ## 00000354
/* 01E1C 80A1C7BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E20 80A1C7C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01E24 80A1C7C4 03E00008 */  jr      $ra                        
/* 01E28 80A1C7C8 00000000 */  nop


