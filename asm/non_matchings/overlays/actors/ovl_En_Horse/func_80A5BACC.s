glabel func_80A5BACC
/* 007DC 80A5BACC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 007E0 80A5BAD0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 007E4 80A5BAD4 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 007E8 80A5BAD8 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 007EC 80A5BADC 3C0E8013 */  lui     $t6, 0x8013                ## $t6 = 80130000
/* 007F0 80A5BAE0 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 007F4 80A5BAE4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 007F8 80A5BAE8 25CE33E8 */  addiu   $t6, $t6, 0x33E8           ## $t6 = 801333E8
/* 007FC 80A5BAEC AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00800 80A5BAF0 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00804 80A5BAF4 24042804 */  addiu   $a0, $zero, 0x2804         ## $a0 = 00002804
/* 00808 80A5BAF8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 0080C 80A5BAFC 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00810 80A5BB00 24A500E4 */  addiu   $a1, $a1, 0x00E4           ## $a1 = 000000E4
/* 00814 80A5BB04 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00818 80A5BB08 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0081C 80A5BB0C 03E00008 */  jr      $ra                        
/* 00820 80A5BB10 00000000 */  nop
