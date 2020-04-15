.rdata
glabel D_808CA5DC
    .asciz "../z_boss_dodongo.c"
    .balign 4

glabel D_808CA5F0
    .asciz "../z_boss_dodongo.c"
    .balign 4

.late_rodata
glabel D_808CA740
 .word 0x40490FD0

.text
glabel BossDodongo_Draw
/* 03AE0 808C4C70 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 03AE4 808C4C74 AFB20030 */  sw      $s2, 0x0030($sp)           
/* 03AE8 808C4C78 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 03AEC 808C4C7C AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 03AF0 808C4C80 AFB1002C */  sw      $s1, 0x002C($sp)           
/* 03AF4 808C4C84 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 03AF8 808C4C88 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 03AFC 808C4C8C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03B00 808C4C90 3C06808D */  lui     $a2, %hi(D_808CA5DC)       ## $a2 = 808D0000
/* 03B04 808C4C94 24C6A5DC */  addiu   $a2, $a2, %lo(D_808CA5DC)  ## $a2 = 808CA5DC
/* 03B08 808C4C98 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 03B0C 808C4C9C 24070F52 */  addiu   $a3, $zero, 0x0F52         ## $a3 = 00000F52
/* 03B10 808C4CA0 0C031AB1 */  jal     Graph_OpenDisps              
/* 03B14 808C4CA4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 03B18 808C4CA8 0C024F46 */  jal     func_80093D18              
/* 03B1C 808C4CAC 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 03B20 808C4CB0 860201C0 */  lh      $v0, 0x01C0($s0)           ## 000001C0
/* 03B24 808C4CB4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 03B28 808C4CB8 28410002 */  slti    $at, $v0, 0x0002           
/* 03B2C 808C4CBC 1420000E */  bne     $at, $zero, .L808C4CF8     
/* 03B30 808C4CC0 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 03B34 808C4CC4 11C0000C */  beq     $t6, $zero, .L808C4CF8     
/* 03B38 808C4CC8 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 03B3C 808C4CCC 8E2402C0 */  lw      $a0, 0x02C0($s1)           ## 000002C0
/* 03B40 808C4CD0 240F0384 */  addiu   $t7, $zero, 0x0384         ## $t7 = 00000384
/* 03B44 808C4CD4 2418044B */  addiu   $t8, $zero, 0x044B         ## $t8 = 0000044B
/* 03B48 808C4CD8 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 03B4C 808C4CDC AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 03B50 808C4CE0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 03B54 808C4CE4 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 03B58 808C4CE8 0C024CDC */  jal     Gfx_SetFog              
/* 03B5C 808C4CEC 240700FF */  addiu   $a3, $zero, 0x00FF         ## $a3 = 000000FF
/* 03B60 808C4CF0 10000073 */  beq     $zero, $zero, .L808C4EC0   
/* 03B64 808C4CF4 AE2202C0 */  sw      $v0, 0x02C0($s1)           ## 000002C0
.L808C4CF8:
/* 03B68 808C4CF8 4459F800 */  cfc1    $t9, $31
/* 03B6C 808C4CFC 44C5F800 */  ctc1    $a1, $31
/* 03B70 808C4D00 C6040210 */  lwc1    $f4, 0x0210($s0)           ## 00000210
/* 03B74 808C4D04 8E2402C0 */  lw      $a0, 0x02C0($s1)           ## 000002C0
/* 03B78 808C4D08 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 03B7C 808C4D0C 460021A4 */  cvt.w.s $f6, $f4                   
/* 03B80 808C4D10 4445F800 */  cfc1    $a1, $31
/* 03B84 808C4D14 00000000 */  nop
/* 03B88 808C4D18 30A50078 */  andi    $a1, $a1, 0x0078           ## $a1 = 00000000
/* 03B8C 808C4D1C 50A00013 */  beql    $a1, $zero, .L808C4D6C     
/* 03B90 808C4D20 44053000 */  mfc1    $a1, $f6                   
/* 03B94 808C4D24 44813000 */  mtc1    $at, $f6                   ## $f6 = 2147483648.00
/* 03B98 808C4D28 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 03B9C 808C4D2C 46062181 */  sub.s   $f6, $f4, $f6              
/* 03BA0 808C4D30 44C5F800 */  ctc1    $a1, $31
/* 03BA4 808C4D34 00000000 */  nop
/* 03BA8 808C4D38 460031A4 */  cvt.w.s $f6, $f6                   
/* 03BAC 808C4D3C 4445F800 */  cfc1    $a1, $31
/* 03BB0 808C4D40 00000000 */  nop
/* 03BB4 808C4D44 30A50078 */  andi    $a1, $a1, 0x0078           ## $a1 = 00000000
/* 03BB8 808C4D48 14A00005 */  bne     $a1, $zero, .L808C4D60     
/* 03BBC 808C4D4C 00000000 */  nop
/* 03BC0 808C4D50 44053000 */  mfc1    $a1, $f6                   
/* 03BC4 808C4D54 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 03BC8 808C4D58 10000007 */  beq     $zero, $zero, .L808C4D78   
/* 03BCC 808C4D5C 00A12825 */  or      $a1, $a1, $at              ## $a1 = 80000000
.L808C4D60:
/* 03BD0 808C4D60 10000005 */  beq     $zero, $zero, .L808C4D78   
/* 03BD4 808C4D64 2405FFFF */  addiu   $a1, $zero, 0xFFFF         ## $a1 = FFFFFFFF
/* 03BD8 808C4D68 44053000 */  mfc1    $a1, $f6                   
.L808C4D6C:
/* 03BDC 808C4D6C 00000000 */  nop
/* 03BE0 808C4D70 04A0FFFB */  bltz    $a1, .L808C4D60            
/* 03BE4 808C4D74 00000000 */  nop
.L808C4D78:
/* 03BE8 808C4D78 44D9F800 */  ctc1    $t9, $31
/* 03BEC 808C4D7C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 03BF0 808C4D80 C6080214 */  lwc1    $f8, 0x0214($s0)           ## 00000214
/* 03BF4 808C4D84 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 03BF8 808C4D88 4448F800 */  cfc1    $t0, $31
/* 03BFC 808C4D8C 44C6F800 */  ctc1    $a2, $31
/* 03C00 808C4D90 00000000 */  nop
/* 03C04 808C4D94 460042A4 */  cvt.w.s $f10, $f8                  
/* 03C08 808C4D98 4446F800 */  cfc1    $a2, $31
/* 03C0C 808C4D9C 00000000 */  nop
/* 03C10 808C4DA0 30C60078 */  andi    $a2, $a2, 0x0078           ## $a2 = 00000000
/* 03C14 808C4DA4 50C00013 */  beql    $a2, $zero, .L808C4DF4     
/* 03C18 808C4DA8 44065000 */  mfc1    $a2, $f10                  
/* 03C1C 808C4DAC 44815000 */  mtc1    $at, $f10                  ## $f10 = 2147483648.00
/* 03C20 808C4DB0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 03C24 808C4DB4 460A4281 */  sub.s   $f10, $f8, $f10            
/* 03C28 808C4DB8 44C6F800 */  ctc1    $a2, $31
/* 03C2C 808C4DBC 00000000 */  nop
/* 03C30 808C4DC0 460052A4 */  cvt.w.s $f10, $f10                 
/* 03C34 808C4DC4 4446F800 */  cfc1    $a2, $31
/* 03C38 808C4DC8 00000000 */  nop
/* 03C3C 808C4DCC 30C60078 */  andi    $a2, $a2, 0x0078           ## $a2 = 00000000
/* 03C40 808C4DD0 14C00005 */  bne     $a2, $zero, .L808C4DE8     
/* 03C44 808C4DD4 00000000 */  nop
/* 03C48 808C4DD8 44065000 */  mfc1    $a2, $f10                  
/* 03C4C 808C4DDC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 03C50 808C4DE0 10000007 */  beq     $zero, $zero, .L808C4E00   
/* 03C54 808C4DE4 00C13025 */  or      $a2, $a2, $at              ## $a2 = 80000000
.L808C4DE8:
/* 03C58 808C4DE8 10000005 */  beq     $zero, $zero, .L808C4E00   
/* 03C5C 808C4DEC 2406FFFF */  addiu   $a2, $zero, 0xFFFF         ## $a2 = FFFFFFFF
/* 03C60 808C4DF0 44065000 */  mfc1    $a2, $f10                  
.L808C4DF4:
/* 03C64 808C4DF4 00000000 */  nop
/* 03C68 808C4DF8 04C0FFFB */  bltz    $a2, .L808C4DE8            
/* 03C6C 808C4DFC 00000000 */  nop
.L808C4E00:
/* 03C70 808C4E00 44C8F800 */  ctc1    $t0, $31
/* 03C74 808C4E04 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 03C78 808C4E08 C6100218 */  lwc1    $f16, 0x0218($s0)          ## 00000218
/* 03C7C 808C4E0C 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 03C80 808C4E10 4449F800 */  cfc1    $t1, $31
/* 03C84 808C4E14 44C7F800 */  ctc1    $a3, $31
/* 03C88 808C4E18 00000000 */  nop
/* 03C8C 808C4E1C 460084A4 */  cvt.w.s $f18, $f16                 
/* 03C90 808C4E20 4447F800 */  cfc1    $a3, $31
/* 03C94 808C4E24 00000000 */  nop
/* 03C98 808C4E28 30E70078 */  andi    $a3, $a3, 0x0078           ## $a3 = 00000000
/* 03C9C 808C4E2C 50E00013 */  beql    $a3, $zero, .L808C4E7C     
/* 03CA0 808C4E30 44079000 */  mfc1    $a3, $f18                  
/* 03CA4 808C4E34 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 03CA8 808C4E38 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 03CAC 808C4E3C 46128481 */  sub.s   $f18, $f16, $f18           
/* 03CB0 808C4E40 44C7F800 */  ctc1    $a3, $31
/* 03CB4 808C4E44 00000000 */  nop
/* 03CB8 808C4E48 460094A4 */  cvt.w.s $f18, $f18                 
/* 03CBC 808C4E4C 4447F800 */  cfc1    $a3, $31
/* 03CC0 808C4E50 00000000 */  nop
/* 03CC4 808C4E54 30E70078 */  andi    $a3, $a3, 0x0078           ## $a3 = 00000000
/* 03CC8 808C4E58 14E00005 */  bne     $a3, $zero, .L808C4E70     
/* 03CCC 808C4E5C 00000000 */  nop
/* 03CD0 808C4E60 44079000 */  mfc1    $a3, $f18                  
/* 03CD4 808C4E64 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 03CD8 808C4E68 10000007 */  beq     $zero, $zero, .L808C4E88   
/* 03CDC 808C4E6C 00E13825 */  or      $a3, $a3, $at              ## $a3 = 80000000
.L808C4E70:
/* 03CE0 808C4E70 10000005 */  beq     $zero, $zero, .L808C4E88   
/* 03CE4 808C4E74 2407FFFF */  addiu   $a3, $zero, 0xFFFF         ## $a3 = FFFFFFFF
/* 03CE8 808C4E78 44079000 */  mfc1    $a3, $f18                  
.L808C4E7C:
/* 03CEC 808C4E7C 00000000 */  nop
/* 03CF0 808C4E80 04E0FFFB */  bltz    $a3, .L808C4E70            
/* 03CF4 808C4E84 00000000 */  nop
.L808C4E88:
/* 03CF8 808C4E88 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 03CFC 808C4E8C C604021C */  lwc1    $f4, 0x021C($s0)           ## 0000021C
/* 03D00 808C4E90 44C9F800 */  ctc1    $t1, $31
/* 03D04 808C4E94 00000000 */  nop
/* 03D08 808C4E98 4600218D */  trunc.w.s $f6, $f4                   
/* 03D0C 808C4E9C 440B3000 */  mfc1    $t3, $f6                   
/* 03D10 808C4EA0 00000000 */  nop
/* 03D14 808C4EA4 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 03D18 808C4EA8 C6080220 */  lwc1    $f8, 0x0220($s0)           ## 00000220
/* 03D1C 808C4EAC 4600428D */  trunc.w.s $f10, $f8                  
/* 03D20 808C4EB0 440D5000 */  mfc1    $t5, $f10                  
/* 03D24 808C4EB4 0C024CDC */  jal     Gfx_SetFog              
/* 03D28 808C4EB8 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 03D2C 808C4EBC AE2202C0 */  sw      $v0, 0x02C0($s1)           ## 000002C0
.L808C4EC0:
/* 03D30 808C4EC0 C60C023C */  lwc1    $f12, 0x023C($s0)          ## 0000023C
/* 03D34 808C4EC4 0C0343B5 */  jal     Matrix_RotateZ              
/* 03D38 808C4EC8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 03D3C 808C4ECC 860E01C4 */  lh      $t6, 0x01C4($s0)           ## 000001C4
/* 03D40 808C4ED0 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 03D44 808C4ED4 44812000 */  mtc1    $at, $f4                   ## $f4 = 32768.00
/* 03D48 808C4ED8 448E8000 */  mtc1    $t6, $f16                  ## $f16 = 0.00
/* 03D4C 808C4EDC 3C01808D */  lui     $at, %hi(D_808CA740)       ## $at = 808D0000
/* 03D50 808C4EE0 C428A740 */  lwc1    $f8, %lo(D_808CA740)($at)  
/* 03D54 808C4EE4 468084A0 */  cvt.s.w $f18, $f16                 
/* 03D58 808C4EE8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 03D5C 808C4EEC 46049183 */  div.s   $f6, $f18, $f4             
/* 03D60 808C4EF0 46083302 */  mul.s   $f12, $f6, $f8             
/* 03D64 808C4EF4 0C0342DC */  jal     Matrix_RotateX              
/* 03D68 808C4EF8 00000000 */  nop
/* 03D6C 808C4EFC 3C0F808C */  lui     $t7, %hi(func_808C4B90)    ## $t7 = 808C0000
/* 03D70 808C4F00 25EF4B90 */  addiu   $t7, $t7, %lo(func_808C4B90) ## $t7 = 808C4B90
/* 03D74 808C4F04 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 03D78 808C4F08 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 03D7C 808C4F0C 3C07808C */  lui     $a3, %hi(func_808C4940)    ## $a3 = 808C0000
/* 03D80 808C4F10 24E74940 */  addiu   $a3, $a3, %lo(func_808C4940) ## $a3 = 808C4940
/* 03D84 808C4F14 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 03D88 808C4F18 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 03D8C 808C4F1C 0C028572 */  jal     SkelAnime_Draw
              
/* 03D90 808C4F20 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 03D94 808C4F24 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 03D98 808C4F28 0C02F228 */  jal     func_800BC8A0              
/* 03D9C 808C4F2C 8E2502C0 */  lw      $a1, 0x02C0($s1)           ## 000002C0
/* 03DA0 808C4F30 AE2202C0 */  sw      $v0, 0x02C0($s1)           ## 000002C0
/* 03DA4 808C4F34 3C06808D */  lui     $a2, %hi(D_808CA5F0)       ## $a2 = 808D0000
/* 03DA8 808C4F38 24C6A5F0 */  addiu   $a2, $a2, %lo(D_808CA5F0)  ## $a2 = 808CA5F0
/* 03DAC 808C4F3C 8E450000 */  lw      $a1, 0x0000($s2)           ## 00000000
/* 03DB0 808C4F40 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 03DB4 808C4F44 0C031AD5 */  jal     Graph_CloseDisps              
/* 03DB8 808C4F48 24070F8D */  addiu   $a3, $zero, 0x0F8D         ## $a3 = 00000F8D
/* 03DBC 808C4F4C 0C231B7A */  jal     func_808C6DE8              
/* 03DC0 808C4F50 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 03DC4 808C4F54 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 03DC8 808C4F58 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 03DCC 808C4F5C 8FB1002C */  lw      $s1, 0x002C($sp)           
/* 03DD0 808C4F60 8FB20030 */  lw      $s2, 0x0030($sp)           
/* 03DD4 808C4F64 03E00008 */  jr      $ra                        
/* 03DD8 808C4F68 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
