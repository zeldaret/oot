glabel func_80B04280
/* 02010 80B04280 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02014 80B04284 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02018 80B04288 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0201C 80B0428C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 02020 80B04290 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 02024 80B04294 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02028 80B04298 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0202C 80B0429C AFA70024 */  sw      $a3, 0x0024($sp)           
/* 02030 80B042A0 0C018A29 */  jal     Collider_UpdateSpheres              
/* 02034 80B042A4 24A504C4 */  addiu   $a1, $a1, 0x04C4           ## $a1 = 000004C4
/* 02038 80B042A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0203C 80B042AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02040 80B042B0 03E00008 */  jr      $ra                        
/* 02044 80B042B4 00000000 */  nop
