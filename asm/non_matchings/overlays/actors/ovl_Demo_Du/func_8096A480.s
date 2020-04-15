glabel func_8096A480
/* 009B0 8096A480 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 009B4 8096A484 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 009B8 8096A488 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 009BC 8096A48C 948F1D74 */  lhu     $t7, 0x1D74($a0)           ## 00001D74
/* 009C0 8096A490 24010578 */  addiu   $at, $zero, 0x0578         ## $at = 00000578
/* 009C4 8096A494 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 009C8 8096A498 15E1000A */  bne     $t7, $at, .L8096A4C4       
/* 009CC 8096A49C 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 009D0 8096A4A0 8C821C44 */  lw      $v0, 0x1C44($a0)           ## 00001C44
/* 009D4 8096A4A4 3C188013 */  lui     $t8, 0x8013                ## $t8 = 80130000
/* 009D8 8096A4A8 271833E8 */  addiu   $t8, $t8, 0x33E8           ## $t8 = 801333E8
/* 009DC 8096A4AC AFB80014 */  sw      $t8, 0x0014($sp)           
/* 009E0 8096A4B0 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 009E4 8096A4B4 24046828 */  addiu   $a0, $zero, 0x6828         ## $a0 = 00006828
/* 009E8 8096A4B8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 009EC 8096A4BC 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 009F0 8096A4C0 244500E4 */  addiu   $a1, $v0, 0x00E4           ## $a1 = 000000E4
.L8096A4C4:
/* 009F4 8096A4C4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 009F8 8096A4C8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 009FC 8096A4CC 03E00008 */  jr      $ra                        
/* 00A00 8096A4D0 00000000 */  nop
