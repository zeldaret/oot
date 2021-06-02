glabel func_808DD20C
/* 0699C 808DD20C 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 069A0 808DD210 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 069A4 808DD214 AFB50038 */  sw      $s5, 0x0038($sp)           
/* 069A8 808DD218 AFB40034 */  sw      $s4, 0x0034($sp)           
/* 069AC 808DD21C AFB30030 */  sw      $s3, 0x0030($sp)           
/* 069B0 808DD220 AFB2002C */  sw      $s2, 0x002C($sp)           
/* 069B4 808DD224 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 069B8 808DD228 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 069BC 808DD22C F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 069C0 808DD230 AFA5006C */  sw      $a1, 0x006C($sp)           
/* 069C4 808DD234 90830621 */  lbu     $v1, 0x0621($a0)           ## 00000621
/* 069C8 808DD238 0080A825 */  or      $s5, $a0, $zero            ## $s5 = 00000000
/* 069CC 808DD23C 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 069D0 808DD240 306E0002 */  andi    $t6, $v1, 0x0002           ## $t6 = 00000000
/* 069D4 808DD244 11C000D8 */  beq     $t6, $zero, .L808DD5A8     
/* 069D8 808DD248 3078FFFD */  andi    $t8, $v1, 0xFFFD           ## $t8 = 00000000
/* 069DC 808DD24C 8C820194 */  lw      $v0, 0x0194($a0)           ## 00000194
/* 069E0 808DD250 3C19808E */  lui     $t9, %hi(func_808DC75C)    ## $t9 = 808E0000
/* 069E4 808DD254 2739C75C */  addiu   $t9, $t9, %lo(func_808DC75C) ## $t9 = 808DC75C
/* 069E8 808DD258 A48F02D4 */  sh      $t7, 0x02D4($a0)           ## 000002D4
/* 069EC 808DD25C A0980621 */  sb      $t8, 0x0621($a0)           ## 00000621
/* 069F0 808DD260 13220005 */  beq     $t9, $v0, .L808DD278       
/* 069F4 808DD264 8C93064C */  lw      $s3, 0x064C($a0)           ## 0000064C
/* 069F8 808DD268 3C08808E */  lui     $t0, %hi(func_808DB2E8)    ## $t0 = 808E0000
/* 069FC 808DD26C 2508B2E8 */  addiu   $t0, $t0, %lo(func_808DB2E8) ## $t0 = 808DB2E8
/* 06A00 808DD270 1502000F */  bne     $t0, $v0, .L808DD2B0       
/* 06A04 808DD274 3C0C808E */  lui     $t4, %hi(func_808DCB7C)    ## $t4 = 808E0000
.L808DD278:
/* 06A08 808DD278 8E690000 */  lw      $t1, 0x0000($s3)           ## 00000000
/* 06A0C 808DD27C 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 06A10 808DD280 312A2000 */  andi    $t2, $t1, 0x2000           ## $t2 = 00000000
/* 06A14 808DD284 514000C9 */  beql    $t2, $zero, .L808DD5AC     
/* 06A18 808DD288 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 06A1C 808DD28C 0C23726D */  jal     func_808DC9B4              
/* 06A20 808DD290 8FA5006C */  lw      $a1, 0x006C($sp)           
/* 06A24 808DD294 A6A001BA */  sh      $zero, 0x01BA($s5)         ## 000001BA
/* 06A28 808DD298 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 06A2C 808DD29C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 06A30 808DD2A0 240539CC */  addiu   $a1, $zero, 0x39CC         ## $a1 = 000039CC
/* 06A34 808DD2A4 240B000F */  addiu   $t3, $zero, 0x000F         ## $t3 = 0000000F
/* 06A38 808DD2A8 100000BF */  beq     $zero, $zero, .L808DD5A8   
/* 06A3C 808DD2AC A6AB01A6 */  sh      $t3, 0x01A6($s5)           ## 000001A6
.L808DD2B0:
/* 06A40 808DD2B0 258CCB7C */  addiu   $t4, $t4, %lo(func_808DCB7C) ## $t4 = FFFFCB7C
/* 06A44 808DD2B4 5582008B */  bnel    $t4, $v0, .L808DD4E4       
/* 06A48 808DD2B8 8E6D0000 */  lw      $t5, 0x0000($s3)           ## 00000000
/* 06A4C 808DD2BC 86AD01C2 */  lh      $t5, 0x01C2($s5)           ## 000001C2
/* 06A50 808DD2C0 29A10003 */  slti    $at, $t5, 0x0003           
/* 06A54 808DD2C4 54200087 */  bnel    $at, $zero, .L808DD4E4     
/* 06A58 808DD2C8 8E6D0000 */  lw      $t5, 0x0000($s3)           ## 00000000
/* 06A5C 808DD2CC 8E6E0000 */  lw      $t6, 0x0000($s3)           ## 00000000
/* 06A60 808DD2D0 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 06A64 808DD2D4 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 06A68 808DD2D8 31CF0080 */  andi    $t7, $t6, 0x0080           ## $t7 = 00000000
/* 06A6C 808DD2DC 15E000B2 */  bne     $t7, $zero, .L808DD5A8     
/* 06A70 808DD2E0 26B001FC */  addiu   $s0, $s5, 0x01FC           ## $s0 = 000001FC
/* 06A74 808DD2E4 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 06A78 808DD2E8 4481A000 */  mtc1    $at, $f20                  ## $f20 = 20.00
/* 06A7C 808DD2EC 27B10050 */  addiu   $s1, $sp, 0x0050           ## $s1 = FFFFFFE8
.L808DD2F0:
/* 06A80 808DD2F0 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 06A84 808DD2F4 4600A306 */  mov.s   $f12, $f20                 
/* 06A88 808DD2F8 E7A00050 */  swc1    $f0, 0x0050($sp)           
/* 06A8C 808DD2FC 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 06A90 808DD300 4600A306 */  mov.s   $f12, $f20                 
/* 06A94 808DD304 E7A00054 */  swc1    $f0, 0x0054($sp)           
/* 06A98 808DD308 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 06A9C 808DD30C 4600A306 */  mov.s   $f12, $f20                 
/* 06AA0 808DD310 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 06AA4 808DD314 44816000 */  mtc1    $at, $f12                  ## $f12 = 200.00
/* 06AA8 808DD318 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 06AAC 808DD31C E7A00058 */  swc1    $f0, 0x0058($sp)           
/* 06AB0 808DD320 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 06AB4 808DD324 44812000 */  mtc1    $at, $f4                   ## $f4 = 500.00
/* 06AB8 808DD328 3C07808E */  lui     $a3, %hi(D_808E4C6C)       ## $a3 = 808E0000
/* 06ABC 808DD32C 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 06AC0 808DD330 46040180 */  add.s   $f6, $f0, $f4              
/* 06AC4 808DD334 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 06AC8 808DD338 24E74C6C */  addiu   $a3, $a3, %lo(D_808E4C6C)  ## $a3 = 808E4C6C
/* 06ACC 808DD33C 8FA4006C */  lw      $a0, 0x006C($sp)           
/* 06AD0 808DD340 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 06AD4 808DD344 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000001FC
/* 06AD8 808DD348 0C235A6C */  jal     func_808D69B0              
/* 06ADC 808DD34C 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFE8
/* 06AE0 808DD350 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 06AE4 808DD354 00129400 */  sll     $s2, $s2, 16               
/* 06AE8 808DD358 00129403 */  sra     $s2, $s2, 16               
/* 06AEC 808DD35C 2A41001E */  slti    $at, $s2, 0x001E           
/* 06AF0 808DD360 1420FFE3 */  bne     $at, $zero, .L808DD2F0     
/* 06AF4 808DD364 00000000 */  nop
/* 06AF8 808DD368 0C018D74 */  jal     CollisionCheck_GetSwordDamage              
/* 06AFC 808DD36C 8E640000 */  lw      $a0, 0x0000($s3)           ## 00000000
/* 06B00 808DD370 14400003 */  bne     $v0, $zero, .L808DD380     
/* 06B04 808DD374 304300FF */  andi    $v1, $v0, 0x00FF           ## $v1 = 00000000
/* 06B08 808DD378 10000002 */  beq     $zero, $zero, .L808DD384   
/* 06B0C 808DD37C 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
.L808DD380:
/* 06B10 808DD380 24140001 */  addiu   $s4, $zero, 0x0001         ## $s4 = 00000001
.L808DD384:
/* 06B14 808DD384 92A200AF */  lbu     $v0, 0x00AF($s5)           ## 000000AF
/* 06B18 808DD388 3C138090 */  lui     $s3, %hi(D_808F93C0)       ## $s3 = 80900000
/* 06B1C 808DD38C 267393C0 */  addiu   $s3, $s3, %lo(D_808F93C0)  ## $s3 = 808F93C0
/* 06B20 808DD390 0002CE00 */  sll     $t9, $v0, 24               
/* 06B24 808DD394 00194603 */  sra     $t0, $t9, 24               
/* 06B28 808DD398 29010003 */  slti    $at, $t0, 0x0003           
/* 06B2C 808DD39C 10200002 */  beq     $at, $zero, .L808DD3A8     
/* 06B30 808DD3A0 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 06B34 808DD3A4 12800002 */  beq     $s4, $zero, .L808DD3B0     
.L808DD3A8:
/* 06B38 808DD3A8 00434823 */  subu    $t1, $v0, $v1              
/* 06B3C 808DD3AC A2A900AF */  sb      $t1, 0x00AF($s5)           ## 000000AF
.L808DD3B0:
/* 06B40 808DD3B0 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 06B44 808DD3B4 4481A000 */  mtc1    $at, $f20                  ## $f20 = 15.00
/* 06B48 808DD3B8 2414000C */  addiu   $s4, $zero, 0x000C         ## $s4 = 0000000C
/* 06B4C 808DD3BC 24110001 */  addiu   $s1, $zero, 0x0001         ## $s1 = 00000001
.L808DD3C0:
/* 06B50 808DD3C0 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 06B54 808DD3C4 4600A306 */  mov.s   $f12, $f20                 
/* 06B58 808DD3C8 02340019 */  multu   $s1, $s4                   
/* 06B5C 808DD3CC 001258C0 */  sll     $t3, $s2,  3               
/* 06B60 808DD3D0 01725823 */  subu    $t3, $t3, $s2              
/* 06B64 808DD3D4 8E6A0000 */  lw      $t2, 0x0000($s3)           ## 808F93C0
/* 06B68 808DD3D8 000B58C0 */  sll     $t3, $t3,  3               
/* 06B6C 808DD3DC 01725821 */  addu    $t3, $t3, $s2              
/* 06B70 808DD3E0 000B58C0 */  sll     $t3, $t3,  3               
/* 06B74 808DD3E4 014B6021 */  addu    $t4, $t2, $t3              
/* 06B78 808DD3E8 4600A306 */  mov.s   $f12, $f20                 
/* 06B7C 808DD3EC 00008012 */  mflo    $s0                        
/* 06B80 808DD3F0 01906821 */  addu    $t5, $t4, $s0              
/* 06B84 808DD3F4 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 06B88 808DD3F8 E5A00278 */  swc1    $f0, 0x0278($t5)           ## 00000278
/* 06B8C 808DD3FC 001278C0 */  sll     $t7, $s2,  3               
/* 06B90 808DD400 01F27823 */  subu    $t7, $t7, $s2              
/* 06B94 808DD404 8E6E0000 */  lw      $t6, 0x0000($s3)           ## 808F93C0
/* 06B98 808DD408 000F78C0 */  sll     $t7, $t7,  3               
/* 06B9C 808DD40C 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000002
/* 06BA0 808DD410 01F27821 */  addu    $t7, $t7, $s2              
/* 06BA4 808DD414 00118C00 */  sll     $s1, $s1, 16               
/* 06BA8 808DD418 000F78C0 */  sll     $t7, $t7,  3               
/* 06BAC 808DD41C 00118C03 */  sra     $s1, $s1, 16               
/* 06BB0 808DD420 01CFC021 */  addu    $t8, $t6, $t7              
/* 06BB4 808DD424 2A21000C */  slti    $at, $s1, 0x000C           
/* 06BB8 808DD428 0310C821 */  addu    $t9, $t8, $s0              
/* 06BBC 808DD42C 1420FFE4 */  bne     $at, $zero, .L808DD3C0     
/* 06BC0 808DD430 E7200280 */  swc1    $f0, 0x0280($t9)           ## 00000280
/* 06BC4 808DD434 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 06BC8 808DD438 00129400 */  sll     $s2, $s2, 16               
/* 06BCC 808DD43C 00129403 */  sra     $s2, $s2, 16               
/* 06BD0 808DD440 2A41000C */  slti    $at, $s2, 0x000C           
/* 06BD4 808DD444 5420FFDE */  bnel    $at, $zero, .L808DD3C0     
/* 06BD8 808DD448 24110001 */  addiu   $s1, $zero, 0x0001         ## $s1 = 00000001
/* 06BDC 808DD44C 82A800AF */  lb      $t0, 0x00AF($s5)           ## 000000AF
/* 06BE0 808DD450 8FA5006C */  lw      $a1, 0x006C($sp)           
/* 06BE4 808DD454 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 06BE8 808DD458 1D000013 */  bgtz    $t0, .L808DD4A8            
/* 06BEC 808DD45C 00000000 */  nop
/* 06BF0 808DD460 0C236406 */  jal     func_808D9018              
/* 06BF4 808DD464 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 06BF8 808DD468 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 06BFC 808DD46C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 06C00 808DD470 240539D0 */  addiu   $a1, $zero, 0x39D0         ## $a1 = 000039D0
/* 06C04 808DD474 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 06C08 808DD478 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 06C0C 808DD47C 24053827 */  addiu   $a1, $zero, 0x3827         ## $a1 = 00003827
/* 06C10 808DD480 3C04808E */  lui     $a0, %hi(D_808E4C6C)       ## $a0 = 808E0000
/* 06C14 808DD484 24844C6C */  addiu   $a0, $a0, %lo(D_808E4C6C)  ## $a0 = 808E4C6C
/* 06C18 808DD488 0C01E245 */  jal     func_80078914              
/* 06C1C 808DD48C 2405388B */  addiu   $a1, $zero, 0x388B         ## $a1 = 0000388B
/* 06C20 808DD490 3C041001 */  lui     $a0, 0x1001                ## $a0 = 10010000
/* 06C24 808DD494 0C03E803 */  jal     Audio_SetBGM
              
/* 06C28 808DD498 348400FF */  ori     $a0, $a0, 0x00FF           ## $a0 = 100100FF
/* 06C2C 808DD49C 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 06C30 808DD4A0 10000041 */  beq     $zero, $zero, .L808DD5A8   
/* 06C34 808DD4A4 A6A901C4 */  sh      $t1, 0x01C4($s5)           ## 000001C4
.L808DD4A8:
/* 06C38 808DD4A8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 06C3C 808DD4AC 240539CD */  addiu   $a1, $zero, 0x39CD         ## $a1 = 000039CD
/* 06C40 808DD4B0 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 06C44 808DD4B4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 06C48 808DD4B8 24053919 */  addiu   $a1, $zero, 0x3919         ## $a1 = 00003919
/* 06C4C 808DD4BC 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 06C50 808DD4C0 0C23743A */  jal     func_808DD0E8              
/* 06C54 808DD4C4 8FA5006C */  lw      $a1, 0x006C($sp)           
/* 06C58 808DD4C8 240A000F */  addiu   $t2, $zero, 0x000F         ## $t2 = 0000000F
/* 06C5C 808DD4CC A6AA01A6 */  sh      $t2, 0x01A6($s5)           ## 000001A6
/* 06C60 808DD4D0 8E6C0000 */  lw      $t4, 0x0000($s3)           ## 808F93C0
/* 06C64 808DD4D4 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 06C68 808DD4D8 10000033 */  beq     $zero, $zero, .L808DD5A8   
/* 06C6C 808DD4DC A18B1704 */  sb      $t3, 0x1704($t4)           ## 00001704
/* 06C70 808DD4E0 8E6D0000 */  lw      $t5, 0x0000($s3)           ## 808F93C0
.L808DD4E4:
/* 06C74 808DD4E4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 06C78 808DD4E8 3421F8A4 */  ori     $at, $at, 0xF8A4           ## $at = 0001F8A4
/* 06C7C 808DD4EC 01A17024 */  and     $t6, $t5, $at              
/* 06C80 808DD4F0 11C0002D */  beq     $t6, $zero, .L808DD5A8     
/* 06C84 808DD4F4 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 06C88 808DD4F8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 06C8C 808DD4FC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 06C90 808DD500 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 06C94 808DD504 3C138090 */  lui     $s3, %hi(D_808F93C0)       ## $s3 = 80900000
/* 06C98 808DD508 4481A000 */  mtc1    $at, $f20                  ## $f20 = 15.00
/* 06C9C 808DD50C 267393C0 */  addiu   $s3, $s3, %lo(D_808F93C0)  ## $s3 = 808F93C0
/* 06CA0 808DD510 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 06CA4 808DD514 2414000C */  addiu   $s4, $zero, 0x000C         ## $s4 = 0000000C
/* 06CA8 808DD518 24110001 */  addiu   $s1, $zero, 0x0001         ## $s1 = 00000001
.L808DD51C:
/* 06CAC 808DD51C 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 06CB0 808DD520 4600A306 */  mov.s   $f12, $f20                 
/* 06CB4 808DD524 02340019 */  multu   $s1, $s4                   
/* 06CB8 808DD528 0012C0C0 */  sll     $t8, $s2,  3               
/* 06CBC 808DD52C 0312C023 */  subu    $t8, $t8, $s2              
/* 06CC0 808DD530 8E6F0000 */  lw      $t7, 0x0000($s3)           ## 808F93C0
/* 06CC4 808DD534 0018C0C0 */  sll     $t8, $t8,  3               
/* 06CC8 808DD538 0312C021 */  addu    $t8, $t8, $s2              
/* 06CCC 808DD53C 0018C0C0 */  sll     $t8, $t8,  3               
/* 06CD0 808DD540 01F8C821 */  addu    $t9, $t7, $t8              
/* 06CD4 808DD544 4600A306 */  mov.s   $f12, $f20                 
/* 06CD8 808DD548 00008012 */  mflo    $s0                        
/* 06CDC 808DD54C 03304021 */  addu    $t0, $t9, $s0              
/* 06CE0 808DD550 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 06CE4 808DD554 E5000278 */  swc1    $f0, 0x0278($t0)           ## 00000278
/* 06CE8 808DD558 001250C0 */  sll     $t2, $s2,  3               
/* 06CEC 808DD55C 01525023 */  subu    $t2, $t2, $s2              
/* 06CF0 808DD560 8E690000 */  lw      $t1, 0x0000($s3)           ## 808F93C0
/* 06CF4 808DD564 000A50C0 */  sll     $t2, $t2,  3               
/* 06CF8 808DD568 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000002
/* 06CFC 808DD56C 01525021 */  addu    $t2, $t2, $s2              
/* 06D00 808DD570 00118C00 */  sll     $s1, $s1, 16               
/* 06D04 808DD574 000A50C0 */  sll     $t2, $t2,  3               
/* 06D08 808DD578 00118C03 */  sra     $s1, $s1, 16               
/* 06D0C 808DD57C 012A5821 */  addu    $t3, $t1, $t2              
/* 06D10 808DD580 2A21000C */  slti    $at, $s1, 0x000C           
/* 06D14 808DD584 01706021 */  addu    $t4, $t3, $s0              
/* 06D18 808DD588 1420FFE4 */  bne     $at, $zero, .L808DD51C     
/* 06D1C 808DD58C E5800280 */  swc1    $f0, 0x0280($t4)           ## 00000280
/* 06D20 808DD590 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 06D24 808DD594 00129400 */  sll     $s2, $s2, 16               
/* 06D28 808DD598 00129403 */  sra     $s2, $s2, 16               
/* 06D2C 808DD59C 2A41000C */  slti    $at, $s2, 0x000C           
/* 06D30 808DD5A0 5420FFDE */  bnel    $at, $zero, .L808DD51C     
/* 06D34 808DD5A4 24110001 */  addiu   $s1, $zero, 0x0001         ## $s1 = 00000001
.L808DD5A8:
/* 06D38 808DD5A8 8FBF003C */  lw      $ra, 0x003C($sp)           
.L808DD5AC:
/* 06D3C 808DD5AC D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 06D40 808DD5B0 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 06D44 808DD5B4 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 06D48 808DD5B8 8FB2002C */  lw      $s2, 0x002C($sp)           
/* 06D4C 808DD5BC 8FB30030 */  lw      $s3, 0x0030($sp)           
/* 06D50 808DD5C0 8FB40034 */  lw      $s4, 0x0034($sp)           
/* 06D54 808DD5C4 8FB50038 */  lw      $s5, 0x0038($sp)           
/* 06D58 808DD5C8 03E00008 */  jr      $ra                        
/* 06D5C 808DD5CC 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
