glabel func_8097B080
/* 02750 8097B080 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 02754 8097B084 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 02758 8097B088 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0275C 8097B08C 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 02760 8097B090 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 02764 8097B094 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02768 8097B098 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0276C 8097B09C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02770 8097B0A0 00A12821 */  addu    $a1, $a1, $at              
/* 02774 8097B0A4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02778 8097B0A8 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 0277C 8097B0AC 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 02780 8097B0B0 24C60184 */  addiu   $a2, $a2, 0x0184           ## $a2 = 00000184
/* 02784 8097B0B4 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 02788 8097B0B8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 0278C 8097B0BC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02790 8097B0C0 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 02794 8097B0C4 24C601D0 */  addiu   $a2, $a2, 0x01D0           ## $a2 = 000001D0
/* 02798 8097B0C8 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 0279C 8097B0CC 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 027A0 8097B0D0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 027A4 8097B0D4 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 027A8 8097B0D8 24C6021C */  addiu   $a2, $a2, 0x021C           ## $a2 = 0000021C
/* 027AC 8097B0DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 027B0 8097B0E0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 027B4 8097B0E4 03E00008 */  jr      $ra                        
/* 027B8 8097B0E8 00000000 */  nop


