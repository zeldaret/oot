glabel func_80B3E580
/* 023A0 80B3E580 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 023A4 80B3E584 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 023A8 80B3E588 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 023AC 80B3E58C 0C2CF12C */  jal     func_80B3C4B0              
/* 023B0 80B3E590 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 023B4 80B3E594 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 023B8 80B3E598 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 023BC 80B3E59C 0C2CF11A */  jal     func_80B3C468              
/* 023C0 80B3E5A0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 023C4 80B3E5A4 0C2CF0C7 */  jal     func_80B3C31C              
/* 023C8 80B3E5A8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 023CC 80B3E5AC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 023D0 80B3E5B0 0C2CF780 */  jal     func_80B3DE00              
/* 023D4 80B3E5B4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 023D8 80B3E5B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 023DC 80B3E5BC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 023E0 80B3E5C0 03E00008 */  jr      $ra                        
/* 023E4 80B3E5C4 00000000 */  nop


