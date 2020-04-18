glabel func_808B02D0
/* 00000 808B02D0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00004 808B02D4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00008 808B02D8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0000C 808B02DC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00010 808B02E0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00014 808B02E4 24C50164 */  addiu   $a1, $a2, 0x0164           ## $a1 = 00000164
/* 00018 808B02E8 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 0001C 808B02EC 0C016EFE */  jal     Collider_InitJntSph              
/* 00020 808B02F0 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00024 808B02F4 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00028 808B02F8 3C07808B */  lui     $a3, %hi(D_808B089C)       ## $a3 = 808B0000
/* 0002C 808B02FC 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00030 808B0300 24CE0184 */  addiu   $t6, $a2, 0x0184           ## $t6 = 00000184
/* 00034 808B0304 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00038 808B0308 24E7089C */  addiu   $a3, $a3, %lo(D_808B089C)  ## $a3 = 808B089C
/* 0003C 808B030C 0C017014 */  jal     Collider_SetJntSph              
/* 00040 808B0310 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00044 808B0314 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00048 808B0318 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0004C 808B031C 03E00008 */  jr      $ra                        
/* 00050 808B0320 00000000 */  nop
