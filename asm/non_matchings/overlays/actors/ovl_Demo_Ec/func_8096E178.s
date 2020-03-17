glabel func_8096E178
/* 00CC8 8096E178 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00CCC 8096E17C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00CD0 8096E180 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00CD4 8096E184 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00CD8 8096E188 24E76920 */  addiu   $a3, $a3, 0x6920           ## $a3 = 06006920
/* 00CDC 8096E18C 24C65F20 */  addiu   $a2, $a2, 0x5F20           ## $a2 = 06005F20
/* 00CE0 8096E190 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00CE4 8096E194 0C25B631 */  jal     func_8096D8C4              
/* 00CE8 8096E198 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00CEC 8096E19C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00CF0 8096E1A0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00CF4 8096E1A4 03E00008 */  jr      $ra                        
/* 00CF8 8096E1A8 00000000 */  nop


