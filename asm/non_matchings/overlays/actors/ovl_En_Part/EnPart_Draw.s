.rdata
glabel D_80ACF210
    .asciz "../z_en_part.c"
    .balign 4

glabel D_80ACF220
    .asciz "../z_en_part.c"
    .balign 4

glabel D_80ACF230
    .asciz "../z_en_part.c"
    .balign 4

.text
glabel EnPart_Draw
/* 00DAC 80ACEB7C 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 00DB0 80ACEB80 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00DB4 80ACEB84 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00DB8 80ACEB88 AFA40098 */  sw      $a0, 0x0098($sp)           
/* 00DBC 80ACEB8C AFA5009C */  sw      $a1, 0x009C($sp)           
/* 00DC0 80ACEB90 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00DC4 80ACEB94 3C0680AD */  lui     $a2, %hi(D_80ACF210)       ## $a2 = 80AD0000
/* 00DC8 80ACEB98 24C6F210 */  addiu   $a2, $a2, %lo(D_80ACF210)  ## $a2 = 80ACF210
/* 00DCC 80ACEB9C 27A40080 */  addiu   $a0, $sp, 0x0080           ## $a0 = FFFFFFE8
/* 00DD0 80ACEBA0 24070287 */  addiu   $a3, $zero, 0x0287         ## $a3 = 00000287
/* 00DD4 80ACEBA4 0C031AB1 */  jal     Graph_OpenDisps              
/* 00DD8 80ACEBA8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00DDC 80ACEBAC 8FAF0098 */  lw      $t7, 0x0098($sp)           
/* 00DE0 80ACEBB0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00DE4 80ACEBB4 85F8001C */  lh      $t8, 0x001C($t7)           ## 0000001C
/* 00DE8 80ACEBB8 5B000004 */  blezl   $t8, .L80ACEBCC            
/* 00DEC 80ACEBBC 8FB9009C */  lw      $t9, 0x009C($sp)           
/* 00DF0 80ACEBC0 0C0343B5 */  jal     Matrix_RotateZ              
/* 00DF4 80ACEBC4 C5EC0154 */  lwc1    $f12, 0x0154($t7)          ## 00000154
/* 00DF8 80ACEBC8 8FB9009C */  lw      $t9, 0x009C($sp)           
.L80ACEBCC:
/* 00DFC 80ACEBCC 0C024F46 */  jal     func_80093D18              
/* 00E00 80ACEBD0 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 00E04 80ACEBD4 8FA40098 */  lw      $a0, 0x0098($sp)           
/* 00E08 80ACEBD8 8FA5009C */  lw      $a1, 0x009C($sp)           
/* 00E0C 80ACEBDC 0C00BAF3 */  jal     func_8002EBCC              
/* 00E10 80ACEBE0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00E14 80ACEBE4 8FA90098 */  lw      $t1, 0x0098($sp)           
/* 00E18 80ACEBE8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00E1C 80ACEBEC 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 00E20 80ACEBF0 8522001C */  lh      $v0, 0x001C($t1)           ## 0000001C
/* 00E24 80ACEBF4 356B0020 */  ori     $t3, $t3, 0x0020           ## $t3 = DB060020
/* 00E28 80ACEBF8 240500F5 */  addiu   $a1, $zero, 0x00F5         ## $a1 = 000000F5
/* 00E2C 80ACEBFC 5441003F */  bnel    $v0, $at, .L80ACECFC       
/* 00E30 80ACEC00 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00E34 80ACEC04 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00E38 80ACEC08 240D001E */  addiu   $t5, $zero, 0x001E         ## $t5 = 0000001E
/* 00E3C 80ACEC0C 240E0023 */  addiu   $t6, $zero, 0x0023         ## $t6 = 00000023
/* 00E40 80ACEC10 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00E44 80ACEC14 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 00E48 80ACEC18 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00E4C 80ACEC1C 8FAC009C */  lw      $t4, 0x009C($sp)           
/* 00E50 80ACEC20 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00E54 80ACEC24 240700CD */  addiu   $a3, $zero, 0x00CD         ## $a3 = 000000CD
/* 00E58 80ACEC28 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 00E5C 80ACEC2C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00E60 80ACEC30 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00E64 80ACEC34 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00E68 80ACEC38 0C2B3AB0 */  jal     func_80ACEAC0              
/* 00E6C 80ACEC3C AFA2007C */  sw      $v0, 0x007C($sp)           
/* 00E70 80ACEC40 8FA3007C */  lw      $v1, 0x007C($sp)           
/* 00E74 80ACEC44 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 00E78 80ACEC48 35EF0024 */  ori     $t7, $t7, 0x0024           ## $t7 = DB060024
/* 00E7C 80ACEC4C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00E80 80ACEC50 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00E84 80ACEC54 240A0014 */  addiu   $t2, $zero, 0x0014         ## $t2 = 00000014
/* 00E88 80ACEC58 240B0014 */  addiu   $t3, $zero, 0x0014         ## $t3 = 00000014
/* 00E8C 80ACEC5C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00E90 80ACEC60 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 00E94 80ACEC64 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00E98 80ACEC68 8FB9009C */  lw      $t9, 0x009C($sp)           
/* 00E9C 80ACEC6C 240500B9 */  addiu   $a1, $zero, 0x00B9         ## $a1 = 000000B9
/* 00EA0 80ACEC70 24060087 */  addiu   $a2, $zero, 0x0087         ## $a2 = 00000087
/* 00EA4 80ACEC74 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 00EA8 80ACEC78 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00EAC 80ACEC7C AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00EB0 80ACEC80 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00EB4 80ACEC84 24070019 */  addiu   $a3, $zero, 0x0019         ## $a3 = 00000019
/* 00EB8 80ACEC88 0C2B3AB0 */  jal     func_80ACEAC0              
/* 00EBC 80ACEC8C AFA20078 */  sw      $v0, 0x0078($sp)           
/* 00EC0 80ACEC90 8FA30078 */  lw      $v1, 0x0078($sp)           
/* 00EC4 80ACEC94 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 00EC8 80ACEC98 35AD0028 */  ori     $t5, $t5, 0x0028           ## $t5 = DB060028
/* 00ECC 80ACEC9C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00ED0 80ACECA0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00ED4 80ACECA4 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 00ED8 80ACECA8 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 00EDC 80ACECAC 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 00EE0 80ACECB0 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 00EE4 80ACECB4 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 00EE8 80ACECB8 8FAE009C */  lw      $t6, 0x009C($sp)           
/* 00EEC 80ACECBC 24190014 */  addiu   $t9, $zero, 0x0014         ## $t9 = 00000014
/* 00EF0 80ACECC0 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 00EF4 80ACECC4 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 00EF8 80ACECC8 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 00EFC 80ACECCC AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00F00 80ACECD0 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00F04 80ACECD4 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00F08 80ACECD8 240700FF */  addiu   $a3, $zero, 0x00FF         ## $a3 = 000000FF
/* 00F0C 80ACECDC 0C2B3AB0 */  jal     func_80ACEAC0              
/* 00F10 80ACECE0 AFA20074 */  sw      $v0, 0x0074($sp)           
/* 00F14 80ACECE4 8FA30074 */  lw      $v1, 0x0074($sp)           
/* 00F18 80ACECE8 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00F1C 80ACECEC 8FAA0098 */  lw      $t2, 0x0098($sp)           
/* 00F20 80ACECF0 10000102 */  beq     $zero, $zero, .L80ACF0FC   
/* 00F24 80ACECF4 8D450150 */  lw      $a1, 0x0150($t2)           ## 00000150
/* 00F28 80ACECF8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
.L80ACECFC:
/* 00F2C 80ACECFC 1441003D */  bne     $v0, $at, .L80ACEDF4       
/* 00F30 80ACED00 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 00F34 80ACED04 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00F38 80ACED08 358C0020 */  ori     $t4, $t4, 0x0020           ## $t4 = DB060020
/* 00F3C 80ACED0C 24050037 */  addiu   $a1, $zero, 0x0037         ## $a1 = 00000037
/* 00F40 80ACED10 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00F44 80ACED14 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 00F48 80ACED18 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00F4C 80ACED1C 8FAD009C */  lw      $t5, 0x009C($sp)           
/* 00F50 80ACED20 24060041 */  addiu   $a2, $zero, 0x0041         ## $a2 = 00000041
/* 00F54 80ACED24 24070037 */  addiu   $a3, $zero, 0x0037         ## $a3 = 00000037
/* 00F58 80ACED28 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 00F5C 80ACED2C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00F60 80ACED30 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00F64 80ACED34 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00F68 80ACED38 0C2B3AB0 */  jal     func_80ACEAC0              
/* 00F6C 80ACED3C AFA20070 */  sw      $v0, 0x0070($sp)           
/* 00F70 80ACED40 8FA30070 */  lw      $v1, 0x0070($sp)           
/* 00F74 80ACED44 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 00F78 80ACED48 37180024 */  ori     $t8, $t8, 0x0024           ## $t8 = DB060024
/* 00F7C 80ACED4C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00F80 80ACED50 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00F84 80ACED54 24190019 */  addiu   $t9, $zero, 0x0019         ## $t9 = 00000019
/* 00F88 80ACED58 240A0014 */  addiu   $t2, $zero, 0x0014         ## $t2 = 00000014
/* 00F8C 80ACED5C 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 00F90 80ACED60 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 00F94 80ACED64 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00F98 80ACED68 8FAF009C */  lw      $t7, 0x009C($sp)           
/* 00F9C 80ACED6C 240500CD */  addiu   $a1, $zero, 0x00CD         ## $a1 = 000000CD
/* 00FA0 80ACED70 240600A5 */  addiu   $a2, $zero, 0x00A5         ## $a2 = 000000A5
/* 00FA4 80ACED74 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 00FA8 80ACED78 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00FAC 80ACED7C AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 00FB0 80ACED80 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00FB4 80ACED84 2407004B */  addiu   $a3, $zero, 0x004B         ## $a3 = 0000004B
/* 00FB8 80ACED88 0C2B3AB0 */  jal     func_80ACEAC0              
/* 00FBC 80ACED8C AFA2006C */  sw      $v0, 0x006C($sp)           
/* 00FC0 80ACED90 8FA3006C */  lw      $v1, 0x006C($sp)           
/* 00FC4 80ACED94 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 00FC8 80ACED98 358C0028 */  ori     $t4, $t4, 0x0028           ## $t4 = DB060028
/* 00FCC 80ACED9C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00FD0 80ACEDA0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00FD4 80ACEDA4 240E0019 */  addiu   $t6, $zero, 0x0019         ## $t6 = 00000019
/* 00FD8 80ACEDA8 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 00FDC 80ACEDAC 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00FE0 80ACEDB0 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 00FE4 80ACEDB4 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00FE8 80ACEDB8 8FAD009C */  lw      $t5, 0x009C($sp)           
/* 00FEC 80ACEDBC 240500CD */  addiu   $a1, $zero, 0x00CD         ## $a1 = 000000CD
/* 00FF0 80ACEDC0 240600A5 */  addiu   $a2, $zero, 0x00A5         ## $a2 = 000000A5
/* 00FF4 80ACEDC4 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 00FF8 80ACEDC8 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00FFC 80ACEDCC AFB80014 */  sw      $t8, 0x0014($sp)           
/* 01000 80ACEDD0 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01004 80ACEDD4 2407004B */  addiu   $a3, $zero, 0x004B         ## $a3 = 0000004B
/* 01008 80ACEDD8 0C2B3AB0 */  jal     func_80ACEAC0              
/* 0100C 80ACEDDC AFA20068 */  sw      $v0, 0x0068($sp)           
/* 01010 80ACEDE0 8FA30068 */  lw      $v1, 0x0068($sp)           
/* 01014 80ACEDE4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01018 80ACEDE8 8FAF0098 */  lw      $t7, 0x0098($sp)           
/* 0101C 80ACEDEC 100000C3 */  beq     $zero, $zero, .L80ACF0FC   
/* 01020 80ACEDF0 8DE50150 */  lw      $a1, 0x0150($t7)           ## 00000150
.L80ACEDF4:
/* 01024 80ACEDF4 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 01028 80ACEDF8 14410040 */  bne     $v0, $at, .L80ACEEFC       
/* 0102C 80ACEDFC 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 01030 80ACEE00 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01034 80ACEE04 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 01038 80ACEE08 240C00B4 */  addiu   $t4, $zero, 0x00B4         ## $t4 = 000000B4
/* 0103C 80ACEE0C 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01040 80ACEE10 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 01044 80ACEE14 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 01048 80ACEE18 8FAB009C */  lw      $t3, 0x009C($sp)           
/* 0104C 80ACEE1C 240D00B4 */  addiu   $t5, $zero, 0x00B4         ## $t5 = 000000B4
/* 01050 80ACEE20 240E00B4 */  addiu   $t6, $zero, 0x00B4         ## $t6 = 000000B4
/* 01054 80ACEE24 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 01058 80ACEE28 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 0105C 80ACEE2C AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 01060 80ACEE30 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 01064 80ACEE34 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 01068 80ACEE38 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 0106C 80ACEE3C 240700FF */  addiu   $a3, $zero, 0x00FF         ## $a3 = 000000FF
/* 01070 80ACEE40 0C2B3AB0 */  jal     func_80ACEAC0              
/* 01074 80ACEE44 AFA20064 */  sw      $v0, 0x0064($sp)           
/* 01078 80ACEE48 8FA30064 */  lw      $v1, 0x0064($sp)           
/* 0107C 80ACEE4C 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 01080 80ACEE50 35EF0024 */  ori     $t7, $t7, 0x0024           ## $t7 = DB060024
/* 01084 80ACEE54 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01088 80ACEE58 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0108C 80ACEE5C 240A0019 */  addiu   $t2, $zero, 0x0019         ## $t2 = 00000019
/* 01090 80ACEE60 240B0014 */  addiu   $t3, $zero, 0x0014         ## $t3 = 00000014
/* 01094 80ACEE64 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01098 80ACEE68 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 0109C 80ACEE6C AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 010A0 80ACEE70 8FB9009C */  lw      $t9, 0x009C($sp)           
/* 010A4 80ACEE74 240500E1 */  addiu   $a1, $zero, 0x00E1         ## $a1 = 000000E1
/* 010A8 80ACEE78 240600CD */  addiu   $a2, $zero, 0x00CD         ## $a2 = 000000CD
/* 010AC 80ACEE7C 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 010B0 80ACEE80 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 010B4 80ACEE84 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 010B8 80ACEE88 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 010BC 80ACEE8C 24070073 */  addiu   $a3, $zero, 0x0073         ## $a3 = 00000073
/* 010C0 80ACEE90 0C2B3AB0 */  jal     func_80ACEAC0              
/* 010C4 80ACEE94 AFA20060 */  sw      $v0, 0x0060($sp)           
/* 010C8 80ACEE98 8FA30060 */  lw      $v1, 0x0060($sp)           
/* 010CC 80ACEE9C 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 010D0 80ACEEA0 35AD0028 */  ori     $t5, $t5, 0x0028           ## $t5 = DB060028
/* 010D4 80ACEEA4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 010D8 80ACEEA8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 010DC 80ACEEAC 24180019 */  addiu   $t8, $zero, 0x0019         ## $t8 = 00000019
/* 010E0 80ACEEB0 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 010E4 80ACEEB4 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 010E8 80ACEEB8 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 010EC 80ACEEBC AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 010F0 80ACEEC0 8FAE009C */  lw      $t6, 0x009C($sp)           
/* 010F4 80ACEEC4 240500E1 */  addiu   $a1, $zero, 0x00E1         ## $a1 = 000000E1
/* 010F8 80ACEEC8 240600CD */  addiu   $a2, $zero, 0x00CD         ## $a2 = 000000CD
/* 010FC 80ACEECC 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 01100 80ACEED0 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 01104 80ACEED4 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 01108 80ACEED8 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 0110C 80ACEEDC 24070073 */  addiu   $a3, $zero, 0x0073         ## $a3 = 00000073
/* 01110 80ACEEE0 0C2B3AB0 */  jal     func_80ACEAC0              
/* 01114 80ACEEE4 AFA2005C */  sw      $v0, 0x005C($sp)           
/* 01118 80ACEEE8 8FA3005C */  lw      $v1, 0x005C($sp)           
/* 0111C 80ACEEEC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01120 80ACEEF0 8FB90098 */  lw      $t9, 0x0098($sp)           
/* 01124 80ACEEF4 10000081 */  beq     $zero, $zero, .L80ACF0FC   
/* 01128 80ACEEF8 8F250150 */  lw      $a1, 0x0150($t9)           ## 00000150
.L80ACEEFC:
/* 0112C 80ACEEFC 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 01130 80ACEF00 54410040 */  bnel    $v0, $at, .L80ACF004       
/* 01134 80ACEF04 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 01138 80ACEF08 8D2B0150 */  lw      $t3, 0x0150($t1)           ## 00000150
/* 0113C 80ACEF0C 3C0A0600 */  lui     $t2, 0x0600                ## $t2 = 06000000
/* 01140 80ACEF10 254A2FF0 */  addiu   $t2, $t2, 0x2FF0           ## $t2 = 06002FF0
/* 01144 80ACEF14 154B003A */  bne     $t2, $t3, .L80ACF000       
/* 01148 80ACEF18 3C068016 */  lui     $a2, %hi(gSegments)
/* 0114C 80ACEF1C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01150 80ACEF20 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01154 80ACEF24 24841300 */  addiu   $a0, $a0, 0x1300           ## $a0 = 06001300
/* 01158 80ACEF28 00047100 */  sll     $t6, $a0,  4               
/* 0115C 80ACEF2C 000EC702 */  srl     $t8, $t6, 28               
/* 01160 80ACEF30 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 01164 80ACEF34 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 01168 80ACEF38 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 0116C 80ACEF3C 35AD0020 */  ori     $t5, $t5, 0x0020           ## $t5 = DB060020
/* 01170 80ACEF40 00187880 */  sll     $t7, $t8,  2               
/* 01174 80ACEF44 24C66FA8 */  addiu   $a2, %lo(gSegments)
/* 01178 80ACEF48 00CFC821 */  addu    $t9, $a2, $t7              
/* 0117C 80ACEF4C AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01180 80ACEF50 8F2A0000 */  lw      $t2, 0x0000($t9)           ## 00000000
/* 01184 80ACEF54 3C0700FF */  lui     $a3, 0x00FF                ## $a3 = 00FF0000
/* 01188 80ACEF58 34E7FFFF */  ori     $a3, $a3, 0xFFFF           ## $a3 = 00FFFFFF
/* 0118C 80ACEF5C 00875824 */  and     $t3, $a0, $a3              
/* 01190 80ACEF60 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 01194 80ACEF64 014B6021 */  addu    $t4, $t2, $t3              
/* 01198 80ACEF68 01886821 */  addu    $t5, $t4, $t0              
/* 0119C 80ACEF6C AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 011A0 80ACEF70 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 011A4 80ACEF74 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 011A8 80ACEF78 24841700 */  addiu   $a0, $a0, 0x1700           ## $a0 = 06001700
/* 011AC 80ACEF7C 00047900 */  sll     $t7, $a0,  4               
/* 011B0 80ACEF80 000FCF02 */  srl     $t9, $t7, 28               
/* 011B4 80ACEF84 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 011B8 80ACEF88 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 011BC 80ACEF8C AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 011C0 80ACEF90 37180024 */  ori     $t8, $t8, 0x0024           ## $t8 = DB060024
/* 011C4 80ACEF94 00195080 */  sll     $t2, $t9,  2               
/* 011C8 80ACEF98 00CA5821 */  addu    $t3, $a2, $t2              
/* 011CC 80ACEF9C AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 011D0 80ACEFA0 8D6C0000 */  lw      $t4, 0x0000($t3)           ## 00000000
/* 011D4 80ACEFA4 00876824 */  and     $t5, $a0, $a3              
/* 011D8 80ACEFA8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 011DC 80ACEFAC 018D7021 */  addu    $t6, $t4, $t5              
/* 011E0 80ACEFB0 01C8C021 */  addu    $t8, $t6, $t0              
/* 011E4 80ACEFB4 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 011E8 80ACEFB8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 011EC 80ACEFBC 24841900 */  addiu   $a0, $a0, 0x1900           ## $a0 = 06001900
/* 011F0 80ACEFC0 00045100 */  sll     $t2, $a0,  4               
/* 011F4 80ACEFC4 000A5F02 */  srl     $t3, $t2, 28               
/* 011F8 80ACEFC8 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 011FC 80ACEFCC 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01200 80ACEFD0 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 01204 80ACEFD4 37390028 */  ori     $t9, $t9, 0x0028           ## $t9 = DB060028
/* 01208 80ACEFD8 000B6080 */  sll     $t4, $t3,  2               
/* 0120C 80ACEFDC 00CC6821 */  addu    $t5, $a2, $t4              
/* 01210 80ACEFE0 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01214 80ACEFE4 8DAE0000 */  lw      $t6, 0x0000($t5)           ## DB060020
/* 01218 80ACEFE8 0087C024 */  and     $t8, $a0, $a3              
/* 0121C 80ACEFEC 01D87821 */  addu    $t7, $t6, $t8              
/* 01220 80ACEFF0 01E8C821 */  addu    $t9, $t7, $t0              
/* 01224 80ACEFF4 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 01228 80ACEFF8 10000040 */  beq     $zero, $zero, .L80ACF0FC   
/* 0122C 80ACEFFC 8D250150 */  lw      $a1, 0x0150($t1)           ## 00000150
.L80ACF000:
/* 01230 80ACF000 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
.L80ACF004:
/* 01234 80ACF004 1441003D */  bne     $v0, $at, .L80ACF0FC       
/* 01238 80ACF008 8D250150 */  lw      $a1, 0x0150($t1)           ## 00000150
/* 0123C 80ACF00C 3C0A0600 */  lui     $t2, 0x0600                ## $t2 = 06000000
/* 01240 80ACF010 254A2FF0 */  addiu   $t2, $t2, 0x2FF0           ## $t2 = 06002FF0
/* 01244 80ACF014 15450039 */  bne     $t2, $a1, .L80ACF0FC       
/* 01248 80ACF018 3C068016 */  lui     $a2, %hi(gSegments)
/* 0124C 80ACF01C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01250 80ACF020 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01254 80ACF024 24841B00 */  addiu   $a0, $a0, 0x1B00           ## $a0 = 06001B00
/* 01258 80ACF028 00046900 */  sll     $t5, $a0,  4               
/* 0125C 80ACF02C 000D7702 */  srl     $t6, $t5, 28               
/* 01260 80ACF030 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 01264 80ACF034 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 01268 80ACF038 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 0126C 80ACF03C 358C0020 */  ori     $t4, $t4, 0x0020           ## $t4 = DB060020
/* 01270 80ACF040 000EC080 */  sll     $t8, $t6,  2               
/* 01274 80ACF044 24C66FA8 */  addiu   $a2, %lo(gSegments)
/* 01278 80ACF048 00D87821 */  addu    $t7, $a2, $t8              
/* 0127C 80ACF04C AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 01280 80ACF050 8DF90000 */  lw      $t9, 0x0000($t7)           ## 00000008
/* 01284 80ACF054 3C0700FF */  lui     $a3, 0x00FF                ## $a3 = 00FF0000
/* 01288 80ACF058 34E7FFFF */  ori     $a3, $a3, 0xFFFF           ## $a3 = 00FFFFFF
/* 0128C 80ACF05C 00875024 */  and     $t2, $a0, $a3              
/* 01290 80ACF060 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 01294 80ACF064 032A5821 */  addu    $t3, $t9, $t2              
/* 01298 80ACF068 01686021 */  addu    $t4, $t3, $t0              
/* 0129C 80ACF06C AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 012A0 80ACF070 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 012A4 80ACF074 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 012A8 80ACF078 24841F00 */  addiu   $a0, $a0, 0x1F00           ## $a0 = 06001F00
/* 012AC 80ACF07C 0004C100 */  sll     $t8, $a0,  4               
/* 012B0 80ACF080 00187F02 */  srl     $t7, $t8, 28               
/* 012B4 80ACF084 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 012B8 80ACF088 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 012BC 80ACF08C AE0D02C0 */  sw      $t5, 0x02C0($s0)           ## 000002C0
/* 012C0 80ACF090 35CE0024 */  ori     $t6, $t6, 0x0024           ## $t6 = DB060024
/* 012C4 80ACF094 000FC880 */  sll     $t9, $t7,  2               
/* 012C8 80ACF098 00D95021 */  addu    $t2, $a2, $t9              
/* 012CC 80ACF09C AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 012D0 80ACF0A0 8D4B0000 */  lw      $t3, 0x0000($t2)           ## 06002FF0
/* 012D4 80ACF0A4 00876024 */  and     $t4, $a0, $a3              
/* 012D8 80ACF0A8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 012DC 80ACF0AC 016C6821 */  addu    $t5, $t3, $t4              
/* 012E0 80ACF0B0 01A87021 */  addu    $t6, $t5, $t0              
/* 012E4 80ACF0B4 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 012E8 80ACF0B8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 012EC 80ACF0BC 24842100 */  addiu   $a0, $a0, 0x2100           ## $a0 = 06002100
/* 012F0 80ACF0C0 0004C900 */  sll     $t9, $a0,  4               
/* 012F4 80ACF0C4 00195702 */  srl     $t2, $t9, 28               
/* 012F8 80ACF0C8 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 012FC 80ACF0CC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01300 80ACF0D0 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 01304 80ACF0D4 35EF0028 */  ori     $t7, $t7, 0x0028           ## $t7 = DB060028
/* 01308 80ACF0D8 000A5880 */  sll     $t3, $t2,  2               
/* 0130C 80ACF0DC 00CB6021 */  addu    $t4, $a2, $t3              
/* 01310 80ACF0E0 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 01314 80ACF0E4 8D8D0000 */  lw      $t5, 0x0000($t4)           ## DB060020
/* 01318 80ACF0E8 00877024 */  and     $t6, $a0, $a3              
/* 0131C 80ACF0EC 01AEC021 */  addu    $t8, $t5, $t6              
/* 01320 80ACF0F0 03087821 */  addu    $t7, $t8, $t0              
/* 01324 80ACF0F4 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 01328 80ACF0F8 8D250150 */  lw      $a1, 0x0150($t1)           ## 00000150
.L80ACF0FC:
/* 0132C 80ACF0FC 10A00017 */  beq     $a1, $zero, .L80ACF15C     
/* 01330 80ACF100 3C0ADA38 */  lui     $t2, 0xDA38                ## $t2 = DA380000
/* 01334 80ACF104 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01338 80ACF108 354A0003 */  ori     $t2, $t2, 0x0003           ## $t2 = DA380003
/* 0133C 80ACF10C 3C0580AD */  lui     $a1, %hi(D_80ACF220)       ## $a1 = 80AD0000
/* 01340 80ACF110 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01344 80ACF114 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 01348 80ACF118 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 0134C 80ACF11C 8FAB009C */  lw      $t3, 0x009C($sp)           
/* 01350 80ACF120 24A5F220 */  addiu   $a1, $a1, %lo(D_80ACF220)  ## $a1 = 80ACF220
/* 01354 80ACF124 240602B8 */  addiu   $a2, $zero, 0x02B8         ## $a2 = 000002B8
/* 01358 80ACF128 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000008
/* 0135C 80ACF12C 0C0346A2 */  jal     Matrix_NewMtx              
/* 01360 80ACF130 AFA20040 */  sw      $v0, 0x0040($sp)           
/* 01364 80ACF134 8FA30040 */  lw      $v1, 0x0040($sp)           
/* 01368 80ACF138 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 0136C 80ACF13C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01370 80ACF140 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01374 80ACF144 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 01378 80ACF148 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 0137C 80ACF14C AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01380 80ACF150 8FAE0098 */  lw      $t6, 0x0098($sp)           
/* 01384 80ACF154 8DD80150 */  lw      $t8, 0x0150($t6)           ## 00000150
/* 01388 80ACF158 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
.L80ACF15C:
/* 0138C 80ACF15C 8FAF009C */  lw      $t7, 0x009C($sp)           
/* 01390 80ACF160 3C0680AD */  lui     $a2, %hi(D_80ACF230)       ## $a2 = 80AD0000
/* 01394 80ACF164 24C6F230 */  addiu   $a2, $a2, %lo(D_80ACF230)  ## $a2 = 80ACF230
/* 01398 80ACF168 27A40080 */  addiu   $a0, $sp, 0x0080           ## $a0 = FFFFFFE8
/* 0139C 80ACF16C 240702BC */  addiu   $a3, $zero, 0x02BC         ## $a3 = 000002BC
/* 013A0 80ACF170 0C031AD5 */  jal     Graph_CloseDisps              
/* 013A4 80ACF174 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 013A8 80ACF178 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 013AC 80ACF17C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 013B0 80ACF180 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000
/* 013B4 80ACF184 03E00008 */  jr      $ra                        
/* 013B8 80ACF188 00000000 */  nop
/* 013BC 80ACF18C 00000000 */  nop
