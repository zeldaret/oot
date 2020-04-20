.rdata
glabel D_80B24400
    .asciz "0"
    .balign 4

glabel D_80B24404
    .asciz "../z_en_tr.c"
    .balign 4

.text
glabel EnTr_Init
/* 00008 80B22CF8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0000C 80B22CFC AFB00024 */  sw      $s0, 0x0024($sp)
/* 00010 80B22D00 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00014 80B22D04 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00018 80B22D08 AFA50034 */  sw      $a1, 0x0034($sp)
/* 0001C 80B22D0C 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00020 80B22D10 AFB10028 */  sw      $s1, 0x0028($sp)
/* 00024 80B22D14 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00028 80B22D18 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0002C 80B22D1C 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 00030 80B22D20 0C00AC78 */  jal     ActorShape_Init

/* 00034 80B22D24 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 00038 80B22D28 3C0580B2 */  lui     $a1, %hi(func_80B22F1C)    ## $a1 = 80B20000
/* 0003C 80B22D2C 24A52F1C */  addiu   $a1, $a1, %lo(func_80B22F1C) ## $a1 = 80B22F1C
/* 00040 80B22D30 0C2C8B3C */  jal     func_80B22CF0
/* 00044 80B22D34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00048 80B22D38 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 0004C 80B22D3C A60002D4 */  sh      $zero, 0x02D4($s0)         ## 000002D4
/* 00050 80B22D40 AE00011C */  sw      $zero, 0x011C($s0)         ## 0000011C
/* 00054 80B22D44 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00058 80B22D48 0C00B58B */  jal     Actor_SetScale

/* 0005C 80B22D4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00060 80B22D50 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00064 80B22D54 2611014C */  addiu   $s1, $s0, 0x014C           ## $s1 = 0000014C
/* 00068 80B22D58 02202825 */  or      $a1, $s1, $zero            ## $a1 = 0000014C
/* 0006C 80B22D5C 10400006 */  beq     $v0, $zero, .L80B22D78
/* 00070 80B22D60 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00074 80B22D64 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00078 80B22D68 1041001A */  beq     $v0, $at, .L80B22DD4
/* 0007C 80B22D6C 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00080 80B22D70 10000031 */  beq     $zero, $zero, .L80B22E38
/* 00084 80B22D74 3C0480B2 */  lui     $a0, %hi(D_80B24400)       ## $a0 = 80B20000
.L80B22D78:
/* 00088 80B22D78 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 0008C 80B22D7C 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00090 80B22D80 260E0190 */  addiu   $t6, $s0, 0x0190           ## $t6 = 00000190
/* 00094 80B22D84 260F0232 */  addiu   $t7, $s0, 0x0232           ## $t7 = 00000232
/* 00098 80B22D88 2418001B */  addiu   $t8, $zero, 0x001B         ## $t8 = 0000001B
/* 0009C 80B22D8C AFB80018 */  sw      $t8, 0x0018($sp)
/* 000A0 80B22D90 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 000A4 80B22D94 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 000A8 80B22D98 24E73FC8 */  addiu   $a3, $a3, 0x3FC8           ## $a3 = 06003FC8
/* 000AC 80B22D9C 0C0291BE */  jal     SkelAnime_InitSV
/* 000B0 80B22DA0 24C61688 */  addiu   $a2, $a2, 0x1688           ## $a2 = 06011688
/* 000B4 80B22DA4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 000B8 80B22DA8 24A53FC8 */  addiu   $a1, $a1, 0x3FC8           ## $a1 = 06003FC8
/* 000BC 80B22DAC 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 000C0 80B22DB0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000014C
/* 000C4 80B22DB4 3C0580B2 */  lui     $a1, %hi(func_80B23A88)    ## $a1 = 80B20000
/* 000C8 80B22DB8 AE0002E4 */  sw      $zero, 0x02E4($s0)         ## 000002E4
/* 000CC 80B22DBC 24A53A88 */  addiu   $a1, $a1, %lo(func_80B23A88) ## $a1 = 80B23A88
/* 000D0 80B22DC0 0C2C8B3C */  jal     func_80B22CF0
/* 000D4 80B22DC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000D8 80B22DC8 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 000DC 80B22DCC 1000001F */  beq     $zero, $zero, .L80B22E4C
/* 000E0 80B22DD0 A61902D8 */  sh      $t9, 0x02D8($s0)           ## 000002D8
.L80B22DD4:
/* 000E4 80B22DD4 2611014C */  addiu   $s1, $s0, 0x014C           ## $s1 = 0000014C
/* 000E8 80B22DD8 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 000EC 80B22DDC 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 000F0 80B22DE0 26080190 */  addiu   $t0, $s0, 0x0190           ## $t0 = 00000190
/* 000F4 80B22DE4 26090232 */  addiu   $t1, $s0, 0x0232           ## $t1 = 00000232
/* 000F8 80B22DE8 240A001B */  addiu   $t2, $zero, 0x001B         ## $t2 = 0000001B
/* 000FC 80B22DEC AFAA0018 */  sw      $t2, 0x0018($sp)
/* 00100 80B22DF0 AFA90014 */  sw      $t1, 0x0014($sp)
/* 00104 80B22DF4 AFA80010 */  sw      $t0, 0x0010($sp)
/* 00108 80B22DF8 24E71CDC */  addiu   $a3, $a3, 0x1CDC           ## $a3 = 06001CDC
/* 0010C 80B22DFC 24C6C530 */  addiu   $a2, $a2, 0xC530           ## $a2 = 0600C530
/* 00110 80B22E00 0C0291BE */  jal     SkelAnime_InitSV
/* 00114 80B22E04 02202825 */  or      $a1, $s1, $zero            ## $a1 = 0000014C
/* 00118 80B22E08 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0011C 80B22E0C 24A51CDC */  addiu   $a1, $a1, 0x1CDC           ## $a1 = 06001CDC
/* 00120 80B22E10 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 00124 80B22E14 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000014C
/* 00128 80B22E18 3C0580B2 */  lui     $a1, %hi(func_80B23A88)    ## $a1 = 80B20000
/* 0012C 80B22E1C AE0002E4 */  sw      $zero, 0x02E4($s0)         ## 000002E4
/* 00130 80B22E20 24A53A88 */  addiu   $a1, $a1, %lo(func_80B23A88) ## $a1 = 80B23A88
/* 00134 80B22E24 0C2C8B3C */  jal     func_80B22CF0
/* 00138 80B22E28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0013C 80B22E2C 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 00140 80B22E30 10000006 */  beq     $zero, $zero, .L80B22E4C
/* 00144 80B22E34 A60B02D8 */  sh      $t3, 0x02D8($s0)           ## 000002D8
.L80B22E38:
/* 00148 80B22E38 3C0580B2 */  lui     $a1, %hi(D_80B24404)       ## $a1 = 80B20000
/* 0014C 80B22E3C 24A54404 */  addiu   $a1, $a1, %lo(D_80B24404)  ## $a1 = 80B24404
/* 00150 80B22E40 24844400 */  addiu   $a0, $a0, %lo(D_80B24400)  ## $a0 = 00004400
/* 00154 80B22E44 0C0007FC */  jal     __assert

/* 00158 80B22E48 24060115 */  addiu   $a2, $zero, 0x0115         ## $a2 = 00000115
.L80B22E4C:
/* 0015C 80B22E4C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00160 80B22E50 8FB00024 */  lw      $s0, 0x0024($sp)
/* 00164 80B22E54 8FB10028 */  lw      $s1, 0x0028($sp)
/* 00168 80B22E58 03E00008 */  jr      $ra
/* 0016C 80B22E5C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
