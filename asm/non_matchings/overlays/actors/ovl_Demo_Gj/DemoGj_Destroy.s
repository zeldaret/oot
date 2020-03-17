glabel DemoGj_Destroy
/* 0015C 80978A8C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00160 80978A90 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00164 80978A94 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00168 80978A98 0C25E276 */  jal     func_809789D8              
/* 0016C 80978A9C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00170 80978AA0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00174 80978AA4 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00178 80978AA8 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 0017C 80978AAC 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00180 80978AB0 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00184 80978AB4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00188 80978AB8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0018C 80978ABC 03E00008 */  jr      $ra                        
/* 00190 80978AC0 00000000 */  nop


