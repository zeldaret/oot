glabel func_80AEAC10
/* 00000 80AEAC10 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 80AEAC14 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00008 80AEAC18 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0000C 80AEAC1C 248602B4 */  addiu   $a2, $a0, 0x02B4           ## $a2 = 000002B4
/* 00010 80AEAC20 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000002B4
/* 00014 80AEAC24 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00018 80AEAC28 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0001C 80AEAC2C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00020 80AEAC30 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00024 80AEAC34 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00028 80AEAC38 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0002C 80AEAC3C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00030 80AEAC40 00812821 */  addu    $a1, $a0, $at              
/* 00034 80AEAC44 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00038 80AEAC48 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0003C 80AEAC4C 03E00008 */  jr      $ra                        
/* 00040 80AEAC50 00000000 */  nop
