glabel EnGe3_Update
/* 007F4 80A34E14 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007F8 80A34E18 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007FC 80A34E1C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00800 80A34E20 0C28D310 */  jal     func_80A34C40              
/* 00804 80A34E24 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00808 80A34E28 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0080C 80A34E2C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00810 80A34E30 8C990310 */  lw      $t9, 0x0310($a0)           ## 00000310
/* 00814 80A34E34 0320F809 */  jalr    $ra, $t9                   
/* 00818 80A34E38 00000000 */  nop
/* 0081C 80A34E3C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00820 80A34E40 0C28D339 */  jal     func_80A34CE4              
/* 00824 80A34E44 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00828 80A34E48 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0082C 80A34E4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00830 80A34E50 03E00008 */  jr      $ra                        
/* 00834 80A34E54 00000000 */  nop


