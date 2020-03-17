glabel EnLightbox_Draw
/* 003E4 80A9EDB4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003E8 80A9EDB8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003EC 80A9EDBC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003F0 80A9EDC0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003F4 80A9EDC4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 003F8 80A9EDC8 0C00D498 */  jal     Draw_DListOpa
              
/* 003FC 80A9EDCC 24A50B70 */  addiu   $a1, $a1, 0x0B70           ## $a1 = 06000B70
/* 00400 80A9EDD0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00404 80A9EDD4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00408 80A9EDD8 03E00008 */  jr      $ra                        
/* 0040C 80A9EDDC 00000000 */  nop

