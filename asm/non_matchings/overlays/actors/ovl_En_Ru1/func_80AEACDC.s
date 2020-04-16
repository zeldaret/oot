glabel func_80AEACDC
/* 000CC 80AEACDC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 000D0 80AEACE0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000D4 80AEACE4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 000D8 80AEACE8 24860300 */  addiu   $a2, $a0, 0x0300           ## $a2 = 00000300
/* 000DC 80AEACEC 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000300
/* 000E0 80AEACF0 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 000E4 80AEACF4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 000E8 80AEACF8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 000EC 80AEACFC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 000F0 80AEAD00 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 000F4 80AEAD04 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 000F8 80AEAD08 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 000FC 80AEAD0C 00812821 */  addu    $a1, $a0, $at              
/* 00100 80AEAD10 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00104 80AEAD14 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00108 80AEAD18 03E00008 */  jr      $ra                        
/* 0010C 80AEAD1C 00000000 */  nop
