glabel EnHorseGanon_Destroy
/* 00414 80A68A74 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00418 80A68A78 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0041C 80A68A7C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00420 80A68A80 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00424 80A68A84 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00428 80A68A88 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0042C 80A68A8C 0C029A22 */  jal     func_800A6888              
/* 00430 80A68A90 24A50154 */  addiu   $a1, $a1, 0x0154           ## $a1 = 00000154
/* 00434 80A68A94 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00438 80A68A98 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0043C 80A68A9C 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00440 80A68AA0 24A501FC */  addiu   $a1, $a1, 0x01FC           ## $a1 = 000001FC
/* 00444 80A68AA4 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00448 80A68AA8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0044C 80A68AAC 0C016F32 */  jal     Collider_DestroyJntSph              
/* 00450 80A68AB0 24A50248 */  addiu   $a1, $a1, 0x0248           ## $a1 = 00000248
/* 00454 80A68AB4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00458 80A68AB8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0045C 80A68ABC 03E00008 */  jr      $ra                        
/* 00460 80A68AC0 00000000 */  nop
