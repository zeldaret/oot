glabel func_8096F7DC
/* 0232C 8096F7DC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02330 8096F7E0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02334 8096F7E4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02338 8096F7E8 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 0233C 8096F7EC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02340 8096F7F0 0C25B631 */  jal     func_8096D8C4              
/* 02344 8096F7F4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02348 8096F7F8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0234C 8096F7FC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02350 8096F800 03E00008 */  jr      $ra                        
/* 02354 8096F804 00000000 */  nop


