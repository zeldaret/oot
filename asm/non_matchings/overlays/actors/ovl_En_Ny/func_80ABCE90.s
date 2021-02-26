glabel func_80ABCE90
/* 002E0 80ABCE90 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 002E4 80ABCE94 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002E8 80ABCE98 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 002EC 80ABCE9C 8C8201D8 */  lw      $v0, 0x01D8($a0)           ## 000001D8
/* 002F0 80ABCEA0 8C8301D4 */  lw      $v1, 0x01D4($a0)           ## 000001D4
/* 002F4 80ABCEA4 24420040 */  addiu   $v0, $v0, 0x0040           ## $v0 = 00000040
/* 002F8 80ABCEA8 284100FF */  slti    $at, $v0, 0x00FF           
/* 002FC 80ABCEAC 14200009 */  bne     $at, $zero, .L80ABCED4     
/* 00300 80ABCEB0 2463FFC0 */  addiu   $v1, $v1, 0xFFC0           ## $v1 = FFFFFFC0
/* 00304 80ABCEB4 240200FF */  addiu   $v0, $zero, 0x00FF         ## $v0 = 000000FF
/* 00308 80ABCEB8 AFA20018 */  sw      $v0, 0x0018($sp)           
/* 0030C 80ABCEBC AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00310 80ABCEC0 0C2AF36B */  jal     func_80ABCDAC              
/* 00314 80ABCEC4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00318 80ABCEC8 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 0031C 80ABCECC 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 00320 80ABCED0 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80ABCED4:
/* 00324 80ABCED4 AC8301D4 */  sw      $v1, 0x01D4($a0)           ## 000001D4
/* 00328 80ABCED8 AC8201D8 */  sw      $v0, 0x01D8($a0)           ## 000001D8
/* 0032C 80ABCEDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00330 80ABCEE0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00334 80ABCEE4 03E00008 */  jr      $ra                        
/* 00338 80ABCEE8 00000000 */  nop
