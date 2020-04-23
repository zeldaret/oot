glabel EnFu_Destroy
/* 00114 80A1D924 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00118 80A1D928 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0011C 80A1D92C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00120 80A1D930 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00124 80A1D934 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00128 80A1D938 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 0012C 80A1D93C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00130 80A1D940 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00134 80A1D944 03E00008 */  jr      $ra                        
/* 00138 80A1D948 00000000 */  nop
