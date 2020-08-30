.late_rodata
glabel D_808F7E5C
    .float 10000.0

glabel D_808F7E60
    .float 5000.0

glabel D_808F7E64
    .float 5000.0

glabel D_808F7E68
    .float 5000.0

.text
glabel BossGanon_Init
/* 00928 808D7198 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 0092C 808D719C AFBF003C */  sw      $ra, 0x003C($sp)
/* 00930 808D71A0 AFB10038 */  sw      $s1, 0x0038($sp)
/* 00934 808D71A4 AFB00034 */  sw      $s0, 0x0034($sp)
/* 00938 808D71A8 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 0093C 808D71AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00940 808D71B0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00944 808D71B4 29C10064 */  slti    $at, $t6, 0x0064
/* 00948 808D71B8 1020007C */  beq     $at, $zero, .L808D73AC
/* 0094C 808D71BC 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 00950 808D71C0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00954 808D71C4 0C00B2DD */  jal     Flags_SetSwitch

/* 00958 808D71C8 24050014 */  addiu   $a1, $zero, 0x0014         ## $a1 = 00000014
/* 0095C 808D71CC 3C048090 */  lui     $a0, %hi(D_808F93D8)       ## $a0 = 80900000
/* 00960 808D71D0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00964 808D71D4 248493D8 */  addiu   $a0, $a0, %lo(D_808F93D8)  ## $a0 = 808F93D8
/* 00968 808D71D8 00310821 */  addu    $at, $at, $s1
/* 0096C 808D71DC AC241E10 */  sw      $a0, 0x1E10($at)           ## 00011E10
/* 00970 808D71E0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00974 808D71E4 2403004C */  addiu   $v1, $zero, 0x004C         ## $v1 = 0000004C
.L808D71E8:
/* 00978 808D71E8 00430019 */  multu   $v0, $v1
/* 0097C 808D71EC 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 00980 808D71F0 00021400 */  sll     $v0, $v0, 16
/* 00984 808D71F4 00021403 */  sra     $v0, $v0, 16
/* 00988 808D71F8 284100C8 */  slti    $at, $v0, 0x00C8
/* 0098C 808D71FC 00007812 */  mflo    $t7
/* 00990 808D7200 008FC021 */  addu    $t8, $a0, $t7
/* 00994 808D7204 1420FFF8 */  bne     $at, $zero, .L808D71E8
/* 00998 808D7208 A3000000 */  sb      $zero, 0x0000($t8)         ## 00000000
/* 0099C 808D720C 3C018090 */  lui     $at, %hi(D_808F93D0)       ## $at = 80900000
/* 009A0 808D7210 AC3093D0 */  sw      $s0, %lo(D_808F93D0)($at)
/* 009A4 808D7214 24190028 */  addiu   $t9, $zero, 0x0028         ## $t9 = 00000028
/* 009A8 808D7218 3C05808E */  lui     $a1, %hi(D_808E4C84)       ## $a1 = 808E0000
/* 009AC 808D721C A21900AF */  sb      $t9, 0x00AF($s0)           ## 000000AF
/* 009B0 808D7220 24A54C84 */  addiu   $a1, $a1, %lo(D_808E4C84)  ## $a1 = 808E4C84
/* 009B4 808D7224 0C01E037 */  jal     Actor_ProcessInitChain

/* 009B8 808D7228 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009BC 808D722C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 009C0 808D7230 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 009C4 808D7234 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 009C8 808D7238 44051000 */  mfc1    $a1, $f2
/* 009CC 808D723C 44071000 */  mfc1    $a3, $f2
/* 009D0 808D7240 0C00AC78 */  jal     ActorShape_Init

/* 009D4 808D7244 00000000 */  nop
/* 009D8 808D7248 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 009DC 808D724C 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 009E0 808D7250 0C00B58B */  jal     Actor_SetScale

/* 009E4 808D7254 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009E8 808D7258 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 009EC 808D725C 24C614E8 */  addiu   $a2, $a2, 0x14E8           ## $a2 = 060114E8
/* 009F0 808D7260 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 009F4 808D7264 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 009F8 808D7268 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 009FC 808D726C AFA00010 */  sw      $zero, 0x0010($sp)
/* 00A00 808D7270 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00A04 808D7274 0C0291BE */  jal     SkelAnime_InitSV
/* 00A08 808D7278 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00A0C 808D727C 26050610 */  addiu   $a1, $s0, 0x0610           ## $a1 = 00000610
/* 00A10 808D7280 AFA50044 */  sw      $a1, 0x0044($sp)
/* 00A14 808D7284 0C0170D9 */  jal     Collider_InitCylinder

/* 00A18 808D7288 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A1C 808D728C 3C07808E */  lui     $a3, %hi(D_808E4C00)       ## $a3 = 808E0000
/* 00A20 808D7290 8FA50044 */  lw      $a1, 0x0044($sp)
/* 00A24 808D7294 24E74C00 */  addiu   $a3, $a3, %lo(D_808E4C00)  ## $a3 = 808E4C00
/* 00A28 808D7298 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A2C 808D729C 0C01712B */  jal     Collider_SetCylinder

/* 00A30 808D72A0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00A34 808D72A4 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 00A38 808D72A8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00A3C 808D72AC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00A40 808D72B0 11010006 */  beq     $t0, $at, .L808D72CC
/* 00A44 808D72B4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A48 808D72B8 0C235DE7 */  jal     func_808D779C
/* 00A4C 808D72BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A50 808D72C0 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 00A54 808D72C4 10000021 */  beq     $zero, $zero, .L808D734C
/* 00A58 808D72C8 A6090718 */  sh      $t1, 0x0718($s0)           ## 00000718
.L808D72CC:
/* 00A5C 808D72CC 0C00B2D0 */  jal     Flags_GetSwitch

/* 00A60 808D72D0 24050037 */  addiu   $a1, $zero, 0x0037         ## $a1 = 00000037
/* 00A64 808D72D4 0002182B */  sltu    $v1, $zero, $v0
/* 00A68 808D72D8 10600010 */  beq     $v1, $zero, .L808D731C
/* 00A6C 808D72DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A70 808D72E0 862200A4 */  lh      $v0, 0x00A4($s1)           ## 000000A4
/* 00A74 808D72E4 3843004F */  xori    $v1, $v0, 0x004F           ## $v1 = 0000004F
/* 00A78 808D72E8 2C630001 */  sltiu   $v1, $v1, 0x0001
/* 00A7C 808D72EC 1460000B */  bne     $v1, $zero, .L808D731C
/* 00A80 808D72F0 00000000 */  nop
/* 00A84 808D72F4 3843001A */  xori    $v1, $v0, 0x001A           ## $v1 = 0000001A
/* 00A88 808D72F8 2C630001 */  sltiu   $v1, $v1, 0x0001
/* 00A8C 808D72FC 14600007 */  bne     $v1, $zero, .L808D731C
/* 00A90 808D7300 00000000 */  nop
/* 00A94 808D7304 3843000E */  xori    $v1, $v0, 0x000E           ## $v1 = 0000000E
/* 00A98 808D7308 2C630001 */  sltiu   $v1, $v1, 0x0001
/* 00A9C 808D730C 14600003 */  bne     $v1, $zero, .L808D731C
/* 00AA0 808D7310 00000000 */  nop
/* 00AA4 808D7314 3843000F */  xori    $v1, $v0, 0x000F           ## $v1 = 0000000F
/* 00AA8 808D7318 2C630001 */  sltiu   $v1, $v1, 0x0001
.L808D731C:
/* 00AAC 808D731C 14600005 */  bne     $v1, $zero, .L808D7334
/* 00AB0 808D7320 00000000 */  nop
/* 00AB4 808D7324 0C23643E */  jal     func_808D90F8
/* 00AB8 808D7328 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00ABC 808D732C 10000005 */  beq     $zero, $zero, .L808D7344
/* 00AC0 808D7330 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L808D7334:
/* 00AC4 808D7334 0C00B55C */  jal     Actor_Kill

/* 00AC8 808D7338 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ACC 808D733C 100000FA */  beq     $zero, $zero, .L808D7728
/* 00AD0 808D7340 8FBF003C */  lw      $ra, 0x003C($sp)
.L808D7344:
/* 00AD4 808D7344 0C23643E */  jal     func_808D90F8
/* 00AD8 808D7348 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
.L808D734C:
/* 00ADC 808D734C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00AE0 808D7350 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 00AE4 808D7354 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00AE8 808D7358 AFAA0028 */  sw      $t2, 0x0028($sp)
/* 00AEC 808D735C AFA40044 */  sw      $a0, 0x0044($sp)
/* 00AF0 808D7360 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00AF4 808D7364 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 00AF8 808D7368 2407016F */  addiu   $a3, $zero, 0x016F         ## $a3 = 0000016F
/* 00AFC 808D736C AFA0001C */  sw      $zero, 0x001C($sp)
/* 00B00 808D7370 AFA00020 */  sw      $zero, 0x0020($sp)
/* 00B04 808D7374 AFA00024 */  sw      $zero, 0x0024($sp)
/* 00B08 808D7378 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00B0C 808D737C E7A00014 */  swc1    $f0, 0x0014($sp)
/* 00B10 808D7380 0C00C916 */  jal     Actor_SpawnAsChild

/* 00B14 808D7384 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00B18 808D7388 3C018090 */  lui     $at, %hi(D_808F93C0)       ## $at = 80900000
/* 00B1C 808D738C AC2293C0 */  sw      $v0, %lo(D_808F93C0)($at)
/* 00B20 808D7390 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B24 808D7394 8FA50044 */  lw      $a1, 0x0044($sp)
/* 00B28 808D7398 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00B2C 808D739C 0C00CDD2 */  jal     Actor_ChangeType

/* 00B30 808D73A0 24070009 */  addiu   $a3, $zero, 0x0009         ## $a3 = 00000009
/* 00B34 808D73A4 100000E0 */  beq     $zero, $zero, .L808D7728
/* 00B38 808D73A8 8FBF003C */  lw      $ra, 0x003C($sp)
.L808D73AC:
/* 00B3C 808D73AC 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
/* 00B40 808D73B0 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00B44 808D73B4 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00B48 808D73B8 01616024 */  and     $t4, $t3, $at
/* 00B4C 808D73BC 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00B50 808D73C0 44812000 */  mtc1    $at, $f4                   ## $f4 = 255.00
/* 00B54 808D73C4 284100C8 */  slti    $at, $v0, 0x00C8
/* 00B58 808D73C8 AE0C0004 */  sw      $t4, 0x0004($s0)           ## 00000004
/* 00B5C 808D73CC 1420008E */  bne     $at, $zero, .L808D7608
/* 00B60 808D73D0 E60401CC */  swc1    $f4, 0x01CC($s0)           ## 000001CC
/* 00B64 808D73D4 2401012C */  addiu   $at, $zero, 0x012C         ## $at = 0000012C
/* 00B68 808D73D8 14410009 */  bne     $v0, $at, .L808D7400
/* 00B6C 808D73DC 3C0D808E */  lui     $t5, %hi(func_808E1034)    ## $t5 = 808E0000
/* 00B70 808D73E0 3C0E808E */  lui     $t6, %hi(func_808E1B54)    ## $t6 = 808E0000
/* 00B74 808D73E4 25AD1034 */  addiu   $t5, $t5, %lo(func_808E1034) ## $t5 = 808E1034
/* 00B78 808D73E8 25CE1B54 */  addiu   $t6, $t6, %lo(func_808E1B54) ## $t6 = 808E1B54
/* 00B7C 808D73EC 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 00B80 808D73F0 AE0D0130 */  sw      $t5, 0x0130($s0)           ## 00000130
/* 00B84 808D73F4 AE0E0134 */  sw      $t6, 0x0134($s0)           ## 00000134
/* 00B88 808D73F8 100000CA */  beq     $zero, $zero, .L808D7724
/* 00B8C 808D73FC A60F01A8 */  sh      $t7, 0x01A8($s0)           ## 000001A8
.L808D7400:
/* 00B90 808D7400 24010190 */  addiu   $at, $zero, 0x0190         ## $at = 00000190
/* 00B94 808D7404 14410009 */  bne     $v0, $at, .L808D742C
/* 00B98 808D7408 3C18808E */  lui     $t8, %hi(func_808E1034)    ## $t8 = 808E0000
/* 00B9C 808D740C 3C19808E */  lui     $t9, %hi(func_808E1B54)    ## $t9 = 808E0000
/* 00BA0 808D7410 27181034 */  addiu   $t8, $t8, %lo(func_808E1034) ## $t8 = 808E1034
/* 00BA4 808D7414 27391B54 */  addiu   $t9, $t9, %lo(func_808E1B54) ## $t9 = 808E1B54
/* 00BA8 808D7418 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00BAC 808D741C AE180130 */  sw      $t8, 0x0130($s0)           ## 00000130
/* 00BB0 808D7420 AE190134 */  sw      $t9, 0x0134($s0)           ## 00000134
/* 00BB4 808D7424 100000BF */  beq     $zero, $zero, .L808D7724
/* 00BB8 808D7428 A60801A8 */  sh      $t0, 0x01A8($s0)           ## 000001A8
.L808D742C:
/* 00BBC 808D742C 28410104 */  slti    $at, $v0, 0x0104
/* 00BC0 808D7430 1420002C */  bne     $at, $zero, .L808D74E4
/* 00BC4 808D7434 3C09808E */  lui     $t1, %hi(func_808E2544)    ## $t1 = 808E0000
/* 00BC8 808D7438 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
/* 00BCC 808D743C 3C0A808E */  lui     $t2, %hi(func_808E324C)    ## $t2 = 808E0000
/* 00BD0 808D7440 25292544 */  addiu   $t1, $t1, %lo(func_808E2544) ## $t1 = 808E2544
/* 00BD4 808D7444 000C6823 */  subu    $t5, $zero, $t4
/* 00BD8 808D7448 000D7040 */  sll     $t6, $t5,  1
/* 00BDC 808D744C 254A324C */  addiu   $t2, $t2, %lo(func_808E324C) ## $t2 = 808E324C
/* 00BE0 808D7450 240B000A */  addiu   $t3, $zero, 0x000A         ## $t3 = 0000000A
/* 00BE4 808D7454 25CF0208 */  addiu   $t7, $t6, 0x0208           ## $t7 = 808E1D5C
/* 00BE8 808D7458 AE090130 */  sw      $t1, 0x0130($s0)           ## 00000130
/* 00BEC 808D745C AE0A0134 */  sw      $t2, 0x0134($s0)           ## 00000134
/* 00BF0 808D7460 A60B01C2 */  sh      $t3, 0x01C2($s0)           ## 000001C2
/* 00BF4 808D7464 A60F01A2 */  sh      $t7, 0x01A2($s0)           ## 000001A2
/* 00BF8 808D7468 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00BFC 808D746C 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00C00 808D7470 2403000C */  addiu   $v1, $zero, 0x000C         ## $v1 = 0000000C
.L808D7474:
/* 00C04 808D7474 00430019 */  multu   $v0, $v1
/* 00C08 808D7478 8C890000 */  lw      $t1, 0x0000($a0)           ## 00000024
/* 00C0C 808D747C 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 00C10 808D7480 00021400 */  sll     $v0, $v0, 16
/* 00C14 808D7484 00021403 */  sra     $v0, $v0, 16
/* 00C18 808D7488 2841000F */  slti    $at, $v0, 0x000F
/* 00C1C 808D748C 0000C012 */  mflo    $t8
/* 00C20 808D7490 0218C821 */  addu    $t9, $s0, $t8
/* 00C24 808D7494 AF2902EC */  sw      $t1, 0x02EC($t9)           ## 808E1E40
/* 00C28 808D7498 8C880004 */  lw      $t0, 0x0004($a0)           ## 00000028
/* 00C2C 808D749C AF2802F0 */  sw      $t0, 0x02F0($t9)           ## 808E1E44
/* 00C30 808D74A0 8C890008 */  lw      $t1, 0x0008($a0)           ## 0000002C
/* 00C34 808D74A4 1420FFF3 */  bne     $at, $zero, .L808D7474
/* 00C38 808D74A8 AF2902F4 */  sw      $t1, 0x02F4($t9)           ## 808E1E48
/* 00C3C 808D74AC 240A0003 */  addiu   $t2, $zero, 0x0003         ## $t2 = 00000003
/* 00C40 808D74B0 A60A01B8 */  sh      $t2, 0x01B8($s0)           ## 000001B8
/* 00C44 808D74B4 26050610 */  addiu   $a1, $s0, 0x0610           ## $a1 = 00000610
/* 00C48 808D74B8 AFA50044 */  sw      $a1, 0x0044($sp)
/* 00C4C 808D74BC 0C0170D9 */  jal     Collider_InitCylinder

/* 00C50 808D74C0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00C54 808D74C4 3C07808E */  lui     $a3, %hi(D_808E4C2C)       ## $a3 = 808E0000
/* 00C58 808D74C8 8FA50044 */  lw      $a1, 0x0044($sp)
/* 00C5C 808D74CC 24E74C2C */  addiu   $a3, $a3, %lo(D_808E4C2C)  ## $a3 = 808E4C2C
/* 00C60 808D74D0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00C64 808D74D4 0C01712B */  jal     Collider_SetCylinder

/* 00C68 808D74D8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00C6C 808D74DC 10000092 */  beq     $zero, $zero, .L808D7728
/* 00C70 808D74E0 8FBF003C */  lw      $ra, 0x003C($sp)
.L808D74E4:
/* 00C74 808D74E4 284100FA */  slti    $at, $v0, 0x00FA
/* 00C78 808D74E8 14200021 */  bne     $at, $zero, .L808D7570
/* 00C7C 808D74EC 3C09808E */  lui     $t1, %hi(func_808E1EB4)    ## $t1 = 808E0000
/* 00C80 808D74F0 3C0B808E */  lui     $t3, %hi(func_808E2544)    ## $t3 = 808E0000
/* 00C84 808D74F4 3C0C808E */  lui     $t4, %hi(func_808E324C)    ## $t4 = 808E0000
/* 00C88 808D74F8 256B2544 */  addiu   $t3, $t3, %lo(func_808E2544) ## $t3 = 808E2544
/* 00C8C 808D74FC 258C324C */  addiu   $t4, $t4, %lo(func_808E324C) ## $t4 = 808E324C
/* 00C90 808D7500 AE0B0130 */  sw      $t3, 0x0130($s0)           ## 00000130
/* 00C94 808D7504 AE0C0134 */  sw      $t4, 0x0134($s0)           ## 00000134
/* 00C98 808D7508 3C01808F */  lui     $at, %hi(D_808F7E5C)       ## $at = 808F0000
/* 00C9C 808D750C 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 00CA0 808D7510 C42C7E5C */  lwc1    $f12, %lo(D_808F7E5C)($at)
/* 00CA4 808D7514 4600018D */  trunc.w.s $f6, $f0
/* 00CA8 808D7518 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00CAC 808D751C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00CB0 808D7520 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00CB4 808D7524 440E3000 */  mfc1    $t6, $f6
/* 00CB8 808D7528 2403000C */  addiu   $v1, $zero, 0x000C         ## $v1 = 0000000C
/* 00CBC 808D752C A60E01A2 */  sh      $t6, 0x01A2($s0)           ## 000001A2
.L808D7530:
/* 00CC0 808D7530 00430019 */  multu   $v0, $v1
/* 00CC4 808D7534 8C880000 */  lw      $t0, 0x0000($a0)           ## 00000024
/* 00CC8 808D7538 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 00CCC 808D753C 00021400 */  sll     $v0, $v0, 16
/* 00CD0 808D7540 00021403 */  sra     $v0, $v0, 16
/* 00CD4 808D7544 2841000F */  slti    $at, $v0, 0x000F
/* 00CD8 808D7548 00007812 */  mflo    $t7
/* 00CDC 808D754C 020FC021 */  addu    $t8, $s0, $t7
/* 00CE0 808D7550 AF0802EC */  sw      $t0, 0x02EC($t8)           ## 000002EC
/* 00CE4 808D7554 8C990004 */  lw      $t9, 0x0004($a0)           ## 00000028
/* 00CE8 808D7558 AF1902F0 */  sw      $t9, 0x02F0($t8)           ## 000002F0
/* 00CEC 808D755C 8C880008 */  lw      $t0, 0x0008($a0)           ## 0000002C
/* 00CF0 808D7560 1420FFF3 */  bne     $at, $zero, .L808D7530
/* 00CF4 808D7564 AF0802F4 */  sw      $t0, 0x02F4($t8)           ## 000002F4
/* 00CF8 808D7568 1000006E */  beq     $zero, $zero, .L808D7724
/* 00CFC 808D756C E60201CC */  swc1    $f2, 0x01CC($s0)           ## 000001CC
.L808D7570:
/* 00D00 808D7570 3C014130 */  lui     $at, 0x4130                ## $at = 41300000
/* 00D04 808D7574 44814000 */  mtc1    $at, $f8                   ## $f8 = 11.00
/* 00D08 808D7578 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 00D0C 808D757C 3C0A808E */  lui     $t2, %hi(func_808E229C)    ## $t2 = 808E0000
/* 00D10 808D7580 25291EB4 */  addiu   $t1, $t1, %lo(func_808E1EB4) ## $t1 = 00001EB4
/* 00D14 808D7584 254A229C */  addiu   $t2, $t2, %lo(func_808E229C) ## $t2 = 808E229C
/* 00D18 808D7588 240100C8 */  addiu   $at, $zero, 0x00C8         ## $at = 000000C8
/* 00D1C 808D758C AE090130 */  sw      $t1, 0x0130($s0)           ## 00000130
/* 00D20 808D7590 AE0A0134 */  sw      $t2, 0x0134($s0)           ## 00000134
/* 00D24 808D7594 15610004 */  bne     $t3, $at, .L808D75A8
/* 00D28 808D7598 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 00D2C 808D759C 240C0007 */  addiu   $t4, $zero, 0x0007         ## $t4 = 00000007
/* 00D30 808D75A0 1000000A */  beq     $zero, $zero, .L808D75CC
/* 00D34 808D75A4 A60C01B6 */  sh      $t4, 0x01B6($s0)           ## 000001B6
.L808D75A8:
/* 00D38 808D75A8 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00D3C 808D75AC 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 00D40 808D75B0 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 00D44 808D75B4 00000000 */  nop
/* 00D48 808D75B8 4600028D */  trunc.w.s $f10, $f0
/* 00D4C 808D75BC 44185000 */  mfc1    $t8, $f10
/* 00D50 808D75C0 00000000 */  nop
/* 00D54 808D75C4 27190003 */  addiu   $t9, $t8, 0x0003           ## $t9 = 00000003
/* 00D58 808D75C8 A61901B6 */  sh      $t9, 0x01B6($s0)           ## 000001B6
.L808D75CC:
/* 00D5C 808D75CC 3C01808F */  lui     $at, %hi(D_808F7E60)       ## $at = 808F0000
/* 00D60 808D75D0 C42C7E60 */  lwc1    $f12, %lo(D_808F7E60)($at)
/* 00D64 808D75D4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00D68 808D75D8 2403000C */  addiu   $v1, $zero, 0x000C         ## $v1 = 0000000C
.L808D75DC:
/* 00D6C 808D75DC 00430019 */  multu   $v0, $v1
/* 00D70 808D75E0 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 00D74 808D75E4 00021400 */  sll     $v0, $v0, 16
/* 00D78 808D75E8 00021403 */  sra     $v0, $v0, 16
/* 00D7C 808D75EC 2841000F */  slti    $at, $v0, 0x000F
/* 00D80 808D75F0 00004012 */  mflo    $t0
/* 00D84 808D75F4 02084821 */  addu    $t1, $s0, $t0
/* 00D88 808D75F8 1420FFF8 */  bne     $at, $zero, .L808D75DC
/* 00D8C 808D75FC E52C02F0 */  swc1    $f12, 0x02F0($t1)          ## 000002F0
/* 00D90 808D7600 10000049 */  beq     $zero, $zero, .L808D7728
/* 00D94 808D7604 8FBF003C */  lw      $ra, 0x003C($sp)
.L808D7608:
/* 00D98 808D7608 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00D9C 808D760C 44819000 */  mtc1    $at, $f18                  ## $f18 = 12.00
/* 00DA0 808D7610 3C0A808E */  lui     $t2, %hi(func_808E1034)    ## $t2 = 808E0000
/* 00DA4 808D7614 3C0B808E */  lui     $t3, %hi(func_808E1B54)    ## $t3 = 808E0000
/* 00DA8 808D7618 254A1034 */  addiu   $t2, $t2, %lo(func_808E1034) ## $t2 = 808E1034
/* 00DAC 808D761C 256B1B54 */  addiu   $t3, $t3, %lo(func_808E1B54) ## $t3 = 808E1B54
/* 00DB0 808D7620 AE0A0130 */  sw      $t2, 0x0130($s0)           ## 00000130
/* 00DB4 808D7624 AE0B0134 */  sw      $t3, 0x0134($s0)           ## 00000134
/* 00DB8 808D7628 E6120068 */  swc1    $f18, 0x0068($s0)          ## 00000068
/* 00DBC 808D762C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00DC0 808D7630 C4640024 */  lwc1    $f4, 0x0024($v1)           ## 00000030
/* 00DC4 808D7634 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00DC8 808D7638 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 00DCC 808D763C C4680028 */  lwc1    $f8, 0x0028($v1)           ## 00000034
/* 00DD0 808D7640 46062381 */  sub.s   $f14, $f4, $f6
/* 00DD4 808D7644 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00DD8 808D7648 460A4480 */  add.s   $f18, $f8, $f10
/* 00DDC 808D764C 46049181 */  sub.s   $f6, $f18, $f4
/* 00DE0 808D7650 E7A60058 */  swc1    $f6, 0x0058($sp)
/* 00DE4 808D7654 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00DE8 808D7658 C468002C */  lwc1    $f8, 0x002C($v1)           ## 00000038
/* 00DEC 808D765C E7AE005C */  swc1    $f14, 0x005C($sp)
/* 00DF0 808D7660 460A4301 */  sub.s   $f12, $f8, $f10
/* 00DF4 808D7664 0C034199 */  jal     atan2s

/* 00DF8 808D7668 E7AC0054 */  swc1    $f12, 0x0054($sp)
/* 00DFC 808D766C C7A2005C */  lwc1    $f2, 0x005C($sp)
/* 00E00 808D7670 C7B00054 */  lwc1    $f16, 0x0054($sp)
/* 00E04 808D7674 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 00E08 808D7678 46021482 */  mul.s   $f18, $f2, $f2
/* 00E0C 808D767C C7AE0058 */  lwc1    $f14, 0x0058($sp)
/* 00E10 808D7680 46108102 */  mul.s   $f4, $f16, $f16
/* 00E14 808D7684 46049000 */  add.s   $f0, $f18, $f4
/* 00E18 808D7688 0C034199 */  jal     atan2s

/* 00E1C 808D768C 46000304 */  sqrt.s  $f12, $f0
/* 00E20 808D7690 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00E24 808D7694 A6020030 */  sh      $v0, 0x0030($s0)           ## 00000030
/* 00E28 808D7698 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00E2C 808D769C 3C01808F */  lui     $at, %hi(D_808F7E64)       ## $at = 808F0000
/* 00E30 808D76A0 4602003C */  c.lt.s  $f0, $f2
/* 00E34 808D76A4 00000000 */  nop
/* 00E38 808D76A8 45020013 */  bc1fl   .L808D76F8
/* 00E3C 808D76AC 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 00E40 808D76B0 0C00CFC8 */  jal     Math_Rand_CenteredFloat

/* 00E44 808D76B4 C42C7E64 */  lwc1    $f12, %lo(D_808F7E64)($at)
/* 00E48 808D76B8 4600018D */  trunc.w.s $f6, $f0
/* 00E4C 808D76BC 860C0032 */  lh      $t4, 0x0032($s0)           ## 00000032
/* 00E50 808D76C0 3C01808F */  lui     $at, %hi(D_808F7E68)       ## $at = 808F0000
/* 00E54 808D76C4 C42C7E68 */  lwc1    $f12, %lo(D_808F7E68)($at)
/* 00E58 808D76C8 44183000 */  mfc1    $t8, $f6
/* 00E5C 808D76CC 00000000 */  nop
/* 00E60 808D76D0 0198C821 */  addu    $t9, $t4, $t8
/* 00E64 808D76D4 0C00CFC8 */  jal     Math_Rand_CenteredFloat

/* 00E68 808D76D8 A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
/* 00E6C 808D76DC 4600020D */  trunc.w.s $f8, $f0
/* 00E70 808D76E0 86080030 */  lh      $t0, 0x0030($s0)           ## 00000030
/* 00E74 808D76E4 440D4000 */  mfc1    $t5, $f8
/* 00E78 808D76E8 00000000 */  nop
/* 00E7C 808D76EC 010D7021 */  addu    $t6, $t0, $t5
/* 00E80 808D76F0 A60E0030 */  sh      $t6, 0x0030($s0)           ## 00000030
/* 00E84 808D76F4 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
.L808D76F8:
/* 00E88 808D76F8 A60F01B8 */  sh      $t7, 0x01B8($s0)           ## 000001B8
/* 00E8C 808D76FC 26050610 */  addiu   $a1, $s0, 0x0610           ## $a1 = 00000610
/* 00E90 808D7700 AFA50044 */  sw      $a1, 0x0044($sp)
/* 00E94 808D7704 0C0170D9 */  jal     Collider_InitCylinder

/* 00E98 808D7708 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E9C 808D770C 3C07808E */  lui     $a3, %hi(D_808E4C2C)       ## $a3 = 808E0000
/* 00EA0 808D7710 8FA50044 */  lw      $a1, 0x0044($sp)
/* 00EA4 808D7714 24E74C2C */  addiu   $a3, $a3, %lo(D_808E4C2C)  ## $a3 = 808E4C2C
/* 00EA8 808D7718 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00EAC 808D771C 0C01712B */  jal     Collider_SetCylinder

/* 00EB0 808D7720 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
.L808D7724:
/* 00EB4 808D7724 8FBF003C */  lw      $ra, 0x003C($sp)
.L808D7728:
/* 00EB8 808D7728 8FB00034 */  lw      $s0, 0x0034($sp)
/* 00EBC 808D772C 8FB10038 */  lw      $s1, 0x0038($sp)
/* 00EC0 808D7730 03E00008 */  jr      $ra
/* 00EC4 808D7734 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
