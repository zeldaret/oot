.rdata
glabel D_808D1DDC
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1DEC
    .asciz "LH\n"
    .balign 4

glabel D_808D1DF0
    .asciz "RH\n"
    .balign 4

glabel D_808D1DF4
    .asciz "BD\n"
    .balign 4

glabel D_808D1DF8
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1E08
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1E18
    .asciz "BH\n"
    .balign 4

glabel D_808D1E1C
    .asciz "BHC\n"
    .balign 4

glabel D_808D1E24
    .asciz "BHCE\n"
    .balign 4

glabel D_808D1E2C
    .asciz "SK\n"
    .balign 4

glabel D_808D1E30
    .asciz "END\n"
    .balign 4

glabel D_808D1E38
    .asciz "../z_boss_fd.c"
    .balign 4

.late_rodata
glabel D_808D1FC0
    .float 0.1

glabel D_808D1FC4
    .float 7000.0

glabel D_808D1FC8
    .float 5000.0

glabel D_808D1FCC
    .float 5000.0

glabel D_808D1FD0
    .float 1.57079637051

glabel D_808D1FD4
 .word 0xC0490FDB
glabel D_808D1FD8
    .float 0.2

glabel D_808D1FDC
    .float 3.14159274101

.text
glabel func_808D08F8
/* 05B38 808D08F8 27BDFE88 */  addiu   $sp, $sp, 0xFE88           ## $sp = FFFFFE88
/* 05B3C 808D08FC AFB60070 */  sw      $s6, 0x0070($sp)           
/* 05B40 808D0900 AFB30064 */  sw      $s3, 0x0064($sp)           
/* 05B44 808D0904 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 05B48 808D0908 0080B025 */  or      $s6, $a0, $zero            ## $s6 = 00000000
/* 05B4C 808D090C AFBF0074 */  sw      $ra, 0x0074($sp)           
/* 05B50 808D0910 AFB5006C */  sw      $s5, 0x006C($sp)           
/* 05B54 808D0914 AFB40068 */  sw      $s4, 0x0068($sp)           
/* 05B58 808D0918 AFB20060 */  sw      $s2, 0x0060($sp)           
/* 05B5C 808D091C AFB1005C */  sw      $s1, 0x005C($sp)           
/* 05B60 808D0920 AFB00058 */  sw      $s0, 0x0058($sp)           
/* 05B64 808D0924 F7BA0050 */  sdc1    $f26, 0x0050($sp)          
/* 05B68 808D0928 F7B80048 */  sdc1    $f24, 0x0048($sp)          
/* 05B6C 808D092C F7B60040 */  sdc1    $f22, 0x0040($sp)          
/* 05B70 808D0930 F7B40038 */  sdc1    $f20, 0x0038($sp)          
/* 05B74 808D0934 8C840000 */  lw      $a0, 0x0000($a0)           ## 00000000
/* 05B78 808D0938 0C031A73 */  jal     Graph_Alloc
              
/* 05B7C 808D093C 24050480 */  addiu   $a1, $zero, 0x0480         ## $a1 = 00000480
/* 05B80 808D0940 8EC50000 */  lw      $a1, 0x0000($s6)           ## 00000000
/* 05B84 808D0944 3C06808D */  lui     $a2, %hi(D_808D1DDC)       ## $a2 = 808D0000
/* 05B88 808D0948 0040A825 */  or      $s5, $v0, $zero            ## $s5 = 00000000
/* 05B8C 808D094C 24C61DDC */  addiu   $a2, $a2, %lo(D_808D1DDC)  ## $a2 = 808D1DDC
/* 05B90 808D0950 27A40158 */  addiu   $a0, $sp, 0x0158           ## $a0 = FFFFFFE0
/* 05B94 808D0954 240711ED */  addiu   $a3, $zero, 0x11ED         ## $a3 = 000011ED
/* 05B98 808D0958 0C031AB1 */  jal     Graph_OpenDisps              
/* 05B9C 808D095C 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 05BA0 808D0960 866E021E */  lh      $t6, 0x021E($s3)           ## 0000021E
/* 05BA4 808D0964 51C0001A */  beql    $t6, $zero, .L808D09D0     
/* 05BA8 808D0968 8E8202C0 */  lw      $v0, 0x02C0($s4)           ## 000002C0
/* 05BAC 808D096C 8E8202C0 */  lw      $v0, 0x02C0($s4)           ## 000002C0
/* 05BB0 808D0970 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 05BB4 808D0974 37180024 */  ori     $t8, $t8, 0x0024           ## $t8 = DB060024
/* 05BB8 808D0978 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 05BBC 808D097C AE8F02C0 */  sw      $t7, 0x02C0($s4)           ## 000002C0
/* 05BC0 808D0980 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 05BC4 808D0984 927902D5 */  lbu     $t9, 0x02D5($s3)           ## 000002D5
/* 05BC8 808D0988 3C04808D */  lui     $a0, %hi(D_808D1BB8)       ## $a0 = 808D0000
/* 05BCC 808D098C 3C0D8016 */  lui     $t5, %hi(gSegments)
/* 05BD0 808D0990 00194080 */  sll     $t0, $t9,  2               
/* 05BD4 808D0994 00882021 */  addu    $a0, $a0, $t0              
/* 05BD8 808D0998 8C841BB8 */  lw      $a0, %lo(D_808D1BB8)($a0)  
/* 05BDC 808D099C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 05BE0 808D09A0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 05BE4 808D09A4 00045100 */  sll     $t2, $a0,  4               
/* 05BE8 808D09A8 000A5F02 */  srl     $t3, $t2, 28               
/* 05BEC 808D09AC 000B6080 */  sll     $t4, $t3,  2               
/* 05BF0 808D09B0 01AC6821 */  addu    $t5, $t5, $t4              
/* 05BF4 808D09B4 8DAD6FA8 */  lw      $t5, %lo(gSegments)($t5)
/* 05BF8 808D09B8 00814824 */  and     $t1, $a0, $at              
/* 05BFC 808D09BC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 05C00 808D09C0 012D7021 */  addu    $t6, $t1, $t5              
/* 05C04 808D09C4 01C17821 */  addu    $t7, $t6, $at              
/* 05C08 808D09C8 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 05C0C 808D09CC 8E8202C0 */  lw      $v0, 0x02C0($s4)           ## 000002C0
.L808D09D0:
/* 05C10 808D09D0 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 05C14 808D09D4 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 05C18 808D09D8 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 05C1C 808D09DC AE9802C0 */  sw      $t8, 0x02C0($s4)           ## 000002C0
/* 05C20 808D09E0 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 05C24 808D09E4 C6680258 */  lwc1    $f8, 0x0258($s3)           ## 00000258
/* 05C28 808D09E8 C6640254 */  lwc1    $f4, 0x0254($s3)           ## 00000254
/* 05C2C 808D09EC 8EC40000 */  lw      $a0, 0x0000($s6)           ## 00000000
/* 05C30 808D09F0 240B0020 */  addiu   $t3, $zero, 0x0020         ## $t3 = 00000020
/* 05C34 808D09F4 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 05C38 808D09F8 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 05C3C 808D09FC AFA90018 */  sw      $t1, 0x0018($sp)           
/* 05C40 808D0A00 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 05C44 808D0A04 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 05C48 808D0A08 C670025C */  lwc1    $f16, 0x025C($s3)          ## 0000025C
/* 05C4C 808D0A0C 4600218D */  trunc.w.s $f6, $f4                   
/* 05C50 808D0A10 24090020 */  addiu   $t1, $zero, 0x0020         ## $t1 = 00000020
/* 05C54 808D0A14 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 05C58 808D0A18 4600848D */  trunc.w.s $f18, $f16                 
/* 05C5C 808D0A1C 44063000 */  mfc1    $a2, $f6                   
/* 05C60 808D0A20 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 05C64 808D0A24 4600428D */  trunc.w.s $f10, $f8                  
/* 05C68 808D0A28 440E9000 */  mfc1    $t6, $f18                  
/* 05C6C 808D0A2C 00063400 */  sll     $a2, $a2, 16               
/* 05C70 808D0A30 00063403 */  sra     $a2, $a2, 16               
/* 05C74 808D0A34 000E7C00 */  sll     $t7, $t6, 16               
/* 05C78 808D0A38 000FC403 */  sra     $t8, $t7, 16               
/* 05C7C 808D0A3C AFB8001C */  sw      $t8, 0x001C($sp)           
/* 05C80 808D0A40 C6640260 */  lwc1    $f4, 0x0260($s3)           ## 00000260
/* 05C84 808D0A44 44075000 */  mfc1    $a3, $f10                  
/* 05C88 808D0A48 AFA90028 */  sw      $t1, 0x0028($sp)           
/* 05C8C 808D0A4C 4600218D */  trunc.w.s $f6, $f4                   
/* 05C90 808D0A50 00073C00 */  sll     $a3, $a3, 16               
/* 05C94 808D0A54 00073C03 */  sra     $a3, $a3, 16               
/* 05C98 808D0A58 AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 05C9C 808D0A5C 44083000 */  mfc1    $t0, $f6                   
/* 05CA0 808D0A60 00000000 */  nop
/* 05CA4 808D0A64 00085400 */  sll     $t2, $t0, 16               
/* 05CA8 808D0A68 000A5C03 */  sra     $t3, $t2, 16               
/* 05CAC 808D0A6C 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 05CB0 808D0A70 AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 05CB4 808D0A74 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 05CB8 808D0A78 8E8202C0 */  lw      $v0, 0x02C0($s4)           ## 000002C0
/* 05CBC 808D0A7C 3C0EFA00 */  lui     $t6, 0xFA00                ## $t6 = FA000000
/* 05CC0 808D0A80 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 05CC4 808D0A84 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 05CC8 808D0A88 AE8D02C0 */  sw      $t5, 0x02C0($s4)           ## 000002C0
/* 05CCC 808D0A8C AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 05CD0 808D0A90 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 05CD4 808D0A94 8E8202C0 */  lw      $v0, 0x02C0($s4)           ## 000002C0
/* 05CD8 808D0A98 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 05CDC 808D0A9C 2401FF00 */  addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
/* 05CE0 808D0AA0 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 05CE4 808D0AA4 AE9802C0 */  sw      $t8, 0x02C0($s4)           ## 000002C0
/* 05CE8 808D0AA8 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 05CEC 808D0AAC C6680270 */  lwc1    $f8, 0x0270($s3)           ## 00000270
/* 05CF0 808D0AB0 3C04808D */  lui     $a0, %hi(D_808D1DEC)       ## $a0 = 808D0000
/* 05CF4 808D0AB4 24841DEC */  addiu   $a0, $a0, %lo(D_808D1DEC)  ## $a0 = 808D1DEC
/* 05CF8 808D0AB8 4600428D */  trunc.w.s $f10, $f8                  
/* 05CFC 808D0ABC 440C5000 */  mfc1    $t4, $f10                  
/* 05D00 808D0AC0 00000000 */  nop
/* 05D04 808D0AC4 318900FF */  andi    $t1, $t4, 0x00FF           ## $t1 = 00000000
/* 05D08 808D0AC8 01216825 */  or      $t5, $t1, $at              ## $t5 = FFFFFF00
/* 05D0C 808D0ACC 0C00084C */  jal     osSyncPrintf
              
/* 05D10 808D0AD0 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 05D14 808D0AD4 0C034213 */  jal     Matrix_Push              
/* 05D18 808D0AD8 00000000 */  nop
/* 05D1C 808D0ADC 3C0E808D */  lui     $t6, %hi(D_808D1AC4)       ## $t6 = 808D0000
/* 05D20 808D0AE0 85CE1AC4 */  lh      $t6, %lo(D_808D1AC4)($t6)  
/* 05D24 808D0AE4 866F0228 */  lh      $t7, 0x0228($s3)           ## 00000228
/* 05D28 808D0AE8 24010064 */  addiu   $at, $zero, 0x0064         ## $at = 00000064
/* 05D2C 808D0AEC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 05D30 808D0AF0 01CF1021 */  addu    $v0, $t6, $t7              
/* 05D34 808D0AF4 0041001A */  div     $zero, $v0, $at            
/* 05D38 808D0AF8 00001010 */  mfhi    $v0                        
/* 05D3C 808D0AFC 00021400 */  sll     $v0, $v0, 16               
/* 05D40 808D0B00 00021403 */  sra     $v0, $v0, 16               
/* 05D44 808D0B04 0002C080 */  sll     $t8, $v0,  2               
/* 05D48 808D0B08 0302C023 */  subu    $t8, $t8, $v0              
/* 05D4C 808D0B0C 0018C080 */  sll     $t8, $t8,  2               
/* 05D50 808D0B10 02788021 */  addu    $s0, $s3, $t8              
/* 05D54 808D0B14 C60C078C */  lwc1    $f12, 0x078C($s0)          ## 0000078C
/* 05D58 808D0B18 C60E0790 */  lwc1    $f14, 0x0790($s0)          ## 00000790
/* 05D5C 808D0B1C 0C034261 */  jal     Matrix_Translate              
/* 05D60 808D0B20 8E060794 */  lw      $a2, 0x0794($s0)           ## 00000794
/* 05D64 808D0B24 C60C02E0 */  lwc1    $f12, 0x02E0($s0)          ## 000002E0
/* 05D68 808D0B28 0C034348 */  jal     Matrix_RotateY              
/* 05D6C 808D0B2C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 05D70 808D0B30 C60C02DC */  lwc1    $f12, 0x02DC($s0)          ## 000002DC
/* 05D74 808D0B34 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 05D78 808D0B38 0C0342DC */  jal     Matrix_RotateX              
/* 05D7C 808D0B3C 46006307 */  neg.s   $f12, $f12                 
/* 05D80 808D0B40 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
/* 05D84 808D0B44 4481A000 */  mtc1    $at, $f20                  ## $f20 = 13.00
/* 05D88 808D0B48 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 05D8C 808D0B4C 4481B000 */  mtc1    $at, $f22                  ## $f22 = -5.00
/* 05D90 808D0B50 3C01C150 */  lui     $at, 0xC150                ## $at = C1500000
/* 05D94 808D0B54 44816000 */  mtc1    $at, $f12                  ## $f12 = -13.00
/* 05D98 808D0B58 4406A000 */  mfc1    $a2, $f20                  
/* 05D9C 808D0B5C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 05DA0 808D0B60 0C034261 */  jal     Matrix_Translate              
/* 05DA4 808D0B64 4600B386 */  mov.s   $f14, $f22                 
/* 05DA8 808D0B68 3C01808D */  lui     $at, %hi(D_808D1FC0)       ## $at = 808D0000
/* 05DAC 808D0B6C C4381FC0 */  lwc1    $f24, %lo(D_808D1FC0)($at) 
/* 05DB0 808D0B70 C6700050 */  lwc1    $f16, 0x0050($s3)          ## 00000050
/* 05DB4 808D0B74 C6720054 */  lwc1    $f18, 0x0054($s3)          ## 00000054
/* 05DB8 808D0B78 C6640058 */  lwc1    $f4, 0x0058($s3)           ## 00000058
/* 05DBC 808D0B7C 46188302 */  mul.s   $f12, $f16, $f24           
/* 05DC0 808D0B80 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 05DC4 808D0B84 46189382 */  mul.s   $f14, $f18, $f24           
/* 05DC8 808D0B88 00000000 */  nop
/* 05DCC 808D0B8C 46182182 */  mul.s   $f6, $f4, $f24             
/* 05DD0 808D0B90 44063000 */  mfc1    $a2, $f6                   
/* 05DD4 808D0B94 0C0342A3 */  jal     Matrix_Scale              
/* 05DD8 808D0B98 00000000 */  nop
/* 05DDC 808D0B9C 8E650194 */  lw      $a1, 0x0194($s3)           ## 00000194
/* 05DE0 808D0BA0 8E6601B0 */  lw      $a2, 0x01B0($s3)           ## 000001B0
/* 05DE4 808D0BA4 3C07808D */  lui     $a3, %hi(func_808D00A4)    ## $a3 = 808D0000
/* 05DE8 808D0BA8 24E700A4 */  addiu   $a3, $a3, %lo(func_808D00A4) ## $a3 = 808D00A4
/* 05DEC 808D0BAC AFB30014 */  sw      $s3, 0x0014($sp)           
/* 05DF0 808D0BB0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 05DF4 808D0BB4 0C028572 */  jal     SkelAnime_DrawOpa
              
/* 05DF8 808D0BB8 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 05DFC 808D0BBC 0C034221 */  jal     Matrix_Pull              
/* 05E00 808D0BC0 00000000 */  nop
/* 05E04 808D0BC4 3C04808D */  lui     $a0, %hi(D_808D1DF0)       ## $a0 = 808D0000
/* 05E08 808D0BC8 0C00084C */  jal     osSyncPrintf
              
/* 05E0C 808D0BCC 24841DF0 */  addiu   $a0, $a0, %lo(D_808D1DF0)  ## $a0 = 808D1DF0
/* 05E10 808D0BD0 0C034213 */  jal     Matrix_Push              
/* 05E14 808D0BD4 00000000 */  nop
/* 05E18 808D0BD8 3C19808D */  lui     $t9, %hi(D_808D1AC4)       ## $t9 = 808D0000
/* 05E1C 808D0BDC 87391AC4 */  lh      $t9, %lo(D_808D1AC4)($t9)  
/* 05E20 808D0BE0 86680228 */  lh      $t0, 0x0228($s3)           ## 00000228
/* 05E24 808D0BE4 24010064 */  addiu   $at, $zero, 0x0064         ## $at = 00000064
/* 05E28 808D0BE8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 05E2C 808D0BEC 03281021 */  addu    $v0, $t9, $t0              
/* 05E30 808D0BF0 0041001A */  div     $zero, $v0, $at            
/* 05E34 808D0BF4 00001010 */  mfhi    $v0                        
/* 05E38 808D0BF8 00021400 */  sll     $v0, $v0, 16               
/* 05E3C 808D0BFC 00021403 */  sra     $v0, $v0, 16               
/* 05E40 808D0C00 00025080 */  sll     $t2, $v0,  2               
/* 05E44 808D0C04 01425023 */  subu    $t2, $t2, $v0              
/* 05E48 808D0C08 000A5080 */  sll     $t2, $t2,  2               
/* 05E4C 808D0C0C 026A8021 */  addu    $s0, $s3, $t2              
/* 05E50 808D0C10 C60C078C */  lwc1    $f12, 0x078C($s0)          ## 0000078C
/* 05E54 808D0C14 C60E0790 */  lwc1    $f14, 0x0790($s0)          ## 00000790
/* 05E58 808D0C18 0C034261 */  jal     Matrix_Translate              
/* 05E5C 808D0C1C 8E060794 */  lw      $a2, 0x0794($s0)           ## 00000794
/* 05E60 808D0C20 C60C02E0 */  lwc1    $f12, 0x02E0($s0)          ## 000002E0
/* 05E64 808D0C24 0C034348 */  jal     Matrix_RotateY              
/* 05E68 808D0C28 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 05E6C 808D0C2C C60C02DC */  lwc1    $f12, 0x02DC($s0)          ## 000002DC
/* 05E70 808D0C30 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 05E74 808D0C34 0C0342DC */  jal     Matrix_RotateX              
/* 05E78 808D0C38 46006307 */  neg.s   $f12, $f12                 
/* 05E7C 808D0C3C 4406A000 */  mfc1    $a2, $f20                  
/* 05E80 808D0C40 4600A306 */  mov.s   $f12, $f20                 
/* 05E84 808D0C44 4600B386 */  mov.s   $f14, $f22                 
/* 05E88 808D0C48 0C034261 */  jal     Matrix_Translate              
/* 05E8C 808D0C4C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 05E90 808D0C50 C6680050 */  lwc1    $f8, 0x0050($s3)           ## 00000050
/* 05E94 808D0C54 C66A0054 */  lwc1    $f10, 0x0054($s3)          ## 00000054
/* 05E98 808D0C58 C6700058 */  lwc1    $f16, 0x0058($s3)          ## 00000058
/* 05E9C 808D0C5C 46184302 */  mul.s   $f12, $f8, $f24            
/* 05EA0 808D0C60 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 05EA4 808D0C64 46185382 */  mul.s   $f14, $f10, $f24           
/* 05EA8 808D0C68 00000000 */  nop
/* 05EAC 808D0C6C 46188482 */  mul.s   $f18, $f16, $f24           
/* 05EB0 808D0C70 44069000 */  mfc1    $a2, $f18                  
/* 05EB4 808D0C74 0C0342A3 */  jal     Matrix_Scale              
/* 05EB8 808D0C78 00000000 */  nop
/* 05EBC 808D0C7C 8E6501D8 */  lw      $a1, 0x01D8($s3)           ## 000001D8
/* 05EC0 808D0C80 8E6601F4 */  lw      $a2, 0x01F4($s3)           ## 000001F4
/* 05EC4 808D0C84 3C07808D */  lui     $a3, %hi(func_808D01C0)    ## $a3 = 808D0000
/* 05EC8 808D0C88 24E701C0 */  addiu   $a3, $a3, %lo(func_808D01C0) ## $a3 = 808D01C0
/* 05ECC 808D0C8C AFB30014 */  sw      $s3, 0x0014($sp)           
/* 05ED0 808D0C90 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 05ED4 808D0C94 0C028572 */  jal     SkelAnime_DrawOpa
              
/* 05ED8 808D0C98 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 05EDC 808D0C9C 0C034221 */  jal     Matrix_Pull              
/* 05EE0 808D0CA0 00000000 */  nop
/* 05EE4 808D0CA4 3C04808D */  lui     $a0, %hi(D_808D1DF4)       ## $a0 = 808D0000
/* 05EE8 808D0CA8 0C00084C */  jal     osSyncPrintf
              
/* 05EEC 808D0CAC 24841DF4 */  addiu   $a0, $a0, %lo(D_808D1DF4)  ## $a0 = 808D1DF4
/* 05EF0 808D0CB0 8E8202C0 */  lw      $v0, 0x02C0($s4)           ## 000002C0
/* 05EF4 808D0CB4 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 05EF8 808D0CB8 358C0034 */  ori     $t4, $t4, 0x0034           ## $t4 = DB060034
/* 05EFC 808D0CBC 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 05F00 808D0CC0 AE8B02C0 */  sw      $t3, 0x02C0($s4)           ## 000002C0
/* 05F04 808D0CC4 AC550004 */  sw      $s5, 0x0004($v0)           ## 00000004
/* 05F08 808D0CC8 0C034213 */  jal     Matrix_Push              
/* 05F0C 808D0CCC AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 05F10 808D0CD0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 05F14 808D0CD4 26691490 */  addiu   $t1, $s3, 0x1490           ## $t1 = 00001490
/* 05F18 808D0CD8 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 05F1C 808D0CDC 4480D000 */  mtc1    $zero, $f26                ## $f26 = 0.00
/* 05F20 808D0CE0 AFA9007C */  sw      $t1, 0x007C($sp)           
/* 05F24 808D0CE4 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
.L808D0CE8:
/* 05F28 808D0CE8 00111840 */  sll     $v1, $s1,  1               
/* 05F2C 808D0CEC 3C0D808D */  lui     $t5, %hi(D_808D1AC2)       ## $t5 = 808D0000
/* 05F30 808D0CF0 01A36821 */  addu    $t5, $t5, $v1              
/* 05F34 808D0CF4 85AD1AC2 */  lh      $t5, %lo(D_808D1AC2)($t5)  
/* 05F38 808D0CF8 866E0228 */  lh      $t6, 0x0228($s3)           ## 00000228
/* 05F3C 808D0CFC 24010064 */  addiu   $at, $zero, 0x0064         ## $at = 00000064
/* 05F40 808D0D00 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 05F44 808D0D04 01AE1021 */  addu    $v0, $t5, $t6              
/* 05F48 808D0D08 0041001A */  div     $zero, $v0, $at            
/* 05F4C 808D0D0C 00001010 */  mfhi    $v0                        
/* 05F50 808D0D10 00021400 */  sll     $v0, $v0, 16               
/* 05F54 808D0D14 00021403 */  sra     $v0, $v0, 16               
/* 05F58 808D0D18 00027880 */  sll     $t7, $v0,  2               
/* 05F5C 808D0D1C 01E27823 */  subu    $t7, $t7, $v0              
/* 05F60 808D0D20 000F7880 */  sll     $t7, $t7,  2               
/* 05F64 808D0D24 026F8021 */  addu    $s0, $s3, $t7              
/* 05F68 808D0D28 C60C078C */  lwc1    $f12, 0x078C($s0)          ## 0000078C
/* 05F6C 808D0D2C C60E0790 */  lwc1    $f14, 0x0790($s0)          ## 00000790
/* 05F70 808D0D30 8E060794 */  lw      $a2, 0x0794($s0)           ## 00000794
/* 05F74 808D0D34 0C034261 */  jal     Matrix_Translate              
/* 05F78 808D0D38 AFA30084 */  sw      $v1, 0x0084($sp)           
/* 05F7C 808D0D3C C60C02E0 */  lwc1    $f12, 0x02E0($s0)          ## 000002E0
/* 05F80 808D0D40 0C034348 */  jal     Matrix_RotateY              
/* 05F84 808D0D44 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 05F88 808D0D48 C60C02DC */  lwc1    $f12, 0x02DC($s0)          ## 000002DC
/* 05F8C 808D0D4C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 05F90 808D0D50 0C0342DC */  jal     Matrix_RotateX              
/* 05F94 808D0D54 46006307 */  neg.s   $f12, $f12                 
/* 05F98 808D0D58 4600D306 */  mov.s   $f12, $f26                 
/* 05F9C 808D0D5C 4600D386 */  mov.s   $f14, $f26                 
/* 05FA0 808D0D60 3C06420C */  lui     $a2, 0x420C                ## $a2 = 420C0000
/* 05FA4 808D0D64 0C034261 */  jal     Matrix_Translate              
/* 05FA8 808D0D68 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 05FAC 808D0D6C C66C0050 */  lwc1    $f12, 0x0050($s3)          ## 00000050
/* 05FB0 808D0D70 C66E0054 */  lwc1    $f14, 0x0054($s3)          ## 00000054
/* 05FB4 808D0D74 8E660058 */  lw      $a2, 0x0058($s3)           ## 00000058
/* 05FB8 808D0D78 0C0342A3 */  jal     Matrix_Scale              
/* 05FBC 808D0D7C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 05FC0 808D0D80 8678021E */  lh      $t8, 0x021E($s3)           ## 0000021E
/* 05FC4 808D0D84 3C08808D */  lui     $t0, %hi(D_808D1C0C)       ## $t0 = 808D0000
/* 05FC8 808D0D88 25081C0C */  addiu   $t0, $t0, %lo(D_808D1C0C)  ## $t0 = 808D1C0C
/* 05FCC 808D0D8C 0238082A */  slt     $at, $s1, $t8              
/* 05FD0 808D0D90 5020004A */  beql    $at, $zero, .L808D0EBC     
/* 05FD4 808D0D94 8D0B0000 */  lw      $t3, 0x0000($t0)           ## 808D1C0C
/* 05FD8 808D0D98 44912000 */  mtc1    $s1, $f4                   ## $f4 = 0.00
/* 05FDC 808D0D9C 86790228 */  lh      $t9, 0x0228($s3)           ## 00000228
/* 05FE0 808D0DA0 3C01808D */  lui     $at, %hi(D_808D1FC4)       ## $at = 808D0000
/* 05FE4 808D0DA4 468021A0 */  cvt.s.w $f6, $f4                   
/* 05FE8 808D0DA8 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 05FEC 808D0DAC C4281FC4 */  lwc1    $f8, %lo(D_808D1FC4)($at)  
/* 05FF0 808D0DB0 3C01808D */  lui     $at, %hi(D_808D1FC8)       ## $at = 808D0000
/* 05FF4 808D0DB4 C4321FC8 */  lwc1    $f18, %lo(D_808D1FC8)($at) 
/* 05FF8 808D0DB8 46805420 */  cvt.s.w $f16, $f10                 
/* 05FFC 808D0DBC 46083082 */  mul.s   $f2, $f6, $f8              
/* 06000 808D0DC0 00000000 */  nop
/* 06004 808D0DC4 46128102 */  mul.s   $f4, $f16, $f18            
/* 06008 808D0DC8 E7A20088 */  swc1    $f2, 0x0088($sp)           
/* 0600C 808D0DCC 46022180 */  add.s   $f6, $f4, $f2              
/* 06010 808D0DD0 4600320D */  trunc.w.s $f8, $f6                   
/* 06014 808D0DD4 44044000 */  mfc1    $a0, $f8                   
/* 06018 808D0DD8 00000000 */  nop
/* 0601C 808D0DDC 00042400 */  sll     $a0, $a0, 16               
/* 06020 808D0DE0 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 06024 808D0DE4 00042403 */  sra     $a0, $a0, 16               
/* 06028 808D0DE8 E7A0008C */  swc1    $f0, 0x008C($sp)           
/* 0602C 808D0DEC 866A0228 */  lh      $t2, 0x0228($s3)           ## 00000228
/* 06030 808D0DF0 3C01808D */  lui     $at, %hi(D_808D1FCC)       ## $at = 808D0000
/* 06034 808D0DF4 C4321FCC */  lwc1    $f18, %lo(D_808D1FCC)($at) 
/* 06038 808D0DF8 448A5000 */  mtc1    $t2, $f10                  ## $f10 = 0.00
/* 0603C 808D0DFC C7A20088 */  lwc1    $f2, 0x0088($sp)           
/* 06040 808D0E00 46805420 */  cvt.s.w $f16, $f10                 
/* 06044 808D0E04 46128102 */  mul.s   $f4, $f16, $f18            
/* 06048 808D0E08 46022180 */  add.s   $f6, $f4, $f2              
/* 0604C 808D0E0C 4600320D */  trunc.w.s $f8, $f6                   
/* 06050 808D0E10 44044000 */  mfc1    $a0, $f8                   
/* 06054 808D0E14 00000000 */  nop
/* 06058 808D0E18 00042400 */  sll     $a0, $a0, 16               
/* 0605C 808D0E1C 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 06060 808D0E20 00042403 */  sra     $a0, $a0, 16               
/* 06064 808D0E24 C6620280 */  lwc1    $f2, 0x0280($s3)           ## 00000280
/* 06068 808D0E28 C7AA008C */  lwc1    $f10, 0x008C($sp)          
/* 0606C 808D0E2C 4406B000 */  mfc1    $a2, $f22                  
/* 06070 808D0E30 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 06074 808D0E34 460A1402 */  mul.s   $f16, $f2, $f10            
/* 06078 808D0E38 00000000 */  nop
/* 0607C 808D0E3C 46001482 */  mul.s   $f18, $f2, $f0             
/* 06080 808D0E40 46168300 */  add.s   $f12, $f16, $f22           
/* 06084 808D0E44 0C0342A3 */  jal     Matrix_Scale              
/* 06088 808D0E48 46169380 */  add.s   $f14, $f18, $f22           
/* 0608C 808D0E4C 3C01808D */  lui     $at, %hi(D_808D1FD0)       ## $at = 808D0000
/* 06090 808D0E50 C42C1FD0 */  lwc1    $f12, %lo(D_808D1FD0)($at) 
/* 06094 808D0E54 0C034348 */  jal     Matrix_RotateY              
/* 06098 808D0E58 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0609C 808D0E5C 3C05808D */  lui     $a1, %hi(D_808D1DF8)       ## $a1 = 808D0000
/* 060A0 808D0E60 24A51DF8 */  addiu   $a1, $a1, %lo(D_808D1DF8)  ## $a1 = 808D1DF8
/* 060A4 808D0E64 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 060A8 808D0E68 0C034695 */  jal     Matrix_ToMtx              
/* 060AC 808D0E6C 2406126F */  addiu   $a2, $zero, 0x126F         ## $a2 = 0000126F
/* 060B0 808D0E70 8E8202C0 */  lw      $v0, 0x02C0($s4)           ## 000002C0
/* 060B4 808D0E74 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 060B8 808D0E78 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 060BC 808D0E7C 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 060C0 808D0E80 AE8C02C0 */  sw      $t4, 0x02C0($s4)           ## 000002C0
/* 060C4 808D0E84 AC550004 */  sw      $s5, 0x0004($v0)           ## 00000004
/* 060C8 808D0E88 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 060CC 808D0E8C 8E8202C0 */  lw      $v0, 0x02C0($s4)           ## 000002C0
/* 060D0 808D0E90 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 060D4 808D0E94 00117880 */  sll     $t7, $s1,  2               
/* 060D8 808D0E98 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 060DC 808D0E9C AE8D02C0 */  sw      $t5, 0x02C0($s4)           ## 000002C0
/* 060E0 808D0EA0 3C18808D */  lui     $t8, %hi(D_808D1BC4)       ## $t8 = 808D0000
/* 060E4 808D0EA4 030FC021 */  addu    $t8, $t8, $t7              
/* 060E8 808D0EA8 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 060EC 808D0EAC 8F181BC4 */  lw      $t8, %lo(D_808D1BC4)($t8)  
/* 060F0 808D0EB0 10000074 */  beq     $zero, $zero, .L808D1084   
/* 060F4 808D0EB4 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 060F8 808D0EB8 8D0B0000 */  lw      $t3, 0x0000($t0)           ## 00000000
.L808D0EBC:
/* 060FC 808D0EBC 27B900F0 */  addiu   $t9, $sp, 0x00F0           ## $t9 = FFFFFF78
/* 06100 808D0EC0 8D0A0004 */  lw      $t2, 0x0004($t0)           ## 00000004
/* 06104 808D0EC4 AF2B0000 */  sw      $t3, 0x0000($t9)           ## FFFFFF78
/* 06108 808D0EC8 8D0B0008 */  lw      $t3, 0x0008($t0)           ## 00000008
/* 0610C 808D0ECC AF2A0004 */  sw      $t2, 0x0004($t9)           ## FFFFFF7C
/* 06110 808D0ED0 3C06C489 */  lui     $a2, 0xC489                ## $a2 = C4890000
/* 06114 808D0ED4 AF2B0008 */  sw      $t3, 0x0008($t9)           ## FFFFFF80
/* 06118 808D0ED8 8FAC0084 */  lw      $t4, 0x0084($sp)           
/* 0611C 808D0EDC 3C0D0601 */  lui     $t5, 0x0601                ## $t5 = 06010000
/* 06120 808D0EE0 25ADB2F8 */  addiu   $t5, $t5, 0xB2F8           ## $t5 = 0600B2F8
/* 06124 808D0EE4 026C9021 */  addu    $s2, $s3, $t4              
/* 06128 808D0EE8 864913D0 */  lh      $t1, 0x13D0($s2)           ## 000013D0
/* 0612C 808D0EEC 34C68000 */  ori     $a2, $a2, 0x8000           ## $a2 = C4898000
/* 06130 808D0EF0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 06134 808D0EF4 29210002 */  slti    $at, $t1, 0x0002           
/* 06138 808D0EF8 10200062 */  beq     $at, $zero, .L808D1084     
/* 0613C 808D0EFC 00000000 */  nop
/* 06140 808D0F00 E7B800D4 */  swc1    $f24, 0x00D4($sp)          
/* 06144 808D0F04 4600C506 */  mov.s   $f20, $f24                 
/* 06148 808D0F08 4600D306 */  mov.s   $f12, $f26                 
/* 0614C 808D0F0C 4600D386 */  mov.s   $f14, $f26                 
/* 06150 808D0F10 0C034261 */  jal     Matrix_Translate              
/* 06154 808D0F14 AFAD0080 */  sw      $t5, 0x0080($sp)           
/* 06158 808D0F18 3C01808D */  lui     $at, %hi(D_808D1FD4)       ## $at = 808D0000
/* 0615C 808D0F1C C42C1FD4 */  lwc1    $f12, %lo(D_808D1FD4)($at) 
/* 06160 808D0F20 0C034348 */  jal     Matrix_RotateY              
/* 06164 808D0F24 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 06168 808D0F28 2A21000E */  slti    $at, $s1, 0x000E           
/* 0616C 808D0F2C 1420000F */  bne     $at, $zero, .L808D0F6C     
/* 06170 808D0F30 262EFFF2 */  addiu   $t6, $s1, 0xFFF2           ## $t6 = FFFFFFF2
/* 06174 808D0F34 448E2000 */  mtc1    $t6, $f4                   ## $f4 = NaN
/* 06178 808D0F38 3C01808D */  lui     $at, %hi(D_808D1FD8)       ## $at = 808D0000
/* 0617C 808D0F3C C4281FD8 */  lwc1    $f8, %lo(D_808D1FD8)($at)  
/* 06180 808D0F40 468021A0 */  cvt.s.w $f6, $f4                   
/* 06184 808D0F44 4406B000 */  mfc1    $a2, $f22                  
/* 06188 808D0F48 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0618C 808D0F4C 46083282 */  mul.s   $f10, $f6, $f8             
/* 06190 808D0F50 460AB301 */  sub.s   $f12, $f22, $f10           
/* 06194 808D0F54 46006386 */  mov.s   $f14, $f12                 
/* 06198 808D0F58 0C0342A3 */  jal     Matrix_Scale              
/* 0619C 808D0F5C E7AC0084 */  swc1    $f12, 0x0084($sp)          
/* 061A0 808D0F60 C7AC0084 */  lwc1    $f12, 0x0084($sp)          
/* 061A4 808D0F64 460CC502 */  mul.s   $f20, $f24, $f12           
/* 061A8 808D0F68 E7B400D4 */  swc1    $f20, 0x00D4($sp)          
.L808D0F6C:
/* 061AC 808D0F6C 4406C000 */  mfc1    $a2, $f24                  
/* 061B0 808D0F70 4600C306 */  mov.s   $f12, $f24                 
/* 061B4 808D0F74 4600C386 */  mov.s   $f14, $f24                 
/* 061B8 808D0F78 0C0342A3 */  jal     Matrix_Scale              
/* 061BC 808D0F7C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 061C0 808D0F80 8E8202C0 */  lw      $v0, 0x02C0($s4)           ## 000002C0
/* 061C4 808D0F84 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 061C8 808D0F88 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 061CC 808D0F8C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 061D0 808D0F90 AE8F02C0 */  sw      $t7, 0x02C0($s4)           ## 000002C0
/* 061D4 808D0F94 3C05808D */  lui     $a1, %hi(D_808D1E08)       ## $a1 = 808D0000
/* 061D8 808D0F98 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 061DC 808D0F9C 8EC40000 */  lw      $a0, 0x0000($s6)           ## 00000000
/* 061E0 808D0FA0 24A51E08 */  addiu   $a1, $a1, %lo(D_808D1E08)  ## $a1 = 808D1E08
/* 061E4 808D0FA4 240612A0 */  addiu   $a2, $zero, 0x12A0         ## $a2 = 000012A0
/* 061E8 808D0FA8 0C0346A2 */  jal     Matrix_NewMtx              
/* 061EC 808D0FAC 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 061F0 808D0FB0 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 061F4 808D0FB4 8E8202C0 */  lw      $v0, 0x02C0($s4)           ## 000002C0
/* 061F8 808D0FB8 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 061FC 808D0FBC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 06200 808D0FC0 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 06204 808D0FC4 AE9902C0 */  sw      $t9, 0x02C0($s4)           ## 000002C0
/* 06208 808D0FC8 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 0620C 808D0FCC 8FAA0080 */  lw      $t2, 0x0080($sp)           
/* 06210 808D0FD0 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 06214 808D0FD4 26D01C24 */  addiu   $s0, $s6, 0x1C24           ## $s0 = 00001C24
/* 06218 808D0FD8 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 0621C 808D0FDC 864B13D0 */  lh      $t3, 0x13D0($s2)           ## 000013D0
/* 06220 808D0FE0 27A400F0 */  addiu   $a0, $sp, 0x00F0           ## $a0 = FFFFFF78
/* 06224 808D0FE4 27A500E4 */  addiu   $a1, $sp, 0x00E4           ## $a1 = FFFFFF6C
/* 06228 808D0FE8 15610026 */  bne     $t3, $at, .L808D1084       
/* 0622C 808D0FEC 00000000 */  nop
/* 06230 808D0FF0 0C0346BD */  jal     Matrix_MultVec3f              
/* 06234 808D0FF4 A64C13D0 */  sh      $t4, 0x13D0($s2)           ## 000013D0
/* 06238 808D0FF8 0C034236 */  jal     Matrix_Get              
/* 0623C 808D0FFC 27A400FC */  addiu   $a0, $sp, 0x00FC           ## $a0 = FFFFFF84
/* 06240 808D1000 27A400FC */  addiu   $a0, $sp, 0x00FC           ## $a0 = FFFFFF84
/* 06244 808D1004 27A500DC */  addiu   $a1, $sp, 0x00DC           ## $a1 = FFFFFF64
/* 06248 808D1008 0C034833 */  jal     func_800D20CC              
/* 0624C 808D100C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 06250 808D1010 C7B000E4 */  lwc1    $f16, 0x00E4($sp)          
/* 06254 808D1014 C7B200E8 */  lwc1    $f18, 0x00E8($sp)          
/* 06258 808D1018 C7A400EC */  lwc1    $f4, 0x00EC($sp)           
/* 0625C 808D101C 87A900DC */  lh      $t1, 0x00DC($sp)           
/* 06260 808D1020 87AD00DE */  lh      $t5, 0x00DE($sp)           
/* 06264 808D1024 87AE00E0 */  lh      $t6, 0x00E0($sp)           
/* 06268 808D1028 262F00C8 */  addiu   $t7, $s1, 0x00C8           ## $t7 = 000000C8
/* 0626C 808D102C AFAF0028 */  sw      $t7, 0x0028($sp)           
/* 06270 808D1030 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00001C24
/* 06274 808D1034 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 06278 808D1038 02C03025 */  or      $a2, $s6, $zero            ## $a2 = 00000000
/* 0627C 808D103C 240700AD */  addiu   $a3, $zero, 0x00AD         ## $a3 = 000000AD
/* 06280 808D1040 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 06284 808D1044 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 06288 808D1048 E7A40018 */  swc1    $f4, 0x0018($sp)           
/* 0628C 808D104C AFA9001C */  sw      $t1, 0x001C($sp)           
/* 06290 808D1050 AFAD0020 */  sw      $t5, 0x0020($sp)           
/* 06294 808D1054 0C00C916 */  jal     Actor_SpawnAsChild
              
/* 06298 808D1058 AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 0629C 808D105C C6660050 */  lwc1    $f6, 0x0050($s3)           ## 00000050
/* 062A0 808D1060 46143202 */  mul.s   $f8, $f6, $f20             
/* 062A4 808D1064 E4480050 */  swc1    $f8, 0x0050($v0)           ## 00000050
/* 062A8 808D1068 C7B000D4 */  lwc1    $f16, 0x00D4($sp)          
/* 062AC 808D106C C66A0054 */  lwc1    $f10, 0x0054($s3)          ## 00000054
/* 062B0 808D1070 46105482 */  mul.s   $f18, $f10, $f16           
/* 062B4 808D1074 E4520054 */  swc1    $f18, 0x0054($v0)          ## 00000054
/* 062B8 808D1078 C6640058 */  lwc1    $f4, 0x0058($s3)           ## 00000058
/* 062BC 808D107C 46182182 */  mul.s   $f6, $f4, $f24             
/* 062C0 808D1080 E4460058 */  swc1    $f6, 0x0058($v0)           ## 00000058
.L808D1084:
/* 062C4 808D1084 1A200003 */  blez    $s1, .L808D1094            
/* 062C8 808D1088 26240001 */  addiu   $a0, $s1, 0x0001           ## $a0 = 00000001
/* 062CC 808D108C 0C018A29 */  jal     Collider_UpdateSpheres              
/* 062D0 808D1090 8FA5007C */  lw      $a1, 0x007C($sp)           
.L808D1094:
/* 062D4 808D1094 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 062D8 808D1098 00118C00 */  sll     $s1, $s1, 16               
/* 062DC 808D109C 00118C03 */  sra     $s1, $s1, 16               
/* 062E0 808D10A0 2A210012 */  slti    $at, $s1, 0x0012           
/* 062E4 808D10A4 1420FF10 */  bne     $at, $zero, .L808D0CE8     
/* 062E8 808D10A8 26B50040 */  addiu   $s5, $s5, 0x0040           ## $s5 = 00000040
/* 062EC 808D10AC 0C034221 */  jal     Matrix_Pull              
/* 062F0 808D10B0 00000000 */  nop
/* 062F4 808D10B4 3C04808D */  lui     $a0, %hi(D_808D1E18)       ## $a0 = 808D0000
/* 062F8 808D10B8 0C00084C */  jal     osSyncPrintf
              
/* 062FC 808D10BC 24841E18 */  addiu   $a0, $a0, %lo(D_808D1E18)  ## $a0 = 808D1E18
/* 06300 808D10C0 8E8202C0 */  lw      $v0, 0x02C0($s4)           ## 000002C0
/* 06304 808D10C4 3C19E700 */  lui     $t9, 0xE700                ## $t9 = E7000000
/* 06308 808D10C8 3C0AFB00 */  lui     $t2, 0xFB00                ## $t2 = FB000000
/* 0630C 808D10CC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 06310 808D10D0 AE9802C0 */  sw      $t8, 0x02C0($s4)           ## 000002C0
/* 06314 808D10D4 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 06318 808D10D8 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 0631C 808D10DC 8E8202C0 */  lw      $v0, 0x02C0($s4)           ## 000002C0
/* 06320 808D10E0 2401FF00 */  addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
/* 06324 808D10E4 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 06328 808D10E8 AE8802C0 */  sw      $t0, 0x02C0($s4)           ## 000002C0
/* 0632C 808D10EC AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 06330 808D10F0 C6680274 */  lwc1    $f8, 0x0274($s3)           ## 00000274
/* 06334 808D10F4 4600428D */  trunc.w.s $f10, $f8                  
/* 06338 808D10F8 440D5000 */  mfc1    $t5, $f10                  
/* 0633C 808D10FC 00000000 */  nop
/* 06340 808D1100 31AE00FF */  andi    $t6, $t5, 0x00FF           ## $t6 = 00000000
/* 06344 808D1104 01C17825 */  or      $t7, $t6, $at              ## $t7 = FFFFFF00
/* 06348 808D1108 0C034213 */  jal     Matrix_Push              
/* 0634C 808D110C AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 06350 808D1110 86780222 */  lh      $t8, 0x0222($s3)           ## 00000222
/* 06354 808D1114 3C19808D */  lui     $t9, %hi(D_808D1AC0)       ## $t9 = 808D0000
/* 06358 808D1118 2B0100CC */  slti    $at, $t8, 0x00CC           
/* 0635C 808D111C 14200004 */  bne     $at, $zero, .L808D1130     
/* 06360 808D1120 3C01C1A0 */  lui     $at, 0xC1A0                ## $at = C1A00000
/* 06364 808D1124 4481A000 */  mtc1    $at, $f20                  ## $f20 = -20.00
/* 06368 808D1128 1000000B */  beq     $zero, $zero, .L808D1158   
/* 0636C 808D112C 00000000 */  nop
.L808D1130:
/* 06370 808D1130 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 06374 808D1134 44819000 */  mtc1    $at, $f18                  ## $f18 = 5.00
/* 06378 808D1138 C6700068 */  lwc1    $f16, 0x0068($s3)          ## 00000068
/* 0637C 808D113C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 06380 808D1140 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 06384 808D1144 46128101 */  sub.s   $f4, $f16, $f18            
/* 06388 808D1148 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 0638C 808D114C 44815000 */  mtc1    $at, $f10                  ## $f10 = -10.00
/* 06390 808D1150 46062202 */  mul.s   $f8, $f4, $f6              
/* 06394 808D1154 46085501 */  sub.s   $f20, $f10, $f8            
.L808D1158:
/* 06398 808D1158 87391AC0 */  lh      $t9, %lo(D_808D1AC0)($t9)  
/* 0639C 808D115C 86680228 */  lh      $t0, 0x0228($s3)           ## 00000228
/* 063A0 808D1160 24010064 */  addiu   $at, $zero, 0x0064         ## $at = 00000064
/* 063A4 808D1164 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 063A8 808D1168 03281021 */  addu    $v0, $t9, $t0              
/* 063AC 808D116C 0041001A */  div     $zero, $v0, $at            
/* 063B0 808D1170 00001010 */  mfhi    $v0                        
/* 063B4 808D1174 00021400 */  sll     $v0, $v0, 16               
/* 063B8 808D1178 00021403 */  sra     $v0, $v0, 16               
/* 063BC 808D117C 00025080 */  sll     $t2, $v0,  2               
/* 063C0 808D1180 01425023 */  subu    $t2, $t2, $v0              
/* 063C4 808D1184 000A5080 */  sll     $t2, $t2,  2               
/* 063C8 808D1188 026A8021 */  addu    $s0, $s3, $t2              
/* 063CC 808D118C C60C078C */  lwc1    $f12, 0x078C($s0)          ## 000023B0
/* 063D0 808D1190 C60E0790 */  lwc1    $f14, 0x0790($s0)          ## 000023B4
/* 063D4 808D1194 0C034261 */  jal     Matrix_Translate              
/* 063D8 808D1198 8E060794 */  lw      $a2, 0x0794($s0)           ## 000023B8
/* 063DC 808D119C C60C02E0 */  lwc1    $f12, 0x02E0($s0)          ## 00001F04
/* 063E0 808D11A0 0C034348 */  jal     Matrix_RotateY              
/* 063E4 808D11A4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 063E8 808D11A8 C60C02DC */  lwc1    $f12, 0x02DC($s0)          ## 00001F00
/* 063EC 808D11AC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 063F0 808D11B0 0C0342DC */  jal     Matrix_RotateX              
/* 063F4 808D11B4 46006307 */  neg.s   $f12, $f12                 
/* 063F8 808D11B8 866B00B8 */  lh      $t3, 0x00B8($s3)           ## 000000B8
/* 063FC 808D11BC 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 06400 808D11C0 44812000 */  mtc1    $at, $f4                   ## $f4 = 32768.00
/* 06404 808D11C4 448B8000 */  mtc1    $t3, $f16                  ## $f16 = 0.00
/* 06408 808D11C8 3C01808D */  lui     $at, %hi(D_808D1FDC)       ## $at = 808D0000
/* 0640C 808D11CC C42A1FDC */  lwc1    $f10, %lo(D_808D1FDC)($at) 
/* 06410 808D11D0 468084A0 */  cvt.s.w $f18, $f16                 
/* 06414 808D11D4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 06418 808D11D8 46049183 */  div.s   $f6, $f18, $f4             
/* 0641C 808D11DC 460A3302 */  mul.s   $f12, $f6, $f10            
/* 06420 808D11E0 0C0343B5 */  jal     Matrix_RotateZ              
/* 06424 808D11E4 00000000 */  nop
/* 06428 808D11E8 4406A000 */  mfc1    $a2, $f20                  
/* 0642C 808D11EC 4600D306 */  mov.s   $f12, $f26                 
/* 06430 808D11F0 4600D386 */  mov.s   $f14, $f26                 
/* 06434 808D11F4 0C034261 */  jal     Matrix_Translate              
/* 06438 808D11F8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0643C 808D11FC 0C034213 */  jal     Matrix_Push              
/* 06440 808D1200 00000000 */  nop
/* 06444 808D1204 4600D306 */  mov.s   $f12, $f26                 
/* 06448 808D1208 4600D386 */  mov.s   $f14, $f26                 
/* 0644C 808D120C 3C0641C8 */  lui     $a2, 0x41C8                ## $a2 = 41C80000
/* 06450 808D1210 0C034261 */  jal     Matrix_Translate              
/* 06454 808D1214 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 06458 808D1218 3C04808D */  lui     $a0, %hi(D_808D1E1C)       ## $a0 = 808D0000
/* 0645C 808D121C 0C00084C */  jal     osSyncPrintf
              
/* 06460 808D1220 24841E1C */  addiu   $a0, $a0, %lo(D_808D1E1C)  ## $a0 = 808D1E1C
/* 06464 808D1224 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 06468 808D1228 0C018A29 */  jal     Collider_UpdateSpheres              
/* 0646C 808D122C 8FA5007C */  lw      $a1, 0x007C($sp)           
/* 06470 808D1230 0C034221 */  jal     Matrix_Pull              
/* 06474 808D1234 00000000 */  nop
/* 06478 808D1238 3C04808D */  lui     $a0, %hi(D_808D1E24)       ## $a0 = 808D0000
/* 0647C 808D123C 0C00084C */  jal     osSyncPrintf
              
/* 06480 808D1240 24841E24 */  addiu   $a0, $a0, %lo(D_808D1E24)  ## $a0 = 808D1E24
/* 06484 808D1244 C6680050 */  lwc1    $f8, 0x0050($s3)           ## 00000050
/* 06488 808D1248 C6700054 */  lwc1    $f16, 0x0054($s3)          ## 00000054
/* 0648C 808D124C C6720058 */  lwc1    $f18, 0x0058($s3)          ## 00000058
/* 06490 808D1250 46184302 */  mul.s   $f12, $f8, $f24            
/* 06494 808D1254 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 06498 808D1258 46188382 */  mul.s   $f14, $f16, $f24           
/* 0649C 808D125C 00000000 */  nop
/* 064A0 808D1260 46189102 */  mul.s   $f4, $f18, $f24            
/* 064A4 808D1264 44062000 */  mfc1    $a2, $f4                   
/* 064A8 808D1268 0C0342A3 */  jal     Matrix_Scale              
/* 064AC 808D126C 00000000 */  nop
/* 064B0 808D1270 3C0C808D */  lui     $t4, %hi(func_808D08A4)    ## $t4 = 808D0000
/* 064B4 808D1274 258C08A4 */  addiu   $t4, $t4, %lo(func_808D08A4) ## $t4 = 808D08A4
/* 064B8 808D1278 8E650150 */  lw      $a1, 0x0150($s3)           ## 00000150
/* 064BC 808D127C 8E66016C */  lw      $a2, 0x016C($s3)           ## 0000016C
/* 064C0 808D1280 3C07808D */  lui     $a3, %hi(func_808D07A4)    ## $a3 = 808D0000
/* 064C4 808D1284 24E707A4 */  addiu   $a3, $a3, %lo(func_808D07A4) ## $a3 = 808D07A4
/* 064C8 808D1288 AFB30014 */  sw      $s3, 0x0014($sp)           
/* 064CC 808D128C AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 064D0 808D1290 0C028572 */  jal     SkelAnime_DrawOpa
              
/* 064D4 808D1294 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 064D8 808D1298 3C04808D */  lui     $a0, %hi(D_808D1E2C)       ## $a0 = 808D0000
/* 064DC 808D129C 0C00084C */  jal     osSyncPrintf
              
/* 064E0 808D12A0 24841E2C */  addiu   $a0, $a0, %lo(D_808D1E2C)  ## $a0 = 808D1E2C
/* 064E4 808D12A4 3C09808D */  lui     $t1, %hi(D_808D1C18)       ## $t1 = 808D0000
/* 064E8 808D12A8 25291C18 */  addiu   $t1, $t1, %lo(D_808D1C18)  ## $t1 = 808D1C18
/* 064EC 808D12AC 8D2E0000 */  lw      $t6, 0x0000($t1)           ## 808D1C18
/* 064F0 808D12B0 27B000B0 */  addiu   $s0, $sp, 0x00B0           ## $s0 = FFFFFF38
/* 064F4 808D12B4 3C0F808D */  lui     $t7, %hi(D_808D1C24)       ## $t7 = 808D0000
/* 064F8 808D12B8 AE0E0000 */  sw      $t6, 0x0000($s0)           ## FFFFFF38
/* 064FC 808D12BC 8D2D0004 */  lw      $t5, 0x0004($t1)           ## 808D1C1C
/* 06500 808D12C0 25EF1C24 */  addiu   $t7, $t7, %lo(D_808D1C24)  ## $t7 = 808D1C24
/* 06504 808D12C4 27B200A4 */  addiu   $s2, $sp, 0x00A4           ## $s2 = FFFFFF2C
/* 06508 808D12C8 AE0D0004 */  sw      $t5, 0x0004($s0)           ## FFFFFF3C
/* 0650C 808D12CC 8D2E0008 */  lw      $t6, 0x0008($t1)           ## 808D1C20
/* 06510 808D12D0 AE0E0008 */  sw      $t6, 0x0008($s0)           ## FFFFFF40
/* 06514 808D12D4 8DF90000 */  lw      $t9, 0x0000($t7)           ## 808D1C24
/* 06518 808D12D8 AE590000 */  sw      $t9, 0x0000($s2)           ## FFFFFF2C
/* 0651C 808D12DC 8DF80004 */  lw      $t8, 0x0004($t7)           ## 808D1C28
/* 06520 808D12E0 AE580004 */  sw      $t8, 0x0004($s2)           ## FFFFFF30
/* 06524 808D12E4 8DF90008 */  lw      $t9, 0x0008($t7)           ## 808D1C2C
/* 06528 808D12E8 AE590008 */  sw      $t9, 0x0008($s2)           ## FFFFFF34
/* 0652C 808D12EC 0C024F61 */  jal     func_80093D84              
/* 06530 808D12F0 8EC40000 */  lw      $a0, 0x0000($s6)           ## 00000000
/* 06534 808D12F4 8E8202D0 */  lw      $v0, 0x02D0($s4)           ## 000002D0
/* 06538 808D12F8 3C0B0601 */  lui     $t3, 0x0601                ## $t3 = 06010000
/* 0653C 808D12FC 256B9168 */  addiu   $t3, $t3, 0x9168           ## $t3 = 06009168
/* 06540 808D1300 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 06544 808D1304 AE8802D0 */  sw      $t0, 0x02D0($s4)           ## 000002D0
/* 06548 808D1308 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 0654C 808D130C AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 06550 808D1310 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 06554 808D1314 8E8302D0 */  lw      $v1, 0x02D0($s4)           ## 000002D0
/* 06558 808D1318 3C09FA00 */  lui     $t1, 0xFA00                ## $t1 = FA000000
/* 0655C 808D131C 444DF800 */  cfc1    $t5, $31
/* 06560 808D1320 246C0008 */  addiu   $t4, $v1, 0x0008           ## $t4 = 00000008
/* 06564 808D1324 AE8C02D0 */  sw      $t4, 0x02D0($s4)           ## 000002D0
/* 06568 808D1328 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0656C 808D132C AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 06570 808D1330 44CEF800 */  ctc1    $t6, $31
/* 06574 808D1334 C6660284 */  lwc1    $f6, 0x0284($s3)           ## 00000284
/* 06578 808D1338 3C11FF00 */  lui     $s1, 0xFF00                ## $s1 = FF000000
/* 0657C 808D133C 460032A4 */  cvt.w.s $f10, $f6                  
/* 06580 808D1340 444EF800 */  cfc1    $t6, $31
/* 06584 808D1344 00000000 */  nop
/* 06588 808D1348 31CE0078 */  andi    $t6, $t6, 0x0078           ## $t6 = 00000000
/* 0658C 808D134C 11C00012 */  beq     $t6, $zero, .L808D1398     
/* 06590 808D1350 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 06594 808D1354 44815000 */  mtc1    $at, $f10                  ## $f10 = 2147483648.00
/* 06598 808D1358 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0659C 808D135C 460A3281 */  sub.s   $f10, $f6, $f10            
/* 065A0 808D1360 44CEF800 */  ctc1    $t6, $31
/* 065A4 808D1364 00000000 */  nop
/* 065A8 808D1368 460052A4 */  cvt.w.s $f10, $f10                 
/* 065AC 808D136C 444EF800 */  cfc1    $t6, $31
/* 065B0 808D1370 00000000 */  nop
/* 065B4 808D1374 31CE0078 */  andi    $t6, $t6, 0x0078           ## $t6 = 00000000
/* 065B8 808D1378 15C00005 */  bne     $t6, $zero, .L808D1390     
/* 065BC 808D137C 00000000 */  nop
/* 065C0 808D1380 440E5000 */  mfc1    $t6, $f10                  
/* 065C4 808D1384 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 065C8 808D1388 10000007 */  beq     $zero, $zero, .L808D13A8   
/* 065CC 808D138C 01C17025 */  or      $t6, $t6, $at              ## $t6 = 80000000
.L808D1390:
/* 065D0 808D1390 10000005 */  beq     $zero, $zero, .L808D13A8   
/* 065D4 808D1394 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
.L808D1398:
/* 065D8 808D1398 440E5000 */  mfc1    $t6, $f10                  
/* 065DC 808D139C 00000000 */  nop
/* 065E0 808D13A0 05C0FFFB */  bltz    $t6, .L808D1390            
/* 065E4 808D13A4 00000000 */  nop
.L808D13A8:
/* 065E8 808D13A8 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 000000FF
/* 065EC 808D13AC 000FC400 */  sll     $t8, $t7, 16               
/* 065F0 808D13B0 0311C825 */  or      $t9, $t8, $s1              ## $t9 = FF000000
/* 065F4 808D13B4 372800FF */  ori     $t0, $t9, 0x00FF           ## $t0 = FF0000FF
/* 065F8 808D13B8 44CDF800 */  ctc1    $t5, $31
/* 065FC 808D13BC 0C034213 */  jal     Matrix_Push              
/* 06600 808D13C0 AC680004 */  sw      $t0, 0x0004($v1)           ## 00000004
/* 06604 808D13C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFF38
/* 06608 808D13C8 0C0346BD */  jal     Matrix_MultVec3f              
/* 0660C 808D13CC 26650FE4 */  addiu   $a1, $s3, 0x0FE4           ## $a1 = 00000FE4
/* 06610 808D13D0 26700C9C */  addiu   $s0, $s3, 0x0C9C           ## $s0 = 00000C9C
/* 06614 808D13D4 266A0F6C */  addiu   $t2, $s3, 0x0F6C           ## $t2 = 00000F6C
/* 06618 808D13D8 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 0661C 808D13DC 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000C9C
/* 06620 808D13E0 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 06624 808D13E4 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 06628 808D13E8 26660E04 */  addiu   $a2, $s3, 0x0E04           ## $a2 = 00000E04
/* 0662C 808D13EC 0C2340B7 */  jal     func_808D02DC              
/* 06630 808D13F0 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 06634 808D13F4 0C034221 */  jal     Matrix_Pull              
/* 06638 808D13F8 00000000 */  nop
/* 0663C 808D13FC 8E8302D0 */  lw      $v1, 0x02D0($s4)           ## 000002D0
/* 06640 808D1400 3C0CFA00 */  lui     $t4, 0xFA00                ## $t4 = FA000000
/* 06644 808D1404 4449F800 */  cfc1    $t1, $31
/* 06648 808D1408 246B0008 */  addiu   $t3, $v1, 0x0008           ## $t3 = 00000008
/* 0664C 808D140C AE8B02D0 */  sw      $t3, 0x02D0($s4)           ## 000002D0
/* 06650 808D1410 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 06654 808D1414 AC6C0000 */  sw      $t4, 0x0000($v1)           ## 00000000
/* 06658 808D1418 44CDF800 */  ctc1    $t5, $31
/* 0665C 808D141C C6680288 */  lwc1    $f8, 0x0288($s3)           ## 00000288
/* 06660 808D1420 46004424 */  cvt.w.s $f16, $f8                  
/* 06664 808D1424 444DF800 */  cfc1    $t5, $31
/* 06668 808D1428 00000000 */  nop
/* 0666C 808D142C 31AD0078 */  andi    $t5, $t5, 0x0078           ## $t5 = 00000000
/* 06670 808D1430 11A00012 */  beq     $t5, $zero, .L808D147C     
/* 06674 808D1434 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 06678 808D1438 44818000 */  mtc1    $at, $f16                  ## $f16 = 2147483648.00
/* 0667C 808D143C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 06680 808D1440 46104401 */  sub.s   $f16, $f8, $f16            
/* 06684 808D1444 44CDF800 */  ctc1    $t5, $31
/* 06688 808D1448 00000000 */  nop
/* 0668C 808D144C 46008424 */  cvt.w.s $f16, $f16                 
/* 06690 808D1450 444DF800 */  cfc1    $t5, $31
/* 06694 808D1454 00000000 */  nop
/* 06698 808D1458 31AD0078 */  andi    $t5, $t5, 0x0078           ## $t5 = 00000000
/* 0669C 808D145C 15A00005 */  bne     $t5, $zero, .L808D1474     
/* 066A0 808D1460 00000000 */  nop
/* 066A4 808D1464 440D8000 */  mfc1    $t5, $f16                  
/* 066A8 808D1468 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 066AC 808D146C 10000007 */  beq     $zero, $zero, .L808D148C   
/* 066B0 808D1470 01A16825 */  or      $t5, $t5, $at              ## $t5 = 80000000
.L808D1474:
/* 066B4 808D1474 10000005 */  beq     $zero, $zero, .L808D148C   
/* 066B8 808D1478 240DFFFF */  addiu   $t5, $zero, 0xFFFF         ## $t5 = FFFFFFFF
.L808D147C:
/* 066BC 808D147C 440D8000 */  mfc1    $t5, $f16                  
/* 066C0 808D1480 00000000 */  nop
/* 066C4 808D1484 05A0FFFB */  bltz    $t5, .L808D1474            
/* 066C8 808D1488 00000000 */  nop
.L808D148C:
/* 066CC 808D148C 31AE00FF */  andi    $t6, $t5, 0x00FF           ## $t6 = 000000FF
/* 066D0 808D1490 000E7C00 */  sll     $t7, $t6, 16               
/* 066D4 808D1494 01F1C025 */  or      $t8, $t7, $s1              ## $t8 = FF000000
/* 066D8 808D1498 371900FF */  ori     $t9, $t8, 0x00FF           ## $t9 = FF0000FF
/* 066DC 808D149C 44C9F800 */  ctc1    $t1, $31
/* 066E0 808D14A0 0C034213 */  jal     Matrix_Push              
/* 066E4 808D14A4 AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
/* 066E8 808D14A8 02402025 */  or      $a0, $s2, $zero            ## $a0 = FFFFFF2C
/* 066EC 808D14AC 0C0346BD */  jal     Matrix_MultVec3f              
/* 066F0 808D14B0 266511D0 */  addiu   $a1, $s3, 0x11D0           ## $a1 = 000011D0
/* 066F4 808D14B4 26681158 */  addiu   $t0, $s3, 0x1158           ## $t0 = 00001158
/* 066F8 808D14B8 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 066FC 808D14BC AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 06700 808D14C0 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 06704 808D14C4 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 06708 808D14C8 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 0670C 808D14CC 26660FF0 */  addiu   $a2, $s3, 0x0FF0           ## $a2 = 00000FF0
/* 06710 808D14D0 0C2340B7 */  jal     func_808D02DC              
/* 06714 808D14D4 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000C9C
/* 06718 808D14D8 0C034221 */  jal     Matrix_Pull              
/* 0671C 808D14DC 00000000 */  nop
/* 06720 808D14E0 8E8302D0 */  lw      $v1, 0x02D0($s4)           ## 000002D0
/* 06724 808D14E4 3C0CFA00 */  lui     $t4, 0xFA00                ## $t4 = FA000000
/* 06728 808D14E8 4449F800 */  cfc1    $t1, $31
/* 0672C 808D14EC 246B0008 */  addiu   $t3, $v1, 0x0008           ## $t3 = 00000008
/* 06730 808D14F0 AE8B02D0 */  sw      $t3, 0x02D0($s4)           ## 000002D0
/* 06734 808D14F4 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 06738 808D14F8 AC6C0000 */  sw      $t4, 0x0000($v1)           ## 00000000
/* 0673C 808D14FC 44CDF800 */  ctc1    $t5, $31
/* 06740 808D1500 C672028C */  lwc1    $f18, 0x028C($s3)          ## 0000028C
/* 06744 808D1504 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 06748 808D1508 46009124 */  cvt.w.s $f4, $f18                  
/* 0674C 808D150C 444DF800 */  cfc1    $t5, $31
/* 06750 808D1510 00000000 */  nop
/* 06754 808D1514 31AD0078 */  andi    $t5, $t5, 0x0078           ## $t5 = 00000000
/* 06758 808D1518 51A00013 */  beql    $t5, $zero, .L808D1568     
/* 0675C 808D151C 440D2000 */  mfc1    $t5, $f4                   
/* 06760 808D1520 44812000 */  mtc1    $at, $f4                   ## $f4 = 2147483648.00
/* 06764 808D1524 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 06768 808D1528 46049101 */  sub.s   $f4, $f18, $f4             
/* 0676C 808D152C 44CDF800 */  ctc1    $t5, $31
/* 06770 808D1530 00000000 */  nop
/* 06774 808D1534 46002124 */  cvt.w.s $f4, $f4                   
/* 06778 808D1538 444DF800 */  cfc1    $t5, $31
/* 0677C 808D153C 00000000 */  nop
/* 06780 808D1540 31AD0078 */  andi    $t5, $t5, 0x0078           ## $t5 = 00000000
/* 06784 808D1544 15A00005 */  bne     $t5, $zero, .L808D155C     
/* 06788 808D1548 00000000 */  nop
/* 0678C 808D154C 440D2000 */  mfc1    $t5, $f4                   
/* 06790 808D1550 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 06794 808D1554 10000007 */  beq     $zero, $zero, .L808D1574   
/* 06798 808D1558 01A16825 */  or      $t5, $t5, $at              ## $t5 = 80000000
.L808D155C:
/* 0679C 808D155C 10000005 */  beq     $zero, $zero, .L808D1574   
/* 067A0 808D1560 240DFFFF */  addiu   $t5, $zero, 0xFFFF         ## $t5 = FFFFFFFF
/* 067A4 808D1564 440D2000 */  mfc1    $t5, $f4                   
.L808D1568:
/* 067A8 808D1568 00000000 */  nop
/* 067AC 808D156C 05A0FFFB */  bltz    $t5, .L808D155C            
/* 067B0 808D1570 00000000 */  nop
.L808D1574:
/* 067B4 808D1574 31AE00FF */  andi    $t6, $t5, 0x00FF           ## $t6 = 000000FF
/* 067B8 808D1578 000E7C00 */  sll     $t7, $t6, 16               
/* 067BC 808D157C 01F1C025 */  or      $t8, $t7, $s1              ## $t8 = FF000000
/* 067C0 808D1580 371900FF */  ori     $t9, $t8, 0x00FF           ## $t9 = FF0000FF
/* 067C4 808D1584 44C9F800 */  ctc1    $t1, $31
/* 067C8 808D1588 0C034213 */  jal     Matrix_Push              
/* 067CC 808D158C AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
/* 067D0 808D1590 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 067D4 808D1594 44815000 */  mtc1    $at, $f10                  ## $f10 = -1.00
/* 067D8 808D1598 C7A600A4 */  lwc1    $f6, 0x00A4($sp)           
/* 067DC 808D159C 02402025 */  or      $a0, $s2, $zero            ## $a0 = FFFFFF2C
/* 067E0 808D15A0 266513BC */  addiu   $a1, $s3, 0x13BC           ## $a1 = 000013BC
/* 067E4 808D15A4 460A3202 */  mul.s   $f8, $f6, $f10             
/* 067E8 808D15A8 0C0346BD */  jal     Matrix_MultVec3f              
/* 067EC 808D15AC E7A800A4 */  swc1    $f8, 0x00A4($sp)           
/* 067F0 808D15B0 26681344 */  addiu   $t0, $s3, 0x1344           ## $t0 = 00001344
/* 067F4 808D15B4 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 067F8 808D15B8 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 067FC 808D15BC AFA80010 */  sw      $t0, 0x0010($sp)           
/* 06800 808D15C0 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 06804 808D15C4 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 06808 808D15C8 266611DC */  addiu   $a2, $s3, 0x11DC           ## $a2 = 000011DC
/* 0680C 808D15CC 0C2340B7 */  jal     func_808D02DC              
/* 06810 808D15D0 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000C9C
/* 06814 808D15D4 0C034221 */  jal     Matrix_Pull              
/* 06818 808D15D8 00000000 */  nop
/* 0681C 808D15DC 0C034221 */  jal     Matrix_Pull              
/* 06820 808D15E0 00000000 */  nop
/* 06824 808D15E4 3C04808D */  lui     $a0, %hi(D_808D1E30)       ## $a0 = 808D0000
/* 06828 808D15E8 0C00084C */  jal     osSyncPrintf
              
/* 0682C 808D15EC 24841E30 */  addiu   $a0, $a0, %lo(D_808D1E30)  ## $a0 = 808D1E30
/* 06830 808D15F0 3C06808D */  lui     $a2, %hi(D_808D1E38)       ## $a2 = 808D0000
/* 06834 808D15F4 24C61E38 */  addiu   $a2, $a2, %lo(D_808D1E38)  ## $a2 = 808D1E38
/* 06838 808D15F8 27A40158 */  addiu   $a0, $sp, 0x0158           ## $a0 = FFFFFFE0
/* 0683C 808D15FC 8EC50000 */  lw      $a1, 0x0000($s6)           ## 00000000
/* 06840 808D1600 0C031AD5 */  jal     Graph_CloseDisps              
/* 06844 808D1604 2407137B */  addiu   $a3, $zero, 0x137B         ## $a3 = 0000137B
/* 06848 808D1608 8FBF0074 */  lw      $ra, 0x0074($sp)           
/* 0684C 808D160C D7B40038 */  ldc1    $f20, 0x0038($sp)          
/* 06850 808D1610 D7B60040 */  ldc1    $f22, 0x0040($sp)          
/* 06854 808D1614 D7B80048 */  ldc1    $f24, 0x0048($sp)          
/* 06858 808D1618 D7BA0050 */  ldc1    $f26, 0x0050($sp)          
/* 0685C 808D161C 8FB00058 */  lw      $s0, 0x0058($sp)           
/* 06860 808D1620 8FB1005C */  lw      $s1, 0x005C($sp)           
/* 06864 808D1624 8FB20060 */  lw      $s2, 0x0060($sp)           
/* 06868 808D1628 8FB30064 */  lw      $s3, 0x0064($sp)           
/* 0686C 808D162C 8FB40068 */  lw      $s4, 0x0068($sp)           
/* 06870 808D1630 8FB5006C */  lw      $s5, 0x006C($sp)           
/* 06874 808D1634 8FB60070 */  lw      $s6, 0x0070($sp)           
/* 06878 808D1638 03E00008 */  jr      $ra                        
/* 0687C 808D163C 27BD0178 */  addiu   $sp, $sp, 0x0178           ## $sp = 00000000
