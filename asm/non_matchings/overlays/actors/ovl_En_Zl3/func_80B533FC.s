glabel func_80B533FC
/* 0004C 80B533FC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00050 80B53400 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00054 80B53404 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00058 80B53408 24860378 */  addiu   $a2, $a0, 0x0378           ## $a2 = 00000378
/* 0005C 80B5340C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000378
/* 00060 80B53410 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00064 80B53414 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00068 80B53418 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0006C 80B5341C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00070 80B53420 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00074 80B53424 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00078 80B53428 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 0007C 80B5342C 00812821 */  addu    $a1, $a0, $at              
/* 00080 80B53430 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00084 80B53434 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00088 80B53438 03E00008 */  jr      $ra                        
/* 0008C 80B5343C 00000000 */  nop
