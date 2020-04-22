glabel func_80B05254
/* 009C4 80B05254 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 009C8 80B05258 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 009CC 80B0525C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 009D0 80B05260 24860194 */  addiu   $a2, $a0, 0x0194           ## $a2 = 00000194
/* 009D4 80B05264 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000194
/* 009D8 80B05268 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 009DC 80B0526C AFA6001C */  sw      $a2, 0x001C($sp)           
/* 009E0 80B05270 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 009E4 80B05274 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 009E8 80B05278 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 009EC 80B0527C 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 009F0 80B05280 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 009F4 80B05284 00812821 */  addu    $a1, $a0, $at              
/* 009F8 80B05288 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 009FC 80B0528C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00A00 80B05290 03E00008 */  jr      $ra                        
/* 00A04 80B05294 00000000 */  nop
