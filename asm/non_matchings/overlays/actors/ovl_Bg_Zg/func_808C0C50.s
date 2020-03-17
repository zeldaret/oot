glabel func_808C0C50
/* 00030 808C0C50 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00034 808C0C54 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00038 808C0C58 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 0003C 808C0C5C 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 00040 808C0C60 3C0E8013 */  lui     $t6, 0x8013                ## $t6 = 80130000
/* 00044 808C0C64 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00048 808C0C68 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0004C 808C0C6C 25CE33E8 */  addiu   $t6, $t6, 0x33E8           ## $t6 = 801333E8
/* 00050 808C0C70 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00054 808C0C74 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00058 808C0C78 24042859 */  addiu   $a0, $zero, 0x2859         ## $a0 = 00002859
/* 0005C 808C0C7C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00060 808C0C80 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00064 808C0C84 24A500E4 */  addiu   $a1, $a1, 0x00E4           ## $a1 = 000000E4
/* 00068 808C0C88 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0006C 808C0C8C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00070 808C0C90 03E00008 */  jr      $ra                        
/* 00074 808C0C94 00000000 */  nop


