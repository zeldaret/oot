glabel EnMThunder_Draw
/* 00D08 80A9FCE8 27BDFF50 */  addiu   $sp, $sp, 0xFF50           ## $sp = FFFFFF50
/* 00D0C 80A9FCEC AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00D10 80A9FCF0 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00D14 80A9FCF4 AFA400B0 */  sw      $a0, 0x00B0($sp)           
/* 00D18 80A9FCF8 AFA500B4 */  sw      $a1, 0x00B4($sp)           
/* 00D1C 80A9FCFC 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00D20 80A9FD00 3C0680AA */  lui     $a2, %hi(D_80AA0490)       ## $a2 = 80AA0000
/* 00D24 80A9FD04 24C60490 */  addiu   $a2, $a2, %lo(D_80AA0490)  ## $a2 = 80AA0490
/* 00D28 80A9FD08 AFAF00A4 */  sw      $t7, 0x00A4($sp)           
/* 00D2C 80A9FD0C 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00D30 80A9FD10 27A40088 */  addiu   $a0, $sp, 0x0088           ## $a0 = FFFFFFD8
/* 00D34 80A9FD14 2407034C */  addiu   $a3, $zero, 0x034C         ## $a3 = 0000034C
/* 00D38 80A9FD18 0C031AB1 */  jal     Graph_OpenDisp              
/* 00D3C 80A9FD1C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00D40 80A9FD20 8FB800B4 */  lw      $t8, 0x00B4($sp)           
/* 00D44 80A9FD24 0C024F61 */  jal     func_80093D84              
/* 00D48 80A9FD28 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 00D4C 80A9FD2C 3C0180AA */  lui     $at, %hi(D_80AA0514)       ## $at = 80AA0000
/* 00D50 80A9FD30 C42C0514 */  lwc1    $f12, %lo(D_80AA0514)($at) 
/* 00D54 80A9FD34 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00D58 80A9FD38 44066000 */  mfc1    $a2, $f12                  
/* 00D5C 80A9FD3C 0C0342A3 */  jal     Matrix_Scale              
/* 00D60 80A9FD40 46006386 */  mov.s   $f14, $f12                 
/* 00D64 80A9FD44 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00D68 80A9FD48 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 00D6C 80A9FD4C 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 00D70 80A9FD50 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 00D74 80A9FD54 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 00D78 80A9FD58 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00D7C 80A9FD5C 8FAD00B4 */  lw      $t5, 0x00B4($sp)           
/* 00D80 80A9FD60 3C0580AA */  lui     $a1, %hi(D_80AA04A4)       ## $a1 = 80AA0000
/* 00D84 80A9FD64 24A504A4 */  addiu   $a1, $a1, %lo(D_80AA04A4)  ## $a1 = 80AA04A4
/* 00D88 80A9FD68 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 00D8C 80A9FD6C 24060355 */  addiu   $a2, $zero, 0x0355         ## $a2 = 00000355
/* 00D90 80A9FD70 0C0346A2 */  jal     Matrix_NewMtx              
/* 00D94 80A9FD74 AFA20084 */  sw      $v0, 0x0084($sp)           
/* 00D98 80A9FD78 8FA30084 */  lw      $v1, 0x0084($sp)           
/* 00D9C 80A9FD7C 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 00DA0 80A9FD80 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00DA4 80A9FD84 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00DA8 80A9FD88 8FA900B0 */  lw      $t1, 0x00B0($sp)           
/* 00DAC 80A9FD8C 35CE0020 */  ori     $t6, $t6, 0x0020           ## $t6 = DB060020
/* 00DB0 80A9FD90 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 00DB4 80A9FD94 912201C6 */  lbu     $v0, 0x01C6($t1)           ## 000001C6
/* 00DB8 80A9FD98 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00DBC 80A9FD9C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00DC0 80A9FDA0 10400003 */  beq     $v0, $zero, .L80A9FDB0     
/* 00DC4 80A9FDA4 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00DC8 80A9FDA8 14410027 */  bne     $v0, $at, .L80A9FE48       
/* 00DCC 80A9FDAC 00000000 */  nop
.L80A9FDB0:
/* 00DD0 80A9FDB0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00DD4 80A9FDB4 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00DD8 80A9FDB8 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 00DDC 80A9FDBC 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00DE0 80A9FDC0 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 00DE4 80A9FDC4 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 00DE8 80A9FDC8 C52001B4 */  lwc1    $f0, 0x01B4($t1)           ## 000001B4
/* 00DEC 80A9FDCC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00DF0 80A9FDD0 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 00DF4 80A9FDD4 46040182 */  mul.s   $f6, $f0, $f4              
/* 00DF8 80A9FDD8 8FB800B4 */  lw      $t8, 0x00B4($sp)           
/* 00DFC 80A9FDDC 240E0040 */  addiu   $t6, $zero, 0x0040         ## $t6 = 00000040
/* 00E00 80A9FDE0 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00E04 80A9FDE4 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 00E08 80A9FDE8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00E0C 80A9FDEC 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 00E10 80A9FDF0 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00E14 80A9FDF4 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 00E18 80A9FDF8 4600320D */  trunc.w.s $f8, $f6                   
/* 00E1C 80A9FDFC 24190008 */  addiu   $t9, $zero, 0x0008         ## $t9 = 00000008
/* 00E20 80A9FE00 240C0008 */  addiu   $t4, $zero, 0x0008         ## $t4 = 00000008
/* 00E24 80A9FE04 4600848D */  trunc.w.s $f18, $f16                 
/* 00E28 80A9FE08 440D4000 */  mfc1    $t5, $f8                   
/* 00E2C 80A9FE0C AFAC0028 */  sw      $t4, 0x0028($sp)           
/* 00E30 80A9FE10 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 00E34 80A9FE14 31AF00FF */  andi    $t7, $t5, 0x00FF           ## $t7 = 00000000
/* 00E38 80A9FE18 010F3023 */  subu    $a2, $t0, $t7              
/* 00E3C 80A9FE1C 440F9000 */  mfc1    $t7, $f18                  
/* 00E40 80A9FE20 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00E44 80A9FE24 AFA20080 */  sw      $v0, 0x0080($sp)           
/* 00E48 80A9FE28 31EE00FF */  andi    $t6, $t7, 0x00FF           ## $t6 = 00000000
/* 00E4C 80A9FE2C 010EC023 */  subu    $t8, $t0, $t6              
/* 00E50 80A9FE30 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 00E54 80A9FE34 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 00E58 80A9FE38 8FA30080 */  lw      $v1, 0x0080($sp)           
/* 00E5C 80A9FE3C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00E60 80A9FE40 8FA900B0 */  lw      $t1, 0x00B0($sp)           
/* 00E64 80A9FE44 912201C6 */  lbu     $v0, 0x01C6($t1)           ## 000001C6
.L80A9FE48:
/* 00E68 80A9FE48 10400006 */  beq     $v0, $zero, .L80A9FE64     
/* 00E6C 80A9FE4C 3C0EFA00 */  lui     $t6, 0xFA00                ## $t6 = FA000000
/* 00E70 80A9FE50 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00E74 80A9FE54 10410043 */  beq     $v0, $at, .L80A9FF64       
/* 00E78 80A9FE58 3C18FA00 */  lui     $t8, 0xFA00                ## $t8 = FA000000
/* 00E7C 80A9FE5C 10000082 */  beq     $zero, $zero, .L80AA0068   
/* 00E80 80A9FE60 8FA400A4 */  lw      $a0, 0x00A4($sp)           
.L80A9FE64:
/* 00E84 80A9FE64 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
/* 00E88 80A9FE68 35CE0080 */  ori     $t6, $t6, 0x0080           ## $t6 = FA000080
/* 00E8C 80A9FE6C 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00E90 80A9FE70 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 00E94 80A9FE74 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 00E98 80A9FE78 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 00E9C 80A9FE7C C52401B0 */  lwc1    $f4, 0x01B0($t1)           ## 000001B0
/* 00EA0 80A9FE80 44813000 */  mtc1    $at, $f6                   ## $f6 = 255.00
/* 00EA4 80A9FE84 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00EA8 80A9FE88 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 00EAC 80A9FE8C 46062202 */  mul.s   $f8, $f4, $f6              
/* 00EB0 80A9FE90 4458F800 */  cfc1    $t8, $31
/* 00EB4 80A9FE94 44D9F800 */  ctc1    $t9, $31
/* 00EB8 80A9FE98 00000000 */  nop
/* 00EBC 80A9FE9C 460042A4 */  cvt.w.s $f10, $f8                  
/* 00EC0 80A9FEA0 4459F800 */  cfc1    $t9, $31
/* 00EC4 80A9FEA4 00000000 */  nop
/* 00EC8 80A9FEA8 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 00ECC 80A9FEAC 53200013 */  beql    $t9, $zero, .L80A9FEFC     
/* 00ED0 80A9FEB0 44195000 */  mfc1    $t9, $f10                  
/* 00ED4 80A9FEB4 44815000 */  mtc1    $at, $f10                  ## $f10 = 2147483648.00
/* 00ED8 80A9FEB8 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00EDC 80A9FEBC 460A4281 */  sub.s   $f10, $f8, $f10            
/* 00EE0 80A9FEC0 44D9F800 */  ctc1    $t9, $31
/* 00EE4 80A9FEC4 00000000 */  nop
/* 00EE8 80A9FEC8 460052A4 */  cvt.w.s $f10, $f10                 
/* 00EEC 80A9FECC 4459F800 */  cfc1    $t9, $31
/* 00EF0 80A9FED0 00000000 */  nop
/* 00EF4 80A9FED4 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 00EF8 80A9FED8 17200005 */  bne     $t9, $zero, .L80A9FEF0     
/* 00EFC 80A9FEDC 00000000 */  nop
/* 00F00 80A9FEE0 44195000 */  mfc1    $t9, $f10                  
/* 00F04 80A9FEE4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00F08 80A9FEE8 10000007 */  beq     $zero, $zero, .L80A9FF08   
/* 00F0C 80A9FEEC 0321C825 */  or      $t9, $t9, $at              ## $t9 = 80000000
.L80A9FEF0:
/* 00F10 80A9FEF0 10000005 */  beq     $zero, $zero, .L80A9FF08   
/* 00F14 80A9FEF4 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 00F18 80A9FEF8 44195000 */  mfc1    $t9, $f10                  
.L80A9FEFC:
/* 00F1C 80A9FEFC 00000000 */  nop
/* 00F20 80A9FF00 0720FFFB */  bltz    $t9, .L80A9FEF0            
/* 00F24 80A9FF04 00000000 */  nop
.L80A9FF08:
/* 00F28 80A9FF08 03206025 */  or      $t4, $t9, $zero            ## $t4 = FFFFFFFF
/* 00F2C 80A9FF0C 318D00FF */  andi    $t5, $t4, 0x00FF           ## $t5 = 000000FF
/* 00F30 80A9FF10 2401AA00 */  addiu   $at, $zero, 0xAA00         ## $at = FFFFAA00
/* 00F34 80A9FF14 01A17825 */  or      $t7, $t5, $at              ## $t7 = FFFFAAFF
/* 00F38 80A9FF18 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 00F3C 80A9FF1C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00F40 80A9FF20 44D8F800 */  ctc1    $t8, $31
/* 00F44 80A9FF24 3C190401 */  lui     $t9, 0x0401                ## $t9 = 04010000
/* 00F48 80A9FF28 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 00F4C 80A9FF2C AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 00F50 80A9FF30 27392AF0 */  addiu   $t9, $t9, 0x2AF0           ## $t9 = 04012AF0
/* 00F54 80A9FF34 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 00F58 80A9FF38 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00F5C 80A9FF3C AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 00F60 80A9FF40 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00F64 80A9FF44 3C0F0401 */  lui     $t7, 0x0401                ## $t7 = 04010000
/* 00F68 80A9FF48 25EF2C10 */  addiu   $t7, $t7, 0x2C10           ## $t7 = 04012C10
/* 00F6C 80A9FF4C 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 00F70 80A9FF50 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 00F74 80A9FF54 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 00F78 80A9FF58 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 00F7C 80A9FF5C 10000041 */  beq     $zero, $zero, .L80AA0064   
/* 00F80 80A9FF60 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
.L80A9FF64:
/* 00F84 80A9FF64 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
/* 00F88 80A9FF68 37180080 */  ori     $t8, $t8, 0x0080           ## $t8 = DE000080
/* 00F8C 80A9FF6C 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00F90 80A9FF70 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 00F94 80A9FF74 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 00F98 80A9FF78 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 00F9C 80A9FF7C C53001B0 */  lwc1    $f16, 0x01B0($t1)          ## 000001B0
/* 00FA0 80A9FF80 44819000 */  mtc1    $at, $f18                  ## $f18 = 255.00
/* 00FA4 80A9FF84 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00FA8 80A9FF88 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 00FAC 80A9FF8C 46128102 */  mul.s   $f4, $f16, $f18            
/* 00FB0 80A9FF90 4459F800 */  cfc1    $t9, $31
/* 00FB4 80A9FF94 44CCF800 */  ctc1    $t4, $31
/* 00FB8 80A9FF98 00000000 */  nop
/* 00FBC 80A9FF9C 460021A4 */  cvt.w.s $f6, $f4                   
/* 00FC0 80A9FFA0 444CF800 */  cfc1    $t4, $31
/* 00FC4 80A9FFA4 00000000 */  nop
/* 00FC8 80A9FFA8 318C0078 */  andi    $t4, $t4, 0x0078           ## $t4 = 00000000
/* 00FCC 80A9FFAC 51800013 */  beql    $t4, $zero, .L80A9FFFC     
/* 00FD0 80A9FFB0 440C3000 */  mfc1    $t4, $f6                   
/* 00FD4 80A9FFB4 44813000 */  mtc1    $at, $f6                   ## $f6 = 2147483648.00
/* 00FD8 80A9FFB8 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00FDC 80A9FFBC 46062181 */  sub.s   $f6, $f4, $f6              
/* 00FE0 80A9FFC0 44CCF800 */  ctc1    $t4, $31
/* 00FE4 80A9FFC4 00000000 */  nop
/* 00FE8 80A9FFC8 460031A4 */  cvt.w.s $f6, $f6                   
/* 00FEC 80A9FFCC 444CF800 */  cfc1    $t4, $31
/* 00FF0 80A9FFD0 00000000 */  nop
/* 00FF4 80A9FFD4 318C0078 */  andi    $t4, $t4, 0x0078           ## $t4 = 00000000
/* 00FF8 80A9FFD8 15800005 */  bne     $t4, $zero, .L80A9FFF0     
/* 00FFC 80A9FFDC 00000000 */  nop
/* 01000 80A9FFE0 440C3000 */  mfc1    $t4, $f6                   
/* 01004 80A9FFE4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01008 80A9FFE8 10000007 */  beq     $zero, $zero, .L80AA0008   
/* 0100C 80A9FFEC 01816025 */  or      $t4, $t4, $at              ## $t4 = 80000000
.L80A9FFF0:
/* 01010 80A9FFF0 10000005 */  beq     $zero, $zero, .L80AA0008   
/* 01014 80A9FFF4 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 01018 80A9FFF8 440C3000 */  mfc1    $t4, $f6                   
.L80A9FFFC:
/* 0101C 80A9FFFC 00000000 */  nop
/* 01020 80AA0000 0580FFFB */  bltz    $t4, .L80A9FFF0            
/* 01024 80AA0004 00000000 */  nop
.L80AA0008:
/* 01028 80AA0008 01806825 */  or      $t5, $t4, $zero            ## $t5 = FFFFFFFF
/* 0102C 80AA000C 3C01AAFF */  lui     $at, 0xAAFF                ## $at = AAFF0000
/* 01030 80AA0010 3421FF00 */  ori     $at, $at, 0xFF00           ## $at = AAFFFF00
/* 01034 80AA0014 31AF00FF */  andi    $t7, $t5, 0x00FF           ## $t7 = 000000FF
/* 01038 80AA0018 01E17025 */  or      $t6, $t7, $at              ## $t6 = AAFFFFFF
/* 0103C 80AA001C AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 01040 80AA0020 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01044 80AA0024 44D9F800 */  ctc1    $t9, $31
/* 01048 80AA0028 3C0C0401 */  lui     $t4, 0x0401                ## $t4 = 04010000
/* 0104C 80AA002C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01050 80AA0030 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 01054 80AA0034 258C2570 */  addiu   $t4, $t4, 0x2570           ## $t4 = 04012570
/* 01058 80AA0038 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 0105C 80AA003C AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01060 80AA0040 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 01064 80AA0044 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01068 80AA0048 3C0E0401 */  lui     $t6, 0x0401                ## $t6 = 04010000
/* 0106C 80AA004C 25CE2690 */  addiu   $t6, $t6, 0x2690           ## $t6 = 04012690
/* 01070 80AA0050 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 01074 80AA0054 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 01078 80AA0058 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 0107C 80AA005C AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 01080 80AA0060 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
.L80AA0064:
/* 01084 80AA0064 8FA400A4 */  lw      $a0, 0x00A4($sp)           
.L80AA0068:
/* 01088 80AA0068 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0108C 80AA006C 0C03424C */  jal     Matrix_Mult              
/* 01090 80AA0070 248409E0 */  addiu   $a0, $a0, 0x09E0           ## $a0 = 000009E0
/* 01094 80AA0074 8FA400B0 */  lw      $a0, 0x00B0($sp)           
/* 01098 80AA0078 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 0109C 80AA007C 3C06C2C8 */  lui     $a2, 0xC2C8                ## $a2 = C2C80000
/* 010A0 80AA0080 908201C7 */  lbu     $v0, 0x01C7($a0)           ## 000001C7
/* 010A4 80AA0084 5040001D */  beql    $v0, $zero, .L80AA00FC     
/* 010A8 80AA0088 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 010AC 80AA008C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 010B0 80AA0090 10410005 */  beq     $v0, $at, .L80AA00A8       
/* 010B4 80AA0094 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 010B8 80AA0098 10410029 */  beq     $v0, $at, .L80AA0140       
/* 010BC 80AA009C 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 010C0 80AA00A0 1000003A */  beq     $zero, $zero, .L80AA018C   
/* 010C4 80AA00A4 00000000 */  nop
.L80AA00A8:
/* 010C8 80AA00A8 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 010CC 80AA00AC 3C01435C */  lui     $at, 0x435C                ## $at = 435C0000
/* 010D0 80AA00B0 44817000 */  mtc1    $at, $f14                  ## $f14 = 220.00
/* 010D4 80AA00B4 44066000 */  mfc1    $a2, $f12                  
/* 010D8 80AA00B8 0C034261 */  jal     Matrix_Translate              
/* 010DC 80AA00BC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 010E0 80AA00C0 3C0180AA */  lui     $at, %hi(D_80AA0518)       ## $at = 80AA0000
/* 010E4 80AA00C4 C42C0518 */  lwc1    $f12, %lo(D_80AA0518)($at) 
/* 010E8 80AA00C8 3C0180AA */  lui     $at, %hi(D_80AA051C)       ## $at = 80AA0000
/* 010EC 80AA00CC 3C06BECC */  lui     $a2, 0xBECC                ## $a2 = BECC0000
/* 010F0 80AA00D0 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = BECCCCCD
/* 010F4 80AA00D4 C42E051C */  lwc1    $f14, %lo(D_80AA051C)($at) 
/* 010F8 80AA00D8 0C0342A3 */  jal     Matrix_Scale              
/* 010FC 80AA00DC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01100 80AA00E0 3C014680 */  lui     $at, 0x4680                ## $at = 46800000
/* 01104 80AA00E4 44816000 */  mtc1    $at, $f12                  ## $f12 = 16384.00
/* 01108 80AA00E8 0C0342DC */  jal     Matrix_RotateX              
/* 0110C 80AA00EC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01110 80AA00F0 10000026 */  beq     $zero, $zero, .L80AA018C   
/* 01114 80AA00F4 8FA400B0 */  lw      $a0, 0x00B0($sp)           
/* 01118 80AA00F8 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
.L80AA00FC:
/* 0111C 80AA00FC 44817000 */  mtc1    $at, $f14                  ## $f14 = 0.00
/* 01120 80AA0100 0C034261 */  jal     Matrix_Translate              
/* 01124 80AA0104 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01128 80AA0108 3C0180AA */  lui     $at, %hi(D_80AA0520)       ## $at = 80AA0000
/* 0112C 80AA010C C42C0520 */  lwc1    $f12, %lo(D_80AA0520)($at) 
/* 01130 80AA0110 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 01134 80AA0114 44817000 */  mtc1    $at, $f14                  ## $f14 = -1.00
/* 01138 80AA0118 3C06BF33 */  lui     $a2, 0xBF33                ## $a2 = BF330000
/* 0113C 80AA011C 34C63333 */  ori     $a2, $a2, 0x3333           ## $a2 = BF333333
/* 01140 80AA0120 0C0342A3 */  jal     Matrix_Scale              
/* 01144 80AA0124 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01148 80AA0128 3C014680 */  lui     $at, 0x4680                ## $at = 46800000
/* 0114C 80AA012C 44816000 */  mtc1    $at, $f12                  ## $f12 = 16384.00
/* 01150 80AA0130 0C0342DC */  jal     Matrix_RotateX              
/* 01154 80AA0134 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01158 80AA0138 10000014 */  beq     $zero, $zero, .L80AA018C   
/* 0115C 80AA013C 8FA400B0 */  lw      $a0, 0x00B0($sp)           
.L80AA0140:
/* 01160 80AA0140 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 01164 80AA0144 44816000 */  mtc1    $at, $f12                  ## $f12 = 200.00
/* 01168 80AA0148 3C0143AF */  lui     $at, 0x43AF                ## $at = 43AF0000
/* 0116C 80AA014C 44817000 */  mtc1    $at, $f14                  ## $f14 = 350.00
/* 01170 80AA0150 0C034261 */  jal     Matrix_Translate              
/* 01174 80AA0154 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01178 80AA0158 3C0180AA */  lui     $at, %hi(D_80AA0524)       ## $at = 80AA0000
/* 0117C 80AA015C C42C0524 */  lwc1    $f12, %lo(D_80AA0524)($at) 
/* 01180 80AA0160 3C0180AA */  lui     $at, %hi(D_80AA0528)       ## $at = 80AA0000
/* 01184 80AA0164 3C06BF33 */  lui     $a2, 0xBF33                ## $a2 = BF330000
/* 01188 80AA0168 34C63333 */  ori     $a2, $a2, 0x3333           ## $a2 = BF333333
/* 0118C 80AA016C C42E0528 */  lwc1    $f14, %lo(D_80AA0528)($at) 
/* 01190 80AA0170 0C0342A3 */  jal     Matrix_Scale              
/* 01194 80AA0174 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01198 80AA0178 3C014680 */  lui     $at, 0x4680                ## $at = 46800000
/* 0119C 80AA017C 44816000 */  mtc1    $at, $f12                  ## $f12 = 16384.00
/* 011A0 80AA0180 0C0342DC */  jal     Matrix_RotateX              
/* 011A4 80AA0184 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 011A8 80AA0188 8FA400B0 */  lw      $a0, 0x00B0($sp)           
.L80AA018C:
/* 011AC 80AA018C 3C0180AA */  lui     $at, %hi(D_80AA052C)       ## $at = 80AA0000
/* 011B0 80AA0190 C42A052C */  lwc1    $f10, %lo(D_80AA052C)($at) 
/* 011B4 80AA0194 C48801B8 */  lwc1    $f8, 0x01B8($a0)           ## 000001B8
/* 011B8 80AA0198 3C0DFA00 */  lui     $t5, 0xFA00                ## $t5 = FA000000
/* 011BC 80AA019C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 011C0 80AA01A0 4608503E */  c.le.s  $f10, $f8                  
/* 011C4 80AA01A4 8FAA00B4 */  lw      $t2, 0x00B4($sp)           
/* 011C8 80AA01A8 35AD0080 */  ori     $t5, $t5, 0x0080           ## $t5 = FA000080
/* 011CC 80AA01AC 24090014 */  addiu   $t1, $zero, 0x0014         ## $t1 = 00000014
/* 011D0 80AA01B0 45000024 */  bc1f    .L80AA0244                 
/* 011D4 80AA01B4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 011D8 80AA01B8 8FAA00B4 */  lw      $t2, 0x00B4($sp)           
/* 011DC 80AA01BC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 011E0 80AA01C0 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 011E4 80AA01C4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 011E8 80AA01C8 01415021 */  addu    $t2, $t2, $at              
/* 011EC 80AA01CC 8D581DE4 */  lw      $t8, 0x1DE4($t2)           ## 00001DE4
/* 011F0 80AA01D0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 011F4 80AA01D4 3C0180AA */  lui     $at, %hi(D_80AA046C)       ## $at = 80AA0000
/* 011F8 80AA01D8 33190007 */  andi    $t9, $t8, 0x0007           ## $t9 = 00000000
/* 011FC 80AA01DC 00196080 */  sll     $t4, $t9,  2               
/* 01200 80AA01E0 002C0821 */  addu    $at, $at, $t4              
/* 01204 80AA01E4 C430046C */  lwc1    $f16, %lo(D_80AA046C)($at) 
/* 01208 80AA01E8 3C0FFA00 */  lui     $t7, 0xFA00                ## $t7 = FA000000
/* 0120C 80AA01EC 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 01210 80AA01F0 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 01214 80AA01F4 35EF0080 */  ori     $t7, $t7, 0x0080           ## $t7 = FA000080
/* 01218 80AA01F8 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 0121C 80AA01FC AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 01220 80AA0200 44819000 */  mtc1    $at, $f18                  ## $f18 = 6.00
/* 01224 80AA0204 909801C8 */  lbu     $t8, 0x01C8($a0)           ## 000001C8
/* 01228 80AA0208 2401AA00 */  addiu   $at, $zero, 0xAA00         ## $at = FFFFAA00
/* 0122C 80AA020C 46128102 */  mul.s   $f4, $f16, $f18            
/* 01230 80AA0210 0301C825 */  or      $t9, $t8, $at              ## $t9 = FFFFAA00
/* 01234 80AA0214 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 01238 80AA0218 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0123C 80AA021C 3C0FFF64 */  lui     $t7, 0xFF64                ## $t7 = FF640000
/* 01240 80AA0220 35EF0080 */  ori     $t7, $t7, 0x0080           ## $t7 = FF640080
/* 01244 80AA0224 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 01248 80AA0228 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 0124C 80AA022C 3C0DFB00 */  lui     $t5, 0xFB00                ## $t5 = FB000000
/* 01250 80AA0230 24090028 */  addiu   $t1, $zero, 0x0028         ## $t1 = 00000028
/* 01254 80AA0234 460C2380 */  add.s   $f14, $f4, $f12            
/* 01258 80AA0238 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 0125C 80AA023C 1000001D */  beq     $zero, $zero, .L80AA02B4   
/* 01260 80AA0240 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
.L80AA0244:
/* 01264 80AA0244 44816000 */  mtc1    $at, $f12                  ## $f12 = NaN
/* 01268 80AA0248 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0126C 80AA024C 01415021 */  addu    $t2, $t2, $at              
/* 01270 80AA0250 8D4E1DE4 */  lw      $t6, 0x1DE4($t2)           ## 00001DE4
/* 01274 80AA0254 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01278 80AA0258 3C0180AA */  lui     $at, %hi(D_80AA046C)       ## $at = 80AA0000
/* 0127C 80AA025C 31D80007 */  andi    $t8, $t6, 0x0007           ## $t8 = 00000000
/* 01280 80AA0260 0018C880 */  sll     $t9, $t8,  2               
/* 01284 80AA0264 00390821 */  addu    $at, $at, $t9              
/* 01288 80AA0268 C420046C */  lwc1    $f0, %lo(D_80AA046C)($at)  
/* 0128C 80AA026C 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 01290 80AA0270 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 01294 80AA0274 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01298 80AA0278 908E01C8 */  lbu     $t6, 0x01C8($a0)           ## 000001C8
/* 0129C 80AA027C 3C01AAFF */  lui     $at, 0xAAFF                ## $at = AAFF0000
/* 012A0 80AA0280 3421FF00 */  ori     $at, $at, 0xFF00           ## $at = AAFFFF00
/* 012A4 80AA0284 01C1C025 */  or      $t8, $t6, $at              ## $t8 = AAFFFF00
/* 012A8 80AA0288 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 012AC 80AA028C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 012B0 80AA0290 46000180 */  add.s   $f6, $f0, $f0              
/* 012B4 80AA0294 3C0D0064 */  lui     $t5, 0x0064                ## $t5 = 00640000
/* 012B8 80AA0298 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 012BC 80AA029C AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 012C0 80AA02A0 35ADFF80 */  ori     $t5, $t5, 0xFF80           ## $t5 = 0064FF80
/* 012C4 80AA02A4 3C0CFB00 */  lui     $t4, 0xFB00                ## $t4 = FB000000
/* 012C8 80AA02A8 460C3380 */  add.s   $f14, $f6, $f12            
/* 012CC 80AA02AC AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 012D0 80AA02B0 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
.L80AA02B4:
/* 012D4 80AA02B4 44067000 */  mfc1    $a2, $f14                  
/* 012D8 80AA02B8 AFA9009C */  sw      $t1, 0x009C($sp)           
/* 012DC 80AA02BC 0C0342A3 */  jal     Matrix_Scale              
/* 012E0 80AA02C0 AFAA0044 */  sw      $t2, 0x0044($sp)           
/* 012E4 80AA02C4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 012E8 80AA02C8 8FA9009C */  lw      $t1, 0x009C($sp)           
/* 012EC 80AA02CC 8FAA0044 */  lw      $t2, 0x0044($sp)           
/* 012F0 80AA02D0 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 012F4 80AA02D4 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 012F8 80AA02D8 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 012FC 80AA02DC 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 01300 80AA02E0 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 01304 80AA02E4 8FB800B4 */  lw      $t8, 0x00B4($sp)           
/* 01308 80AA02E8 3C0580AA */  lui     $a1, %hi(D_80AA04B8)       ## $a1 = 80AA0000
/* 0130C 80AA02EC 24A504B8 */  addiu   $a1, $a1, %lo(D_80AA04B8)  ## $a1 = 80AA04B8
/* 01310 80AA02F0 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 01314 80AA02F4 240603C0 */  addiu   $a2, $zero, 0x03C0         ## $a2 = 000003C0
/* 01318 80AA02F8 AFA20054 */  sw      $v0, 0x0054($sp)           
/* 0131C 80AA02FC AFA9009C */  sw      $t1, 0x009C($sp)           
/* 01320 80AA0300 0C0346A2 */  jal     Matrix_NewMtx              
/* 01324 80AA0304 AFAA0044 */  sw      $t2, 0x0044($sp)           
/* 01328 80AA0308 8FA30054 */  lw      $v1, 0x0054($sp)           
/* 0132C 80AA030C 8FA9009C */  lw      $t1, 0x009C($sp)           
/* 01330 80AA0310 8FAA0044 */  lw      $t2, 0x0044($sp)           
/* 01334 80AA0314 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01338 80AA0318 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0133C 80AA031C 8FAB00B4 */  lw      $t3, 0x00B4($sp)           
/* 01340 80AA0320 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 01344 80AA0324 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01348 80AA0328 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 0134C 80AA032C 358C0024 */  ori     $t4, $t4, 0x0024           ## $t4 = DB060024
/* 01350 80AA0330 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 01354 80AA0334 8D431DE4 */  lw      $v1, 0x1DE4($t2)           ## 00001DE4
/* 01358 80AA0338 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 0135C 80AA033C 240D0020 */  addiu   $t5, $zero, 0x0020         ## $t5 = 00000020
/* 01360 80AA0340 00690019 */  multu   $v1, $t1                   
/* 01364 80AA0344 0003C080 */  sll     $t8, $v1,  2               
/* 01368 80AA0348 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 0136C 80AA034C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01370 80AA0350 0303C021 */  addu    $t8, $t8, $v1              
/* 01374 80AA0354 0018C080 */  sll     $t8, $t8,  2               
/* 01378 80AA0358 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 0137C 80AA035C AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 01380 80AA0360 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 01384 80AA0364 00033080 */  sll     $a2, $v1,  2               
/* 01388 80AA0368 00006012 */  mflo    $t4                        
/* 0138C 80AA036C 318D00FF */  andi    $t5, $t4, 0x00FF           ## $t5 = 00000024
/* 01390 80AA0370 240F0008 */  addiu   $t7, $zero, 0x0008         ## $t7 = 00000008
/* 01394 80AA0374 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 01398 80AA0378 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 00000000
/* 0139C 80AA037C 00C33021 */  addu    $a2, $a2, $v1              
/* 013A0 80AA0380 30C600FF */  andi    $a2, $a2, 0x00FF           ## $a2 = 00000000
/* 013A4 80AA0384 AFB9001C */  sw      $t9, 0x001C($sp)           
/* 013A8 80AA0388 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 013AC 80AA038C AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 013B0 80AA0390 AFAD0020 */  sw      $t5, 0x0020($sp)           
/* 013B4 80AA0394 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 013B8 80AA0398 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 013BC 80AA039C 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 013C0 80AA03A0 AFA20050 */  sw      $v0, 0x0050($sp)           
/* 013C4 80AA03A4 8FA80050 */  lw      $t0, 0x0050($sp)           
/* 013C8 80AA03A8 3C0C0401 */  lui     $t4, 0x0401                ## $t4 = 04010000
/* 013CC 80AA03AC 258C3610 */  addiu   $t4, $t4, 0x3610           ## $t4 = 04013610
/* 013D0 80AA03B0 AD020004 */  sw      $v0, 0x0004($t0)           ## 00000004
/* 013D4 80AA03B4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 013D8 80AA03B8 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 013DC 80AA03BC 3C0680AA */  lui     $a2, %hi(D_80AA04CC)       ## $a2 = 80AA0000
/* 013E0 80AA03C0 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 013E4 80AA03C4 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 013E8 80AA03C8 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 013EC 80AA03CC AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 013F0 80AA03D0 8FAD00B4 */  lw      $t5, 0x00B4($sp)           
/* 013F4 80AA03D4 24C604CC */  addiu   $a2, $a2, %lo(D_80AA04CC)  ## $a2 = 80AA04CC
/* 013F8 80AA03D8 27A40088 */  addiu   $a0, $sp, 0x0088           ## $a0 = FFFFFFD8
/* 013FC 80AA03DC 24070407 */  addiu   $a3, $zero, 0x0407         ## $a3 = 00000407
/* 01400 80AA03E0 0C031AD5 */  jal     Graph_CloseDisp              
/* 01404 80AA03E4 8DA50000 */  lw      $a1, 0x0000($t5)           ## 00000000
/* 01408 80AA03E8 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 0140C 80AA03EC 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 01410 80AA03F0 27BD00B0 */  addiu   $sp, $sp, 0x00B0           ## $sp = 00000000
/* 01414 80AA03F4 03E00008 */  jr      $ra                        
/* 01418 80AA03F8 00000000 */  nop
/* 0141C 80AA03FC 00000000 */  nop

