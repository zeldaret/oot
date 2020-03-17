glabel func_809CE0EC
/* 0107C 809CE0EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01080 809CE0F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01084 809CE0F4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01088 809CE0F8 848E0254 */  lh      $t6, 0x0254($a0)           ## 00000254
/* 0108C 809CE0FC 5DC00004 */  bgtzl   $t6, .L809CE110            
/* 01090 809CE100 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01094 809CE104 0C00B55C */  jal     Actor_Kill
              
/* 01098 809CE108 00000000 */  nop
/* 0109C 809CE10C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809CE110:
/* 010A0 809CE110 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 010A4 809CE114 03E00008 */  jr      $ra                        
/* 010A8 809CE118 00000000 */  nop


