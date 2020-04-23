glabel func_80A9D3C8
/* 00E78 80A9D3C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E7C 80A9D3CC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00E80 80A9D3D0 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00E84 80A9D3D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E88 80A9D3D8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00E8C 80A9D3DC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00E90 80A9D3E0 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00E94 80A9D3E4 0C0300C5 */  jal     Gameplay_ChangeCameraStatus              
/* 00E98 80A9D3E8 85C50214 */  lh      $a1, 0x0214($t6)           ## 00000214
/* 00E9C 80A9D3EC 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00EA0 80A9D3F0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00EA4 80A9D3F4 0C0300E1 */  jal     Gameplay_ClearCamera              
/* 00EA8 80A9D3F8 85E50212 */  lh      $a1, 0x0212($t7)           ## 00000212
/* 00EAC 80A9D3FC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00EB0 80A9D400 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00EB4 80A9D404 0C00B7D5 */  jal     func_8002DF54              
/* 00EB8 80A9D408 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00EBC 80A9D40C 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 00EC0 80A9D410 3C1880AA */  lui     $t8, %hi(func_80A9D42C)    ## $t8 = 80AA0000
/* 00EC4 80A9D414 2718D42C */  addiu   $t8, $t8, %lo(func_80A9D42C) ## $t8 = 80A9D42C
/* 00EC8 80A9D418 AF380190 */  sw      $t8, 0x0190($t9)           ## 00000190
/* 00ECC 80A9D41C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00ED0 80A9D420 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00ED4 80A9D424 03E00008 */  jr      $ra                        
/* 00ED8 80A9D428 00000000 */  nop
