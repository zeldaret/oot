glabel BgTokiSwd_Update
/* 0033C 808BB17C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00340 808BB180 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00344 808BB184 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00348 808BB188 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0034C 808BB18C 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 00350 808BB190 0320F809 */  jalr    $ra, $t9                   
/* 00354 808BB194 00000000 */  nop
/* 00358 808BB198 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0035C 808BB19C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00360 808BB1A0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00364 808BB1A4 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00368 808BB1A8 00812821 */  addu    $a1, $a0, $at              
/* 0036C 808BB1AC 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00370 808BB1B0 24E60150 */  addiu   $a2, $a3, 0x0150           ## $a2 = 00000150
/* 00374 808BB1B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00378 808BB1B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0037C 808BB1BC 03E00008 */  jr      $ra                        
/* 00380 808BB1C0 00000000 */  nop


