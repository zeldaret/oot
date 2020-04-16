.rdata
glabel D_8094AAC8
    .asciz "../z_boss_tw.c"
    .balign 4

glabel D_8094AAD8
    .asciz "../z_boss_tw.c"
    .balign 4

glabel D_8094AAE8
    .asciz "../z_boss_tw.c"
    .balign 4

glabel D_8094AAF8
    .asciz "../z_boss_tw.c"
    .balign 4

glabel D_8094AB08
    .asciz "../z_boss_tw.c"
    .balign 4

.text
glabel func_80941BC0
/* 08EF0 80941BC0 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 08EF4 80941BC4 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 08EF8 80941BC8 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 08EFC 80941BCC AFA400A0 */  sw      $a0, 0x00A0($sp)           
/* 08F00 80941BD0 AFA500A4 */  sw      $a1, 0x00A4($sp)           
/* 08F04 80941BD4 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 08F08 80941BD8 3C068095 */  lui     $a2, %hi(D_8094AAC8)       ## $a2 = 80950000
/* 08F0C 80941BDC 24C6AAC8 */  addiu   $a2, $a2, %lo(D_8094AAC8)  ## $a2 = 8094AAC8
/* 08F10 80941BE0 27A40088 */  addiu   $a0, $sp, 0x0088           ## $a0 = FFFFFFE8
/* 08F14 80941BE4 240718C5 */  addiu   $a3, $zero, 0x18C5         ## $a3 = 000018C5
/* 08F18 80941BE8 0C031AB1 */  jal     Graph_OpenDisps              
/* 08F1C 80941BEC 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 08F20 80941BF0 0C034213 */  jal     Matrix_Push              
/* 08F24 80941BF4 00000000 */  nop
/* 08F28 80941BF8 8FAF00A4 */  lw      $t7, 0x00A4($sp)           
/* 08F2C 80941BFC 0C024F61 */  jal     func_80093D84              
/* 08F30 80941C00 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 08F34 80941C04 8FA200A0 */  lw      $v0, 0x00A0($sp)           
/* 08F38 80941C08 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 08F3C 80941C0C C44C04BC */  lwc1    $f12, 0x04BC($v0)          ## 000004BC
/* 08F40 80941C10 C44E04C0 */  lwc1    $f14, 0x04C0($v0)          ## 000004C0
/* 08F44 80941C14 0C034261 */  jal     Matrix_Translate              
/* 08F48 80941C18 8C4604C4 */  lw      $a2, 0x04C4($v0)           ## 000004C4
/* 08F4C 80941C1C 8FB800A0 */  lw      $t8, 0x00A0($sp)           
/* 08F50 80941C20 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 08F54 80941C24 C70C01B4 */  lwc1    $f12, 0x01B4($t8)          ## 000001B4
/* 08F58 80941C28 44066000 */  mfc1    $a2, $f12                  
/* 08F5C 80941C2C 0C0342A3 */  jal     Matrix_Scale              
/* 08F60 80941C30 46006386 */  mov.s   $f14, $f12                 
/* 08F64 80941C34 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 08F68 80941C38 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 08F6C 80941C3C 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 08F70 80941C40 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 08F74 80941C44 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 08F78 80941C48 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 08F7C 80941C4C 8FAC00A4 */  lw      $t4, 0x00A4($sp)           
/* 08F80 80941C50 3C058095 */  lui     $a1, %hi(D_8094AAD8)       ## $a1 = 80950000
/* 08F84 80941C54 24A5AAD8 */  addiu   $a1, $a1, %lo(D_8094AAD8)  ## $a1 = 8094AAD8
/* 08F88 80941C58 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 08F8C 80941C5C 240618D6 */  addiu   $a2, $zero, 0x18D6         ## $a2 = 000018D6
/* 08F90 80941C60 0C0346A2 */  jal     Matrix_NewMtx              
/* 08F94 80941C64 AFA20084 */  sw      $v0, 0x0084($sp)           
/* 08F98 80941C68 8FA30084 */  lw      $v1, 0x0084($sp)           
/* 08F9C 80941C6C 3C09FA00 */  lui     $t1, 0xFA00                ## $t1 = FA000000
/* 08FA0 80941C70 2401FF00 */  addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
/* 08FA4 80941C74 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 08FA8 80941C78 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 08FAC 80941C7C 8FA800A0 */  lw      $t0, 0x00A0($sp)           
/* 08FB0 80941C80 3C0E0028 */  lui     $t6, 0x0028                ## $t6 = 00280000
/* 08FB4 80941C84 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 08FB8 80941C88 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 08FBC 80941C8C AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 08FC0 80941C90 C50401B0 */  lwc1    $f4, 0x01B0($t0)           ## 000001B0
/* 08FC4 80941C94 35CE1E50 */  ori     $t6, $t6, 0x1E50           ## $t6 = 00281E50
/* 08FC8 80941C98 3C0AFB00 */  lui     $t2, 0xFB00                ## $t2 = FB000000
/* 08FCC 80941C9C 4600218D */  trunc.w.s $f6, $f4                   
/* 08FD0 80941CA0 3C040602 */  lui     $a0, 0x0602                ## $a0 = 06020000
/* 08FD4 80941CA4 2484BC00 */  addiu   $a0, $a0, 0xBC00           ## $a0 = 0601BC00
/* 08FD8 80941CA8 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 08FDC 80941CAC 44193000 */  mfc1    $t9, $f6                   
/* 08FE0 80941CB0 00000000 */  nop
/* 08FE4 80941CB4 332B00FF */  andi    $t3, $t9, 0x00FF           ## $t3 = 00000000
/* 08FE8 80941CB8 01616025 */  or      $t4, $t3, $at              ## $t4 = FFFFFF00
/* 08FEC 80941CBC AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 08FF0 80941CC0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 08FF4 80941CC4 0004C900 */  sll     $t9, $a0,  4               
/* 08FF8 80941CC8 00195F02 */  srl     $t3, $t9, 28               
/* 08FFC 80941CCC 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 09000 80941CD0 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 09004 80941CD4 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 09008 80941CD8 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 0900C 80941CDC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09010 80941CE0 3C0D8016 */  lui     $t5, 0x8016                ## $t5 = 80160000
/* 09014 80941CE4 000B6080 */  sll     $t4, $t3,  2               
/* 09018 80941CE8 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 0901C 80941CEC AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 09020 80941CF0 01AC6821 */  addu    $t5, $t5, $t4              
/* 09024 80941CF4 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 09028 80941CF8 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 0902C 80941CFC 8DAD6FA8 */  lw      $t5, 0x6FA8($t5)           ## 80166FA8
/* 09030 80941D00 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 09034 80941D04 00817024 */  and     $t6, $a0, $at              
/* 09038 80941D08 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0903C 80941D0C 01AE7821 */  addu    $t7, $t5, $t6              
/* 09040 80941D10 01E1C021 */  addu    $t8, $t7, $at              
/* 09044 80941D14 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 09048 80941D18 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
/* 0904C 80941D1C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 09050 80941D20 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 09054 80941D24 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 09058 80941D28 AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 0905C 80941D2C C50A01B0 */  lwc1    $f10, 0x01B0($t0)          ## 000001B0
/* 09060 80941D30 C50801BC */  lwc1    $f8, 0x01BC($t0)           ## 000001BC
/* 09064 80941D34 4600540D */  trunc.w.s $f16, $f10                 
/* 09068 80941D38 440C8000 */  mfc1    $t4, $f16                  
/* 0906C 80941D3C 00000000 */  nop
/* 09070 80941D40 000C6C00 */  sll     $t5, $t4, 16               
/* 09074 80941D44 000D7403 */  sra     $t6, $t5, 16               
/* 09078 80941D48 448E9000 */  mtc1    $t6, $f18                  ## $f18 = 0.00
/* 0907C 80941D4C 240DFF80 */  addiu   $t5, $zero, 0xFF80         ## $t5 = FFFFFF80
/* 09080 80941D50 46809120 */  cvt.s.w $f4, $f18                  
/* 09084 80941D54 46044182 */  mul.s   $f6, $f8, $f4              
/* 09088 80941D58 444FF800 */  cfc1    $t7, $31
/* 0908C 80941D5C 44D8F800 */  ctc1    $t8, $31
/* 09090 80941D60 00000000 */  nop
/* 09094 80941D64 460032A4 */  cvt.w.s $f10, $f6                  
/* 09098 80941D68 4458F800 */  cfc1    $t8, $31
/* 0909C 80941D6C 00000000 */  nop
/* 090A0 80941D70 33180078 */  andi    $t8, $t8, 0x0078           ## $t8 = 00000000
/* 090A4 80941D74 13000012 */  beq     $t8, $zero, .L80941DC0     
/* 090A8 80941D78 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 090AC 80941D7C 44815000 */  mtc1    $at, $f10                  ## $f10 = 2147483648.00
/* 090B0 80941D80 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 090B4 80941D84 460A3281 */  sub.s   $f10, $f6, $f10            
/* 090B8 80941D88 44D8F800 */  ctc1    $t8, $31
/* 090BC 80941D8C 00000000 */  nop
/* 090C0 80941D90 460052A4 */  cvt.w.s $f10, $f10                 
/* 090C4 80941D94 4458F800 */  cfc1    $t8, $31
/* 090C8 80941D98 00000000 */  nop
/* 090CC 80941D9C 33180078 */  andi    $t8, $t8, 0x0078           ## $t8 = 00000000
/* 090D0 80941DA0 17000005 */  bne     $t8, $zero, .L80941DB8     
/* 090D4 80941DA4 00000000 */  nop
/* 090D8 80941DA8 44185000 */  mfc1    $t8, $f10                  
/* 090DC 80941DAC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 090E0 80941DB0 10000007 */  beq     $zero, $zero, .L80941DD0   
/* 090E4 80941DB4 0301C025 */  or      $t8, $t8, $at              ## $t8 = 80000000
.L80941DB8:
/* 090E8 80941DB8 10000005 */  beq     $zero, $zero, .L80941DD0   
/* 090EC 80941DBC 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
.L80941DC0:
/* 090F0 80941DC0 44185000 */  mfc1    $t8, $f10                  
/* 090F4 80941DC4 00000000 */  nop
/* 090F8 80941DC8 0700FFFB */  bltz    $t8, .L80941DB8            
/* 090FC 80941DCC 00000000 */  nop
.L80941DD0:
/* 09100 80941DD0 3C01D7D7 */  lui     $at, 0xD7D7                ## $at = D7D70000
/* 09104 80941DD4 3421D700 */  ori     $at, $at, 0xD700           ## $at = D7D7D700
/* 09108 80941DD8 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 000000FF
/* 0910C 80941DDC 03215825 */  or      $t3, $t9, $at              ## $t3 = D7D7D7FF
/* 09110 80941DE0 AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
/* 09114 80941DE4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09118 80941DE8 44CFF800 */  ctc1    $t7, $31
/* 0911C 80941DEC 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 09120 80941DF0 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 09124 80941DF4 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 09128 80941DF8 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 0912C 80941DFC AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 09130 80941E00 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
/* 09134 80941E04 35EF0020 */  ori     $t7, $t7, 0x0020           ## $t7 = DB060020
/* 09138 80941E08 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 0913C 80941E0C 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 09140 80941E10 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 09144 80941E14 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 09148 80941E18 8FB800A4 */  lw      $t8, 0x00A4($sp)           
/* 0914C 80941E1C 240B0040 */  addiu   $t3, $zero, 0x0040         ## $t3 = 00000040
/* 09150 80941E20 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 09154 80941E24 8F040000 */  lw      $a0, 0x0000($t8)           ## FFFFFFFF
/* 09158 80941E28 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 0915C 80941E2C AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 09160 80941E30 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 09164 80941E34 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 09168 80941E38 444DF800 */  cfc1    $t5, $31
/* 0916C 80941E3C 44CEF800 */  ctc1    $t6, $31
/* 09170 80941E40 C51001C4 */  lwc1    $f16, 0x01C4($t0)          ## 000001C4
/* 09174 80941E44 240C0010 */  addiu   $t4, $zero, 0x0010         ## $t4 = 00000010
/* 09178 80941E48 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0917C 80941E4C 460084A4 */  cvt.w.s $f18, $f16                 
/* 09180 80941E50 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 09184 80941E54 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 09188 80941E58 444EF800 */  cfc1    $t6, $31
/* 0918C 80941E5C 00000000 */  nop
/* 09190 80941E60 31CE0078 */  andi    $t6, $t6, 0x0078           ## $t6 = 00000000
/* 09194 80941E64 11C00012 */  beq     $t6, $zero, .L80941EB0     
/* 09198 80941E68 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 0919C 80941E6C 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 091A0 80941E70 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 091A4 80941E74 46128481 */  sub.s   $f18, $f16, $f18           
/* 091A8 80941E78 44CEF800 */  ctc1    $t6, $31
/* 091AC 80941E7C 00000000 */  nop
/* 091B0 80941E80 460094A4 */  cvt.w.s $f18, $f18                 
/* 091B4 80941E84 444EF800 */  cfc1    $t6, $31
/* 091B8 80941E88 00000000 */  nop
/* 091BC 80941E8C 31CE0078 */  andi    $t6, $t6, 0x0078           ## $t6 = 00000000
/* 091C0 80941E90 15C00005 */  bne     $t6, $zero, .L80941EA8     
/* 091C4 80941E94 00000000 */  nop
/* 091C8 80941E98 440E9000 */  mfc1    $t6, $f18                  
/* 091CC 80941E9C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 091D0 80941EA0 10000007 */  beq     $zero, $zero, .L80941EC0   
/* 091D4 80941EA4 01C17025 */  or      $t6, $t6, $at              ## $t6 = 80000000
.L80941EA8:
/* 091D8 80941EA8 10000005 */  beq     $zero, $zero, .L80941EC0   
/* 091DC 80941EAC 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
.L80941EB0:
/* 091E0 80941EB0 440E9000 */  mfc1    $t6, $f18                  
/* 091E4 80941EB4 00000000 */  nop
/* 091E8 80941EB8 05C0FFFB */  bltz    $t6, .L80941EA8            
/* 091EC 80941EBC 00000000 */  nop
.L80941EC0:
/* 091F0 80941EC0 31CF003F */  andi    $t7, $t6, 0x003F           ## $t7 = 0000003F
/* 091F4 80941EC4 AFAF001C */  sw      $t7, 0x001C($sp)           
/* 091F8 80941EC8 85180152 */  lh      $t8, 0x0152($t0)           ## 00000152
/* 091FC 80941ECC 44CDF800 */  ctc1    $t5, $31
/* 09200 80941ED0 240D0010 */  addiu   $t5, $zero, 0x0010         ## $t5 = 00000010
/* 09204 80941ED4 0018C880 */  sll     $t9, $t8,  2               
/* 09208 80941ED8 332B003F */  andi    $t3, $t9, 0x003F           ## $t3 = 00000020
/* 0920C 80941EDC AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 09210 80941EE0 AFAD0028 */  sw      $t5, 0x0028($sp)           
/* 09214 80941EE4 AFA3006C */  sw      $v1, 0x006C($sp)           
/* 09218 80941EE8 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 0921C 80941EEC AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 09220 80941EF0 8FA3006C */  lw      $v1, 0x006C($sp)           
/* 09224 80941EF4 0C034213 */  jal     Matrix_Push              
/* 09228 80941EF8 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 0922C 80941EFC 8FAE00A0 */  lw      $t6, 0x00A0($sp)           
/* 09230 80941F00 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 09234 80941F04 0C034348 */  jal     Matrix_RotateY              
/* 09238 80941F08 C5CC01C0 */  lwc1    $f12, 0x01C0($t6)          ## 000001C0
/* 0923C 80941F0C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09240 80941F10 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 09244 80941F14 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 09248 80941F18 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 0924C 80941F1C AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 09250 80941F20 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 09254 80941F24 8FB900A4 */  lw      $t9, 0x00A4($sp)           
/* 09258 80941F28 3C058095 */  lui     $a1, %hi(D_8094AAE8)       ## $a1 = 80950000
/* 0925C 80941F2C 24A5AAE8 */  addiu   $a1, $a1, %lo(D_8094AAE8)  ## $a1 = 8094AAE8
/* 09260 80941F30 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 09264 80941F34 24061917 */  addiu   $a2, $zero, 0x1917         ## $a2 = 00001917
/* 09268 80941F38 0C0346A2 */  jal     Matrix_NewMtx              
/* 0926C 80941F3C AFA20068 */  sw      $v0, 0x0068($sp)           
/* 09270 80941F40 8FA30068 */  lw      $v1, 0x0068($sp)           
/* 09274 80941F44 3C040602 */  lui     $a0, 0x0602                ## $a0 = 06020000
/* 09278 80941F48 2484C1C0 */  addiu   $a0, $a0, 0xC1C0           ## $a0 = 0601C1C0
/* 0927C 80941F4C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 09280 80941F50 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09284 80941F54 00046900 */  sll     $t5, $a0,  4               
/* 09288 80941F58 000D7702 */  srl     $t6, $t5, 28               
/* 0928C 80941F5C 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 09290 80941F60 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 09294 80941F64 000E7880 */  sll     $t7, $t6,  2               
/* 09298 80941F68 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 0929C 80941F6C 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 092A0 80941F70 030FC021 */  addu    $t8, $t8, $t7              
/* 092A4 80941F74 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 092A8 80941F78 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 092AC 80941F7C 8F186FA8 */  lw      $t8, 0x6FA8($t8)           ## 80166FA8
/* 092B0 80941F80 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 092B4 80941F84 0081C824 */  and     $t9, $a0, $at              
/* 092B8 80941F88 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 092BC 80941F8C 03195821 */  addu    $t3, $t8, $t9              
/* 092C0 80941F90 01616021 */  addu    $t4, $t3, $at              
/* 092C4 80941F94 0C034221 */  jal     Matrix_Pull              
/* 092C8 80941F98 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 092CC 80941F9C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 092D0 80941FA0 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 092D4 80941FA4 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 092D8 80941FA8 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 092DC 80941FAC AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 092E0 80941FB0 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 092E4 80941FB4 8FAF00A4 */  lw      $t7, 0x00A4($sp)           
/* 092E8 80941FB8 3C058095 */  lui     $a1, %hi(D_8094AAF8)       ## $a1 = 80950000
/* 092EC 80941FBC 24A5AAF8 */  addiu   $a1, $a1, %lo(D_8094AAF8)  ## $a1 = 8094AAF8
/* 092F0 80941FC0 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 092F4 80941FC4 2406191B */  addiu   $a2, $zero, 0x191B         ## $a2 = 0000191B
/* 092F8 80941FC8 0C0346A2 */  jal     Matrix_NewMtx              
/* 092FC 80941FCC AFA20060 */  sw      $v0, 0x0060($sp)           
/* 09300 80941FD0 8FA30060 */  lw      $v1, 0x0060($sp)           
/* 09304 80941FD4 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 09308 80941FD8 37390034 */  ori     $t9, $t9, 0x0034           ## $t9 = DB060034
/* 0930C 80941FDC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 09310 80941FE0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09314 80941FE4 240D0020 */  addiu   $t5, $zero, 0x0020         ## $t5 = 00000020
/* 09318 80941FE8 240E0040 */  addiu   $t6, $zero, 0x0040         ## $t6 = 00000040
/* 0931C 80941FEC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 09320 80941FF0 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 09324 80941FF4 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 09328 80941FF8 8FAC00A0 */  lw      $t4, 0x00A0($sp)           
/* 0932C 80941FFC 8FAB00A4 */  lw      $t3, 0x00A4($sp)           
/* 09330 80942000 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 09334 80942004 85830152 */  lh      $v1, 0x0152($t4)           ## 00000152
/* 09338 80942008 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 0933C 8094200C AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 09340 80942010 0003C023 */  subu    $t8, $zero, $v1            
/* 09344 80942014 0018C840 */  sll     $t9, $t8,  1               
/* 09348 80942018 332B003F */  andi    $t3, $t9, 0x003F           ## $t3 = 00000034
/* 0934C 8094201C 240D0010 */  addiu   $t5, $zero, 0x0010         ## $t5 = 00000010
/* 09350 80942020 240C0010 */  addiu   $t4, $zero, 0x0010         ## $t4 = 00000010
/* 09354 80942024 000338C0 */  sll     $a3, $v1,  3               
/* 09358 80942028 30E700FF */  andi    $a3, $a3, 0x00FF           ## $a3 = 00000000
/* 0935C 8094202C AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 09360 80942030 AFAD0028 */  sw      $t5, 0x0028($sp)           
/* 09364 80942034 AFAB001C */  sw      $t3, 0x001C($sp)           
/* 09368 80942038 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0936C 8094203C AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 09370 80942040 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 09374 80942044 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 09378 80942048 AFA2005C */  sw      $v0, 0x005C($sp)           
/* 0937C 8094204C 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 09380 80942050 3066007F */  andi    $a2, $v1, 0x007F           ## $a2 = 00000000
/* 09384 80942054 8FA8005C */  lw      $t0, 0x005C($sp)           
/* 09388 80942058 3C0FFA00 */  lui     $t7, 0xFA00                ## $t7 = FA000000
/* 0938C 8094205C 3C01C3E1 */  lui     $at, 0xC3E1                ## $at = C3E10000
/* 09390 80942060 AD020004 */  sw      $v0, 0x0004($t0)           ## 00000004
/* 09394 80942064 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09398 80942068 3421EB00 */  ori     $at, $at, 0xEB00           ## $at = C3E1EB00
/* 0939C 8094206C 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 093A0 80942070 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 093A4 80942074 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 093A8 80942078 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 093AC 8094207C 8FB800A0 */  lw      $t8, 0x00A0($sp)           
/* 093B0 80942080 240BFF80 */  addiu   $t3, $zero, 0xFF80         ## $t3 = FFFFFF80
/* 093B4 80942084 3C040602 */  lui     $a0, 0x0602                ## $a0 = 06020000
/* 093B8 80942088 C70801A8 */  lwc1    $f8, 0x01A8($t8)           ## 000001A8
/* 093BC 8094208C 2484A790 */  addiu   $a0, $a0, 0xA790           ## $a0 = 0601A790
/* 093C0 80942090 4600410D */  trunc.w.s $f4, $f8                   
/* 093C4 80942094 440D2000 */  mfc1    $t5, $f4                   
/* 093C8 80942098 00000000 */  nop
/* 093CC 8094209C 31AE00FF */  andi    $t6, $t5, 0x00FF           ## $t6 = 00000000
/* 093D0 809420A0 01C17825 */  or      $t7, $t6, $at              ## $t7 = C3E1EB00
/* 093D4 809420A4 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 093D8 809420A8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 093DC 809420AC 3C0EC810 */  lui     $t6, 0xC810                ## $t6 = C8100000
/* 093E0 809420B0 3C0DE200 */  lui     $t5, 0xE200                ## $t5 = E2000000
/* 093E4 809420B4 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 093E8 809420B8 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 093EC 809420BC AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 093F0 809420C0 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 093F4 809420C4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 093F8 809420C8 35AD001C */  ori     $t5, $t5, 0x001C           ## $t5 = E200001C
/* 093FC 809420CC 35CE4F50 */  ori     $t6, $t6, 0x4F50           ## $t6 = C8104F50
/* 09400 809420D0 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 09404 809420D4 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 09408 809420D8 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 0940C 809420DC AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 09410 809420E0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09414 809420E4 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 09418 809420E8 3C18D9FF */  lui     $t8, 0xD9FF                ## $t8 = D9FF0000
/* 0941C 809420EC 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 09420 809420F0 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 09424 809420F4 3718FFFF */  ori     $t8, $t8, 0xFFFF           ## $t8 = D9FFFFFF
/* 09428 809420F8 37390400 */  ori     $t9, $t9, 0x0400           ## $t9 = 00010400
/* 0942C 809420FC AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 09430 80942100 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 09434 80942104 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09438 80942108 00046900 */  sll     $t5, $a0,  4               
/* 0943C 8094210C 000D7702 */  srl     $t6, $t5, 28               
/* 09440 80942110 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 09444 80942114 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 09448 80942118 000E7880 */  sll     $t7, $t6,  2               
/* 0944C 8094211C 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 09450 80942120 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 09454 80942124 030FC021 */  addu    $t8, $t8, $t7              
/* 09458 80942128 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 0945C 8094212C AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 09460 80942130 8F186FA8 */  lw      $t8, 0x6FA8($t8)           ## 80166FA8
/* 09464 80942134 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 09468 80942138 0081C824 */  and     $t9, $a0, $at              
/* 0946C 8094213C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 09470 80942140 03195821 */  addu    $t3, $t8, $t9              
/* 09474 80942144 01616021 */  addu    $t4, $t3, $at              
/* 09478 80942148 0C034221 */  jal     Matrix_Pull              
/* 0947C 8094214C AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 09480 80942150 8FAD00A4 */  lw      $t5, 0x00A4($sp)           
/* 09484 80942154 3C068095 */  lui     $a2, %hi(D_8094AB08)       ## $a2 = 80950000
/* 09488 80942158 24C6AB08 */  addiu   $a2, $a2, %lo(D_8094AB08)  ## $a2 = 8094AB08
/* 0948C 8094215C 27A40088 */  addiu   $a0, $sp, 0x0088           ## $a0 = FFFFFFE8
/* 09490 80942160 2407193D */  addiu   $a3, $zero, 0x193D         ## $a3 = 0000193D
/* 09494 80942164 0C031AD5 */  jal     Graph_CloseDisps              
/* 09498 80942168 8DA50000 */  lw      $a1, 0x0000($t5)           ## 00000000
/* 0949C 8094216C 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 094A0 80942170 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 094A4 80942174 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000
/* 094A8 80942178 03E00008 */  jr      $ra                        
/* 094AC 8094217C 00000000 */  nop
