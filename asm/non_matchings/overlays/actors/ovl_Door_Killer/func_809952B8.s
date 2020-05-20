glabel func_809952B8
/* 00668 809952B8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0066C 809952BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00670 809952C0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00674 809952C4 248601C8 */  addiu   $a2, $a0, 0x01C8           ## $a2 = 000001C8
/* 00678 809952C8 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000001C8
/* 0067C 809952CC AFA6001C */  sw      $a2, 0x001C($sp)           
/* 00680 809952D0 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 00684 809952D4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00688 809952D8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0068C 809952DC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00690 809952E0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00694 809952E4 00812821 */  addu    $a1, $a0, $at              
/* 00698 809952E8 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 0069C 809952EC 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 006A0 809952F0 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 006A4 809952F4 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 006A8 809952F8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 006AC 809952FC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 006B0 80995300 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 006B4 80995304 24C60220 */  addiu   $a2, $a2, 0x0220           ## $a2 = 00000220
/* 006B8 80995308 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006BC 8099530C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 006C0 80995310 03E00008 */  jr      $ra                        
/* 006C4 80995314 00000000 */  nop
