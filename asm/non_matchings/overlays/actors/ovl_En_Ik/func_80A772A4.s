glabel func_80A772A4
/* 02F94 80A772A4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02F98 80A772A8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02F9C 80A772AC 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 02FA0 80A772B0 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 02FA4 80A772B4 3C0E8013 */  lui     $t6, %hi(D_801333E8)
/* 02FA8 80A772B8 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 02FAC 80A772BC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02FB0 80A772C0 25CE33E8 */  addiu   $t6, %lo(D_801333E8)
/* 02FB4 80A772C4 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 02FB8 80A772C8 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 02FBC 80A772CC 2404392B */  addiu   $a0, $zero, 0x392B         ## $a0 = 0000392B
/* 02FC0 80A772D0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 02FC4 80A772D4 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 02FC8 80A772D8 24A500E4 */  addiu   $a1, $a1, 0x00E4           ## $a1 = 000000E4
/* 02FCC 80A772DC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02FD0 80A772E0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02FD4 80A772E4 03E00008 */  jr      $ra                        
/* 02FD8 80A772E8 00000000 */  nop
