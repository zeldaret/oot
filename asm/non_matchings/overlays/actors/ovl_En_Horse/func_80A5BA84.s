glabel func_80A5BA84
/* 00794 80A5BA84 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00798 80A5BA88 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0079C 80A5BA8C 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 007A0 80A5BA90 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 007A4 80A5BA94 3C0E8013 */  lui     $t6, %hi(D_801333E8)
/* 007A8 80A5BA98 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 007AC 80A5BA9C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 007B0 80A5BAA0 25CE33E8 */  addiu   $t6, %lo(D_801333E8)
/* 007B4 80A5BAA4 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 007B8 80A5BAA8 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 007BC 80A5BAAC 24042804 */  addiu   $a0, $zero, 0x2804         ## $a0 = 00002804
/* 007C0 80A5BAB0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 007C4 80A5BAB4 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 007C8 80A5BAB8 24A500E4 */  addiu   $a1, $a1, 0x00E4           ## $a1 = 000000E4
/* 007CC 80A5BABC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 007D0 80A5BAC0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 007D4 80A5BAC4 03E00008 */  jr      $ra                        
/* 007D8 80A5BAC8 00000000 */  nop
