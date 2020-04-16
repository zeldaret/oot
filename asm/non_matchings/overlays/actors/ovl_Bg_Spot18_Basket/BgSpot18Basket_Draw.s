glabel BgSpot18Basket_Draw
/* 00DE4 808B84F4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00DE8 808B84F8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00DEC 808B84FC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00DF0 808B8500 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00DF4 808B8504 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00DF8 808B8508 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 00DFC 808B850C 24A50164 */  addiu   $a1, $a1, 0x0164           ## $a1 = 00000164
/* 00E00 808B8510 0C018A29 */  jal     func_800628A4              
/* 00E04 808B8514 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00E08 808B8518 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00E0C 808B851C 0C018A29 */  jal     func_800628A4              
/* 00E10 808B8520 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 00E14 808B8524 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00E18 808B8528 24A518B0 */  addiu   $a1, $a1, 0x18B0           ## $a1 = 060018B0
/* 00E1C 808B852C 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 00E20 808B8530 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00E24 808B8534 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E28 808B8538 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00E2C 808B853C 03E00008 */  jr      $ra                        
/* 00E30 808B8540 00000000 */  nop
/* 00E34 808B8544 00000000 */  nop
/* 00E38 808B8548 00000000 */  nop
/* 00E3C 808B854C 00000000 */  nop
