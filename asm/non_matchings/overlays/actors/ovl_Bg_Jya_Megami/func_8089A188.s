glabel func_8089A188
/* 00058 8089A188 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0005C 8089A18C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00060 8089A190 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00064 8089A194 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00068 8089A198 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0006C 8089A19C 24C50168 */  addiu   $a1, $a2, 0x0168           ## $a1 = 00000168
/* 00070 8089A1A0 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00074 8089A1A4 0C016EFE */  jal     Collider_InitJntSph              
/* 00078 8089A1A8 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 0007C 8089A1AC 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00080 8089A1B0 3C07808A */  lui     $a3, %hi(D_8089B004)       ## $a3 = 808A0000
/* 00084 8089A1B4 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00088 8089A1B8 24CE0188 */  addiu   $t6, $a2, 0x0188           ## $t6 = 00000188
/* 0008C 8089A1BC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00090 8089A1C0 24E7B004 */  addiu   $a3, $a3, %lo(D_8089B004)  ## $a3 = 8089B004
/* 00094 8089A1C4 0C017014 */  jal     Collider_SetJntSph              
/* 00098 8089A1C8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0009C 8089A1CC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 000A0 8089A1D0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 000A4 8089A1D4 03E00008 */  jr      $ra                        
/* 000A8 8089A1D8 00000000 */  nop
