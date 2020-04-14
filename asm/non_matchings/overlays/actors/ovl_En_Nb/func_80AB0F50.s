glabel func_80AB0F50
/* 001C0 80AB0F50 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 001C4 80AB0F54 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001C8 80AB0F58 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 001CC 80AB0F5C 24860294 */  addiu   $a2, $a0, 0x0294           ## $a2 = 00000294
/* 001D0 80AB0F60 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000294
/* 001D4 80AB0F64 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 001D8 80AB0F68 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 001DC 80AB0F6C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 001E0 80AB0F70 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 001E4 80AB0F74 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 001E8 80AB0F78 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 001EC 80AB0F7C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 001F0 80AB0F80 00812821 */  addu    $a1, $a0, $at              
/* 001F4 80AB0F84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001F8 80AB0F88 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 001FC 80AB0F8C 03E00008 */  jr      $ra                        
/* 00200 80AB0F90 00000000 */  nop
