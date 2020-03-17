glabel func_80AF259C
/* 0004C 80AF259C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00050 80AF25A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00054 80AF25A4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00058 80AF25A8 248602C8 */  addiu   $a2, $a0, 0x02C8           ## $a2 = 000002C8
/* 0005C 80AF25AC 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000002C8
/* 00060 80AF25B0 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00064 80AF25B4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00068 80AF25B8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0006C 80AF25BC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00070 80AF25C0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00074 80AF25C4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00078 80AF25C8 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 0007C 80AF25CC 00812821 */  addu    $a1, $a0, $at              
/* 00080 80AF25D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00084 80AF25D4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00088 80AF25D8 03E00008 */  jr      $ra                        
/* 0008C 80AF25DC 00000000 */  nop


