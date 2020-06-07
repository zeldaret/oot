glabel func_8098F5D0
/* 01170 8098F5D0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01174 8098F5D4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01178 8098F5D8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 0117C 8098F5DC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01180 8098F5E0 24A5FCE0 */  addiu   $a1, $a1, 0xFCE0           ## $a1 = 0600FCE0
/* 01184 8098F5E4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01188 8098F5E8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 0118C 8098F5EC 0C2639DB */  jal     func_8098E76C              
/* 01190 8098F5F0 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01194 8098F5F4 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 01198 8098F5F8 240E000F */  addiu   $t6, $zero, 0x000F         ## $t6 = 0000000F
/* 0119C 8098F5FC ADEE0198 */  sw      $t6, 0x0198($t7)           ## 00000198
/* 011A0 8098F600 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 011A4 8098F604 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 011A8 8098F608 03E00008 */  jr      $ra                        
/* 011AC 8098F60C 00000000 */  nop
