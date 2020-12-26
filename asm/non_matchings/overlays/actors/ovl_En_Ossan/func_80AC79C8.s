.rdata
glabel D_80AC93DC
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC93EC
    .asciz "../z_en_oB1.c"
    .balign 4

.text
glabel func_80AC79C8
/* 04D28 80AC79C8 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 04D2C 80AC79CC AFBF003C */  sw      $ra, 0x003C($sp)           
/* 04D30 80AC79D0 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 04D34 80AC79D4 AFA400A0 */  sw      $a0, 0x00A0($sp)           
/* 04D38 80AC79D8 8CAE0288 */  lw      $t6, 0x0288($a1)           ## 00000288
/* 04D3C 80AC79DC 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 04D40 80AC79E0 3C0680AD */  lui     $a2, %hi(D_80AC93DC)       ## $a2 = 80AD0000
/* 04D44 80AC79E4 AFAE009C */  sw      $t6, 0x009C($sp)           
/* 04D48 80AC79E8 8CAF02C0 */  lw      $t7, 0x02C0($a1)           ## 000002C0
/* 04D4C 80AC79EC 24C693DC */  addiu   $a2, $a2, %lo(D_80AC93DC)  ## $a2 = 80AC93DC
/* 04D50 80AC79F0 2407109C */  addiu   $a3, $zero, 0x109C         ## $a3 = 0000109C
/* 04D54 80AC79F4 AFAF0098 */  sw      $t7, 0x0098($sp)           
/* 04D58 80AC79F8 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 04D5C 80AC79FC 27A40084 */  addiu   $a0, $sp, 0x0084           ## $a0 = FFFFFFE4
/* 04D60 80AC7A00 0C031AB1 */  jal     Graph_OpenDisps              
/* 04D64 80AC7A04 AFA50094 */  sw      $a1, 0x0094($sp)           
/* 04D68 80AC7A08 8FB9009C */  lw      $t9, 0x009C($sp)           
/* 04D6C 80AC7A0C 8FA80094 */  lw      $t0, 0x0094($sp)           
/* 04D70 80AC7A10 8FA90098 */  lw      $t1, 0x0098($sp)           
/* 04D74 80AC7A14 17200003 */  bne     $t9, $zero, .L80AC7A24     
/* 04D78 80AC7A18 8FAA00A0 */  lw      $t2, 0x00A0($sp)           
/* 04D7C 80AC7A1C 512000D8 */  beql    $t1, $zero, .L80AC7D80     
/* 04D80 80AC7A20 8FAF00A0 */  lw      $t7, 0x00A0($sp)           
.L80AC7A24:
/* 04D84 80AC7A24 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 04D88 80AC7A28 0C025148 */  jal     func_80094520              
/* 04D8C 80AC7A2C AFA80094 */  sw      $t0, 0x0094($sp)           
/* 04D90 80AC7A30 8FA80094 */  lw      $t0, 0x0094($sp)           
/* 04D94 80AC7A34 3C0CFC11 */  lui     $t4, 0xFC11                ## $t4 = FC110000
/* 04D98 80AC7A38 3C0DFF2F */  lui     $t5, 0xFF2F                ## $t5 = FF2F0000
/* 04D9C 80AC7A3C 8D0202B0 */  lw      $v0, 0x02B0($t0)           ## 000002B0
/* 04DA0 80AC7A40 35ADFFFF */  ori     $t5, $t5, 0xFFFF           ## $t5 = FF2FFFFF
/* 04DA4 80AC7A44 358C9623 */  ori     $t4, $t4, 0x9623           ## $t4 = FC119623
/* 04DA8 80AC7A48 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 04DAC 80AC7A4C AD0B02B0 */  sw      $t3, 0x02B0($t0)           ## 000002B0
/* 04DB0 80AC7A50 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 04DB4 80AC7A54 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 04DB8 80AC7A58 8D0202B0 */  lw      $v0, 0x02B0($t0)           ## 000002B0
/* 04DBC 80AC7A5C 3C180401 */  lui     $t8, %hi(D_0400CF40)                ## $t8 = 04010000
/* 04DC0 80AC7A60 2718CF40 */  addiu   $t8, $t8, %lo(D_0400CF40)           ## $t8 = 0400CF40
/* 04DC4 80AC7A64 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 04DC8 80AC7A68 AD0E02B0 */  sw      $t6, 0x02B0($t0)           ## 000002B0
/* 04DCC 80AC7A6C 3C0FFD70 */  lui     $t7, 0xFD70                ## $t7 = FD700000
/* 04DD0 80AC7A70 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 04DD4 80AC7A74 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 04DD8 80AC7A78 8D0202B0 */  lw      $v0, 0x02B0($t0)           ## 000002B0
/* 04DDC 80AC7A7C 3C0A0700 */  lui     $t2, 0x0700                ## $t2 = 07000000
/* 04DE0 80AC7A80 354A0040 */  ori     $t2, $t2, 0x0040           ## $t2 = 07000040
/* 04DE4 80AC7A84 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 04DE8 80AC7A88 AD1902B0 */  sw      $t9, 0x02B0($t0)           ## 000002B0
/* 04DEC 80AC7A8C 3C09F570 */  lui     $t1, 0xF570                ## $t1 = F5700000
/* 04DF0 80AC7A90 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 04DF4 80AC7A94 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 04DF8 80AC7A98 8D0202B0 */  lw      $v0, 0x02B0($t0)           ## 000002B0
/* 04DFC 80AC7A9C 3C0CE600 */  lui     $t4, 0xE600                ## $t4 = E6000000
/* 04E00 80AC7AA0 3C0F070B */  lui     $t7, 0x070B                ## $t7 = 070B0000
/* 04E04 80AC7AA4 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 04E08 80AC7AA8 AD0B02B0 */  sw      $t3, 0x02B0($t0)           ## 000002B0
/* 04E0C 80AC7AAC AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 04E10 80AC7AB0 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 04E14 80AC7AB4 8D0202B0 */  lw      $v0, 0x02B0($t0)           ## 000002B0
/* 04E18 80AC7AB8 35EFF400 */  ori     $t7, $t7, 0xF400           ## $t7 = 070BF400
/* 04E1C 80AC7ABC 3C0EF300 */  lui     $t6, 0xF300                ## $t6 = F3000000
/* 04E20 80AC7AC0 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 04E24 80AC7AC4 AD0D02B0 */  sw      $t5, 0x02B0($t0)           ## 000002B0
/* 04E28 80AC7AC8 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 04E2C 80AC7ACC AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 04E30 80AC7AD0 8D0202B0 */  lw      $v0, 0x02B0($t0)           ## 000002B0
/* 04E34 80AC7AD4 3C19E700 */  lui     $t9, 0xE700                ## $t9 = E7000000
/* 04E38 80AC7AD8 3C0AF568 */  lui     $t2, 0xF568                ## $t2 = F5680000
/* 04E3C 80AC7ADC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 04E40 80AC7AE0 AD1802B0 */  sw      $t8, 0x02B0($t0)           ## 000002B0
/* 04E44 80AC7AE4 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 04E48 80AC7AE8 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 04E4C 80AC7AEC 8D0202B0 */  lw      $v0, 0x02B0($t0)           ## 000002B0
/* 04E50 80AC7AF0 354A0400 */  ori     $t2, $t2, 0x0400           ## $t2 = F5680400
/* 04E54 80AC7AF4 240B0040 */  addiu   $t3, $zero, 0x0040         ## $t3 = 00000040
/* 04E58 80AC7AF8 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 04E5C 80AC7AFC AD0902B0 */  sw      $t1, 0x02B0($t0)           ## 000002B0
/* 04E60 80AC7B00 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 04E64 80AC7B04 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 04E68 80AC7B08 8D0202B0 */  lw      $v0, 0x02B0($t0)           ## 000002B0
/* 04E6C 80AC7B0C 3C0E0003 */  lui     $t6, 0x0003                ## $t6 = 00030000
/* 04E70 80AC7B10 35CEC05C */  ori     $t6, $t6, 0xC05C           ## $t6 = 0003C05C
/* 04E74 80AC7B14 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 04E78 80AC7B18 AD0C02B0 */  sw      $t4, 0x02B0($t0)           ## 000002B0
/* 04E7C 80AC7B1C 3C0DF200 */  lui     $t5, 0xF200                ## $t5 = F2000000
/* 04E80 80AC7B20 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 04E84 80AC7B24 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 04E88 80AC7B28 8FAF009C */  lw      $t7, 0x009C($sp)           
/* 04E8C 80AC7B2C 8FA400A0 */  lw      $a0, 0x00A0($sp)           
/* 04E90 80AC7B30 51E00018 */  beql    $t7, $zero, .L80AC7B94     
/* 04E94 80AC7B34 8FB90098 */  lw      $t9, 0x0098($sp)           
/* 04E98 80AC7B38 8E180278 */  lw      $t8, 0x0278($s0)           ## 00000278
/* 04E9C 80AC7B3C 8E05026C */  lw      $a1, 0x026C($s0)           ## 0000026C
/* 04EA0 80AC7B40 8E060270 */  lw      $a2, 0x0270($s0)           ## 00000270
/* 04EA4 80AC7B44 8E070274 */  lw      $a3, 0x0274($s0)           ## 00000274
/* 04EA8 80AC7B48 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 04EAC 80AC7B4C C604027C */  lwc1    $f4, 0x027C($s0)           ## 0000027C
/* 04EB0 80AC7B50 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 04EB4 80AC7B54 44815000 */  mtc1    $at, $f10                  ## $f10 = -1.00
/* 04EB8 80AC7B58 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 04EBC 80AC7B5C C6060280 */  lwc1    $f6, 0x0280($s0)           ## 00000280
/* 04EC0 80AC7B60 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 04EC4 80AC7B64 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 04EC8 80AC7B68 E7A60018 */  swc1    $f6, 0x0018($sp)           
/* 04ECC 80AC7B6C C6080284 */  lwc1    $f8, 0x0284($s0)           ## 00000284
/* 04ED0 80AC7B70 AFA80094 */  sw      $t0, 0x0094($sp)           
/* 04ED4 80AC7B74 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 04ED8 80AC7B78 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 04EDC 80AC7B7C E7AA0028 */  swc1    $f10, 0x0028($sp)          
/* 04EE0 80AC7B80 E7B0002C */  swc1    $f16, 0x002C($sp)          
/* 04EE4 80AC7B84 0C2B1DF3 */  jal     func_80AC77CC              
/* 04EE8 80AC7B88 E7A8001C */  swc1    $f8, 0x001C($sp)           
/* 04EEC 80AC7B8C 8FA80094 */  lw      $t0, 0x0094($sp)           
/* 04EF0 80AC7B90 8FB90098 */  lw      $t9, 0x0098($sp)           
.L80AC7B94:
/* 04EF4 80AC7B94 53200017 */  beql    $t9, $zero, .L80AC7BF4     
/* 04EF8 80AC7B98 8D0202B0 */  lw      $v0, 0x02B0($t0)           ## 000002B0
/* 04EFC 80AC7B9C 8E0902B0 */  lw      $t1, 0x02B0($s0)           ## 000002B0
/* 04F00 80AC7BA0 8E0502A4 */  lw      $a1, 0x02A4($s0)           ## 000002A4
/* 04F04 80AC7BA4 8E0602A8 */  lw      $a2, 0x02A8($s0)           ## 000002A8
/* 04F08 80AC7BA8 8E0702AC */  lw      $a3, 0x02AC($s0)           ## 000002AC
/* 04F0C 80AC7BAC AFA90010 */  sw      $t1, 0x0010($sp)           
/* 04F10 80AC7BB0 C61202B4 */  lwc1    $f18, 0x02B4($s0)          ## 000002B4
/* 04F14 80AC7BB4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 04F18 80AC7BB8 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 04F1C 80AC7BBC E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 04F20 80AC7BC0 C60402B8 */  lwc1    $f4, 0x02B8($s0)           ## 000002B8
/* 04F24 80AC7BC4 8FA400A0 */  lw      $a0, 0x00A0($sp)           
/* 04F28 80AC7BC8 E7A40018 */  swc1    $f4, 0x0018($sp)           
/* 04F2C 80AC7BCC C60602BC */  lwc1    $f6, 0x02BC($s0)           ## 000002BC
/* 04F30 80AC7BD0 AFA80094 */  sw      $t0, 0x0094($sp)           
/* 04F34 80AC7BD4 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 04F38 80AC7BD8 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 04F3C 80AC7BDC E7A0002C */  swc1    $f0, 0x002C($sp)           
/* 04F40 80AC7BE0 E7A00028 */  swc1    $f0, 0x0028($sp)           
/* 04F44 80AC7BE4 0C2B1DF3 */  jal     func_80AC77CC              
/* 04F48 80AC7BE8 E7A6001C */  swc1    $f6, 0x001C($sp)           
/* 04F4C 80AC7BEC 8FA80094 */  lw      $t0, 0x0094($sp)           
/* 04F50 80AC7BF0 8D0202B0 */  lw      $v0, 0x02B0($t0)           ## 000002B0
.L80AC7BF4:
/* 04F54 80AC7BF4 3C0C0401 */  lui     $t4, %hi(D_0400CE40)                ## $t4 = 04010000
/* 04F58 80AC7BF8 258CCE40 */  addiu   $t4, $t4, %lo(D_0400CE40)           ## $t4 = 0400CE40
/* 04F5C 80AC7BFC 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 04F60 80AC7C00 AD0A02B0 */  sw      $t2, 0x02B0($t0)           ## 000002B0
/* 04F64 80AC7C04 3C0BFD70 */  lui     $t3, 0xFD70                ## $t3 = FD700000
/* 04F68 80AC7C08 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 04F6C 80AC7C0C AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 04F70 80AC7C10 8D0202B0 */  lw      $v0, 0x02B0($t0)           ## 000002B0
/* 04F74 80AC7C14 3C0F0700 */  lui     $t7, 0x0700                ## $t7 = 07000000
/* 04F78 80AC7C18 35EF0040 */  ori     $t7, $t7, 0x0040           ## $t7 = 07000040
/* 04F7C 80AC7C1C 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 04F80 80AC7C20 AD0D02B0 */  sw      $t5, 0x02B0($t0)           ## 000002B0
/* 04F84 80AC7C24 3C0EF570 */  lui     $t6, 0xF570                ## $t6 = F5700000
/* 04F88 80AC7C28 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 04F8C 80AC7C2C AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 04F90 80AC7C30 8D0202B0 */  lw      $v0, 0x02B0($t0)           ## 000002B0
/* 04F94 80AC7C34 3C19E600 */  lui     $t9, 0xE600                ## $t9 = E6000000
/* 04F98 80AC7C38 3C0B0707 */  lui     $t3, 0x0707                ## $t3 = 07070000
/* 04F9C 80AC7C3C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 04FA0 80AC7C40 AD1802B0 */  sw      $t8, 0x02B0($t0)           ## 000002B0
/* 04FA4 80AC7C44 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 04FA8 80AC7C48 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 04FAC 80AC7C4C 8D0202B0 */  lw      $v0, 0x02B0($t0)           ## 000002B0
/* 04FB0 80AC7C50 356BF400 */  ori     $t3, $t3, 0xF400           ## $t3 = 0707F400
/* 04FB4 80AC7C54 3C0AF300 */  lui     $t2, 0xF300                ## $t2 = F3000000
/* 04FB8 80AC7C58 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 04FBC 80AC7C5C AD0902B0 */  sw      $t1, 0x02B0($t0)           ## 000002B0
/* 04FC0 80AC7C60 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 04FC4 80AC7C64 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 04FC8 80AC7C68 8D0202B0 */  lw      $v0, 0x02B0($t0)           ## 000002B0
/* 04FCC 80AC7C6C 3C0DE700 */  lui     $t5, 0xE700                ## $t5 = E7000000
/* 04FD0 80AC7C70 3C0FF568 */  lui     $t7, 0xF568                ## $t7 = F5680000
/* 04FD4 80AC7C74 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 04FD8 80AC7C78 AD0C02B0 */  sw      $t4, 0x02B0($t0)           ## 000002B0
/* 04FDC 80AC7C7C AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 04FE0 80AC7C80 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 04FE4 80AC7C84 8D0202B0 */  lw      $v0, 0x02B0($t0)           ## 000002B0
/* 04FE8 80AC7C88 35EF0400 */  ori     $t7, $t7, 0x0400           ## $t7 = F5680400
/* 04FEC 80AC7C8C 24180040 */  addiu   $t8, $zero, 0x0040         ## $t8 = 00000040
/* 04FF0 80AC7C90 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 04FF4 80AC7C94 AD0E02B0 */  sw      $t6, 0x02B0($t0)           ## 000002B0
/* 04FF8 80AC7C98 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 04FFC 80AC7C9C AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 05000 80AC7CA0 8D0202B0 */  lw      $v0, 0x02B0($t0)           ## 000002B0
/* 05004 80AC7CA4 3C0A0003 */  lui     $t2, 0x0003                ## $t2 = 00030000
/* 05008 80AC7CA8 354AC03C */  ori     $t2, $t2, 0xC03C           ## $t2 = 0003C03C
/* 0500C 80AC7CAC 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 05010 80AC7CB0 AD1902B0 */  sw      $t9, 0x02B0($t0)           ## 000002B0
/* 05014 80AC7CB4 3C09F200 */  lui     $t1, 0xF200                ## $t1 = F2000000
/* 05018 80AC7CB8 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 0501C 80AC7CBC AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 05020 80AC7CC0 8FAB009C */  lw      $t3, 0x009C($sp)           
/* 05024 80AC7CC4 8FA400A0 */  lw      $a0, 0x00A0($sp)           
/* 05028 80AC7CC8 51600016 */  beql    $t3, $zero, .L80AC7D24     
/* 0502C 80AC7CCC 8FAD0098 */  lw      $t5, 0x0098($sp)           
/* 05030 80AC7CD0 8E0C0260 */  lw      $t4, 0x0260($s0)           ## 00000260
/* 05034 80AC7CD4 8E050254 */  lw      $a1, 0x0254($s0)           ## 00000254
/* 05038 80AC7CD8 8E060258 */  lw      $a2, 0x0258($s0)           ## 00000258
/* 0503C 80AC7CDC 8E07025C */  lw      $a3, 0x025C($s0)           ## 0000025C
/* 05040 80AC7CE0 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 05044 80AC7CE4 C6080264 */  lwc1    $f8, 0x0264($s0)           ## 00000264
/* 05048 80AC7CE8 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 0504C 80AC7CEC 44819000 */  mtc1    $at, $f18                  ## $f18 = -1.00
/* 05050 80AC7CF0 E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 05054 80AC7CF4 C60A0268 */  lwc1    $f10, 0x0268($s0)          ## 00000268
/* 05058 80AC7CF8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0505C 80AC7CFC 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 05060 80AC7D00 E7AA0018 */  swc1    $f10, 0x0018($sp)          
/* 05064 80AC7D04 C6100284 */  lwc1    $f16, 0x0284($s0)          ## 00000284
/* 05068 80AC7D08 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 0506C 80AC7D0C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 05070 80AC7D10 E7B20028 */  swc1    $f18, 0x0028($sp)          
/* 05074 80AC7D14 E7A4002C */  swc1    $f4, 0x002C($sp)           
/* 05078 80AC7D18 0C2B1DF3 */  jal     func_80AC77CC              
/* 0507C 80AC7D1C E7B0001C */  swc1    $f16, 0x001C($sp)          
/* 05080 80AC7D20 8FAD0098 */  lw      $t5, 0x0098($sp)           
.L80AC7D24:
/* 05084 80AC7D24 51A00016 */  beql    $t5, $zero, .L80AC7D80     
/* 05088 80AC7D28 8FAF00A0 */  lw      $t7, 0x00A0($sp)           
/* 0508C 80AC7D2C 8E0E0298 */  lw      $t6, 0x0298($s0)           ## 00000298
/* 05090 80AC7D30 8E05028C */  lw      $a1, 0x028C($s0)           ## 0000028C
/* 05094 80AC7D34 8E060290 */  lw      $a2, 0x0290($s0)           ## 00000290
/* 05098 80AC7D38 8E070294 */  lw      $a3, 0x0294($s0)           ## 00000294
/* 0509C 80AC7D3C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 050A0 80AC7D40 C606029C */  lwc1    $f6, 0x029C($s0)           ## 0000029C
/* 050A4 80AC7D44 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 050A8 80AC7D48 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 050AC 80AC7D4C E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 050B0 80AC7D50 C60802A0 */  lwc1    $f8, 0x02A0($s0)           ## 000002A0
/* 050B4 80AC7D54 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 050B8 80AC7D58 8FA400A0 */  lw      $a0, 0x00A0($sp)           
/* 050BC 80AC7D5C E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 050C0 80AC7D60 C60A02BC */  lwc1    $f10, 0x02BC($s0)          ## 000002BC
/* 050C4 80AC7D64 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 050C8 80AC7D68 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 050CC 80AC7D6C E7B00028 */  swc1    $f16, 0x0028($sp)          
/* 050D0 80AC7D70 E7B2002C */  swc1    $f18, 0x002C($sp)          
/* 050D4 80AC7D74 0C2B1DF3 */  jal     func_80AC77CC              
/* 050D8 80AC7D78 E7AA001C */  swc1    $f10, 0x001C($sp)          
/* 050DC 80AC7D7C 8FAF00A0 */  lw      $t7, 0x00A0($sp)           
.L80AC7D80:
/* 050E0 80AC7D80 3C0680AD */  lui     $a2, %hi(D_80AC93EC)       ## $a2 = 80AD0000
/* 050E4 80AC7D84 24C693EC */  addiu   $a2, $a2, %lo(D_80AC93EC)  ## $a2 = 80AC93EC
/* 050E8 80AC7D88 27A40084 */  addiu   $a0, $sp, 0x0084           ## $a0 = FFFFFFE4
/* 050EC 80AC7D8C 240710CC */  addiu   $a3, $zero, 0x10CC         ## $a3 = 000010CC
/* 050F0 80AC7D90 0C031AD5 */  jal     Graph_CloseDisps              
/* 050F4 80AC7D94 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 050F8 80AC7D98 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 050FC 80AC7D9C 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 05100 80AC7DA0 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000
/* 05104 80AC7DA4 03E00008 */  jr      $ra                        
/* 05108 80AC7DA8 00000000 */  nop
