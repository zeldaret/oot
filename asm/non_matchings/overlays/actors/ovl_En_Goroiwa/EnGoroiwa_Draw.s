glabel EnGoroiwa_Draw
/* 02188 80A4DE28 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0218C 80A4DE2C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02190 80A4DE30 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 02194 80A4DE34 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02198 80A4DE38 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0219C 80A4DE3C 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 021A0 80A4DE40 24A506B0 */  addiu   $a1, $a1, 0x06B0           ## $a1 = 060006B0
/* 021A4 80A4DE44 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 021A8 80A4DE48 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 021AC 80A4DE4C 03E00008 */  jr      $ra                        
/* 021B0 80A4DE50 00000000 */  nop
/* 021B4 80A4DE54 00000000 */  nop
/* 021B8 80A4DE58 00000000 */  nop
/* 021BC 80A4DE5C 00000000 */  nop

