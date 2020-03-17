glabel func_80A76DDC
/* 02ACC 80A76DDC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02AD0 80A76DE0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02AD4 80A76DE4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02AD8 80A76DE8 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 02ADC 80A76DEC 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 02AE0 80A76DF0 3C0E8013 */  lui     $t6, 0x8013                ## $t6 = 80130000
/* 02AE4 80A76DF4 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 02AE8 80A76DF8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02AEC 80A76DFC AFA60028 */  sw      $a2, 0x0028($sp)           
/* 02AF0 80A76E00 25CE33E8 */  addiu   $t6, $t6, 0x33E8           ## $t6 = 801333E8
/* 02AF4 80A76E04 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 02AF8 80A76E08 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 02AFC 80A76E0C AFA70010 */  sw      $a3, 0x0010($sp)           
/* 02B00 80A76E10 2404390D */  addiu   $a0, $zero, 0x390D         ## $a0 = 0000390D
/* 02B04 80A76E14 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 02B08 80A76E18 24A500E4 */  addiu   $a1, $a1, 0x00E4           ## $a1 = 000000E4
/* 02B0C 80A76E1C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02B10 80A76E20 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02B14 80A76E24 03E00008 */  jr      $ra                        
/* 02B18 80A76E28 00000000 */  nop


