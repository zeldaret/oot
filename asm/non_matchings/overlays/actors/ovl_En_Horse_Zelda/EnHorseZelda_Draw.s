glabel EnHorseZelda_Draw
/* 00890 80A6E160 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00894 80A6E164 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00898 80A6E168 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0089C 80A6E16C 0C29B78E */  jal     func_80A6DE38              
/* 008A0 80A6E170 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 008A4 80A6E174 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 008A8 80A6E178 0C024F46 */  jal     func_80093D18              
/* 008AC 80A6E17C 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 008B0 80A6E180 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 008B4 80A6E184 3C0780A7 */  lui     $a3, %hi(func_80A6DFD4)    ## $a3 = 80A70000
/* 008B8 80A6E188 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 008BC 80A6E18C AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 008C0 80A6E190 24E7DFD4 */  addiu   $a3, $a3, %lo(func_80A6DFD4) ## $a3 = 80A6DFD4
/* 008C4 80A6E194 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 008C8 80A6E198 0C0298CC */  jal     func_800A6330              
/* 008CC 80A6E19C 24860154 */  addiu   $a2, $a0, 0x0154           ## $a2 = 00000154
/* 008D0 80A6E1A0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 008D4 80A6E1A4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 008D8 80A6E1A8 03E00008 */  jr      $ra                        
/* 008DC 80A6E1AC 00000000 */  nop

