glabel func_80A336C4
/* 00AF4 80A336C4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00AF8 80A336C8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00AFC 80A336CC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00B00 80A336D0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00B04 80A336D4 00807025 */  or      $t6, $a0, $zero            ## $t6 = 00000000
/* 00B08 80A336D8 85C502F6 */  lh      $a1, 0x02F6($t6)           ## 000002F6
/* 00B0C 80A336DC 240F0200 */  addiu   $t7, $zero, 0x0200         ## $t7 = 00000200
/* 00B10 80A336E0 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00B14 80A336E4 24840032 */  addiu   $a0, $a0, 0x0032           ## $a0 = 00000032
/* 00B18 80A336E8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00B1C 80A336EC 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 00B20 80A336F0 24070400 */  addiu   $a3, $zero, 0x0400         ## $a3 = 00000400
/* 00B24 80A336F4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00B28 80A336F8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00B2C 80A336FC 03E00008 */  jr      $ra                        
/* 00B30 80A33700 00000000 */  nop
