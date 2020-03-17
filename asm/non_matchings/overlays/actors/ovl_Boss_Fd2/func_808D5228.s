glabel func_808D5228
/* 02BB8 808D5228 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02BBC 808D522C 24010023 */  addiu   $at, $zero, 0x0023         ## $at = 00000023
/* 02BC0 808D5230 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02BC4 808D5234 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02BC8 808D5238 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02BCC 808D523C AFA60020 */  sw      $a2, 0x0020($sp)           
/* 02BD0 808D5240 14A1001A */  bne     $a1, $at, .L808D52AC       
/* 02BD4 808D5244 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 02BD8 808D5248 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 02BDC 808D524C 3C04808D */  lui     $a0, %hi(D_808D620C)       ## $a0 = 808D0000
/* 02BE0 808D5250 2484620C */  addiu   $a0, $a0, %lo(D_808D620C)  ## $a0 = 808D620C
/* 02BE4 808D5254 0C0346BD */  jal     Matrix_MultVec3f              
/* 02BE8 808D5258 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
/* 02BEC 808D525C 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 02BF0 808D5260 3C04808D */  lui     $a0, %hi(D_808D6218)       ## $a0 = 808D0000
/* 02BF4 808D5264 24846218 */  addiu   $a0, $a0, %lo(D_808D6218)  ## $a0 = 808D6218
/* 02BF8 808D5268 0C0346BD */  jal     Matrix_MultVec3f              
/* 02BFC 808D526C 24A50210 */  addiu   $a1, $a1, 0x0210           ## $a1 = 00000210
/* 02C00 808D5270 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 02C04 808D5274 3C04808D */  lui     $a0, %hi(D_808D6224)       ## $a0 = 808D0000
/* 02C08 808D5278 24846224 */  addiu   $a0, $a0, %lo(D_808D6224)  ## $a0 = 808D6224
/* 02C0C 808D527C 0C0346BD */  jal     Matrix_MultVec3f              
/* 02C10 808D5280 24A51044 */  addiu   $a1, $a1, 0x1044           ## $a1 = 00001044
/* 02C14 808D5284 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 02C18 808D5288 3C04808D */  lui     $a0, %hi(D_808D6230)       ## $a0 = 808D0000
/* 02C1C 808D528C 24846230 */  addiu   $a0, $a0, %lo(D_808D6230)  ## $a0 = 808D6230
/* 02C20 808D5290 0C0346BD */  jal     Matrix_MultVec3f              
/* 02C24 808D5294 24A511E0 */  addiu   $a1, $a1, 0x11E0           ## $a1 = 000011E0
/* 02C28 808D5298 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 02C2C 808D529C 3C04808D */  lui     $a0, %hi(D_808D623C)       ## $a0 = 808D0000
/* 02C30 808D52A0 2484623C */  addiu   $a0, $a0, %lo(D_808D623C)  ## $a0 = 808D623C
/* 02C34 808D52A4 0C0346BD */  jal     Matrix_MultVec3f              
/* 02C38 808D52A8 24A5137C */  addiu   $a1, $a1, 0x137C           ## $a1 = 0000137C
.L808D52AC:
/* 02C3C 808D52AC 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 02C40 808D52B0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02C44 808D52B4 0C018A29 */  jal     func_800628A4              
/* 02C48 808D52B8 24A5141C */  addiu   $a1, $a1, 0x141C           ## $a1 = 0000141C
/* 02C4C 808D52BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02C50 808D52C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02C54 808D52C4 03E00008 */  jr      $ra                        
/* 02C58 808D52C8 00000000 */  nop


