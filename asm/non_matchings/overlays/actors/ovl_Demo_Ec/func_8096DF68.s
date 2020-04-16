glabel func_8096DF68
/* 00AB8 8096DF68 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00ABC 8096DF6C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00AC0 8096DF70 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00AC4 8096DF74 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00AC8 8096DF78 24E74350 */  addiu   $a3, $a3, 0x4350           ## $a3 = 06004350
/* 00ACC 8096DF7C 24C64390 */  addiu   $a2, $a2, 0x4390           ## $a2 = 06004390
/* 00AD0 8096DF80 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00AD4 8096DF84 0C25B631 */  jal     func_8096D8C4              
/* 00AD8 8096DF88 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00ADC 8096DF8C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00AE0 8096DF90 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00AE4 8096DF94 03E00008 */  jr      $ra                        
/* 00AE8 8096DF98 00000000 */  nop
