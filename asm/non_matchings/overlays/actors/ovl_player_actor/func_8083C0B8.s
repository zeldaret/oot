glabel func_8083C0B8
/* 09EA8 8083C0B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 09EAC 8083C0BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 09EB0 8083C0C0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 09EB4 8083C0C4 0C20E7FF */  jal     func_80839FFC              
/* 09EB8 8083C0C8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 09EBC 8083C0CC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 09EC0 8083C0D0 0C20EFD4 */  jal     func_8083BF50              
/* 09EC4 8083C0D4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 09EC8 8083C0D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 09ECC 8083C0DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 09ED0 8083C0E0 03E00008 */  jr      $ra                        
/* 09ED4 8083C0E4 00000000 */  nop


