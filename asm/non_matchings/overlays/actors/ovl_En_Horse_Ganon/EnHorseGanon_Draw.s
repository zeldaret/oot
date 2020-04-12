glabel EnHorseGanon_Draw
/* 00AD4 80A69134 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00AD8 80A69138 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00ADC 80A6913C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00AE0 80A69140 0C29A385 */  jal     func_80A68E14              
/* 00AE4 80A69144 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00AE8 80A69148 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 00AEC 80A6914C 0C024F46 */  jal     func_80093D18              
/* 00AF0 80A69150 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 00AF4 80A69154 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00AF8 80A69158 3C0780A7 */  lui     $a3, %hi(func_80A68FA8)    ## $a3 = 80A70000
/* 00AFC 80A6915C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00B00 80A69160 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00B04 80A69164 24E78FA8 */  addiu   $a3, $a3, %lo(func_80A68FA8) ## $a3 = 80A68FA8
/* 00B08 80A69168 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00B0C 80A6916C 0C0298CC */  jal     func_800A6330              
/* 00B10 80A69170 24860154 */  addiu   $a2, $a0, 0x0154           ## $a2 = 00000154
/* 00B14 80A69174 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00B18 80A69178 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00B1C 80A6917C 03E00008 */  jr      $ra                        
/* 00B20 80A69180 00000000 */  nop
/* 00B24 80A69184 00000000 */  nop
/* 00B28 80A69188 00000000 */  nop
/* 00B2C 80A6918C 00000000 */  nop
