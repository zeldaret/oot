glabel func_80B033BC
/* 0114C 80B033BC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01150 80B033C0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01154 80B033C4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01158 80B033C8 248602FC */  addiu   $a2, $a0, 0x02FC           ## $a2 = 000002FC
/* 0115C 80B033CC 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000002FC
/* 01160 80B033D0 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 01164 80B033D4 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 01168 80B033D8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0116C 80B033DC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01170 80B033E0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01174 80B033E4 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 01178 80B033E8 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 0117C 80B033EC 00812821 */  addu    $a1, $a0, $at              
/* 01180 80B033F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01184 80B033F4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01188 80B033F8 03E00008 */  jr      $ra                        
/* 0118C 80B033FC 00000000 */  nop
