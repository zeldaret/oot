glabel func_80A5ED3C
/* 03A4C 80A5ED3C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 03A50 80A5ED40 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 03A54 80A5ED44 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 03A58 80A5ED48 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 03A5C 80A5ED4C C48401C4 */  lwc1    $f4, 0x01C4($a0)           ## 000001C4
/* 03A60 80A5ED50 240E000F */  addiu   $t6, $zero, 0x000F         ## $t6 = 0000000F
/* 03A64 80A5ED54 240F0008 */  addiu   $t7, $zero, 0x0008         ## $t7 = 00000008
/* 03A68 80A5ED58 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 03A6C 80A5ED5C AC8F0210 */  sw      $t7, 0x0210($a0)           ## 00000210
/* 03A70 80A5ED60 E7A40034 */  swc1    $f4, 0x0034($sp)           
/* 03A74 80A5ED64 8C980158 */  lw      $t8, 0x0158($a0)           ## 00000158
/* 03A78 80A5ED68 3C0880A6 */  lui     $t0, %hi(D_80A65E58)       ## $t0 = 80A60000
/* 03A7C 80A5ED6C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03A80 80A5ED70 0018C880 */  sll     $t9, $t8,  2               
/* 03A84 80A5ED74 01194021 */  addu    $t0, $t0, $t9              
/* 03A88 80A5ED78 8D085E58 */  lw      $t0, %lo(D_80A65E58)($t0)  
/* 03A8C 80A5ED7C 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 03A90 80A5ED80 8D040020 */  lw      $a0, 0x0020($t0)           ## 80A60020
/* 03A94 80A5ED84 8E090158 */  lw      $t1, 0x0158($s0)           ## 00000158
/* 03A98 80A5ED88 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 03A9C 80A5ED8C 3C0B80A6 */  lui     $t3, %hi(D_80A65E58)       ## $t3 = 80A60000
/* 03AA0 80A5ED90 00095080 */  sll     $t2, $t1,  2               
/* 03AA4 80A5ED94 8E0C0210 */  lw      $t4, 0x0210($s0)           ## 00000210
/* 03AA8 80A5ED98 016A5821 */  addu    $t3, $t3, $t2              
/* 03AAC 80A5ED9C 8D6B5E58 */  lw      $t3, %lo(D_80A65E58)($t3)  
/* 03AB0 80A5EDA0 46803220 */  cvt.s.w $f8, $f6                   
/* 03AB4 80A5EDA4 000C6880 */  sll     $t5, $t4,  2               
/* 03AB8 80A5EDA8 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 03ABC 80A5EDAC 016D7021 */  addu    $t6, $t3, $t5              
/* 03AC0 80A5EDB0 44815000 */  mtc1    $at, $f10                  ## $f10 = -3.00
/* 03AC4 80A5EDB4 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 03AC8 80A5EDB8 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 03ACC 80A5EDBC AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 03AD0 80A5EDC0 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 03AD4 80A5EDC4 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 03AD8 80A5EDC8 3C063FC0 */  lui     $a2, 0x3FC0                ## $a2 = 3FC00000
/* 03ADC 80A5EDCC 8FA70034 */  lw      $a3, 0x0034($sp)           
/* 03AE0 80A5EDD0 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 03AE4 80A5EDD4 E7AA0018 */  swc1    $f10, 0x0018($sp)          
/* 03AE8 80A5EDD8 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 03AEC 80A5EDDC 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 03AF0 80A5EDE0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 03AF4 80A5EDE4 8E0201CC */  lw      $v0, 0x01CC($s0)           ## 000001CC
/* 03AF8 80A5EDE8 AE000244 */  sw      $zero, 0x0244($s0)         ## 00000244
/* 03AFC 80A5EDEC E6100274 */  swc1    $f16, 0x0274($s0)          ## 00000274
/* 03B00 80A5EDF0 E612006C */  swc1    $f18, 0x006C($s0)          ## 0000006C
/* 03B04 80A5EDF4 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 03B08 80A5EDF8 84580002 */  lh      $t8, 0x0002($v0)           ## 00000002
/* 03B0C 80A5EDFC 3C0180A6 */  lui     $at, %hi(D_80A668D8)       ## $at = 80A60000
/* 03B10 80A5EE00 C42A68D8 */  lwc1    $f10, %lo(D_80A668D8)($at) 
/* 03B14 80A5EE04 44983000 */  mtc1    $t8, $f6                   ## $f6 = 0.00
/* 03B18 80A5EE08 C608025C */  lwc1    $f8, 0x025C($s0)           ## 0000025C
/* 03B1C 80A5EE0C 8E1901F0 */  lw      $t9, 0x01F0($s0)           ## 000001F0
/* 03B20 80A5EE10 46803020 */  cvt.s.w $f0, $f6                   
/* 03B24 80A5EE14 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 03B28 80A5EE18 3C098013 */  lui     $t1, 0x8013                ## $t1 = 80130000
/* 03B2C 80A5EE1C 37280008 */  ori     $t0, $t9, 0x0008           ## $t0 = 00000008
/* 03B30 80A5EE20 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 03B34 80A5EE24 AE0801F0 */  sw      $t0, 0x01F0($s0)           ## 000001F0
/* 03B38 80A5EE28 460A0402 */  mul.s   $f16, $f0, $f10            
/* 03B3C 80A5EE2C 252933E8 */  addiu   $t1, $t1, 0x33E8           ## $t1 = 801333E8
/* 03B40 80A5EE30 24042818 */  addiu   $a0, $zero, 0x2818         ## $a0 = 00002818
/* 03B44 80A5EE34 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 03B48 80A5EE38 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 03B4C 80A5EE3C 46104481 */  sub.s   $f18, $f8, $f16            
/* 03B50 80A5EE40 E612025C */  swc1    $f18, 0x025C($s0)          ## 0000025C
/* 03B54 80A5EE44 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 03B58 80A5EE48 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 03B5C 80A5EE4C AFA70010 */  sw      $a3, 0x0010($sp)           
/* 03B60 80A5EE50 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 03B64 80A5EE54 240500AA */  addiu   $a1, $zero, 0x00AA         ## $a1 = 000000AA
/* 03B68 80A5EE58 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 03B6C 80A5EE5C 0C02A800 */  jal     func_800AA000              
/* 03B70 80A5EE60 2407000A */  addiu   $a3, $zero, 0x000A         ## $a3 = 0000000A
/* 03B74 80A5EE64 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 03B78 80A5EE68 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 03B7C 80A5EE6C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 03B80 80A5EE70 03E00008 */  jr      $ra                        
/* 03B84 80A5EE74 00000000 */  nop


