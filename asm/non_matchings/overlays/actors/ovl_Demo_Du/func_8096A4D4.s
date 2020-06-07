glabel func_8096A4D4
/* 00A04 8096A4D4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A08 8096A4D8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A0C 8096A4DC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00A10 8096A4E0 948F1D74 */  lhu     $t7, 0x1D74($a0)           ## 00001D74
/* 00A14 8096A4E4 240100AE */  addiu   $at, $zero, 0x00AE         ## $at = 000000AE
/* 00A18 8096A4E8 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 00A1C 8096A4EC 15E1000A */  bne     $t7, $at, .L8096A518       
/* 00A20 8096A4F0 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 00A24 8096A4F4 8C821C44 */  lw      $v0, 0x1C44($a0)           ## 00001C44
/* 00A28 8096A4F8 3C188013 */  lui     $t8, %hi(D_801333E8)
/* 00A2C 8096A4FC 271833E8 */  addiu   $t8, %lo(D_801333E8)
/* 00A30 8096A500 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00A34 8096A504 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00A38 8096A508 24046836 */  addiu   $a0, $zero, 0x6836         ## $a0 = 00006836
/* 00A3C 8096A50C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00A40 8096A510 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00A44 8096A514 244500E4 */  addiu   $a1, $v0, 0x00E4           ## $a1 = 000000E4
.L8096A518:
/* 00A48 8096A518 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A4C 8096A51C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00A50 8096A520 03E00008 */  jr      $ra                        
/* 00A54 8096A524 00000000 */  nop
