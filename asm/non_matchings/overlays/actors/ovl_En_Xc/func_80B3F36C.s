glabel func_80B3F36C
/* 0318C 80B3F36C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03190 80B3F370 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03194 80B3F374 0C2CF9E8 */  jal     func_80B3E7A0              
/* 03198 80B3F378 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0319C 80B3F37C 0C2CFC37 */  jal     func_80B3F0DC              
/* 031A0 80B3F380 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 031A4 80B3F384 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 031A8 80B3F388 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 031AC 80B3F38C 03E00008 */  jr      $ra                        
/* 031B0 80B3F390 00000000 */  nop


