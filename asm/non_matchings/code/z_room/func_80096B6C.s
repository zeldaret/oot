.rdata
glabel D_8013F0FC
    .asciz "../z_room.c"
    .balign 4

glabel D_8013F108
    .asciz "../z_room.c"
    .balign 4

.late_rodata
glabel D_8013F2AC
    .float 0.6

glabel D_8013F2B0
    .float 1.2

glabel D_8013F2B4
    .float 2.4

glabel D_8013F2B8
    .float 0.3

.text
glabel func_80096B6C
/* B0DD0C 80096B6C 27BDFF50 */  addiu $sp, $sp, -0xb0
/* B0DD10 80096B70 AFBF003C */  sw    $ra, 0x3c($sp)
/* B0DD14 80096B74 AFB00038 */  sw    $s0, 0x38($sp)
/* B0DD18 80096B78 AFA400B0 */  sw    $a0, 0xb0($sp)
/* B0DD1C 80096B7C AFA500B4 */  sw    $a1, 0xb4($sp)
/* B0DD20 80096B80 AFA600B8 */  sw    $a2, 0xb8($sp)
/* B0DD24 80096B84 8C850000 */  lw    $a1, ($a0)
/* B0DD28 80096B88 3C068014 */  lui   $a2, %hi(D_8013F0FC) # $a2, 0x8014
/* B0DD2C 80096B8C 24C6F0FC */  addiu $a2, %lo(D_8013F0FC) # addiu $a2, $a2, -0xf04
/* B0DD30 80096B90 27A40078 */  addiu $a0, $sp, 0x78
/* B0DD34 80096B94 240702F0 */  li    $a3, 752
/* B0DD38 80096B98 0C031AB1 */  jal   Graph_OpenDisps
/* B0DD3C 80096B9C 00A08025 */   move  $s0, $a1
/* B0DD40 80096BA0 8FA500B0 */  lw    $a1, 0xb0($sp)
/* B0DD44 80096BA4 8FAC00B4 */  lw    $t4, 0xb4($sp)
/* B0DD48 80096BA8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0DD4C 80096BAC 84AF07A0 */  lh    $t7, 0x7a0($a1)
/* B0DD50 80096BB0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0DD54 80096BB4 000FC080 */  sll   $t8, $t7, 2
/* B0DD58 80096BB8 00B8C821 */  addu  $t9, $a1, $t8
/* B0DD5C 80096BBC 8F230790 */  lw    $v1, 0x790($t9)
/* B0DD60 80096BC0 3C188016 */  lui   $t8, %hi(gSegments)
/* B0DD64 80096BC4 846A0142 */  lh    $t2, 0x142($v1)
/* B0DD68 80096BC8 394B0019 */  xori  $t3, $t2, 0x19
/* B0DD6C 80096BCC 2D6B0001 */  sltiu $t3, $t3, 1
/* B0DD70 80096BD0 AFAB0098 */  sw    $t3, 0x98($sp)
/* B0DD74 80096BD4 8D840008 */  lw    $a0, 8($t4)
/* B0DD78 80096BD8 8C820004 */  lw    $v0, 4($a0)
/* B0DD7C 80096BDC AFA300AC */  sw    $v1, 0xac($sp)
/* B0DD80 80096BE0 00026900 */  sll   $t5, $v0, 4
/* B0DD84 80096BE4 000D7702 */  srl   $t6, $t5, 0x1c
/* B0DD88 80096BE8 000E7880 */  sll   $t7, $t6, 2
/* B0DD8C 80096BEC 030FC021 */  addu  $t8, $t8, $t7
/* B0DD90 80096BF0 8F186FA8 */  lw    $t8, %lo(gSegments)($t8)
/* B0DD94 80096BF4 0041C824 */  and   $t9, $v0, $at
/* B0DD98 80096BF8 3C018000 */  lui   $at, 0x8000
/* B0DD9C 80096BFC 03195021 */  addu  $t2, $t8, $t9
/* B0DDA0 80096C00 01415821 */  addu  $t3, $t2, $at
/* B0DDA4 80096C04 0C025A9D */  jal   func_80096A74
/* B0DDA8 80096C08 AFAB009C */   sw    $t3, 0x9c($sp)
/* B0DDAC 80096C0C 8FA600B8 */  lw    $a2, 0xb8($sp)
/* B0DDB0 80096C10 00404825 */  move  $t1, $v0
/* B0DDB4 80096C14 8FA30098 */  lw    $v1, 0x98($sp)
/* B0DDB8 80096C18 30C40001 */  andi  $a0, $a2, 1
/* B0DDBC 80096C1C 0004202B */  sltu  $a0, $zero, $a0
/* B0DDC0 80096C20 1080000E */  beqz  $a0, .L80096C5C
/* B0DDC4 80096C24 00804025 */   move  $t0, $a0
/* B0DDC8 80096C28 0003402B */  sltu  $t0, $zero, $v1
/* B0DDCC 80096C2C 1100000B */  beqz  $t0, .L80096C5C
/* B0DDD0 80096C30 00000000 */   nop   
/* B0DDD4 80096C34 8C480004 */  lw    $t0, 4($v0)
/* B0DDD8 80096C38 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* B0DDDC 80096C3C 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* B0DDE0 80096C40 0008402B */  sltu  $t0, $zero, $t0
/* B0DDE4 80096C44 11000005 */  beqz  $t0, .L80096C5C
/* B0DDE8 80096C48 00000000 */   nop   
/* B0DDEC 80096C4C 8C6C0000 */  lw    $t4, ($v1)
/* B0DDF0 80096C50 85880106 */  lh    $t0, 0x106($t4)
/* B0DDF4 80096C54 31080001 */  andi  $t0, $t0, 1
/* B0DDF8 80096C58 2D080001 */  sltiu $t0, $t0, 1
.L80096C5C:
/* B0DDFC 80096C5C 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* B0DE00 80096C60 01002825 */  move  $a1, $t0
/* B0DE04 80096C64 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* B0DE08 80096C68 1080000A */  beqz  $a0, .L80096C94
/* B0DE0C 80096C6C 00804025 */   move  $t0, $a0
/* B0DE10 80096C70 8FAD009C */  lw    $t5, 0x9c($sp)
/* B0DE14 80096C74 8DA80000 */  lw    $t0, ($t5)
/* B0DE18 80096C78 0008402B */  sltu  $t0, $zero, $t0
/* B0DE1C 80096C7C 51000006 */  beql  $t0, $zero, .L80096C98
/* B0DE20 80096C80 01002025 */   move  $a0, $t0
/* B0DE24 80096C84 8C6E0000 */  lw    $t6, ($v1)
/* B0DE28 80096C88 85C80106 */  lh    $t0, 0x106($t6)
/* B0DE2C 80096C8C 31080002 */  andi  $t0, $t0, 2
/* B0DE30 80096C90 2D080001 */  sltiu $t0, $t0, 1
.L80096C94:
/* B0DE34 80096C94 01002025 */  move  $a0, $t0
.L80096C98:
/* B0DE38 80096C98 30C20002 */  andi  $v0, $a2, 2
/* B0DE3C 80096C9C 0002402B */  sltu  $t0, $zero, $v0
/* B0DE40 80096CA0 11000009 */  beqz  $t0, .L80096CC8
/* B0DE44 80096CA4 8FAF009C */   lw    $t7, 0x9c($sp)
/* B0DE48 80096CA8 8DE80004 */  lw    $t0, 4($t7)
/* B0DE4C 80096CAC 0008402B */  sltu  $t0, $zero, $t0
/* B0DE50 80096CB0 11000005 */  beqz  $t0, .L80096CC8
/* B0DE54 80096CB4 00000000 */   nop   
/* B0DE58 80096CB8 8C780000 */  lw    $t8, ($v1)
/* B0DE5C 80096CBC 87080106 */  lh    $t0, 0x106($t8)
/* B0DE60 80096CC0 31080004 */  andi  $t0, $t0, 4
/* B0DE64 80096CC4 2D080001 */  sltiu $t0, $t0, 1
.L80096CC8:
/* B0DE68 80096CC8 54800004 */  bnezl $a0, .L80096CDC
/* B0DE6C 80096CCC 8E0302C0 */   lw    $v1, 0x2c0($s0)
/* B0DE70 80096CD0 10A00079 */  beqz  $a1, .L80096EB8
/* B0DE74 80096CD4 00000000 */   nop   
/* B0DE78 80096CD8 8E0302C0 */  lw    $v1, 0x2c0($s0)
.L80096CDC:
/* B0DE7C 80096CDC 3C0ADB06 */  lui   $t2, (0xDB06000C >> 16) # lui $t2, 0xdb06
/* B0DE80 80096CE0 354A000C */  ori   $t2, (0xDB06000C & 0xFFFF) # ori $t2, $t2, 0xc
/* B0DE84 80096CE4 24790008 */  addiu $t9, $v1, 8
/* B0DE88 80096CE8 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* B0DE8C 80096CEC AC6A0000 */  sw    $t2, ($v1)
/* B0DE90 80096CF0 8FAB00B4 */  lw    $t3, 0xb4($sp)
/* B0DE94 80096CF4 8D6C000C */  lw    $t4, 0xc($t3)
/* B0DE98 80096CF8 1080001B */  beqz  $a0, .L80096D68
/* B0DE9C 80096CFC AC6C0004 */   sw    $t4, 4($v1)
/* B0DEA0 80096D00 8FAD00B0 */  lw    $t5, 0xb0($sp)
/* B0DEA4 80096D04 8DA40000 */  lw    $a0, ($t5)
/* B0DEA8 80096D08 AFA900A0 */  sw    $t1, 0xa0($sp)
/* B0DEAC 80096D0C AFA80048 */  sw    $t0, 0x48($sp)
/* B0DEB0 80096D10 0C024F46 */  jal   func_80093D18
/* B0DEB4 80096D14 AFA50094 */   sw    $a1, 0x94($sp)
/* B0DEB8 80096D18 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B0DEBC 80096D1C 8FA50094 */  lw    $a1, 0x94($sp)
/* B0DEC0 80096D20 8FA80048 */  lw    $t0, 0x48($sp)
/* B0DEC4 80096D24 8FA900A0 */  lw    $t1, 0xa0($sp)
/* B0DEC8 80096D28 246E0008 */  addiu $t6, $v1, 8
/* B0DECC 80096D2C AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B0DED0 80096D30 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* B0DED4 80096D34 3C188013 */  lui   $t8, %hi(gMtxClear) # $t8, 0x8013
/* B0DED8 80096D38 2718DB20 */  addiu $t8, %lo(gMtxClear) # addiu $t8, $t8, -0x24e0
/* B0DEDC 80096D3C 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* B0DEE0 80096D40 AC6F0000 */  sw    $t7, ($v1)
/* B0DEE4 80096D44 AC780004 */  sw    $t8, 4($v1)
/* B0DEE8 80096D48 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B0DEEC 80096D4C 3C0ADE00 */  lui   $t2, 0xde00
/* B0DEF0 80096D50 24790008 */  addiu $t9, $v1, 8
/* B0DEF4 80096D54 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* B0DEF8 80096D58 AC6A0000 */  sw    $t2, ($v1)
/* B0DEFC 80096D5C 8FAB009C */  lw    $t3, 0x9c($sp)
/* B0DF00 80096D60 8D6C0000 */  lw    $t4, ($t3)
/* B0DF04 80096D64 AC6C0004 */  sw    $t4, 4($v1)
.L80096D68:
/* B0DF08 80096D68 10A00053 */  beqz  $a1, .L80096EB8
/* B0DF0C 80096D6C 3C0EE100 */   lui   $t6, 0xe100
/* B0DF10 80096D70 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B0DF14 80096D74 3C0F0015 */  lui   $t7, %hi(D_001579A0)
/* B0DF18 80096D78 25EF79A0 */  addiu $t7, %lo(D_001579A0)
/* B0DF1C 80096D7C 246D0008 */  addiu $t5, $v1, 8
/* B0DF20 80096D80 AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B0DF24 80096D84 AC6F0004 */  sw    $t7, 4($v1)
/* B0DF28 80096D88 AC6E0000 */  sw    $t6, ($v1)
/* B0DF2C 80096D8C 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B0DF30 80096D90 3C19DD00 */  lui   $t9, (0xDD0007FF >> 16) # lui $t9, 0xdd00
/* B0DF34 80096D94 3C0A0011 */  lui   $t2, %hi(D_00113070)
/* B0DF38 80096D98 24780008 */  addiu $t8, $v1, 8
/* B0DF3C 80096D9C AE1802C0 */  sw    $t8, 0x2c0($s0)
/* B0DF40 80096DA0 254A3070 */  addiu $t2, %lo(D_00113070)
/* B0DF44 80096DA4 373907FF */  ori   $t9, (0xDD0007FF & 0xFFFF) # ori $t9, $t9, 0x7ff
/* B0DF48 80096DA8 AC790000 */  sw    $t9, ($v1)
/* B0DF4C 80096DAC AC6A0004 */  sw    $t2, 4($v1)
/* B0DF50 80096DB0 8E0B02C0 */  lw    $t3, 0x2c0($s0)
/* B0DF54 80096DB4 AFA900A0 */  sw    $t1, 0xa0($sp)
/* B0DF58 80096DB8 AFA80048 */  sw    $t0, 0x48($sp)
/* B0DF5C 80096DBC 8FA500AC */  lw    $a1, 0xac($sp)
/* B0DF60 80096DC0 27A4005C */  addiu $a0, $sp, 0x5c
/* B0DF64 80096DC4 0C016BED */  jal   func_8005AFB4
/* B0DF68 80096DC8 AFAB00A8 */   sw    $t3, 0xa8($sp)
/* B0DF6C 80096DCC C7A4005C */  lwc1  $f4, 0x5c($sp)
/* B0DF70 80096DD0 C7A60064 */  lwc1  $f6, 0x64($sp)
/* B0DF74 80096DD4 3C018014 */  lui   $at, %hi(D_8013F2AC)
/* B0DF78 80096DD8 C42AF2AC */  lwc1  $f10, %lo(D_8013F2AC)($at)
/* B0DF7C 80096DDC C7A80060 */  lwc1  $f8, 0x60($sp)
/* B0DF80 80096DE0 46062000 */  add.s $f0, $f4, $f6
/* B0DF84 80096DE4 8FA900A0 */  lw    $t1, 0xa0($sp)
/* B0DF88 80096DE8 3C018014 */  lui   $at, %hi(D_8013F2B0)
/* B0DF8C 80096DEC 460A4402 */  mul.s $f16, $f8, $f10
/* B0DF90 80096DF0 C432F2B0 */  lwc1  $f18, %lo(D_8013F2B0)($at)
/* B0DF94 80096DF4 952C0012 */  lhu   $t4, 0x12($t1)
/* B0DF98 80096DF8 8D250004 */  lw    $a1, 4($t1)
/* B0DF9C 80096DFC 46120102 */  mul.s $f4, $f0, $f18
/* B0DFA0 80096E00 8D26000C */  lw    $a2, 0xc($t1)
/* B0DFA4 80096E04 95270010 */  lhu   $a3, 0x10($t1)
/* B0DFA8 80096E08 AFAC0010 */  sw    $t4, 0x10($sp)
/* B0DFAC 80096E0C 912D0014 */  lbu   $t5, 0x14($t1)
/* B0DFB0 80096E10 3C018014 */  lui   $at, %hi(D_8013F2B4)
/* B0DFB4 80096E14 C42AF2B4 */  lwc1  $f10, %lo(D_8013F2B4)($at)
/* B0DFB8 80096E18 46102180 */  add.s $f6, $f4, $f16
/* B0DFBC 80096E1C 3C018014 */  lui   $at, %hi(D_8013F2B8)
/* B0DFC0 80096E20 AFAD0014 */  sw    $t5, 0x14($sp)
/* B0DFC4 80096E24 460A4482 */  mul.s $f18, $f8, $f10
/* B0DFC8 80096E28 C424F2B8 */  lwc1  $f4, %lo(D_8013F2B8)($at)
/* B0DFCC 80096E2C 912E0015 */  lbu   $t6, 0x15($t1)
/* B0DFD0 80096E30 27A400A8 */  addiu $a0, $sp, 0xa8
/* B0DFD4 80096E34 46040402 */  mul.s $f16, $f0, $f4
/* B0DFD8 80096E38 AFAE0018 */  sw    $t6, 0x18($sp)
/* B0DFDC 80096E3C 952F0016 */  lhu   $t7, 0x16($t1)
/* B0DFE0 80096E40 AFAF001C */  sw    $t7, 0x1c($sp)
/* B0DFE4 80096E44 95380018 */  lhu   $t8, 0x18($t1)
/* B0DFE8 80096E48 E7A60024 */  swc1  $f6, 0x24($sp)
/* B0DFEC 80096E4C 46109180 */  add.s $f6, $f18, $f16
/* B0DFF0 80096E50 AFB80020 */  sw    $t8, 0x20($sp)
/* B0DFF4 80096E54 0C0258E3 */  jal   func_8009638C
/* B0DFF8 80096E58 E7A60028 */   swc1  $f6, 0x28($sp)
/* B0DFFC 80096E5C 8FB900A8 */  lw    $t9, 0xa8($sp)
/* B0E000 80096E60 8FA80048 */  lw    $t0, 0x48($sp)
/* B0E004 80096E64 3C0BE100 */  lui   $t3, 0xe100
/* B0E008 80096E68 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* B0E00C 80096E6C 272A0008 */  addiu $t2, $t9, 8
/* B0E010 80096E70 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* B0E014 80096E74 AF2B0000 */  sw    $t3, ($t9)
/* B0E018 80096E78 AFB90058 */  sw    $t9, 0x58($sp)
/* B0E01C 80096E7C 0C034B88 */  jal   SysUcode_GetUcodeData
/* B0E020 80096E80 AFA80048 */   sw    $t0, 0x48($sp)
/* B0E024 80096E84 8FA40058 */  lw    $a0, 0x58($sp)
/* B0E028 80096E88 3C0DDD00 */  lui   $t5, (0xDD0007FF >> 16) # lui $t5, 0xdd00
/* B0E02C 80096E8C 35AD07FF */  ori   $t5, (0xDD0007FF & 0xFFFF) # ori $t5, $t5, 0x7ff
/* B0E030 80096E90 AC820004 */  sw    $v0, 4($a0)
/* B0E034 80096E94 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B0E038 80096E98 246C0008 */  addiu $t4, $v1, 8
/* B0E03C 80096E9C AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B0E040 80096EA0 AC6D0000 */  sw    $t5, ($v1)
/* B0E044 80096EA4 0C034B85 */  jal   SysUcode_GetUcode
/* B0E048 80096EA8 AFA30058 */   sw    $v1, 0x58($sp)
/* B0E04C 80096EAC 8FA40058 */  lw    $a0, 0x58($sp)
/* B0E050 80096EB0 8FA80048 */  lw    $t0, 0x48($sp)
/* B0E054 80096EB4 AC820004 */  sw    $v0, 4($a0)
.L80096EB8:
/* B0E058 80096EB8 51000021 */  beql  $t0, $zero, .L80096F40
/* B0E05C 80096EBC 8FB900B0 */   lw    $t9, 0xb0($sp)
/* B0E060 80096EC0 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B0E064 80096EC4 3C0FDB06 */  lui   $t7, (0xDB06000C >> 16) # lui $t7, 0xdb06
/* B0E068 80096EC8 35EF000C */  ori   $t7, (0xDB06000C & 0xFFFF) # ori $t7, $t7, 0xc
/* B0E06C 80096ECC 244E0008 */  addiu $t6, $v0, 8
/* B0E070 80096ED0 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B0E074 80096ED4 AC4F0000 */  sw    $t7, ($v0)
/* B0E078 80096ED8 8FB800B4 */  lw    $t8, 0xb4($sp)
/* B0E07C 80096EDC 3C058013 */  lui   $a1, %hi(gMtxClear) # $a1, 0x8013
/* B0E080 80096EE0 24A5DB20 */  addiu $a1, %lo(gMtxClear) # addiu $a1, $a1, -0x24e0
/* B0E084 80096EE4 8F19000C */  lw    $t9, 0xc($t8)
/* B0E088 80096EE8 AC590004 */  sw    $t9, 4($v0)
/* B0E08C 80096EEC 8FAA00B0 */  lw    $t2, 0xb0($sp)
/* B0E090 80096EF0 8D440000 */  lw    $a0, ($t2)
/* B0E094 80096EF4 0C024F61 */  jal   func_80093D84
/* B0E098 80096EF8 AFA50044 */   sw    $a1, 0x44($sp)
/* B0E09C 80096EFC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B0E0A0 80096F00 8FA50044 */  lw    $a1, 0x44($sp)
/* B0E0A4 80096F04 3C0CDA38 */  lui   $t4, (0xDA380003 >> 16) # lui $t4, 0xda38
/* B0E0A8 80096F08 244B0008 */  addiu $t3, $v0, 8
/* B0E0AC 80096F0C AE0B02D0 */  sw    $t3, 0x2d0($s0)
/* B0E0B0 80096F10 358C0003 */  ori   $t4, (0xDA380003 & 0xFFFF) # ori $t4, $t4, 3
/* B0E0B4 80096F14 AC4C0000 */  sw    $t4, ($v0)
/* B0E0B8 80096F18 AC450004 */  sw    $a1, 4($v0)
/* B0E0BC 80096F1C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B0E0C0 80096F20 3C0EDE00 */  lui   $t6, 0xde00
/* B0E0C4 80096F24 244D0008 */  addiu $t5, $v0, 8
/* B0E0C8 80096F28 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* B0E0CC 80096F2C AC4E0000 */  sw    $t6, ($v0)
/* B0E0D0 80096F30 8FAF009C */  lw    $t7, 0x9c($sp)
/* B0E0D4 80096F34 8DF80004 */  lw    $t8, 4($t7)
/* B0E0D8 80096F38 AC580004 */  sw    $t8, 4($v0)
/* B0E0DC 80096F3C 8FB900B0 */  lw    $t9, 0xb0($sp)
.L80096F40:
/* B0E0E0 80096F40 3C068014 */  lui   $a2, %hi(D_8013F108) # $a2, 0x8014
/* B0E0E4 80096F44 24C6F108 */  addiu $a2, %lo(D_8013F108) # addiu $a2, $a2, -0xef8
/* B0E0E8 80096F48 27A40078 */  addiu $a0, $sp, 0x78
/* B0E0EC 80096F4C 24070333 */  li    $a3, 819
/* B0E0F0 80096F50 0C031AD5 */  jal   Graph_CloseDisps
/* B0E0F4 80096F54 8F250000 */   lw    $a1, ($t9)
/* B0E0F8 80096F58 8FBF003C */  lw    $ra, 0x3c($sp)
/* B0E0FC 80096F5C 8FB00038 */  lw    $s0, 0x38($sp)
/* B0E100 80096F60 27BD00B0 */  addiu $sp, $sp, 0xb0
/* B0E104 80096F64 03E00008 */  jr    $ra
/* B0E108 80096F68 00000000 */   nop   

