glabel func_80B3F848
/* 03668 80B3F848 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0366C 80B3F84C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03670 80B3F850 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03674 80B3F854 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03678 80B3F858 0C2CFD4D */  jal     func_80B3F534              
/* 0367C 80B3F85C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 03680 80B3F860 0C2CF12C */  jal     func_80B3C4B0              
/* 03684 80B3F864 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03688 80B3F868 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0368C 80B3F86C 0C2CF11A */  jal     func_80B3C468              
/* 03690 80B3F870 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03694 80B3F874 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03698 80B3F878 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0369C 80B3F87C 0C2CF162 */  jal     func_80B3C588              
/* 036A0 80B3F880 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 036A4 80B3F884 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 036A8 80B3F888 0C2CFD9A */  jal     func_80B3F668              
/* 036AC 80B3F88C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 036B0 80B3F890 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 036B4 80B3F894 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 036B8 80B3F898 03E00008 */  jr      $ra                        
/* 036BC 80B3F89C 00000000 */  nop


