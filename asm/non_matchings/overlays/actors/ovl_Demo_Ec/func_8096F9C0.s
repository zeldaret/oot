glabel func_8096F9C0
/* 02510 8096F9C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02514 8096F9C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02518 8096F9C8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0251C 8096F9CC 0C25B54B */  jal     func_8096D52C              
/* 02520 8096F9D0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02524 8096F9D4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02528 8096F9D8 0C25B565 */  jal     func_8096D594              
/* 0252C 8096F9DC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02530 8096F9E0 0C25B5A3 */  jal     func_8096D68C              
/* 02534 8096F9E4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02538 8096F9E8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0253C 8096F9EC 0C25B553 */  jal     func_8096D54C              
/* 02540 8096F9F0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02544 8096F9F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02548 8096F9F8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0254C 8096F9FC 03E00008 */  jr      $ra                        
/* 02550 8096FA00 00000000 */  nop
