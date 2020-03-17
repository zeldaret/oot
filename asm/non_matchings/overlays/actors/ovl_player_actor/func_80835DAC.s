glabel func_80835DAC
/* 03B9C 80835DAC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03BA0 80835DB0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03BA4 80835DB4 90AE01E9 */  lbu     $t6, 0x01E9($a1)           ## 000001E9
/* 03BA8 80835DB8 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 03BAC 80835DBC A0A001E9 */  sb      $zero, 0x01E9($a1)         ## 000001E9
/* 03BB0 80835DC0 0C20D716 */  jal     func_80835C58              
/* 03BB4 80835DC4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03BB8 80835DC8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03BBC 80835DCC 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 03BC0 80835DD0 A0AF01E9 */  sb      $t7, 0x01E9($a1)           ## 000001E9
/* 03BC4 80835DD4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03BC8 80835DD8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03BCC 80835DDC 03E00008 */  jr      $ra                        
/* 03BD0 80835DE0 00000000 */  nop


