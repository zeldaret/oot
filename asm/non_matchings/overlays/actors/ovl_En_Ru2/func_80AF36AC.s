glabel func_80AF36AC
/* 0115C 80AF36AC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01160 80AF36B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01164 80AF36B4 0C2BC9D1 */  jal     func_80AF2744              
/* 01168 80AF36B8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0116C 80AF36BC 0C2BC9E3 */  jal     func_80AF278C              
/* 01170 80AF36C0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01174 80AF36C4 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 01178 80AF36C8 0C2BC982 */  jal     func_80AF2608              
/* 0117C 80AF36CC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01180 80AF36D0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01184 80AF36D4 0C2BCD4C */  jal     func_80AF3530              
/* 01188 80AF36D8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0118C 80AF36DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01190 80AF36E0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01194 80AF36E4 03E00008 */  jr      $ra                        
/* 01198 80AF36E8 00000000 */  nop


