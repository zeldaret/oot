glabel func_8096F224
/* 01D74 8096F224 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01D78 8096F228 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01D7C 8096F22C 0C25B76F */  jal     func_8096DDBC              
/* 01D80 8096F230 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01D84 8096F234 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01D88 8096F238 24A56930 */  addiu   $a1, $a1, 0x6930           ## $a1 = 06006930
/* 01D8C 8096F23C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01D90 8096F240 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01D94 8096F244 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 01D98 8096F248 0C25B5E7 */  jal     func_8096D79C              
/* 01D9C 8096F24C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01DA0 8096F250 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 01DA4 8096F254 240E0011 */  addiu   $t6, $zero, 0x0011         ## $t6 = 00000011
/* 01DA8 8096F258 ADEE0194 */  sw      $t6, 0x0194($t7)           ## 00000194
/* 01DAC 8096F25C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01DB0 8096F260 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01DB4 8096F264 03E00008 */  jr      $ra                        
/* 01DB8 8096F268 00000000 */  nop


