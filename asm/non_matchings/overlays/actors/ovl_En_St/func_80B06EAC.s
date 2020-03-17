glabel func_80B06EAC
/* 0261C 80B06EAC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02620 80B06EB0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02624 80B06EB4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02628 80B06EB8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0262C 80B06EBC 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 02630 80B06EC0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02634 80B06EC4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 02638 80B06EC8 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 0263C 80B06ECC 0C018A29 */  jal     func_800628A4              
/* 02640 80B06ED0 24A5035C */  addiu   $a1, $a1, 0x035C           ## $a1 = 0000035C
/* 02644 80B06ED4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02648 80B06ED8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0264C 80B06EDC 03E00008 */  jr      $ra                        
/* 02650 80B06EE0 00000000 */  nop


