glabel EnTrap_Draw
/* 01170 80B257D0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01174 80B257D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01178 80B257D8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0117C 80B257DC 0C00BAF3 */  jal     func_8002EBCC              
/* 01180 80B257E0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01184 80B257E4 3C050600 */  lui     $a1, %hi(D_06001400)                ## $a1 = 06000000
/* 01188 80B257E8 24A51400 */  addiu   $a1, $a1, %lo(D_06001400)           ## $a1 = 06001400
/* 0118C 80B257EC 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 01190 80B257F0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01194 80B257F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01198 80B257F8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0119C 80B257FC 03E00008 */  jr      $ra                        
/* 011A0 80B25800 00000000 */  nop
/* 011A4 80B25804 00000000 */  nop
/* 011A8 80B25808 00000000 */  nop
/* 011AC 80B2580C 00000000 */  nop
