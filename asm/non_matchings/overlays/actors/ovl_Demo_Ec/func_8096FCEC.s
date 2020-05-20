glabel func_8096FCEC
/* 0283C 8096FCEC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02840 8096FCF0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02844 8096FCF4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02848 8096FCF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0284C 8096FCFC 0C25B743 */  jal     func_8096DD0C              
/* 02850 8096FD00 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02854 8096FD04 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 02858 8096FD08 24C64868 */  addiu   $a2, $a2, 0x4868           ## $a2 = 06004868
/* 0285C 8096FD0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02860 8096FD10 0C25B5CA */  jal     func_8096D728              
/* 02864 8096FD14 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02868 8096FD18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0286C 8096FD1C 0C25B76F */  jal     func_8096DDBC              
/* 02870 8096FD20 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02874 8096FD24 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02878 8096FD28 24A5AFE0 */  addiu   $a1, $a1, 0xAFE0           ## $a1 = 0600AFE0
/* 0287C 8096FD2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02880 8096FD30 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02884 8096FD34 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02888 8096FD38 0C25B5E7 */  jal     func_8096D79C              
/* 0288C 8096FD3C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02890 8096FD40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02894 8096FD44 0C25B575 */  jal     func_8096D5D4              
/* 02898 8096FD48 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0289C 8096FD4C 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 028A0 8096FD50 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 028A4 8096FD54 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 028A8 8096FD58 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 028AC 8096FD5C 0C00AC78 */  jal     ActorShape_Init
              
/* 028B0 8096FD60 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 028B4 8096FD64 240E001A */  addiu   $t6, $zero, 0x001A         ## $t6 = 0000001A
/* 028B8 8096FD68 240F0015 */  addiu   $t7, $zero, 0x0015         ## $t7 = 00000015
/* 028BC 8096FD6C AE0E0194 */  sw      $t6, 0x0194($s0)           ## 00000194
/* 028C0 8096FD70 AE0F0198 */  sw      $t7, 0x0198($s0)           ## 00000198
/* 028C4 8096FD74 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 028C8 8096FD78 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 028CC 8096FD7C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 028D0 8096FD80 03E00008 */  jr      $ra                        
/* 028D4 8096FD84 00000000 */  nop
