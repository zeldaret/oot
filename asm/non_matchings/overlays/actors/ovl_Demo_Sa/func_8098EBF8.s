glabel func_8098EBF8
/* 00798 8098EBF8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0079C 8098EBFC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007A0 8098EC00 0C263A51 */  jal     func_8098E944              
/* 007A4 8098EC04 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 007A8 8098EC08 0C263984 */  jal     func_8098E610              
/* 007AC 8098EC0C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 007B0 8098EC10 0C263A8F */  jal     func_8098EA3C              
/* 007B4 8098EC14 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 007B8 8098EC18 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007BC 8098EC1C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007C0 8098EC20 03E00008 */  jr      $ra                        
/* 007C4 8098EC24 00000000 */  nop


