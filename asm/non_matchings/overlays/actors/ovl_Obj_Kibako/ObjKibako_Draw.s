glabel ObjKibako_Draw
/* 00B58 80B957F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B5C 80B957FC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B60 80B95800 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00B64 80B95804 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B68 80B95808 3C050500 */  lui     $a1, 0x0500                ## $a1 = 05000000
/* 00B6C 80B9580C 0C00D498 */  jal     Draw_DListOpa
              
/* 00B70 80B95810 24A55290 */  addiu   $a1, $a1, 0x5290           ## $a1 = 05005290
/* 00B74 80B95814 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B78 80B95818 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B7C 80B9581C 03E00008 */  jr      $ra                        
/* 00B80 80B95820 00000000 */  nop
/* 00B84 80B95824 00000000 */  nop
/* 00B88 80B95828 00000000 */  nop
/* 00B8C 80B9582C 00000000 */  nop

