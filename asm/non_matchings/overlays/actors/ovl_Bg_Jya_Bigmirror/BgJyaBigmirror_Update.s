glabel BgJyaBigmirror_Update
/* 00540 80893C20 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00544 80893C24 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00548 80893C28 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0054C 80893C2C 0C224DB8 */  jal     func_808936E0              
/* 00550 80893C30 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00554 80893C34 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00558 80893C38 0C224DD4 */  jal     func_80893750              
/* 0055C 80893C3C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00560 80893C40 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00564 80893C44 0C224E53 */  jal     func_8089394C              
/* 00568 80893C48 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0056C 80893C4C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00570 80893C50 0C224E67 */  jal     func_8089399C              
/* 00574 80893C54 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00578 80893C58 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0057C 80893C5C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00580 80893C60 03E00008 */  jr      $ra                        
/* 00584 80893C64 00000000 */  nop


