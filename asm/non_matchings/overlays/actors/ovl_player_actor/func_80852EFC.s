glabel func_80852EFC
/* 20CEC 80852EFC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 20CF0 80852F00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 20CF4 80852F04 8C851C44 */  lw      $a1, 0x1C44($a0)           ## 00001C44
/* 20CF8 80852F08 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 20CFC 80852F0C 0C20C959 */  jal     func_80832564              
/* 20D00 80852F10 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 20D04 80852F14 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 20D08 80852F18 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 20D0C 80852F1C 0C20D7D1 */  jal     func_80835F44              
/* 20D10 80852F20 24060059 */  addiu   $a2, $zero, 0x0059         ## $a2 = 00000059
/* 20D14 80852F24 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 20D18 80852F28 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 20D1C 80852F2C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 20D20 80852F30 03E00008 */  jr      $ra                        
/* 20D24 80852F34 00000000 */  nop


