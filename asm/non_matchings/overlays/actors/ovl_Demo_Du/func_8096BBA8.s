glabel func_8096BBA8
/* 020D8 8096BBA8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 020DC 8096BBAC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 020E0 8096BBB0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 020E4 8096BBB4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 020E8 8096BBB8 24A55458 */  addiu   $a1, $a1, 0x5458           ## $a1 = 06005458
/* 020EC 8096BBBC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 020F0 8096BBC0 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 020F4 8096BBC4 0C25A777 */  jal     func_80969DDC              
/* 020F8 8096BBC8 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 020FC 8096BBCC 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 02100 8096BBD0 240E001B */  addiu   $t6, $zero, 0x001B         ## $t6 = 0000001B
/* 02104 8096BBD4 ADEE0198 */  sw      $t6, 0x0198($t7)           ## 00000198
/* 02108 8096BBD8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0210C 8096BBDC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02110 8096BBE0 03E00008 */  jr      $ra                        
/* 02114 8096BBE4 00000000 */  nop


