.rdata
glabel D_80A9A780
    .asciz "\x1b[44m  アングルＺ->(%d)\n\x1b[m"
    .balign 4

.text
glabel func_80A99048
/* 02298 80A99048 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 0229C 80A9904C AFBF003C */  sw      $ra, 0x003C($sp)
/* 022A0 80A99050 AFB10038 */  sw      $s1, 0x0038($sp)
/* 022A4 80A99054 AFB00034 */  sw      $s0, 0x0034($sp)
/* 022A8 80A99058 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 022AC 80A9905C 0C2A5BE5 */  jal     func_80A96F94
/* 022B0 80A99060 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 022B4 80A99064 104000C2 */  beq     $v0, $zero, .L80A99370
/* 022B8 80A99068 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022BC 80A9906C 0C2A5BB1 */  jal     func_80A96EC4
/* 022C0 80A99070 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 022C4 80A99074 104000BE */  beq     $v0, $zero, .L80A99370
/* 022C8 80A99078 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 022CC 80A9907C 82180196 */  lb      $t8, 0x0196($s0)           ## 00000196
/* 022D0 80A99080 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 022D4 80A99084 3C0A0001 */  lui     $t2, 0x0001                ## $t2 = 00010000
/* 022D8 80A99088 A218001E */  sb      $t8, 0x001E($s0)           ## 0000001E
/* 022DC 80A9908C 8219001E */  lb      $t9, 0x001E($s0)           ## 0000001E
/* 022E0 80A99090 01C17824 */  and     $t7, $t6, $at
/* 022E4 80A99094 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 022E8 80A99098 00194100 */  sll     $t0, $t9,  4
/* 022EC 80A9909C 01194021 */  addu    $t0, $t0, $t9
/* 022F0 80A990A0 00084080 */  sll     $t0, $t0,  2
/* 022F4 80A990A4 02284821 */  addu    $t1, $s1, $t0
/* 022F8 80A990A8 01495021 */  addu    $t2, $t2, $t1
/* 022FC 80A990AC 8D4A17B4 */  lw      $t2, 0x17B4($t2)           ## 000117B4
/* 02300 80A990B0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02304 80A990B4 3C0F80AA */  lui     $t7, %hi(D_80A9A506)       ## $t7 = 80AA0000
/* 02308 80A990B8 01415821 */  addu    $t3, $t2, $at
/* 0230C 80A990BC 3C018016 */  lui     $at, %hi(gSegments+0x18)
/* 02310 80A990C0 AC2B6FC0 */  sw      $t3, %lo(gSegments+0x18)($at)
/* 02314 80A990C4 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
/* 02318 80A990C8 3C0680AA */  lui     $a2, %hi(D_80A9A180)       ## $a2 = 80AA0000
/* 0231C 80A990CC 24090010 */  addiu   $t1, $zero, 0x0010         ## $t1 = 00000010
/* 02320 80A990D0 318D00FF */  andi    $t5, $t4, 0x00FF           ## $t5 = 00000000
/* 02324 80A990D4 000D7080 */  sll     $t6, $t5,  2
/* 02328 80A990D8 01CD7023 */  subu    $t6, $t6, $t5
/* 0232C 80A990DC 000E7080 */  sll     $t6, $t6,  2
/* 02330 80A990E0 01CD7023 */  subu    $t6, $t6, $t5
/* 02334 80A990E4 01EE7821 */  addu    $t7, $t7, $t6
/* 02338 80A990E8 91EFA506 */  lbu     $t7, %lo(D_80A9A506)($t7)
/* 0233C 80A990EC 26080284 */  addiu   $t0, $s0, 0x0284           ## $t0 = 00000284
/* 02340 80A990F0 26190224 */  addiu   $t9, $s0, 0x0224           ## $t9 = 00000224
/* 02344 80A990F4 000FC0C0 */  sll     $t8, $t7,  3
/* 02348 80A990F8 00D83021 */  addu    $a2, $a2, $t8
/* 0234C 80A990FC 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 02350 80A99100 AFA50044 */  sw      $a1, 0x0044($sp)
/* 02354 80A99104 8CC6A180 */  lw      $a2, %lo(D_80A9A180)($a2)
/* 02358 80A99108 AFB90010 */  sw      $t9, 0x0010($sp)
/* 0235C 80A9910C AFA80014 */  sw      $t0, 0x0014($sp)
/* 02360 80A99110 AFA90018 */  sw      $t1, 0x0018($sp)
/* 02364 80A99114 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02368 80A99118 0C0291BE */  jal     SkelAnime_InitSV
/* 0236C 80A9911C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02370 80A99120 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 02374 80A99124 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 02378 80A99128 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0237C 80A9912C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 02380 80A99130 0C00AC78 */  jal     ActorShape_Init

/* 02384 80A99134 3C074190 */  lui     $a3, 0x4190                ## $a3 = 41900000
/* 02388 80A99138 820A0197 */  lb      $t2, 0x0197($s0)           ## 00000197
/* 0238C 80A9913C 3C0D0001 */  lui     $t5, 0x0001                ## $t5 = 00010000
/* 02390 80A99140 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02394 80A99144 000A5900 */  sll     $t3, $t2,  4
/* 02398 80A99148 016A5821 */  addu    $t3, $t3, $t2
/* 0239C 80A9914C 000B5880 */  sll     $t3, $t3,  2
/* 023A0 80A99150 022B6021 */  addu    $t4, $s1, $t3
/* 023A4 80A99154 01AC6821 */  addu    $t5, $t5, $t4
/* 023A8 80A99158 8DAD17B4 */  lw      $t5, 0x17B4($t5)           ## 000117B4
/* 023AC 80A9915C 26050198 */  addiu   $a1, $s0, 0x0198           ## $a1 = 00000198
/* 023B0 80A99160 AFA50040 */  sw      $a1, 0x0040($sp)
/* 023B4 80A99164 01A17021 */  addu    $t6, $t5, $at
/* 023B8 80A99168 3C018016 */  lui     $at, %hi(gSegments+0x18)
/* 023BC 80A9916C AC2E6FC0 */  sw      $t6, %lo(gSegments+0x18)($at)
/* 023C0 80A99170 0C0170D9 */  jal     Collider_InitCylinder

/* 023C4 80A99174 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 023C8 80A99178 3C0780AA */  lui     $a3, %hi(D_80A9A100)       ## $a3 = 80AA0000
/* 023CC 80A9917C 8FA50040 */  lw      $a1, 0x0040($sp)
/* 023D0 80A99180 24E7A100 */  addiu   $a3, $a3, %lo(D_80A9A100)  ## $a3 = 80A9A100
/* 023D4 80A99184 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 023D8 80A99188 0C01712B */  jal     Collider_SetCylinder

/* 023DC 80A9918C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 023E0 80A99190 3C0680AA */  lui     $a2, %hi(D_80A9A12C)       ## $a2 = 80AA0000
/* 023E4 80A99194 24C6A12C */  addiu   $a2, $a2, %lo(D_80A9A12C)  ## $a2 = 80A9A12C
/* 023E8 80A99198 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 023EC 80A9919C 0C0187BF */  jal     CollisionCheck_SetInfo2DamageTable
/* 023F0 80A991A0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 023F4 80A991A4 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 023F8 80A991A8 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 023FC 80A991AC 3C0480AA */  lui     $a0, %hi(D_80A9A780)       ## $a0 = 80AA0000
/* 02400 80A991B0 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000000
/* 02404 80A991B4 1701001D */  bne     $t8, $at, .L80A9922C
/* 02408 80A991B8 2484A780 */  addiu   $a0, $a0, %lo(D_80A9A780)  ## $a0 = 80A9A780
/* 0240C 80A991BC 0C00084C */  jal     osSyncPrintf

/* 02410 80A991C0 860500B8 */  lh      $a1, 0x00B8($s0)           ## 000000B8
/* 02414 80A991C4 3C198016 */  lui     $t9, %hi(gSaveContext+4)
/* 02418 80A991C8 8F39E664 */  lw      $t9, %lo(gSaveContext+4)($t9)
/* 0241C 80A991CC 3C088012 */  lui     $t0, %hi(gBitFlags)
/* 02420 80A991D0 3C098016 */  lui     $t1, %hi(gSaveContext+0xa4)
/* 02424 80A991D4 5720000F */  bnel    $t9, $zero, .L80A99214
/* 02428 80A991D8 860C00B8 */  lh      $t4, 0x00B8($s0)           ## 000000B8
/* 0242C 80A991DC 8D087120 */  lw      $t0, %lo(gBitFlags)($t0)
/* 02430 80A991E0 8D29E704 */  lw      $t1, %lo(gSaveContext+0xa4)($t1)
/* 02434 80A991E4 01095024 */  and     $t2, $t0, $t1
/* 02438 80A991E8 5540000A */  bnel    $t2, $zero, .L80A99214
/* 0243C 80A991EC 860C00B8 */  lh      $t4, 0x00B8($s0)           ## 000000B8
/* 02440 80A991F0 860B00B8 */  lh      $t3, 0x00B8($s0)           ## 000000B8
/* 02444 80A991F4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02448 80A991F8 5161000D */  beql    $t3, $at, .L80A99230
/* 0244C 80A991FC 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 02450 80A99200 0C00B55C */  jal     Actor_Kill

/* 02454 80A99204 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02458 80A99208 1000005A */  beq     $zero, $zero, .L80A99374
/* 0245C 80A9920C 8FBF003C */  lw      $ra, 0x003C($sp)
/* 02460 80A99210 860C00B8 */  lh      $t4, 0x00B8($s0)           ## 000000B8
.L80A99214:
/* 02464 80A99214 51800006 */  beql    $t4, $zero, .L80A99230
/* 02468 80A99218 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 0246C 80A9921C 0C00B55C */  jal     Actor_Kill

/* 02470 80A99220 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02474 80A99224 10000053 */  beq     $zero, $zero, .L80A99374
/* 02478 80A99228 8FBF003C */  lw      $ra, 0x003C($sp)
.L80A9922C:
/* 0247C 80A9922C 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
.L80A99230:
/* 02480 80A99230 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 02484 80A99234 31AE00FF */  andi    $t6, $t5, 0x00FF           ## $t6 = 00000000
/* 02488 80A99238 15C10004 */  bne     $t6, $at, .L80A9924C
/* 0248C 80A9923C 00000000 */  nop
/* 02490 80A99240 920F01AA */  lbu     $t7, 0x01AA($s0)           ## 000001AA
/* 02494 80A99244 35F80040 */  ori     $t8, $t7, 0x0040           ## $t8 = 00000040
/* 02498 80A99248 A21801AA */  sb      $t8, 0x01AA($s0)           ## 000001AA
.L80A9924C:
/* 0249C 80A9924C 0C2A634B */  jal     func_80A98D2C
/* 024A0 80A99250 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 024A4 80A99254 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 024A8 80A99258 A6020212 */  sh      $v0, 0x0212($s0)           ## 00000212
/* 024AC 80A9925C 860A0212 */  lh      $t2, 0x0212($s0)           ## 00000212
/* 024B0 80A99260 332800FF */  andi    $t0, $t9, 0x00FF           ## $t0 = 00000000
/* 024B4 80A99264 00084880 */  sll     $t1, $t0,  2
/* 024B8 80A99268 01284821 */  addu    $t1, $t1, $t0
/* 024BC 80A9926C 3C0680AA */  lui     $a2, %hi(D_80A9A4BC)       ## $a2 = 80AA0000
/* 024C0 80A99270 012A5821 */  addu    $t3, $t1, $t2
/* 024C4 80A99274 00CB3021 */  addu    $a2, $a2, $t3
/* 024C8 80A99278 3C0580AA */  lui     $a1, %hi(D_80A9A18C)       ## $a1 = 80AA0000
/* 024CC 80A9927C 24A5A18C */  addiu   $a1, $a1, %lo(D_80A9A18C)  ## $a1 = 80A9A18C
/* 024D0 80A99280 90C6A4BC */  lbu     $a2, %lo(D_80A9A4BC)($a2)
/* 024D4 80A99284 0C00D3B0 */  jal     func_80034EC0
/* 024D8 80A99288 8FA40044 */  lw      $a0, 0x0044($sp)
/* 024DC 80A9928C 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 024E0 80A99290 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 024E4 80A99294 0C00B58B */  jal     Actor_SetScale

/* 024E8 80A99298 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 024EC 80A9929C 0C2A6336 */  jal     func_80A98CD8
/* 024F0 80A992A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 024F4 80A992A4 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 024F8 80A992A8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 024FC 80A992AC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02500 80A992B0 30A5FF00 */  andi    $a1, $a1, 0xFF00           ## $a1 = 00000000
/* 02504 80A992B4 00052A03 */  sra     $a1, $a1,  8
/* 02508 80A992B8 00052C00 */  sll     $a1, $a1, 16
/* 0250C 80A992BC 00052C03 */  sra     $a1, $a1, 16
/* 02510 80A992C0 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 02514 80A992C4 0C023938 */  jal     Path_GetByIndex
/* 02518 80A992C8 E6040220 */  swc1    $f4, 0x0220($s0)           ## 00000220
/* 0251C 80A992CC C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 02520 80A992D0 AE0201E4 */  sw      $v0, 0x01E4($s0)           ## 000001E4
/* 02524 80A992D4 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 02528 80A992D8 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 0252C 80A992DC C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 02530 80A992E0 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 02534 80A992E4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02538 80A992E8 E7A80014 */  swc1    $f8, 0x0014($sp)
/* 0253C 80A992EC C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 02540 80A992F0 AFAC0028 */  sw      $t4, 0x0028($sp)
/* 02544 80A992F4 AFA00024 */  sw      $zero, 0x0024($sp)
/* 02548 80A992F8 AFA00020 */  sw      $zero, 0x0020($sp)
/* 0254C 80A992FC AFA0001C */  sw      $zero, 0x001C($sp)
/* 02550 80A99300 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 02554 80A99304 24070018 */  addiu   $a3, $zero, 0x0018         ## $a3 = 00000018
/* 02558 80A99308 0C00C916 */  jal     Actor_SpawnAsChild

/* 0255C 80A9930C E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 02560 80A99310 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 02564 80A99314 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 02568 80A99318 3C0F8012 */  lui     $t7, %hi(gBitFlags+0x48)
/* 0256C 80A9931C 31AE00FF */  andi    $t6, $t5, 0x00FF           ## $t6 = 00000000
/* 02570 80A99320 15C10010 */  bne     $t6, $at, .L80A99364
/* 02574 80A99324 3C188016 */  lui     $t8, %hi(gSaveContext+0xa4)
/* 02578 80A99328 8DEF7168 */  lw      $t7, %lo(gBitFlags+0x48)($t7)
/* 0257C 80A9932C 8F18E704 */  lw      $t8, %lo(gSaveContext+0xa4)($t8)
/* 02580 80A99330 3C0A80AA */  lui     $t2, %hi(func_80A995CC)    ## $t2 = 80AA0000
/* 02584 80A99334 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 02588 80A99338 01F8C824 */  and     $t9, $t7, $t8
/* 0258C 80A9933C 17200007 */  bne     $t9, $zero, .L80A9935C
/* 02590 80A99340 00000000 */  nop
/* 02594 80A99344 860801DA */  lh      $t0, 0x01DA($s0)           ## 000001DA
/* 02598 80A99348 254A95CC */  addiu   $t2, $t2, %lo(func_80A995CC) ## $t2 = 80A995CC
/* 0259C 80A9934C AE0A0190 */  sw      $t2, 0x0190($s0)           ## 00000190
/* 025A0 80A99350 250900C8 */  addiu   $t1, $t0, 0x00C8           ## $t1 = 000000C8
/* 025A4 80A99354 10000006 */  beq     $zero, $zero, .L80A99370
/* 025A8 80A99358 A60901DA */  sh      $t1, 0x01DA($s0)           ## 000001DA
.L80A9935C:
/* 025AC 80A9935C 0C023983 */  jal     Path_CopyLastPoint
/* 025B0 80A99360 8E0401E4 */  lw      $a0, 0x01E4($s0)           ## 000001E4
.L80A99364:
/* 025B4 80A99364 3C0B80AA */  lui     $t3, %hi(func_80A99384)    ## $t3 = 80AA0000
/* 025B8 80A99368 256B9384 */  addiu   $t3, $t3, %lo(func_80A99384) ## $t3 = 80A99384
/* 025BC 80A9936C AE0B0190 */  sw      $t3, 0x0190($s0)           ## 00000190
.L80A99370:
/* 025C0 80A99370 8FBF003C */  lw      $ra, 0x003C($sp)
.L80A99374:
/* 025C4 80A99374 8FB00034 */  lw      $s0, 0x0034($sp)
/* 025C8 80A99378 8FB10038 */  lw      $s1, 0x0038($sp)
/* 025CC 80A9937C 03E00008 */  jr      $ra
/* 025D0 80A99380 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
