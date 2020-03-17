glabel BgSpot11Bakudankabe_Destroy
/* 00454 808B25D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00458 808B25D8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0045C 808B25DC 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00460 808B25E0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00464 808B25E4 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00468 808B25E8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0046C 808B25EC 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00470 808B25F0 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00474 808B25F4 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00478 808B25F8 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 0047C 808B25FC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00480 808B2600 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00484 808B2604 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00488 808B2608 24A50164 */  addiu   $a1, $a1, 0x0164           ## $a1 = 00000164
/* 0048C 808B260C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00490 808B2610 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00494 808B2614 03E00008 */  jr      $ra                        
/* 00498 808B2618 00000000 */  nop


