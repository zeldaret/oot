glabel BgSpot06Objects_Update
/* 00D50 808AF4D0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D54 808AF4D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D58 808AF4D8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00D5C 808AF4DC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00D60 808AF4E0 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 00D64 808AF4E4 0320F809 */  jalr    $ra, $t9                   
/* 00D68 808AF4E8 00000000 */  nop
/* 00D6C 808AF4EC 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00D70 808AF4F0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00D74 808AF4F4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00D78 808AF4F8 84EE001C */  lh      $t6, 0x001C($a3)           ## 0000001C
/* 00D7C 808AF4FC 24E60170 */  addiu   $a2, $a3, 0x0170           ## $a2 = 00000170
/* 00D80 808AF500 15C10004 */  bne     $t6, $at, .L808AF514       
/* 00D84 808AF504 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00D88 808AF508 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00D8C 808AF50C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00D90 808AF510 00812821 */  addu    $a1, $a0, $at              
.L808AF514:
/* 00D94 808AF514 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D98 808AF518 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D9C 808AF51C 03E00008 */  jr      $ra                        
/* 00DA0 808AF520 00000000 */  nop


