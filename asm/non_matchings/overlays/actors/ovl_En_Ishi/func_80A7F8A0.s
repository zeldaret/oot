glabel func_80A7F8A0
/* 01440 80A7F8A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01444 80A7F8A4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01448 80A7F8A8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0144C 80A7F8AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01450 80A7F8B0 3C050501 */  lui     $a1, 0x0501                ## $a1 = 05010000
/* 01454 80A7F8B4 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 01458 80A7F8B8 24A5A880 */  addiu   $a1, $a1, 0xA880           ## $a1 = 0500A880
/* 0145C 80A7F8BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01460 80A7F8C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01464 80A7F8C4 03E00008 */  jr      $ra                        
/* 01468 80A7F8C8 00000000 */  nop
