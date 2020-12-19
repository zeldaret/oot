.rdata
glabel D_80A343D0
    .asciz "0"
    .balign 4

glabel D_80A343D4
    .asciz "../z_en_ge2.c"
    .balign 4

.text
glabel EnGe2_Init
/* 000A4 80A32C74 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 000A8 80A32C78 AFB00028 */  sw      $s0, 0x0028($sp)
/* 000AC 80A32C7C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 000B0 80A32C80 AFBF002C */  sw      $ra, 0x002C($sp)
/* 000B4 80A32C84 AFA50044 */  sw      $a1, 0x0044($sp)
/* 000B8 80A32C88 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 000BC 80A32C8C 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 000C0 80A32C90 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 000C4 80A32C94 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 000C8 80A32C98 0C00AC78 */  jal     ActorShape_Init

/* 000CC 80A32C9C 3C074210 */  lui     $a3, 0x4210                ## $a3 = 42100000
/* 000D0 80A32CA0 26050198 */  addiu   $a1, $s0, 0x0198           ## $a1 = 00000198
/* 000D4 80A32CA4 3C060601 */  lui     $a2, %hi(D_06008968)                ## $a2 = 06010000
/* 000D8 80A32CA8 260E01DC */  addiu   $t6, $s0, 0x01DC           ## $t6 = 000001DC
/* 000DC 80A32CAC 260F0260 */  addiu   $t7, $s0, 0x0260           ## $t7 = 00000260
/* 000E0 80A32CB0 24180016 */  addiu   $t8, $zero, 0x0016         ## $t8 = 00000016
/* 000E4 80A32CB4 AFB80018 */  sw      $t8, 0x0018($sp)
/* 000E8 80A32CB8 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 000EC 80A32CBC AFAE0010 */  sw      $t6, 0x0010($sp)
/* 000F0 80A32CC0 24C68968 */  addiu   $a2, $a2, %lo(D_06008968)           ## $a2 = 06008968
/* 000F4 80A32CC4 AFA50030 */  sw      $a1, 0x0030($sp)
/* 000F8 80A32CC8 8FA40044 */  lw      $a0, 0x0044($sp)
/* 000FC 80A32CCC 0C0291BE */  jal     SkelAnime_InitFlex
/* 00100 80A32CD0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00104 80A32CD4 3C050601 */  lui     $a1, %hi(D_06009ED4)                ## $a1 = 06010000
/* 00108 80A32CD8 24A59ED4 */  addiu   $a1, $a1, %lo(D_06009ED4)           ## $a1 = 06009ED4
/* 0010C 80A32CDC 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 00110 80A32CE0 8FA40030 */  lw      $a0, 0x0030($sp)
/* 00114 80A32CE4 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00118 80A32CE8 AFA50030 */  sw      $a1, 0x0030($sp)
/* 0011C 80A32CEC 0C0170D9 */  jal     Collider_InitCylinder

/* 00120 80A32CF0 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00124 80A32CF4 3C0780A3 */  lui     $a3, %hi(D_80A34310)       ## $a3 = 80A30000
/* 00128 80A32CF8 8FA50030 */  lw      $a1, 0x0030($sp)
/* 0012C 80A32CFC 24E74310 */  addiu   $a3, $a3, %lo(D_80A34310)  ## $a3 = 80A34310
/* 00130 80A32D00 8FA40044 */  lw      $a0, 0x0044($sp)
/* 00134 80A32D04 0C01712B */  jal     Collider_SetCylinder

/* 00138 80A32D08 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0013C 80A32D0C 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 00140 80A32D10 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00144 80A32D14 A21900AE */  sb      $t9, 0x00AE($s0)           ## 000000AE
/* 00148 80A32D18 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 0014C 80A32D1C 0C00B58B */  jal     Actor_SetScale

/* 00150 80A32D20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00154 80A32D24 8FA80044 */  lw      $t0, 0x0044($sp)
/* 00158 80A32D28 2401005A */  addiu   $at, $zero, 0x005A         ## $at = 0000005A
/* 0015C 80A32D2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00160 80A32D30 850900A4 */  lh      $t1, 0x00A4($t0)           ## 000000A4
/* 00164 80A32D34 15210004 */  bne     $t1, $at, .L80A32D48
/* 00168 80A32D38 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0016C 80A32D3C 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 00170 80A32D40 10000005 */  beq     $zero, $zero, .L80A32D58
/* 00174 80A32D44 E60400F4 */  swc1    $f4, 0x00F4($s0)           ## 000000F4
.L80A32D48:
/* 00178 80A32D48 3C014496 */  lui     $at, 0x4496                ## $at = 44960000
/* 0017C 80A32D4C 44813000 */  mtc1    $at, $f6                   ## $f6 = 1200.00
/* 00180 80A32D50 00000000 */  nop
/* 00184 80A32D54 E60600F4 */  swc1    $f6, 0x00F4($s0)           ## 000000F4
.L80A32D58:
/* 00188 80A32D58 860A0034 */  lh      $t2, 0x0034($s0)           ## 00000034
/* 0018C 80A32D5C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00190 80A32D60 44818000 */  mtc1    $at, $f16                  ## $f16 = 40.00
/* 00194 80A32D64 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 00198 80A32D68 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 0019C 80A32D6C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 001A0 80A32D70 A6000034 */  sh      $zero, 0x0034($s0)         ## 00000034
/* 001A4 80A32D74 468042A0 */  cvt.s.w $f10, $f8
/* 001A8 80A32D78 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000000
/* 001AC 80A32D7C A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
/* 001B0 80A32D80 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 001B4 80A32D84 46105482 */  mul.s   $f18, $f10, $f16
/* 001B8 80A32D88 10400008 */  beq     $v0, $zero, .L80A32DAC
/* 001BC 80A32D8C E61202FC */  swc1    $f18, 0x02FC($s0)          ## 000002FC
/* 001C0 80A32D90 10410011 */  beq     $v0, $at, .L80A32DD8
/* 001C4 80A32D94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001C8 80A32D98 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 001CC 80A32D9C 10410019 */  beq     $v0, $at, .L80A32E04
/* 001D0 80A32DA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001D4 80A32DA4 10000022 */  beq     $zero, $zero, .L80A32E30
/* 001D8 80A32DA8 3C0480A3 */  lui     $a0, %hi(D_80A343D0)       ## $a0 = 80A30000
.L80A32DAC:
/* 001DC 80A32DAC 0C28CAF4 */  jal     func_80A32BD0
/* 001E0 80A32DB0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 001E4 80A32DB4 0C28CC28 */  jal     func_80A330A0
/* 001E8 80A32DB8 00000000 */  nop
/* 001EC 80A32DBC 10400021 */  beq     $v0, $zero, .L80A32E44
/* 001F0 80A32DC0 3C0C80A3 */  lui     $t4, %hi(func_80A33D10)    ## $t4 = 80A30000
/* 001F4 80A32DC4 258C3D10 */  addiu   $t4, $t4, %lo(func_80A33D10) ## $t4 = 80A33D10
/* 001F8 80A32DC8 240D0006 */  addiu   $t5, $zero, 0x0006         ## $t5 = 00000006
/* 001FC 80A32DCC AE0C0130 */  sw      $t4, 0x0130($s0)           ## 00000130
/* 00200 80A32DD0 1000001C */  beq     $zero, $zero, .L80A32E44
/* 00204 80A32DD4 A20D001F */  sb      $t5, 0x001F($s0)           ## 0000001F
.L80A32DD8:
/* 00208 80A32DD8 0C28CAF4 */  jal     func_80A32BD0
/* 0020C 80A32DDC 24050007 */  addiu   $a1, $zero, 0x0007         ## $a1 = 00000007
/* 00210 80A32DE0 0C28CC28 */  jal     func_80A330A0
/* 00214 80A32DE4 00000000 */  nop
/* 00218 80A32DE8 10400016 */  beq     $v0, $zero, .L80A32E44
/* 0021C 80A32DEC 3C0E80A3 */  lui     $t6, %hi(func_80A33D10)    ## $t6 = 80A30000
/* 00220 80A32DF0 25CE3D10 */  addiu   $t6, $t6, %lo(func_80A33D10) ## $t6 = 80A33D10
/* 00224 80A32DF4 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 00228 80A32DF8 AE0E0130 */  sw      $t6, 0x0130($s0)           ## 00000130
/* 0022C 80A32DFC 10000011 */  beq     $zero, $zero, .L80A32E44
/* 00230 80A32E00 A20F001F */  sb      $t7, 0x001F($s0)           ## 0000001F
.L80A32E04:
/* 00234 80A32E04 0C28CAF4 */  jal     func_80A32BD0
/* 00238 80A32E08 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 0023C 80A32E0C 3C1880A3 */  lui     $t8, %hi(func_80A33DE0)    ## $t8 = 80A30000
/* 00240 80A32E10 3C1980A3 */  lui     $t9, %hi(func_80A33AFC)    ## $t9 = 80A30000
/* 00244 80A32E14 27183DE0 */  addiu   $t8, $t8, %lo(func_80A33DE0) ## $t8 = 80A33DE0
/* 00248 80A32E18 27393AFC */  addiu   $t9, $t9, %lo(func_80A33AFC) ## $t9 = 80A33AFC
/* 0024C 80A32E1C 24080006 */  addiu   $t0, $zero, 0x0006         ## $t0 = 00000006
/* 00250 80A32E20 AE180130 */  sw      $t8, 0x0130($s0)           ## 00000130
/* 00254 80A32E24 AE190308 */  sw      $t9, 0x0308($s0)           ## 00000308
/* 00258 80A32E28 10000006 */  beq     $zero, $zero, .L80A32E44
/* 0025C 80A32E2C A208001F */  sb      $t0, 0x001F($s0)           ## 0000001F
.L80A32E30:
/* 00260 80A32E30 3C0580A3 */  lui     $a1, %hi(D_80A343D4)       ## $a1 = 80A30000
/* 00264 80A32E34 24A543D4 */  addiu   $a1, $a1, %lo(D_80A343D4)  ## $a1 = 80A343D4
/* 00268 80A32E38 248443D0 */  addiu   $a0, $a0, %lo(D_80A343D0)  ## $a0 = 000043D0
/* 0026C 80A32E3C 0C0007FC */  jal     __assert

/* 00270 80A32E40 240601A2 */  addiu   $a2, $zero, 0x01A2         ## $a2 = 000001A2
.L80A32E44:
/* 00274 80A32E44 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 00278 80A32E48 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 0027C 80A32E4C 44812000 */  mtc1    $at, $f4                   ## $f4 = -4.00
/* 00280 80A32E50 314BFF00 */  andi    $t3, $t2, 0xFF00           ## $t3 = 00000000
/* 00284 80A32E54 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00288 80A32E58 000B6203 */  sra     $t4, $t3,  8
/* 0028C 80A32E5C 44813000 */  mtc1    $at, $f6                   ## $f6 = -1.00
/* 00290 80A32E60 86090032 */  lh      $t1, 0x0032($s0)           ## 00000032
/* 00294 80A32E64 000C6880 */  sll     $t5, $t4,  2
/* 00298 80A32E68 01AC6821 */  addu    $t5, $t5, $t4
/* 0029C 80A32E6C 000D6840 */  sll     $t5, $t5,  1
/* 002A0 80A32E70 A60002F4 */  sh      $zero, 0x02F4($s0)         ## 000002F4
/* 002A4 80A32E74 A2000304 */  sb      $zero, 0x0304($s0)         ## 00000304
/* 002A8 80A32E78 A6000302 */  sh      $zero, 0x0302($s0)         ## 00000302
/* 002AC 80A32E7C A2000306 */  sb      $zero, 0x0306($s0)         ## 00000306
/* 002B0 80A32E80 A60D0300 */  sh      $t5, 0x0300($s0)           ## 00000300
/* 002B4 80A32E84 E6040070 */  swc1    $f4, 0x0070($s0)           ## 00000070
/* 002B8 80A32E88 E606006C */  swc1    $f6, 0x006C($s0)           ## 0000006C
/* 002BC 80A32E8C A60902F6 */  sh      $t1, 0x02F6($s0)           ## 000002F6
/* 002C0 80A32E90 8FBF002C */  lw      $ra, 0x002C($sp)
/* 002C4 80A32E94 8FB00028 */  lw      $s0, 0x0028($sp)
/* 002C8 80A32E98 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 002CC 80A32E9C 03E00008 */  jr      $ra
/* 002D0 80A32EA0 00000000 */  nop
