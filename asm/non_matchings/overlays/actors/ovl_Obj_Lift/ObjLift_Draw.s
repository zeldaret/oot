glabel ObjLift_Draw
/* 008A4 80B96974 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008A8 80B96978 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 008AC 80B9697C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 008B0 80B96980 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008B4 80B96984 3C050600 */  lui     $a1, %hi(D_06000140)                ## $a1 = 06000000
/* 008B8 80B96988 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 008BC 80B9698C 24A50140 */  addiu   $a1, $a1, %lo(D_06000140)           ## $a1 = 06000140
/* 008C0 80B96990 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008C4 80B96994 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008C8 80B96998 03E00008 */  jr      $ra                        
/* 008CC 80B9699C 00000000 */  nop
