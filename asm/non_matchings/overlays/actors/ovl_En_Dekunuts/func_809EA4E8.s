glabel func_809EA4E8
/* 00F88 809EA4E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F8C 809EA4EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F90 809EA4F0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00F94 809EA4F4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00F98 809EA4F8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00F9C 809EA4FC 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 00FA0 809EA500 0C01DE80 */  jal     Math_StepToF
              
/* 00FA4 809EA504 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00FA8 809EA508 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00FAC 809EA50C 0C02927F */  jal     SkelAnime_Update
              
/* 00FB0 809EA510 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00FB4 809EA514 50400004 */  beql    $v0, $zero, .L809EA528     
/* 00FB8 809EA518 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00FBC 809EA51C 0C27A6D2 */  jal     func_809E9B48              
/* 00FC0 809EA520 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00FC4 809EA524 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809EA528:
/* 00FC8 809EA528 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00FCC 809EA52C 03E00008 */  jr      $ra                        
/* 00FD0 809EA530 00000000 */  nop
