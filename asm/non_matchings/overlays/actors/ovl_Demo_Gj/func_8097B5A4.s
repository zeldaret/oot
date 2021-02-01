glabel func_8097B5A4
/* 02C74 8097B5A4 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 02C78 8097B5A8 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 02C7C 8097B5AC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02C80 8097B5B0 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 02C84 8097B5B4 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 02C88 8097B5B8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02C8C 8097B5BC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 02C90 8097B5C0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02C94 8097B5C4 00A12821 */  addu    $a1, $a1, $at              
/* 02C98 8097B5C8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02C9C 8097B5CC AFA70044 */  sw      $a3, 0x0044($sp)           
/* 02CA0 8097B5D0 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 02CA4 8097B5D4 24C60184 */  addiu   $a2, $a2, 0x0184           ## $a2 = 00000184
/* 02CA8 8097B5D8 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 02CAC 8097B5DC 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 02CB0 8097B5E0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02CB4 8097B5E4 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 02CB8 8097B5E8 24C601D0 */  addiu   $a2, $a2, 0x01D0           ## $a2 = 000001D0
/* 02CBC 8097B5EC 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 02CC0 8097B5F0 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 02CC4 8097B5F4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02CC8 8097B5F8 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 02CCC 8097B5FC 24C6021C */  addiu   $a2, $a2, 0x021C           ## $a2 = 0000021C
/* 02CD0 8097B600 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02CD4 8097B604 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 02CD8 8097B608 03E00008 */  jr      $ra                        
/* 02CDC 8097B60C 00000000 */  nop
