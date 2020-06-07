glabel func_80ADAE6C
/* 01EDC 80ADAE6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01EE0 80ADAE70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01EE4 80ADAE74 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01EE8 80ADAE78 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01EEC 80ADAE7C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01EF0 80ADAE80 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01EF4 80ADAE84 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01EF8 80ADAE88 1040001B */  beq     $v0, $zero, .L80ADAEF8     
/* 01EFC 80ADAE8C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01F00 80ADAE90 90CF0194 */  lbu     $t7, 0x0194($a2)           ## 00000194
/* 01F04 80ADAE94 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 01F08 80ADAE98 A0CE0231 */  sb      $t6, 0x0231($a2)           ## 00000231
/* 01F0C 80ADAE9C 11E00012 */  beq     $t7, $zero, .L80ADAEE8     
/* 01F10 80ADAEA0 3C084FC7 */  lui     $t0, 0x4FC7                ## $t0 = 4FC70000
/* 01F14 80ADAEA4 90D80199 */  lbu     $t8, 0x0199($a2)           ## 00000199
/* 01F18 80ADAEA8 84C2019A */  lh      $v0, 0x019A($a2)           ## 0000019A
/* 01F1C 80ADAEAC 3508FFEA */  ori     $t0, $t0, 0xFFEA           ## $t0 = 4FC7FFEA
/* 01F20 80ADAEB0 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 01F24 80ADAEB4 A0D90199 */  sb      $t9, 0x0199($a2)           ## 00000199
/* 01F28 80ADAEB8 10400004 */  beq     $v0, $zero, .L80ADAECC     
/* 01F2C 80ADAEBC ACC802CC */  sw      $t0, 0x02CC($a2)           ## 000002CC
/* 01F30 80ADAEC0 2449FFFF */  addiu   $t1, $v0, 0xFFFF           ## $t1 = FFFFFFFF
/* 01F34 80ADAEC4 A4C9019A */  sh      $t1, 0x019A($a2)           ## 0000019A
/* 01F38 80ADAEC8 84C2019A */  lh      $v0, 0x019A($a2)           ## 0000019A
.L80ADAECC:
/* 01F3C 80ADAECC 14400038 */  bne     $v0, $zero, .L80ADAFB0     
/* 01F40 80ADAED0 240A0014 */  addiu   $t2, $zero, 0x0014         ## $t2 = 00000014
/* 01F44 80ADAED4 A0CA0197 */  sb      $t2, 0x0197($a2)           ## 00000197
/* 01F48 80ADAED8 0C2B64F1 */  jal     func_80AD93C4              
/* 01F4C 80ADAEDC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01F50 80ADAEE0 10000034 */  beq     $zero, $zero, .L80ADAFB4   
/* 01F54 80ADAEE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADAEE8:
/* 01F58 80ADAEE8 0C2B67C7 */  jal     func_80AD9F1C              
/* 01F5C 80ADAEEC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01F60 80ADAEF0 10000030 */  beq     $zero, $zero, .L80ADAFB4   
/* 01F64 80ADAEF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADAEF8:
/* 01F68 80ADAEF8 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 01F6C 80ADAEFC 44813000 */  mtc1    $at, $f6                   ## $f6 = 255.00
/* 01F70 80ADAF00 C4C40164 */  lwc1    $f4, 0x0164($a2)           ## 00000164
/* 01F74 80ADAF04 C4CA015C */  lwc1    $f10, 0x015C($a2)          ## 0000015C
/* 01F78 80ADAF08 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 01F7C 80ADAF0C 46062202 */  mul.s   $f8, $f4, $f6              
/* 01F80 80ADAF10 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 01F84 80ADAF14 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01F88 80ADAF18 460A4403 */  div.s   $f16, $f8, $f10            
/* 01F8C 80ADAF1C 444BF800 */  cfc1    $t3, $31
/* 01F90 80ADAF20 44CCF800 */  ctc1    $t4, $31
/* 01F94 80ADAF24 00000000 */  nop
/* 01F98 80ADAF28 460084A4 */  cvt.w.s $f18, $f16                 
/* 01F9C 80ADAF2C 444CF800 */  cfc1    $t4, $31
/* 01FA0 80ADAF30 00000000 */  nop
/* 01FA4 80ADAF34 318C0078 */  andi    $t4, $t4, 0x0078           ## $t4 = 00000000
/* 01FA8 80ADAF38 51800013 */  beql    $t4, $zero, .L80ADAF88     
/* 01FAC 80ADAF3C 440C9000 */  mfc1    $t4, $f18                  
/* 01FB0 80ADAF40 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 01FB4 80ADAF44 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 01FB8 80ADAF48 46128481 */  sub.s   $f18, $f16, $f18           
/* 01FBC 80ADAF4C 44CCF800 */  ctc1    $t4, $31
/* 01FC0 80ADAF50 00000000 */  nop
/* 01FC4 80ADAF54 460094A4 */  cvt.w.s $f18, $f18                 
/* 01FC8 80ADAF58 444CF800 */  cfc1    $t4, $31
/* 01FCC 80ADAF5C 00000000 */  nop
/* 01FD0 80ADAF60 318C0078 */  andi    $t4, $t4, 0x0078           ## $t4 = 00000000
/* 01FD4 80ADAF64 15800005 */  bne     $t4, $zero, .L80ADAF7C     
/* 01FD8 80ADAF68 00000000 */  nop
/* 01FDC 80ADAF6C 440C9000 */  mfc1    $t4, $f18                  
/* 01FE0 80ADAF70 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01FE4 80ADAF74 10000007 */  beq     $zero, $zero, .L80ADAF94   
/* 01FE8 80ADAF78 01816025 */  or      $t4, $t4, $at              ## $t4 = 80000000
.L80ADAF7C:
/* 01FEC 80ADAF7C 10000005 */  beq     $zero, $zero, .L80ADAF94   
/* 01FF0 80ADAF80 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 01FF4 80ADAF84 440C9000 */  mfc1    $t4, $f18                  
.L80ADAF88:
/* 01FF8 80ADAF88 00000000 */  nop
/* 01FFC 80ADAF8C 0580FFFB */  bltz    $t4, .L80ADAF7C            
/* 02000 80ADAF90 00000000 */  nop
.L80ADAF94:
/* 02004 80ADAF94 90CD0194 */  lbu     $t5, 0x0194($a2)           ## 00000194
/* 02008 80ADAF98 44CBF800 */  ctc1    $t3, $31
/* 0200C 80ADAF9C A0CC0231 */  sb      $t4, 0x0231($a2)           ## 00000231
/* 02010 80ADAFA0 55A00004 */  bnel    $t5, $zero, .L80ADAFB4     
/* 02014 80ADAFA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02018 80ADAFA8 0C2B65F2 */  jal     func_80AD97C8              
/* 0201C 80ADAFAC 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80ADAFB0:
/* 02020 80ADAFB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADAFB4:
/* 02024 80ADAFB4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02028 80ADAFB8 03E00008 */  jr      $ra                        
/* 0202C 80ADAFBC 00000000 */  nop
