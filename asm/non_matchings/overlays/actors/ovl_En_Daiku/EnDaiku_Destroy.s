glabel EnDaiku_Destroy
/* 003F8 809E2F28 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003FC 809E2F2C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00400 809E2F30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00404 809E2F34 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00408 809E2F38 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 0040C 809E2F3C 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
/* 00410 809E2F40 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00414 809E2F44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00418 809E2F48 03E00008 */  jr      $ra                        
/* 0041C 809E2F4C 00000000 */  nop
