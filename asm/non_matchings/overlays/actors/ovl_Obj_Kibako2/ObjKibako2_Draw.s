glabel ObjKibako2_Draw
/* 005AC 80B95F7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005B0 80B95F80 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 005B4 80B95F84 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 005B8 80B95F88 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005BC 80B95F8C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 005C0 80B95F90 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 005C4 80B95F94 24A50960 */  addiu   $a1, $a1, 0x0960           ## $a1 = 06000960
/* 005C8 80B95F98 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005CC 80B95F9C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005D0 80B95FA0 03E00008 */  jr      $ra                        
/* 005D4 80B95FA4 00000000 */  nop
/* 005D8 80B95FA8 00000000 */  nop
/* 005DC 80B95FAC 00000000 */  nop

