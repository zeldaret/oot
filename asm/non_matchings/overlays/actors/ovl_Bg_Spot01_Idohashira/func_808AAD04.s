glabel func_808AAD04
/* 00024 808AAD04 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00028 808AAD08 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0002C 808AAD0C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00030 808AAD10 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00034 808AAD14 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00038 808AAD18 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0003C 808AAD1C 2406003C */  addiu   $a2, $zero, 0x003C         ## $a2 = 0000003C
/* 00040 808AAD20 240728AA */  addiu   $a3, $zero, 0x28AA         ## $a3 = 000028AA
/* 00044 808AAD24 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00048 808AAD28 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 0004C 808AAD2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00050 808AAD30 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00054 808AAD34 03E00008 */  jr      $ra                        
/* 00058 808AAD38 00000000 */  nop


