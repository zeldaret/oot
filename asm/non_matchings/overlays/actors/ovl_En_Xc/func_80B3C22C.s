glabel func_80B3C22C
/* 0004C 80B3C22C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00050 80B3C230 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00054 80B3C234 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00058 80B3C238 248602C0 */  addiu   $a2, $a0, 0x02C0           ## $a2 = 000002C0
/* 0005C 80B3C23C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000002C0
/* 00060 80B3C240 0C0189B7 */  jal     Collider_UpdateCylinder
              
/* 00064 80B3C244 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00068 80B3C248 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0006C 80B3C24C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00070 80B3C250 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00074 80B3C254 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00078 80B3C258 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOC
/* 0007C 80B3C25C 00812821 */  addu    $a1, $a0, $at              
/* 00080 80B3C260 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00084 80B3C264 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00088 80B3C268 03E00008 */  jr      $ra                        
/* 0008C 80B3C26C 00000000 */  nop
