.rdata
glabel D_8094AC48
    .asciz "../z_boss_tw.c"
    .balign 4

glabel D_8094AC58
    .asciz "../z_boss_tw.c"
    .balign 4

.late_rodata
glabel jtbl_8094B070
.word L80943CA8
.word L80943C20
.word L80943B0C
.word L80943B94
.word L80943CFC
.word L80943D1C
.word L809439B8
.word L80943D38
.word L80943D38
.word L80943D38
.word L80943D38
.word L80943D38
.word L80943D38
.word L80943D38
.word L80943D38
.word L80943D38
.word L80943CA8
.word L80943C20
.word L80943D38
.word L80943D38
.word L80943D38
.word L80943D38
.word L80943D38
.word L80943D38
.word L80943D38
.word L80943D38
.word L80943B0C
.word L80943B94

.text
glabel func_80943950
/* 0AC80 80943950 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 0AC84 80943954 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 0AC88 80943958 AFA40078 */  sw      $a0, 0x0078($sp)           
/* 0AC8C 8094395C AFA5007C */  sw      $a1, 0x007C($sp)           
/* 0AC90 80943960 AFA60080 */  sw      $a2, 0x0080($sp)           
/* 0AC94 80943964 AFA70084 */  sw      $a3, 0x0084($sp)           
/* 0AC98 80943968 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 0AC9C 8094396C 3C068095 */  lui     $a2, %hi(D_8094AC48)       ## $a2 = 80950000
/* 0ACA0 80943970 24C6AC48 */  addiu   $a2, $a2, %lo(D_8094AC48)  ## $a2 = 8094AC48
/* 0ACA4 80943974 27A40060 */  addiu   $a0, $sp, 0x0060           ## $a0 = FFFFFFE8
/* 0ACA8 80943978 24071BE3 */  addiu   $a3, $zero, 0x1BE3         ## $a3 = 00001BE3
/* 0ACAC 8094397C 0C031AB1 */  jal     Graph_OpenDisps              
/* 0ACB0 80943980 AFA50070 */  sw      $a1, 0x0070($sp)           
/* 0ACB4 80943984 8FAF007C */  lw      $t7, 0x007C($sp)           
/* 0ACB8 80943988 8FA80070 */  lw      $t0, 0x0070($sp)           
/* 0ACBC 8094398C 8FAA0080 */  lw      $t2, 0x0080($sp)           
/* 0ACC0 80943990 25F8FFF1 */  addiu   $t8, $t7, 0xFFF1           ## $t8 = FFFFFFF1
/* 0ACC4 80943994 2F01001C */  sltiu   $at, $t8, 0x001C           
/* 0ACC8 80943998 102000E7 */  beq     $at, $zero, .L80943D38     
/* 0ACCC 8094399C AFAF003C */  sw      $t7, 0x003C($sp)           
/* 0ACD0 809439A0 0018C080 */  sll     $t8, $t8,  2               
/* 0ACD4 809439A4 3C018095 */  lui     $at, %hi(jtbl_8094B070)       ## $at = 80950000
/* 0ACD8 809439A8 00380821 */  addu    $at, $at, $t8              
/* 0ACDC 809439AC 8C38B070 */  lw      $t8, %lo(jtbl_8094B070)($at)  
/* 0ACE0 809439B0 03000008 */  jr      $t8                        
/* 0ACE4 809439B4 00000000 */  nop
glabel L809439B8
/* 0ACE8 809439B8 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 0ACEC 809439BC 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 0ACF0 809439C0 358C0030 */  ori     $t4, $t4, 0x0030           ## $t4 = DB060030
/* 0ACF4 809439C4 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 0ACF8 809439C8 AD1902C0 */  sw      $t9, 0x02C0($t0)           ## 000002C0
/* 0ACFC 809439CC AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 0AD00 809439D0 8FAE008C */  lw      $t6, 0x008C($sp)           
/* 0AD04 809439D4 8FAD0078 */  lw      $t5, 0x0078($sp)           
/* 0AD08 809439D8 24190008 */  addiu   $t9, $zero, 0x0008         ## $t9 = 00000008
/* 0AD0C 809439DC 85CF0150 */  lh      $t7, 0x0150($t6)           ## 00000150
/* 0AD10 809439E0 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 0AD14 809439E4 AFA80070 */  sw      $t0, 0x0070($sp)           
/* 0AD18 809439E8 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 0AD1C 809439EC AFB90010 */  sw      $t9, 0x0010($sp)           
/* 0AD20 809439F0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0AD24 809439F4 468021A0 */  cvt.s.w $f6, $f4                   
/* 0AD28 809439F8 24070008 */  addiu   $a3, $zero, 0x0008         ## $a3 = 00000008
/* 0AD2C 809439FC AFA2005C */  sw      $v0, 0x005C($sp)           
/* 0AD30 80943A00 4600320D */  trunc.w.s $f8, $f6                   
/* 0AD34 80943A04 44064000 */  mfc1    $a2, $f8                   
/* 0AD38 80943A08 00000000 */  nop
/* 0AD3C 80943A0C 00063400 */  sll     $a2, $a2, 16               
/* 0AD40 80943A10 0C0253A7 */  jal     Gfx_TexScroll              
/* 0AD44 80943A14 00063403 */  sra     $a2, $a2, 16               
/* 0AD48 80943A18 8FA3005C */  lw      $v1, 0x005C($sp)           
/* 0AD4C 80943A1C 8FA80070 */  lw      $t0, 0x0070($sp)           
/* 0AD50 80943A20 8FAA0080 */  lw      $t2, 0x0080($sp)           
/* 0AD54 80943A24 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 0AD58 80943A28 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 0AD5C 80943A2C 8FAB008C */  lw      $t3, 0x008C($sp)           
/* 0AD60 80943A30 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 0AD64 80943A34 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 0AD68 80943A38 35AD0020 */  ori     $t5, $t5, 0x0020           ## $t5 = DB060020
/* 0AD6C 80943A3C AD0C02C0 */  sw      $t4, 0x02C0($t0)           ## 000002C0
/* 0AD70 80943A40 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 0AD74 80943A44 856E04CC */  lh      $t6, 0x04CC($t3)           ## 000004CC
/* 0AD78 80943A48 3C058095 */  lui     $a1, %hi(D_8094A9B0)       ## $a1 = 80950000
/* 0AD7C 80943A4C 24A5A9B0 */  addiu   $a1, $a1, %lo(D_8094A9B0)  ## $a1 = 8094A9B0
/* 0AD80 80943A50 000E7880 */  sll     $t7, $t6,  2               
/* 0AD84 80943A54 00AFC021 */  addu    $t8, $a1, $t7              
/* 0AD88 80943A58 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 0AD8C 80943A5C 3C078016 */  lui     $a3, 0x8016                ## $a3 = 80160000
/* 0AD90 80943A60 24E76FA8 */  addiu   $a3, $a3, 0x6FA8           ## $a3 = 80166FA8
/* 0AD94 80943A64 00046100 */  sll     $t4, $a0,  4               
/* 0AD98 80943A68 000C6F02 */  srl     $t5, $t4, 28               
/* 0AD9C 80943A6C 000D7080 */  sll     $t6, $t5,  2               
/* 0ADA0 80943A70 00EE7821 */  addu    $t7, $a3, $t6              
/* 0ADA4 80943A74 8DF80000 */  lw      $t8, 0x0000($t7)           ## 00000000
/* 0ADA8 80943A78 3C0600FF */  lui     $a2, 0x00FF                ## $a2 = 00FF0000
/* 0ADAC 80943A7C 34C6FFFF */  ori     $a2, $a2, 0xFFFF           ## $a2 = 00FFFFFF
/* 0ADB0 80943A80 0086C824 */  and     $t9, $a0, $a2              
/* 0ADB4 80943A84 3C098000 */  lui     $t1, 0x8000                ## $t1 = 80000000
/* 0ADB8 80943A88 03386021 */  addu    $t4, $t9, $t8              
/* 0ADBC 80943A8C 01896821 */  addu    $t5, $t4, $t1              
/* 0ADC0 80943A90 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 0ADC4 80943A94 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 0ADC8 80943A98 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 0ADCC 80943A9C 35EF0024 */  ori     $t7, $t7, 0x0024           ## $t7 = DB060024
/* 0ADD0 80943AA0 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 0ADD4 80943AA4 AD0E02C0 */  sw      $t6, 0x02C0($t0)           ## 000002C0
/* 0ADD8 80943AA8 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 0ADDC 80943AAC 857904CE */  lh      $t9, 0x04CE($t3)           ## 000004CE
/* 0ADE0 80943AB0 2401FF00 */  addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
/* 0ADE4 80943AB4 0019C080 */  sll     $t8, $t9,  2               
/* 0ADE8 80943AB8 00B86021 */  addu    $t4, $a1, $t8              
/* 0ADEC 80943ABC 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000008
/* 0ADF0 80943AC0 00047100 */  sll     $t6, $a0,  4               
/* 0ADF4 80943AC4 000E7F02 */  srl     $t7, $t6, 28               
/* 0ADF8 80943AC8 000FC880 */  sll     $t9, $t7,  2               
/* 0ADFC 80943ACC 00F9C021 */  addu    $t8, $a3, $t9              
/* 0AE00 80943AD0 8F0C0000 */  lw      $t4, 0x0000($t8)           ## 00000000
/* 0AE04 80943AD4 00866824 */  and     $t5, $a0, $a2              
/* 0AE08 80943AD8 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 0AE0C 80943ADC 01AC7021 */  addu    $t6, $t5, $t4              
/* 0AE10 80943AE0 01C97821 */  addu    $t7, $t6, $t1              
/* 0AE14 80943AE4 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 0AE18 80943AE8 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 0AE1C 80943AEC 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 0AE20 80943AF0 AD1902C0 */  sw      $t9, 0x02C0($t0)           ## 000002C0
/* 0AE24 80943AF4 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 0AE28 80943AF8 856D0160 */  lh      $t5, 0x0160($t3)           ## 00000160
/* 0AE2C 80943AFC 31AC00FF */  andi    $t4, $t5, 0x00FF           ## $t4 = 00000020
/* 0AE30 80943B00 01817025 */  or      $t6, $t4, $at              ## $t6 = FFFFFF20
/* 0AE34 80943B04 1000008C */  beq     $zero, $zero, .L80943D38   
/* 0AE38 80943B08 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
glabel L80943B0C
/* 0AE3C 80943B0C AD400000 */  sw      $zero, 0x0000($t2)         ## 00000000
/* 0AE40 80943B10 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 0AE44 80943B14 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 0AE48 80943B18 37390028 */  ori     $t9, $t9, 0x0028           ## $t9 = DB060028
/* 0AE4C 80943B1C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 0AE50 80943B20 AD0F02D0 */  sw      $t7, 0x02D0($t0)           ## 000002D0
/* 0AE54 80943B24 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 0AE58 80943B28 8FB80078 */  lw      $t8, 0x0078($sp)           
/* 0AE5C 80943B2C 8FAF008C */  lw      $t7, 0x008C($sp)           
/* 0AE60 80943B30 240D0020 */  addiu   $t5, $zero, 0x0020         ## $t5 = 00000020
/* 0AE64 80943B34 8F040000 */  lw      $a0, 0x0000($t8)           ## FB000000
/* 0AE68 80943B38 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 0AE6C 80943B3C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0AE70 80943B40 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 0AE74 80943B44 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 0AE78 80943B48 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 0AE7C 80943B4C AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 0AE80 80943B50 85F90150 */  lh      $t9, 0x0150($t7)           ## 00000158
/* 0AE84 80943B54 240E0040 */  addiu   $t6, $zero, 0x0040         ## $t6 = 00000040
/* 0AE88 80943B58 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 0AE8C 80943B5C 0019C023 */  subu    $t8, $zero, $t9            
/* 0AE90 80943B60 00186900 */  sll     $t5, $t8,  4               
/* 0AE94 80943B64 01B86823 */  subu    $t5, $t5, $t8              
/* 0AE98 80943B68 AFAD0020 */  sw      $t5, 0x0020($sp)           
/* 0AE9C 80943B6C AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 0AEA0 80943B70 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0AEA4 80943B74 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0AEA8 80943B78 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0AEAC 80943B7C 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 0AEB0 80943B80 AFA2004C */  sw      $v0, 0x004C($sp)           
/* 0AEB4 80943B84 8FA3004C */  lw      $v1, 0x004C($sp)           
/* 0AEB8 80943B88 8FAA0080 */  lw      $t2, 0x0080($sp)           
/* 0AEBC 80943B8C 1000006A */  beq     $zero, $zero, .L80943D38   
/* 0AEC0 80943B90 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
glabel L80943B94
/* 0AEC4 80943B94 AD400000 */  sw      $zero, 0x0000($t2)         ## 00000000
/* 0AEC8 80943B98 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 0AECC 80943B9C 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 0AED0 80943BA0 3739002C */  ori     $t9, $t9, 0x002C           ## $t9 = DB06002C
/* 0AED4 80943BA4 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 0AED8 80943BA8 AD0F02D0 */  sw      $t7, 0x02D0($t0)           ## 000002D0
/* 0AEDC 80943BAC AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 0AEE0 80943BB0 8FB80078 */  lw      $t8, 0x0078($sp)           
/* 0AEE4 80943BB4 8FAF008C */  lw      $t7, 0x008C($sp)           
/* 0AEE8 80943BB8 240D0020 */  addiu   $t5, $zero, 0x0020         ## $t5 = 00000020
/* 0AEEC 80943BBC 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 0AEF0 80943BC0 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 0AEF4 80943BC4 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0AEF8 80943BC8 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 0AEFC 80943BCC AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 0AF00 80943BD0 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 0AF04 80943BD4 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 0AF08 80943BD8 85F90150 */  lh      $t9, 0x0150($t7)           ## 00000158
/* 0AF0C 80943BDC 240E0040 */  addiu   $t6, $zero, 0x0040         ## $t6 = 00000040
/* 0AF10 80943BE0 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 0AF14 80943BE4 0019C023 */  subu    $t8, $zero, $t9            
/* 0AF18 80943BE8 00186880 */  sll     $t5, $t8,  2               
/* 0AF1C 80943BEC 01B86821 */  addu    $t5, $t5, $t8              
/* 0AF20 80943BF0 000D6840 */  sll     $t5, $t5,  1               
/* 0AF24 80943BF4 AFAD0020 */  sw      $t5, 0x0020($sp)           
/* 0AF28 80943BF8 AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 0AF2C 80943BFC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0AF30 80943C00 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0AF34 80943C04 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0AF38 80943C08 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 0AF3C 80943C0C AFA20048 */  sw      $v0, 0x0048($sp)           
/* 0AF40 80943C10 8FA30048 */  lw      $v1, 0x0048($sp)           
/* 0AF44 80943C14 8FAA0080 */  lw      $t2, 0x0080($sp)           
/* 0AF48 80943C18 10000047 */  beq     $zero, $zero, .L80943D38   
/* 0AF4C 80943C1C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
glabel L80943C20
/* 0AF50 80943C20 AD400000 */  sw      $zero, 0x0000($t2)         ## 00000000
/* 0AF54 80943C24 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 0AF58 80943C28 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 0AF5C 80943C2C 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 0AF60 80943C30 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 0AF64 80943C34 AD0F02D0 */  sw      $t7, 0x02D0($t0)           ## 000002D0
/* 0AF68 80943C38 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 0AF6C 80943C3C 8FB80078 */  lw      $t8, 0x0078($sp)           
/* 0AF70 80943C40 8FAF008C */  lw      $t7, 0x008C($sp)           
/* 0AF74 80943C44 240D0020 */  addiu   $t5, $zero, 0x0020         ## $t5 = 00000020
/* 0AF78 80943C48 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 0AF7C 80943C4C 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 0AF80 80943C50 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0AF84 80943C54 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 0AF88 80943C58 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 0AF8C 80943C5C AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 0AF90 80943C60 85E30150 */  lh      $v1, 0x0150($t7)           ## 00000158
/* 0AF94 80943C64 240C0040 */  addiu   $t4, $zero, 0x0040         ## $t4 = 00000040
/* 0AF98 80943C68 AFAC0028 */  sw      $t4, 0x0028($sp)           
/* 0AF9C 80943C6C 0003C823 */  subu    $t9, $zero, $v1            
/* 0AFA0 80943C70 0019C0C0 */  sll     $t8, $t9,  3               
/* 0AFA4 80943C74 0319C023 */  subu    $t8, $t8, $t9              
/* 0AFA8 80943C78 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 0AFAC 80943C7C AFAD0024 */  sw      $t5, 0x0024($sp)           
/* 0AFB0 80943C80 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0AFB4 80943C84 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0AFB8 80943C88 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0AFBC 80943C8C AFA20044 */  sw      $v0, 0x0044($sp)           
/* 0AFC0 80943C90 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 0AFC4 80943C94 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 0AFC8 80943C98 8FA90044 */  lw      $t1, 0x0044($sp)           
/* 0AFCC 80943C9C 8FAA0080 */  lw      $t2, 0x0080($sp)           
/* 0AFD0 80943CA0 10000025 */  beq     $zero, $zero, .L80943D38   
/* 0AFD4 80943CA4 AD220004 */  sw      $v0, 0x0004($t1)           ## 00000004
glabel L80943CA8
/* 0AFD8 80943CA8 AD400000 */  sw      $zero, 0x0000($t2)         ## 00000000
/* 0AFDC 80943CAC 8D0202D0 */  lw      $v0, 0x02D0($t0)           ## 000002D0
/* 0AFE0 80943CB0 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 0AFE4 80943CB4 35EF0024 */  ori     $t7, $t7, 0x0024           ## $t7 = DB060024
/* 0AFE8 80943CB8 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 0AFEC 80943CBC AD0E02D0 */  sw      $t6, 0x02D0($t0)           ## 000002D0
/* 0AFF0 80943CC0 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 0AFF4 80943CC4 8FB8008C */  lw      $t8, 0x008C($sp)           
/* 0AFF8 80943CC8 8FB90078 */  lw      $t9, 0x0078($sp)           
/* 0AFFC 80943CCC 240D0040 */  addiu   $t5, $zero, 0x0040         ## $t5 = 00000040
/* 0B000 80943CD0 87060150 */  lh      $a2, 0x0150($t8)           ## 00000150
/* 0B004 80943CD4 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 0B008 80943CD8 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 0B00C 80943CDC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0B010 80943CE0 24070020 */  addiu   $a3, $zero, 0x0020         ## $a3 = 00000020
/* 0B014 80943CE4 0C0253A7 */  jal     Gfx_TexScroll              
/* 0B018 80943CE8 AFA20040 */  sw      $v0, 0x0040($sp)           
/* 0B01C 80943CEC 8FA30040 */  lw      $v1, 0x0040($sp)           
/* 0B020 80943CF0 8FAA0080 */  lw      $t2, 0x0080($sp)           
/* 0B024 80943CF4 10000010 */  beq     $zero, $zero, .L80943D38   
/* 0B028 80943CF8 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
glabel L80943CFC
/* 0B02C 80943CFC 8FAC008C */  lw      $t4, 0x008C($sp)           
/* 0B030 80943D00 3C0F0603 */  lui     $t7, 0x0603                ## $t7 = 06030000
/* 0B034 80943D04 25EFD940 */  addiu   $t7, $t7, 0xD940           ## $t7 = 0602D940
/* 0B038 80943D08 918E05F8 */  lbu     $t6, 0x05F8($t4)           ## 000005F8
/* 0B03C 80943D0C 51C0000B */  beql    $t6, $zero, .L80943D3C     
/* 0B040 80943D10 8FAB008C */  lw      $t3, 0x008C($sp)           
/* 0B044 80943D14 10000008 */  beq     $zero, $zero, .L80943D38   
/* 0B048 80943D18 AD4F0000 */  sw      $t7, 0x0000($t2)           ## 00000000
glabel L80943D1C
/* 0B04C 80943D1C 8FB9008C */  lw      $t9, 0x008C($sp)           
/* 0B050 80943D20 3C0D0603 */  lui     $t5, 0x0603                ## $t5 = 06030000
/* 0B054 80943D24 25ADD890 */  addiu   $t5, $t5, 0xD890           ## $t5 = 0602D890
/* 0B058 80943D28 933805F8 */  lbu     $t8, 0x05F8($t9)           ## 000005F8
/* 0B05C 80943D2C 53000003 */  beql    $t8, $zero, .L80943D3C     
/* 0B060 80943D30 8FAB008C */  lw      $t3, 0x008C($sp)           
/* 0B064 80943D34 AD4D0000 */  sw      $t5, 0x0000($t2)           ## 00000000
glabel L80943D38
.L80943D38:
/* 0B068 80943D38 8FAB008C */  lw      $t3, 0x008C($sp)           
.L80943D3C:
/* 0B06C 80943D3C 3C068095 */  lui     $a2, %hi(D_8094AC58)       ## $a2 = 80950000
/* 0B070 80943D40 8FAE003C */  lw      $t6, 0x003C($sp)           
/* 0B074 80943D44 916C05F8 */  lbu     $t4, 0x05F8($t3)           ## 000005F8
/* 0B078 80943D48 24010022 */  addiu   $at, $zero, 0x0022         ## $at = 00000022
/* 0B07C 80943D4C 24C6AC58 */  addiu   $a2, $a2, %lo(D_8094AC58)  ## $a2 = 8094AC58
/* 0B080 80943D50 11800006 */  beq     $t4, $zero, .L80943D6C     
/* 0B084 80943D54 27A40060 */  addiu   $a0, $sp, 0x0060           ## $a0 = FFFFFFE8
/* 0B088 80943D58 11C10003 */  beq     $t6, $at, .L80943D68       
/* 0B08C 80943D5C 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
/* 0B090 80943D60 55C10003 */  bnel    $t6, $at, .L80943D70       
/* 0B094 80943D64 8FAF0078 */  lw      $t7, 0x0078($sp)           
.L80943D68:
/* 0B098 80943D68 AD400000 */  sw      $zero, 0x0000($t2)         ## 00000000
.L80943D6C:
/* 0B09C 80943D6C 8FAF0078 */  lw      $t7, 0x0078($sp)           
.L80943D70:
/* 0B0A0 80943D70 24071C53 */  addiu   $a3, $zero, 0x1C53         ## $a3 = 00001C53
/* 0B0A4 80943D74 0C031AD5 */  jal     Graph_CloseDisps              
/* 0B0A8 80943D78 8DE50000 */  lw      $a1, 0x0000($t7)           ## 0602D940
/* 0B0AC 80943D7C 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 0B0B0 80943D80 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
/* 0B0B4 80943D84 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0B0B8 80943D88 03E00008 */  jr      $ra                        
/* 0B0BC 80943D8C 00000000 */  nop
