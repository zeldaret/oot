glabel func_80AD830C
/* 00BCC 80AD830C 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 00BD0 80AD8310 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 00BD4 80AD8314 AFB10048 */  sw      $s1, 0x0048($sp)           
/* 00BD8 80AD8318 AFB00044 */  sw      $s0, 0x0044($sp)           
/* 00BDC 80AD831C 848E0196 */  lh      $t6, 0x0196($a0)           ## 00000196
/* 00BE0 80AD8320 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BE4 80AD8324 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00BE8 80AD8328 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00BEC 80AD832C A48F0196 */  sh      $t7, 0x0196($a0)           ## 00000196
/* 00BF0 80AD8330 84820196 */  lh      $v0, 0x0196($a0)           ## 00000196
/* 00BF4 80AD8334 28410008 */  slti    $at, $v0, 0x0008           
/* 00BF8 80AD8338 102000D7 */  beq     $at, $zero, .L80AD8698     
/* 00BFC 80AD833C 28410005 */  slti    $at, $v0, 0x0005           
/* 00C00 80AD8340 10200037 */  beq     $at, $zero, .L80AD8420     
/* 00C04 80AD8344 244CFFFB */  addiu   $t4, $v0, 0xFFFB           ## $t4 = FFFFFFFB
/* 00C08 80AD8348 00022300 */  sll     $a0, $v0, 12               
/* 00C0C 80AD834C 2484C000 */  addiu   $a0, $a0, 0xC000           ## $a0 = FFFFC000
/* 00C10 80AD8350 00042400 */  sll     $a0, $a0, 16               
/* 00C14 80AD8354 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00C18 80AD8358 00042403 */  sra     $a0, $a0, 16               
/* 00C1C 80AD835C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00C20 80AD8360 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 00C24 80AD8364 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 00C28 80AD8368 44815000 */  mtc1    $at, $f10                  ## $f10 = 23.00
/* 00C2C 80AD836C C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00C30 80AD8370 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00C34 80AD8374 46062200 */  add.s   $f8, $f4, $f6              
/* 00C38 80AD8378 46088480 */  add.s   $f18, $f16, $f8            
/* 00C3C 80AD837C E7B20078 */  swc1    $f18, 0x0078($sp)          
/* 00C40 80AD8380 86040196 */  lh      $a0, 0x0196($s0)           ## 00000196
/* 00C44 80AD8384 00042300 */  sll     $a0, $a0, 12               
/* 00C48 80AD8388 2484C000 */  addiu   $a0, $a0, 0xC000           ## $a0 = FFFFC000
/* 00C4C 80AD838C 00042400 */  sll     $a0, $a0, 16               
/* 00C50 80AD8390 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00C54 80AD8394 00042403 */  sra     $a0, $a0, 16               
/* 00C58 80AD8398 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 00C5C 80AD839C 44812000 */  mtc1    $at, $f4                   ## $f4 = 23.00
/* 00C60 80AD83A0 00000000 */  nop
/* 00C64 80AD83A4 46040182 */  mul.s   $f6, $f0, $f4              
/* 00C68 80AD83A8 E7A60070 */  swc1    $f6, 0x0070($sp)           
/* 00C6C 80AD83AC 863807A0 */  lh      $t8, 0x07A0($s1)           ## 000007A0
/* 00C70 80AD83B0 0018C880 */  sll     $t9, $t8,  2               
/* 00C74 80AD83B4 02394021 */  addu    $t0, $s1, $t9              
/* 00C78 80AD83B8 0C016A7D */  jal     func_8005A9F4              
/* 00C7C 80AD83BC 8D040790 */  lw      $a0, 0x0790($t0)           ## 00000790
/* 00C80 80AD83C0 24444800 */  addiu   $a0, $v0, 0x4800           ## $a0 = 00004800
/* 00C84 80AD83C4 00042400 */  sll     $a0, $a0, 16               
/* 00C88 80AD83C8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00C8C 80AD83CC 00042403 */  sra     $a0, $a0, 16               
/* 00C90 80AD83D0 C7AA0070 */  lwc1    $f10, 0x0070($sp)          
/* 00C94 80AD83D4 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 00C98 80AD83D8 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00C9C 80AD83DC 46088480 */  add.s   $f18, $f16, $f8            
/* 00CA0 80AD83E0 E7B20074 */  swc1    $f18, 0x0074($sp)          
/* 00CA4 80AD83E4 862907A0 */  lh      $t1, 0x07A0($s1)           ## 000007A0
/* 00CA8 80AD83E8 00095080 */  sll     $t2, $t1,  2               
/* 00CAC 80AD83EC 022A5821 */  addu    $t3, $s1, $t2              
/* 00CB0 80AD83F0 0C016A7D */  jal     func_8005A9F4              
/* 00CB4 80AD83F4 8D640790 */  lw      $a0, 0x0790($t3)           ## 00000790
/* 00CB8 80AD83F8 24444800 */  addiu   $a0, $v0, 0x4800           ## $a0 = 00004800
/* 00CBC 80AD83FC 00042400 */  sll     $a0, $a0, 16               
/* 00CC0 80AD8400 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00CC4 80AD8404 00042403 */  sra     $a0, $a0, 16               
/* 00CC8 80AD8408 C7A40070 */  lwc1    $f4, 0x0070($sp)           
/* 00CCC 80AD840C C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00CD0 80AD8410 46040182 */  mul.s   $f6, $f0, $f4              
/* 00CD4 80AD8414 460A3400 */  add.s   $f16, $f6, $f10            
/* 00CD8 80AD8418 1000002A */  beq     $zero, $zero, .L80AD84C4   
/* 00CDC 80AD841C E7B0007C */  swc1    $f16, 0x007C($sp)          
.L80AD8420:
/* 00CE0 80AD8420 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 00CE4 80AD8424 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00CE8 80AD8428 44819000 */  mtc1    $at, $f18                  ## $f18 = 40.00
/* 00CEC 80AD842C 46805420 */  cvt.s.w $f16, $f10                 
/* 00CF0 80AD8430 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00CF4 80AD8434 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00CF8 80AD8438 44813000 */  mtc1    $at, $f6                   ## $f6 = 15.00
/* 00CFC 80AD843C 46124100 */  add.s   $f4, $f8, $f18             
/* 00D00 80AD8440 46103202 */  mul.s   $f8, $f6, $f16             
/* 00D04 80AD8444 46082480 */  add.s   $f18, $f4, $f8             
/* 00D08 80AD8448 E7B20078 */  swc1    $f18, 0x0078($sp)          
/* 00D0C 80AD844C 862D07A0 */  lh      $t5, 0x07A0($s1)           ## 000007A0
/* 00D10 80AD8450 000D7080 */  sll     $t6, $t5,  2               
/* 00D14 80AD8454 022E7821 */  addu    $t7, $s1, $t6              
/* 00D18 80AD8458 0C016A7D */  jal     func_8005A9F4              
/* 00D1C 80AD845C 8DE40790 */  lw      $a0, 0x0790($t7)           ## 00000790
/* 00D20 80AD8460 24444800 */  addiu   $a0, $v0, 0x4800           ## $a0 = 00004800
/* 00D24 80AD8464 00042400 */  sll     $a0, $a0, 16               
/* 00D28 80AD8468 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00D2C 80AD846C 00042403 */  sra     $a0, $a0, 16               
/* 00D30 80AD8470 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 00D34 80AD8474 44815000 */  mtc1    $at, $f10                  ## $f10 = 23.00
/* 00D38 80AD8478 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 00D3C 80AD847C 460A0182 */  mul.s   $f6, $f0, $f10             
/* 00D40 80AD8480 46103100 */  add.s   $f4, $f6, $f16             
/* 00D44 80AD8484 E7A40074 */  swc1    $f4, 0x0074($sp)           
/* 00D48 80AD8488 863807A0 */  lh      $t8, 0x07A0($s1)           ## 000007A0
/* 00D4C 80AD848C 0018C880 */  sll     $t9, $t8,  2               
/* 00D50 80AD8490 02394021 */  addu    $t0, $s1, $t9              
/* 00D54 80AD8494 0C016A7D */  jal     func_8005A9F4              
/* 00D58 80AD8498 8D040790 */  lw      $a0, 0x0790($t0)           ## 00000790
/* 00D5C 80AD849C 24444800 */  addiu   $a0, $v0, 0x4800           ## $a0 = 00004800
/* 00D60 80AD84A0 00042400 */  sll     $a0, $a0, 16               
/* 00D64 80AD84A4 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00D68 80AD84A8 00042403 */  sra     $a0, $a0, 16               
/* 00D6C 80AD84AC 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 00D70 80AD84B0 44814000 */  mtc1    $at, $f8                   ## $f8 = 23.00
/* 00D74 80AD84B4 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00D78 80AD84B8 46080482 */  mul.s   $f18, $f0, $f8             
/* 00D7C 80AD84BC 460A9180 */  add.s   $f6, $f18, $f10            
/* 00D80 80AD84C0 E7A6007C */  swc1    $f6, 0x007C($sp)           
.L80AD84C4:
/* 00D84 80AD84C4 86090196 */  lh      $t1, 0x0196($s0)           ## 00000196
/* 00D88 80AD84C8 3C0680AE */  lui     $a2, %hi(D_80AD8D30)       ## $a2 = 80AE0000
/* 00D8C 80AD84CC 3C0780AE */  lui     $a3, %hi(D_80AD8D3C)       ## $a3 = 80AE0000
/* 00D90 80AD84D0 00095080 */  sll     $t2, $t1,  2               
/* 00D94 80AD84D4 01495021 */  addu    $t2, $t2, $t1              
/* 00D98 80AD84D8 000A5040 */  sll     $t2, $t2,  1               
/* 00D9C 80AD84DC 254B0050 */  addiu   $t3, $t2, 0x0050           ## $t3 = 00000050
/* 00DA0 80AD84E0 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00DA4 80AD84E4 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 00DA8 80AD84E8 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 00DAC 80AD84EC 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00DB0 80AD84F0 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00DB4 80AD84F4 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 00DB8 80AD84F8 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00DBC 80AD84FC 24080009 */  addiu   $t0, $zero, 0x0009         ## $t0 = 00000009
/* 00DC0 80AD8500 AFA80038 */  sw      $t0, 0x0038($sp)           
/* 00DC4 80AD8504 AFB90034 */  sw      $t9, 0x0034($sp)           
/* 00DC8 80AD8508 AFB80030 */  sw      $t8, 0x0030($sp)           
/* 00DCC 80AD850C AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 00DD0 80AD8510 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 00DD4 80AD8514 AFAD001C */  sw      $t5, 0x001C($sp)           
/* 00DD8 80AD8518 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 00DDC 80AD851C AFA9003C */  sw      $t1, 0x003C($sp)           
/* 00DE0 80AD8520 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 00DE4 80AD8524 24E78D3C */  addiu   $a3, $a3, %lo(D_80AD8D3C)  ## $a3 = 80AD8D3C
/* 00DE8 80AD8528 24C68D30 */  addiu   $a2, $a2, %lo(D_80AD8D30)  ## $a2 = 80AD8D30
/* 00DEC 80AD852C AFA0002C */  sw      $zero, 0x002C($sp)         
/* 00DF0 80AD8530 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00DF4 80AD8534 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00DF8 80AD8538 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00DFC 80AD853C 0C00A9AE */  jal     func_8002A6B8              
/* 00E00 80AD8540 27A50074 */  addiu   $a1, $sp, 0x0074           ## $a1 = FFFFFFF4
/* 00E04 80AD8544 C6000024 */  lwc1    $f0, 0x0024($s0)           ## 00000024
/* 00E08 80AD8548 C7A40074 */  lwc1    $f4, 0x0074($sp)           
/* 00E0C 80AD854C C7AA007C */  lwc1    $f10, 0x007C($sp)          
/* 00E10 80AD8550 46000400 */  add.s   $f16, $f0, $f0             
/* 00E14 80AD8554 3C0680AE */  lui     $a2, %hi(D_80AD8D30)       ## $a2 = 80AE0000
/* 00E18 80AD8558 3C0780AE */  lui     $a3, %hi(D_80AD8D3C)       ## $a3 = 80AE0000
/* 00E1C 80AD855C 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 00E20 80AD8560 46048201 */  sub.s   $f8, $f16, $f4             
/* 00E24 80AD8564 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00E28 80AD8568 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00E2C 80AD856C 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 00E30 80AD8570 E7A80074 */  swc1    $f8, 0x0074($sp)           
/* 00E34 80AD8574 C602002C */  lwc1    $f2, 0x002C($s0)           ## 0000002C
/* 00E38 80AD8578 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 00E3C 80AD857C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00E40 80AD8580 46021480 */  add.s   $f18, $f2, $f2             
/* 00E44 80AD8584 24090009 */  addiu   $t1, $zero, 0x0009         ## $t1 = 00000009
/* 00E48 80AD8588 24E78D3C */  addiu   $a3, $a3, %lo(D_80AD8D3C)  ## $a3 = 80AD8D3C
/* 00E4C 80AD858C 24C68D30 */  addiu   $a2, $a2, %lo(D_80AD8D30)  ## $a2 = 80AD8D30
/* 00E50 80AD8590 460A9181 */  sub.s   $f6, $f18, $f10            
/* 00E54 80AD8594 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E58 80AD8598 27A50074 */  addiu   $a1, $sp, 0x0074           ## $a1 = FFFFFFF4
/* 00E5C 80AD859C E7A6007C */  swc1    $f6, 0x007C($sp)           
/* 00E60 80AD85A0 860A0196 */  lh      $t2, 0x0196($s0)           ## 00000196
/* 00E64 80AD85A4 AFA90038 */  sw      $t1, 0x0038($sp)           
/* 00E68 80AD85A8 AFA80034 */  sw      $t0, 0x0034($sp)           
/* 00E6C 80AD85AC 000A5880 */  sll     $t3, $t2,  2               
/* 00E70 80AD85B0 016A5821 */  addu    $t3, $t3, $t2              
/* 00E74 80AD85B4 000B5840 */  sll     $t3, $t3,  1               
/* 00E78 80AD85B8 256C0050 */  addiu   $t4, $t3, 0x0050           ## $t4 = 00000050
/* 00E7C 80AD85BC 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00E80 80AD85C0 AFAA003C */  sw      $t2, 0x003C($sp)           
/* 00E84 80AD85C4 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00E88 80AD85C8 AFB90030 */  sw      $t9, 0x0030($sp)           
/* 00E8C 80AD85CC AFA0002C */  sw      $zero, 0x002C($sp)         
/* 00E90 80AD85D0 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00E94 80AD85D4 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 00E98 80AD85D8 AFAF0020 */  sw      $t7, 0x0020($sp)           
/* 00E9C 80AD85DC AFAE001C */  sw      $t6, 0x001C($sp)           
/* 00EA0 80AD85E0 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 00EA4 80AD85E4 0C00A9AE */  jal     func_8002A6B8              
/* 00EA8 80AD85E8 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00EAC 80AD85EC C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 00EB0 80AD85F0 3C0680AE */  lui     $a2, %hi(D_80AD8D30)       ## $a2 = 80AE0000
/* 00EB4 80AD85F4 3C0780AE */  lui     $a3, %hi(D_80AD8D3C)       ## $a3 = 80AE0000
/* 00EB8 80AD85F8 E7B00074 */  swc1    $f16, 0x0074($sp)          
/* 00EBC 80AD85FC C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 00EC0 80AD8600 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00EC4 80AD8604 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00EC8 80AD8608 E7A4007C */  swc1    $f4, 0x007C($sp)           
/* 00ECC 80AD860C 860B0196 */  lh      $t3, 0x0196($s0)           ## 00000196
/* 00ED0 80AD8610 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 00ED4 80AD8614 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 00ED8 80AD8618 000B6080 */  sll     $t4, $t3,  2               
/* 00EDC 80AD861C 018B6021 */  addu    $t4, $t4, $t3              
/* 00EE0 80AD8620 000C6040 */  sll     $t4, $t4,  1               
/* 00EE4 80AD8624 258D0050 */  addiu   $t5, $t4, 0x0050           ## $t5 = 00000050
/* 00EE8 80AD8628 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00EEC 80AD862C 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 00EF0 80AD8630 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00EF4 80AD8634 240A0009 */  addiu   $t2, $zero, 0x0009         ## $t2 = 00000009
/* 00EF8 80AD8638 AFAA0038 */  sw      $t2, 0x0038($sp)           
/* 00EFC 80AD863C AFA90034 */  sw      $t1, 0x0034($sp)           
/* 00F00 80AD8640 AFA80030 */  sw      $t0, 0x0030($sp)           
/* 00F04 80AD8644 AFAB003C */  sw      $t3, 0x003C($sp)           
/* 00F08 80AD8648 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00F0C 80AD864C AFB90024 */  sw      $t9, 0x0024($sp)           
/* 00F10 80AD8650 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 00F14 80AD8654 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 00F18 80AD8658 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00F1C 80AD865C AFAF001C */  sw      $t7, 0x001C($sp)           
/* 00F20 80AD8660 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 00F24 80AD8664 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00F28 80AD8668 24E78D3C */  addiu   $a3, $a3, %lo(D_80AD8D3C)  ## $a3 = 80AD8D3C
/* 00F2C 80AD866C 24C68D30 */  addiu   $a2, $a2, %lo(D_80AD8D30)  ## $a2 = 80AD8D30
/* 00F30 80AD8670 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00F34 80AD8674 0C00A9AE */  jal     func_8002A6B8              
/* 00F38 80AD8678 27A50074 */  addiu   $a1, $sp, 0x0074           ## $a1 = FFFFFFF4
/* 00F3C 80AD867C 860C0196 */  lh      $t4, 0x0196($s0)           ## 00000196
/* 00F40 80AD8680 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00F44 80AD8684 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F48 80AD8688 55810004 */  bnel    $t4, $at, .L80AD869C       
/* 00F4C 80AD868C 3C063A83 */  lui     $a2, 0x3A83                ## $a2 = 3A830000
/* 00F50 80AD8690 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00F54 80AD8694 24053878 */  addiu   $a1, $zero, 0x3878         ## $a1 = 00003878
.L80AD8698:
/* 00F58 80AD8698 3C063A83 */  lui     $a2, 0x3A83                ## $a2 = 3A830000
.L80AD869C:
/* 00F5C 80AD869C 34C6126F */  ori     $a2, $a2, 0x126F           ## $a2 = 3A83126F
/* 00F60 80AD86A0 26040050 */  addiu   $a0, $s0, 0x0050           ## $a0 = 00000050
/* 00F64 80AD86A4 0C01DE80 */  jal     Math_ApproxF
              
/* 00F68 80AD86A8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00F6C 80AD86AC 5040003F */  beql    $v0, $zero, .L80AD87AC     
/* 00F70 80AD86B0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00F74 80AD86B4 920D0194 */  lbu     $t5, 0x0194($s0)           ## 00000194
/* 00F78 80AD86B8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00F7C 80AD86BC 11A00032 */  beq     $t5, $zero, .L80AD8788     
/* 00F80 80AD86C0 00000000 */  nop
/* 00F84 80AD86C4 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 00F88 80AD86C8 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00F8C 80AD86CC 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00F90 80AD86D0 E7A80060 */  swc1    $f8, 0x0060($sp)           
/* 00F94 80AD86D4 C6120080 */  lwc1    $f18, 0x0080($s0)          ## 00000080
/* 00F98 80AD86D8 846213D0 */  lh      $v0, 0x13D0($v1)           ## 8015FA30
/* 00F9C 80AD86DC 8C6E0ED0 */  lw      $t6, 0x0ED0($v1)           ## 8015F530
/* 00FA0 80AD86E0 E7B20064 */  swc1    $f18, 0x0064($sp)          
/* 00FA4 80AD86E4 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00FA8 80AD86E8 004E082A */  slt     $at, $v0, $t6              
/* 00FAC 80AD86EC 10200002 */  beq     $at, $zero, .L80AD86F8     
/* 00FB0 80AD86F0 E7AA0068 */  swc1    $f10, 0x0068($sp)          
/* 00FB4 80AD86F4 AC620ED0 */  sw      $v0, 0x0ED0($v1)           ## 8015F530
.L80AD86F8:
/* 00FB8 80AD86F8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00FBC 80AD86FC 0C00B35B */  jal     Flags_GetCollectible
              
/* 00FC0 80AD8700 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00FC4 80AD8704 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00FC8 80AD8708 1440000F */  bne     $v0, $zero, .L80AD8748     
/* 00FCC 80AD870C 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00FD0 80AD8710 846F13D0 */  lh      $t7, 0x13D0($v1)           ## 8015FA30
/* 00FD4 80AD8714 29E1003D */  slti    $at, $t7, 0x003D           
/* 00FD8 80AD8718 5020000C */  beql    $at, $zero, .L80AD874C     
/* 00FDC 80AD871C C7A60064 */  lwc1    $f6, 0x0064($sp)           
/* 00FE0 80AD8720 8606001C */  lh      $a2, 0x001C($s0)           ## 0000001C
/* 00FE4 80AD8724 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00FE8 80AD8728 27A50060 */  addiu   $a1, $sp, 0x0060           ## $a1 = FFFFFFE0
/* 00FEC 80AD872C 00063200 */  sll     $a2, $a2,  8               
/* 00FF0 80AD8730 24C64006 */  addiu   $a2, $a2, 0x4006           ## $a2 = 00004006
/* 00FF4 80AD8734 00063400 */  sll     $a2, $a2, 16               
/* 00FF8 80AD8738 0C007DDF */  jal     Item_DropCollectible2
              
/* 00FFC 80AD873C 00063403 */  sra     $a2, $a2, 16               
/* 01000 80AD8740 10000017 */  beq     $zero, $zero, .L80AD87A0   
/* 01004 80AD8744 00000000 */  nop
.L80AD8748:
/* 01008 80AD8748 C7A60064 */  lwc1    $f6, 0x0064($sp)           
.L80AD874C:
/* 0100C 80AD874C C7B00068 */  lwc1    $f16, 0x0068($sp)          
/* 01010 80AD8750 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 01014 80AD8754 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 01018 80AD8758 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 0101C 80AD875C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01020 80AD8760 24060015 */  addiu   $a2, $zero, 0x0015         ## $a2 = 00000015
/* 01024 80AD8764 8FA70060 */  lw      $a3, 0x0060($sp)           
/* 01028 80AD8768 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 0102C 80AD876C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 01030 80AD8770 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 01034 80AD8774 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01038 80AD8778 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 0103C 80AD877C E7B00014 */  swc1    $f16, 0x0014($sp)          
/* 01040 80AD8780 10000007 */  beq     $zero, $zero, .L80AD87A0   
/* 01044 80AD8784 00000000 */  nop
.L80AD8788:
/* 01048 80AD8788 0C00B34E */  jal     Flags_SetTempClear
              
/* 0104C 80AD878C 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 01050 80AD8790 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 01054 80AD8794 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 01058 80AD8798 847913D0 */  lh      $t9, 0x13D0($v1)           ## 8015FA30
/* 0105C 80AD879C AC790ED0 */  sw      $t9, 0x0ED0($v1)           ## 8015F530
.L80AD87A0:
/* 01060 80AD87A0 0C00B55C */  jal     Actor_Kill
              
/* 01064 80AD87A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01068 80AD87A8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
.L80AD87AC:
/* 0106C 80AD87AC 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 01070 80AD87B0 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 01074 80AD87B4 C6000050 */  lwc1    $f0, 0x0050($s0)           ## 00000050
/* 01078 80AD87B8 46082480 */  add.s   $f18, $f4, $f8             
/* 0107C 80AD87BC E6000054 */  swc1    $f0, 0x0054($s0)           ## 00000054
/* 01080 80AD87C0 E6000058 */  swc1    $f0, 0x0058($s0)           ## 00000058
/* 01084 80AD87C4 E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
/* 01088 80AD87C8 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 0108C 80AD87CC 8FB10048 */  lw      $s1, 0x0048($sp)           
/* 01090 80AD87D0 8FB00044 */  lw      $s0, 0x0044($sp)           
/* 01094 80AD87D4 03E00008 */  jr      $ra                        
/* 01098 80AD87D8 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000


