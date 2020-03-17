glabel ObjBombiwa_Draw
/* 00458 80B91A48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0045C 80B91A4C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00460 80B91A50 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00464 80B91A54 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00468 80B91A58 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0046C 80B91A5C 0C00D498 */  jal     Draw_DListOpa
              
/* 00470 80B91A60 24A509E0 */  addiu   $a1, $a1, 0x09E0           ## $a1 = 060009E0
/* 00474 80B91A64 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00478 80B91A68 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0047C 80B91A6C 03E00008 */  jr      $ra                        
/* 00480 80B91A70 00000000 */  nop
/* 00484 80B91A74 00000000 */  nop
/* 00488 80B91A78 00000000 */  nop
/* 0048C 80B91A7C 00000000 */  nop

