glabel func_80A436DC
/* 009AC 80A436DC 3C0E8012 */  lui     $t6, %hi(gBitFlags+0x4c)
/* 009B0 80A436E0 3C0F8016 */  lui     $t7, %hi(gSaveContext+0xa4)
/* 009B4 80A436E4 8DEFE704 */  lw      $t7, %lo(gSaveContext+0xa4)($t7)
/* 009B8 80A436E8 8DCE716C */  lw      $t6, %lo(gBitFlags+0x4c)($t6)
/* 009BC 80A436EC AFA40000 */  sw      $a0, 0x0000($sp)           
/* 009C0 80A436F0 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 009C4 80A436F4 01CFC024 */  and     $t8, $t6, $t7              
/* 009C8 80A436F8 13000004 */  beq     $t8, $zero, .L80A4370C     
/* 009CC 80A436FC 2403300A */  addiu   $v1, $zero, 0x300A         ## $v1 = 0000300A
/* 009D0 80A43700 24033027 */  addiu   $v1, $zero, 0x3027         ## $v1 = 00003027
/* 009D4 80A43704 03E00008 */  jr      $ra                        
/* 009D8 80A43708 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00003027
.L80A4370C:
/* 009DC 80A4370C 03E00008 */  jr      $ra                        
/* 009E0 80A43710 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00003027
