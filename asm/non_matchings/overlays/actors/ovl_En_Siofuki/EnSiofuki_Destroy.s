glabel EnSiofuki_Destroy
/* 00218 80AFBD98 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0021C 80AFBD9C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00220 80AFBDA0 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00224 80AFBDA4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00228 80AFBDA8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0022C 80AFBDAC 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00230 80AFBDB0 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00234 80AFBDB4 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00238 80AFBDB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0023C 80AFBDBC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00240 80AFBDC0 03E00008 */  jr      $ra                        
/* 00244 80AFBDC4 00000000 */  nop
