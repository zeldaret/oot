.rdata
glabel D_8013D898
    .asciz "../z_map_exp.c"
    .balign 4

glabel D_8013D8A8
    .asciz "\n\n\nＭＡＰ テクスチャ初期化   scene_data_ID=%d\nmapSegment=%x\n\n"
    # EUC-JP: ＭＡＰ テクスチャ初期化 | MAP texture initalization
    .balign 4

glabel D_8013D8E8
    .asciz "parameter->mapSegment != NULL"
    .balign 4

glabel D_8013D908
    .asciz "../z_map_exp.c"
    .balign 4

.late_rodata
glabel jtbl_8013DB58
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C
    .word L8008106C

glabel jtbl_8013DBA8
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C
    .word L8008114C

.text
glabel func_80080F68
/* AF8108 80080F68 3C088016 */  lui   $t0, %hi(D_8015FFD0) # $t0, 0x8016
/* AF810C 80080F6C 3C0E8012 */  lui   $t6, %hi(D_801257F8) # $t6, 0x8012
/* AF8110 80080F70 2508FFD0 */  addiu $t0, %lo(D_8015FFD0) # addiu $t0, $t0, -0x30
/* AF8114 80080F74 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AF8118 80080F78 25CE57F8 */  addiu $t6, %lo(D_801257F8) # addiu $t6, $t6, 0x57f8
/* AF811C 80080F7C 3C010001 */  lui   $at, 1
/* AF8120 80080F80 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF8124 80080F84 2402FFFF */  li    $v0, -1
/* AF8128 80080F88 AD0E0000 */  sw    $t6, ($t0)
/* AF812C 80080F8C 00811821 */  addu  $v1, $a0, $at
/* AF8130 80080F90 A4620748 */  sh    $v0, 0x748($v1)
/* AF8134 80080F94 A462074A */  sh    $v0, 0x74a($v1)
/* AF8138 80080F98 3C068014 */  lui   $a2, %hi(D_8013D898) # $a2, 0x8014
/* AF813C 80080F9C 24C6D898 */  addiu $a2, %lo(D_8013D898) # addiu $a2, $a2, -0x2768
/* AF8140 80080FA0 AFA40030 */  sw    $a0, 0x30($sp)
/* AF8144 80080FA4 AFA30018 */  sw    $v1, 0x18($sp)
/* AF8148 80080FA8 24051000 */  li    $a1, 4096
/* AF814C 80080FAC 0C031521 */  jal   Game_Alloc
/* AF8150 80080FB0 240701C9 */   li    $a3, 457
/* AF8154 80080FB4 8FA70030 */  lw    $a3, 0x30($sp)
/* AF8158 80080FB8 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AF815C 80080FBC 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AF8160 80080FC0 00E11821 */  addu  $v1, $a3, $at
/* AF8164 80080FC4 AC62013C */  sw    $v0, 0x13c($v1)
/* AF8168 80080FC8 3C048014 */  lui   $a0, %hi(D_8013D8A8) # $a0, 0x8014
/* AF816C 80080FCC 84E500A4 */  lh    $a1, 0xa4($a3)
/* AF8170 80080FD0 AFA3001C */  sw    $v1, 0x1c($sp)
/* AF8174 80080FD4 2484D8A8 */  addiu $a0, %lo(D_8013D8A8) # addiu $a0, $a0, -0x2758
/* AF8178 80080FD8 0C00084C */  jal   osSyncPrintf
/* AF817C 80080FDC 00403025 */   move  $a2, $v0
/* AF8180 80080FE0 8FA3001C */  lw    $v1, 0x1c($sp)
/* AF8184 80080FE4 3C088016 */  lui   $t0, %hi(D_8015FFD0) # $t0, 0x8016
/* AF8188 80080FE8 3C048014 */  lui   $a0, %hi(D_8013D8E8) # $a0, 0x8014
/* AF818C 80080FEC 8C6F013C */  lw    $t7, 0x13c($v1)
/* AF8190 80080FF0 2508FFD0 */  addiu $t0, %lo(D_8015FFD0) # addiu $t0, $t0, -0x30
/* AF8194 80080FF4 2484D8E8 */  addiu $a0, %lo(D_8013D8E8) # addiu $a0, $a0, -0x2718
/* AF8198 80080FF8 15E00006 */  bnez  $t7, .L80081014
/* AF819C 80080FFC 3C058014 */   lui   $a1, %hi(D_8013D908) # $a1, 0x8014
/* AF81A0 80081000 24A5D908 */  addiu $a1, %lo(D_8013D908) # addiu $a1, $a1, -0x26f8
/* AF81A4 80081004 0C0007FC */  jal   __assert
/* AF81A8 80081008 240601CB */   li    $a2, 459
/* AF81AC 8008100C 3C088016 */  lui   $t0, %hi(D_8015FFD0) # $t0, 0x8016
/* AF81B0 80081010 2508FFD0 */  addiu $t0, %lo(D_8015FFD0) # addiu $t0, $t0, -0x30
.L80081014:
/* AF81B4 80081014 8FA40030 */  lw    $a0, 0x30($sp)
/* AF81B8 80081018 848900A4 */  lh    $t1, 0xa4($a0)
/* AF81BC 8008101C 29210019 */  slti  $at, $t1, 0x19
/* AF81C0 80081020 1420000A */  bnez  $at, .L8008104C
/* AF81C4 80081024 01201025 */   move  $v0, $t1
/* AF81C8 80081028 2458FFAF */  addiu $t8, $v0, -0x51
/* AF81CC 8008102C 2F010014 */  sltiu $at, $t8, 0x14
/* AF81D0 80081030 1020007F */  beqz  $at, .L80081230
/* AF81D4 80081034 0018C080 */   sll   $t8, $t8, 2
/* AF81D8 80081038 3C018014 */  lui   $at, %hi(jtbl_8013DB58)
/* AF81DC 8008103C 00380821 */  addu  $at, $at, $t8
/* AF81E0 80081040 8C38DB58 */  lw    $t8, %lo(jtbl_8013DB58)($at)
/* AF81E4 80081044 03000008 */  jr    $t8
/* AF81E8 80081048 00000000 */   nop   
.L8008104C:
/* AF81EC 8008104C 2C410019 */  sltiu $at, $v0, 0x19
/* AF81F0 80081050 10200077 */  beqz  $at, .L80081230
/* AF81F4 80081054 0002C880 */   sll   $t9, $v0, 2
/* AF81F8 80081058 3C018014 */  lui   $at, %hi(jtbl_8013DBA8)
/* AF81FC 8008105C 00390821 */  addu  $at, $at, $t9
/* AF8200 80081060 8C39DBA8 */  lw    $t9, %lo(jtbl_8013DBA8)($at)
/* AF8204 80081064 03200008 */  jr    $t9
/* AF8208 80081068 00000000 */   nop   
glabel L8008106C
/* AF820C 8008106C 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AF8210 80081070 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* AF8214 80081074 8C6B0000 */  lw    $t3, ($v1)
/* AF8218 80081078 3C078016 */  lui   $a3, %hi(gSaveContext) # $a3, 0x8016
/* AF821C 8008107C 24E7E660 */  addiu $a3, %lo(gSaveContext) # addiu $a3, $a3, -0x19a0
/* AF8220 80081080 2526FFAF */  addiu $a2, $t1, -0x51
/* AF8224 80081084 A4E61402 */  sh    $a2, 0x1402($a3)
/* AF8228 80081088 A5660F2A */  sh    $a2, 0xf2a($t3)
/* AF822C 8008108C 8D0C0000 */  lw    $t4, ($t0)
/* AF8230 80081090 000610C0 */  sll   $v0, $a2, 3
/* AF8234 80081094 8C780000 */  lw    $t8, ($v1)
/* AF8238 80081098 8D8D0034 */  lw    $t5, 0x34($t4)
/* AF823C 8008109C 00062C00 */  sll   $a1, $a2, 0x10
/* AF8240 800810A0 00052C03 */  sra   $a1, $a1, 0x10
/* AF8244 800810A4 01A27021 */  addu  $t6, $t5, $v0
/* AF8248 800810A8 85CF0000 */  lh    $t7, ($t6)
/* AF824C 800810AC A70F0F30 */  sh    $t7, 0xf30($t8)
/* AF8250 800810B0 8D190000 */  lw    $t9, ($t0)
/* AF8254 800810B4 8C6D0000 */  lw    $t5, ($v1)
/* AF8258 800810B8 8F2A0034 */  lw    $t2, 0x34($t9)
/* AF825C 800810BC 01425821 */  addu  $t3, $t2, $v0
/* AF8260 800810C0 856C0002 */  lh    $t4, 2($t3)
/* AF8264 800810C4 A5AC0F32 */  sh    $t4, 0xf32($t5)
/* AF8268 800810C8 8D0E0000 */  lw    $t6, ($t0)
/* AF826C 800810CC 8C6A0000 */  lw    $t2, ($v1)
/* AF8270 800810D0 8DCF0034 */  lw    $t7, 0x34($t6)
/* AF8274 800810D4 01E2C021 */  addu  $t8, $t7, $v0
/* AF8278 800810D8 87190004 */  lh    $t9, 4($t8)
/* AF827C 800810DC A5590F34 */  sh    $t9, 0xf34($t2)
/* AF8280 800810E0 8D0B0000 */  lw    $t3, ($t0)
/* AF8284 800810E4 8C6F0000 */  lw    $t7, ($v1)
/* AF8288 800810E8 8D6C0034 */  lw    $t4, 0x34($t3)
/* AF828C 800810EC 01826821 */  addu  $t5, $t4, $v0
/* AF8290 800810F0 85AE0006 */  lh    $t6, 6($t5)
/* AF8294 800810F4 A5EE0F36 */  sh    $t6, 0xf36($t7)
/* AF8298 800810F8 0C0202AD */  jal   func_80080AB4
/* AF829C 800810FC AFA6002C */   sw    $a2, 0x2c($sp)
/* AF82A0 80081100 3C088016 */  lui   $t0, %hi(D_8015FFD0) # $t0, 0x8016
/* AF82A4 80081104 2508FFD0 */  addiu $t0, %lo(D_8015FFD0) # addiu $t0, $t0, -0x30
/* AF82A8 80081108 8D180000 */  lw    $t8, ($t0)
/* AF82AC 8008110C 8FA6002C */  lw    $a2, 0x2c($sp)
/* AF82B0 80081110 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AF82B4 80081114 8F19002C */  lw    $t9, 0x2c($t8)
/* AF82B8 80081118 00061040 */  sll   $v0, $a2, 1
/* AF82BC 8008111C 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* AF82C0 80081120 03225021 */  addu  $t2, $t9, $v0
/* AF82C4 80081124 854B0000 */  lh    $t3, ($t2)
/* AF82C8 80081128 8C6C0000 */  lw    $t4, ($v1)
/* AF82CC 8008112C A58B0DCE */  sh    $t3, 0xdce($t4)
/* AF82D0 80081130 8D0D0000 */  lw    $t5, ($t0)
/* AF82D4 80081134 8C790000 */  lw    $t9, ($v1)
/* AF82D8 80081138 8DAE0030 */  lw    $t6, 0x30($t5)
/* AF82DC 8008113C 01C27821 */  addu  $t7, $t6, $v0
/* AF82E0 80081140 85F80000 */  lh    $t8, ($t7)
/* AF82E4 80081144 1000003A */  b     .L80081230
/* AF82E8 80081148 A7380DD0 */   sh    $t8, 0xdd0($t9)
glabel L8008114C
/* AF82EC 8008114C 29210011 */  slti  $at, $t1, 0x11
/* AF82F0 80081150 14200003 */  bnez  $at, .L80081160
/* AF82F4 80081154 3C038016 */   lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AF82F8 80081158 10000002 */  b     .L80081164
/* AF82FC 8008115C 2526FFEF */   addiu $a2, $t1, -0x11
.L80081160:
/* AF8300 80081160 01203025 */  move  $a2, $t1
.L80081164:
/* AF8304 80081164 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* AF8308 80081168 8C6B0000 */  lw    $t3, ($v1)
/* AF830C 8008116C 3C078016 */  lui   $a3, %hi(gSaveContext) # $a3, 0x8016
/* AF8310 80081170 24E7E660 */  addiu $a3, %lo(gSaveContext) # addiu $a3, $a3, -0x19a0
/* AF8314 80081174 A4E61402 */  sh    $a2, 0x1402($a3)
/* AF8318 80081178 A5660F2A */  sh    $a2, 0xf2a($t3)
/* AF831C 8008117C 848900A4 */  lh    $t1, 0xa4($a0)
/* AF8320 80081180 2921000A */  slti  $at, $t1, 0xa
/* AF8324 80081184 14200003 */  bnez  $at, .L80081194
/* AF8328 80081188 29210011 */   slti  $at, $t1, 0x11
/* AF832C 8008118C 54200029 */  bnezl $at, .L80081234
/* AF8330 80081190 8FBF0014 */   lw    $ra, 0x14($sp)
.L80081194:
/* AF8334 80081194 8D0C0000 */  lw    $t4, ($t0)
/* AF8338 80081198 000610C0 */  sll   $v0, $a2, 3
/* AF833C 8008119C 8C780000 */  lw    $t8, ($v1)
/* AF8340 800811A0 8D8D003C */  lw    $t5, 0x3c($t4)
/* AF8344 800811A4 01A27021 */  addu  $t6, $t5, $v0
/* AF8348 800811A8 85CF0000 */  lh    $t7, ($t6)
/* AF834C 800811AC A70F0F30 */  sh    $t7, 0xf30($t8)
/* AF8350 800811B0 8D190000 */  lw    $t9, ($t0)
/* AF8354 800811B4 8C6D0000 */  lw    $t5, ($v1)
/* AF8358 800811B8 8F2A003C */  lw    $t2, 0x3c($t9)
/* AF835C 800811BC 01425821 */  addu  $t3, $t2, $v0
/* AF8360 800811C0 856C0002 */  lh    $t4, 2($t3)
/* AF8364 800811C4 A5AC0F32 */  sh    $t4, 0xf32($t5)
/* AF8368 800811C8 8D0E0000 */  lw    $t6, ($t0)
/* AF836C 800811CC 8C6A0000 */  lw    $t2, ($v1)
/* AF8370 800811D0 8DCF003C */  lw    $t7, 0x3c($t6)
/* AF8374 800811D4 01E2C021 */  addu  $t8, $t7, $v0
/* AF8378 800811D8 87190004 */  lh    $t9, 4($t8)
/* AF837C 800811DC A5590F34 */  sh    $t9, 0xf34($t2)
/* AF8380 800811E0 8D0B0000 */  lw    $t3, ($t0)
/* AF8384 800811E4 8C6F0000 */  lw    $t7, ($v1)
/* AF8388 800811E8 00065040 */  sll   $t2, $a2, 1
/* AF838C 800811EC 8D6C003C */  lw    $t4, 0x3c($t3)
/* AF8390 800811F0 01826821 */  addu  $t5, $t4, $v0
/* AF8394 800811F4 85AE0006 */  lh    $t6, 6($t5)
/* AF8398 800811F8 A5EE0F36 */  sh    $t6, 0xf36($t7)
/* AF839C 800811FC 8D180000 */  lw    $t8, ($t0)
/* AF83A0 80081200 8C6C0000 */  lw    $t4, ($v1)
/* AF83A4 80081204 8F190038 */  lw    $t9, 0x38($t8)
/* AF83A8 80081208 032A5821 */  addu  $t3, $t9, $t2
/* AF83AC 8008120C 85670000 */  lh    $a3, ($t3)
/* AF83B0 80081210 A5870F2C */  sh    $a3, 0xf2c($t4)
/* AF83B4 80081214 8C6D0000 */  lw    $t5, ($v1)
/* AF83B8 80081218 A5A70F2E */  sh    $a3, 0xf2e($t5)
/* AF83BC 8008121C 8FAE0018 */  lw    $t6, 0x18($sp)
/* AF83C0 80081220 0C020381 */  jal   func_80080E04
/* AF83C4 80081224 81C51CBC */   lb    $a1, 0x1cbc($t6)
/* AF83C8 80081228 0C01ECA4 */  jal   MapMark_Init
/* AF83CC 8008122C 8FA40030 */   lw    $a0, 0x30($sp)
.L80081230:
/* AF83D0 80081230 8FBF0014 */  lw    $ra, 0x14($sp)
.L80081234:
/* AF83D4 80081234 27BD0030 */  addiu $sp, $sp, 0x30
/* AF83D8 80081238 03E00008 */  jr    $ra
/* AF83DC 8008123C 00000000 */   nop   

