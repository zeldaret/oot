glabel func_80984D74
/* 00194 80984D74 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00198 80984D78 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0019C 80984D7C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 001A0 80984D80 24860284 */  addiu   $a2, $a0, 0x0284           ## $a2 = 00000284
/* 001A4 80984D84 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000284
/* 001A8 80984D88 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 001AC 80984D8C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 001B0 80984D90 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 001B4 80984D94 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 001B8 80984D98 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 001BC 80984D9C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 001C0 80984DA0 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 001C4 80984DA4 00812821 */  addu    $a1, $a0, $at              
/* 001C8 80984DA8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001CC 80984DAC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 001D0 80984DB0 03E00008 */  jr      $ra                        
/* 001D4 80984DB4 00000000 */  nop
