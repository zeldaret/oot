glabel func_808299A0
/* 16180 808299A0 27BDFF28 */  addiu   $sp, $sp, 0xFF28           ## $sp = FFFFFF28
/* 16184 808299A4 3C0F8016 */  lui     $t7, %hi(gGameInfo)
/* 16188 808299A8 8DEFFA90 */  lw      $t7, %lo(gGameInfo)($t7)
/* 1618C 808299AC AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 16190 808299B0 AFBE0050 */  sw      $s8, 0x0050($sp)           
/* 16194 808299B4 AFB7004C */  sw      $s7, 0x004C($sp)           
/* 16198 808299B8 AFB60048 */  sw      $s6, 0x0048($sp)           
/* 1619C 808299BC AFB50044 */  sw      $s5, 0x0044($sp)           
/* 161A0 808299C0 AFB40040 */  sw      $s4, 0x0040($sp)           
/* 161A4 808299C4 AFB3003C */  sw      $s3, 0x003C($sp)           
/* 161A8 808299C8 AFB20038 */  sw      $s2, 0x0038($sp)           
/* 161AC 808299CC AFB10034 */  sw      $s1, 0x0034($sp)           
/* 161B0 808299D0 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 161B4 808299D4 F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 161B8 808299D8 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 161BC 808299DC F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 161C0 808299E0 85F80F2E */  lh      $t8, 0x0F2E($t7)           ## 80160F2E
/* 161C4 808299E4 3C0E8016 */  lui     $t6, %hi(D_801613A0)
/* 161C8 808299E8 8DCE13A0 */  lw      $t6, %lo(D_801613A0)($t6)
/* 161CC 808299EC 0018C843 */  sra     $t9, $t8,  1               
/* 161D0 808299F0 00194940 */  sll     $t1, $t9,  5               
/* 161D4 808299F4 01394823 */  subu    $t1, $t1, $t9              
/* 161D8 808299F8 00094880 */  sll     $t1, $t1,  2               
/* 161DC 808299FC 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 161E0 80829A00 01394823 */  subu    $t1, $t1, $t9              
/* 161E4 80829A04 0080A825 */  or      $s5, $a0, $zero            ## $s5 = 00000000
/* 161E8 80829A08 00094880 */  sll     $t1, $t1,  2               
/* 161EC 80829A0C 3C068083 */  lui     $a2, %hi(D_80830580)       ## $a2 = 80830000
/* 161F0 80829A10 24C60580 */  addiu   $a2, $a2, %lo(D_80830580)  ## $a2 = 80830580
/* 161F4 80829A14 27A400B0 */  addiu   $a0, $sp, 0x00B0           ## $a0 = FFFFFFD8
/* 161F8 80829A18 240700B6 */  addiu   $a3, $zero, 0x00B6         ## $a3 = 000000B6
/* 161FC 80829A1C 01C99821 */  addu    $s3, $t6, $t1              
/* 16200 80829A20 0C031AB1 */  jal     Graph_OpenDisps              
/* 16204 80829A24 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 16208 80829A28 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1620C 80829A2C 3C178083 */  lui     $s7, %hi(D_80830530)       ## $s7 = 80830000
/* 16210 80829A30 4481C000 */  mtc1    $at, $f24                  ## $f24 = 1.00
/* 16214 80829A34 4480B000 */  mtc1    $zero, $f22                ## $f22 = 0.00
/* 16218 80829A38 26F70530 */  addiu   $s7, $s7, %lo(D_80830530)  ## $s7 = 80830530
/* 1621C 80829A3C 3C1EF500 */  lui     $s8, 0xF500                ## $s8 = F5000000
/* 16220 80829A40 3C16E700 */  lui     $s6, 0xE700                ## $s6 = E7000000
/* 16224 80829A44 86620000 */  lh      $v0, 0x0000($s3)           ## 00000000
.L80829A48:
/* 16228 80829A48 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 1622C 80829A4C 1041015A */  beq     $v0, $at, .L80829FB8       
/* 16230 80829A50 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 16234 80829A54 02A18021 */  addu    $s0, $s5, $at              
/* 16238 80829A58 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 1623C 80829A5C 1441002E */  bne     $v0, $at, .L80829B18       
/* 16240 80829A60 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 16244 80829A64 86A200A4 */  lh      $v0, 0x00A4($s5)           ## 000000A4
/* 16248 80829A68 28410011 */  slti    $at, $v0, 0x0011           
/* 1624C 80829A6C 1420002A */  bne     $at, $zero, .L80829B18     
/* 16250 80829A70 2841001B */  slti    $at, $v0, 0x001B           
/* 16254 80829A74 10200028 */  beq     $at, $zero, .L80829B18     
/* 16258 80829A78 3C0A8013 */  lui     $t2, %hi(D_8012D1E0)
/* 1625C 80829A7C 914AD1E0 */  lbu     $t2, %lo(D_8012D1E0)($t2)
/* 16260 80829A80 3C048016 */  lui     $a0, %hi(D_80161398)
/* 16264 80829A84 24841398 */  addiu   $a0, %lo(D_80161398)
/* 16268 80829A88 15400015 */  bne     $t2, $zero, .L80829AE0     
/* 1626C 80829A8C 3C073D27 */  lui     $a3, 0x3D27                ## $a3 = 3D270000
/* 16270 80829A90 3C048016 */  lui     $a0, %hi(D_80161398)
/* 16274 80829A94 4406C000 */  mfc1    $a2, $f24                  
/* 16278 80829A98 3C073D27 */  lui     $a3, 0x3D27                ## $a3 = 3D270000
/* 1627C 80829A9C 34E7EF9E */  ori     $a3, $a3, 0xEF9E           ## $a3 = 3D27EF9E
/* 16280 80829AA0 24841398 */  addiu   $a0, %lo(D_80161398)
/* 16284 80829AA4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 16288 80829AA8 3C053FC0 */  lui     $a1, 0x3FC0                ## $a1 = 3FC00000
/* 1628C 80829AAC 3C018016 */  lui     $at, %hi(D_80161398)
/* 16290 80829AB0 C4201398 */  lwc1    $f0, %lo(D_80161398)($at)
/* 16294 80829AB4 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 16298 80829AB8 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.50
/* 1629C 80829ABC 3C018013 */  lui     $at, %hi(D_8012D1E0)
/* 162A0 80829AC0 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 162A4 80829AC4 46002032 */  c.eq.s  $f4, $f0                   
/* 162A8 80829AC8 00000000 */  nop
/* 162AC 80829ACC 45000010 */  bc1f    .L80829B10                 
/* 162B0 80829AD0 00000000 */  nop
/* 162B4 80829AD4 A02BD1E0 */  sb      $t3, %lo(D_8012D1E0)($at)
/* 162B8 80829AD8 10000010 */  beq     $zero, $zero, .L80829B1C   
/* 162BC 80829ADC 46000506 */  mov.s   $f20, $f0                  
.L80829AE0:
/* 162C0 80829AE0 4405C000 */  mfc1    $a1, $f24                  
/* 162C4 80829AE4 4406C000 */  mfc1    $a2, $f24                  
/* 162C8 80829AE8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 162CC 80829AEC 34E7EF9E */  ori     $a3, $a3, 0xEF9E           ## $a3 = 0000EF9E
/* 162D0 80829AF0 3C018016 */  lui     $at, %hi(D_80161398)
/* 162D4 80829AF4 C4201398 */  lwc1    $f0, %lo(D_80161398)($at)
/* 162D8 80829AF8 3C018013 */  lui     $at, %hi(D_8012D1E0)
/* 162DC 80829AFC 4600C032 */  c.eq.s  $f24, $f0                  
/* 162E0 80829B00 00000000 */  nop
/* 162E4 80829B04 45000002 */  bc1f    .L80829B10                 
/* 162E8 80829B08 00000000 */  nop
/* 162EC 80829B0C A020D1E0 */  sb      $zero, %lo(D_8012D1E0)($at)
.L80829B10:
/* 162F0 80829B10 10000002 */  beq     $zero, $zero, .L80829B1C   
/* 162F4 80829B14 46000506 */  mov.s   $f20, $f0                  
.L80829B18:
/* 162F8 80829B18 4600C506 */  mov.s   $f20, $f24                 
.L80829B1C:
/* 162FC 80829B1C 0C034213 */  jal     Matrix_Push              
/* 16300 80829B20 00000000 */  nop
/* 16304 80829B24 96020934 */  lhu     $v0, 0x0934($s0)           ## 00000934
/* 16308 80829B28 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 1630C 80829B2C 10410002 */  beq     $v0, $at, .L80829B38       
/* 16310 80829B30 28410012 */  slti    $at, $v0, 0x0012           
/* 16314 80829B34 14200009 */  bne     $at, $zero, .L80829B5C     
.L80829B38:
/* 16318 80829B38 3C01C210 */  lui     $at, 0xC210                ## $at = C2100000
/* 1631C 80829B3C 44816000 */  mtc1    $at, $f12                  ## $f12 = -36.00
/* 16320 80829B40 3C0142CA */  lui     $at, 0x42CA                ## $at = 42CA0000
/* 16324 80829B44 44817000 */  mtc1    $at, $f14                  ## $f14 = 101.00
/* 16328 80829B48 4406B000 */  mfc1    $a2, $f22                  
/* 1632C 80829B4C 0C034261 */  jal     Matrix_Translate              
/* 16330 80829B50 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 16334 80829B54 10000009 */  beq     $zero, $zero, .L80829B7C   
/* 16338 80829B58 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
.L80829B5C:
/* 1633C 80829B5C 3C01C210 */  lui     $at, 0xC210                ## $at = C2100000
/* 16340 80829B60 44816000 */  mtc1    $at, $f12                  ## $f12 = -36.00
/* 16344 80829B64 3C0141A8 */  lui     $at, 0x41A8                ## $at = 41A80000
/* 16348 80829B68 44817000 */  mtc1    $at, $f14                  ## $f14 = 21.00
/* 1634C 80829B6C 4406B000 */  mfc1    $a2, $f22                  
/* 16350 80829B70 0C034261 */  jal     Matrix_Translate              
/* 16354 80829B74 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 16358 80829B78 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
.L80829B7C:
/* 1635C 80829B7C 3C0FFA00 */  lui     $t7, 0xFA00                ## $t7 = FA000000
/* 16360 80829B80 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 16364 80829B84 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 16368 80829B88 AE2C02C0 */  sw      $t4, 0x02C0($s1)           ## 000002C0
/* 1636C 80829B8C AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 16370 80829B90 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
/* 16374 80829B94 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 16378 80829B98 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 1637C 80829B9C 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 16380 80829BA0 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 16384 80829BA4 AE2D02C0 */  sw      $t5, 0x02C0($s1)           ## 000002C0
/* 16388 80829BA8 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 1638C 80829BAC AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 16390 80829BB0 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 16394 80829BB4 26720014 */  addiu   $s2, $s3, 0x0014           ## $s2 = 00000014
/* 16398 80829BB8 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 1639C 80829BBC AE3902C0 */  sw      $t9, 0x02C0($s1)           ## 000002C0
/* 163A0 80829BC0 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 163A4 80829BC4 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 163A8 80829BC8 8E6A0010 */  lw      $t2, 0x0010($s3)           ## 00000010
/* 163AC 80829BCC 194000F6 */  blez    $t2, .L80829FA8            
/* 163B0 80829BD0 00000000 */  nop
/* 163B4 80829BD4 866B0000 */  lh      $t3, 0x0000($s3)           ## 00000000
.L80829BD8:
/* 163B8 80829BD8 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 163BC 80829BDC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 163C0 80829BE0 15600015 */  bne     $t3, $zero, .L80829C38     
/* 163C4 80829BE4 00000000 */  nop
/* 163C8 80829BE8 0C00B32C */  jal     Flags_GetTreasure
              
/* 163CC 80829BEC 86450000 */  lh      $a1, 0x0000($s2)           ## 00000014
/* 163D0 80829BF0 50400004 */  beql    $v0, $zero, .L80829C04     
/* 163D4 80829BF4 86AC00A4 */  lh      $t4, 0x00A4($s5)           ## 000000A4
/* 163D8 80829BF8 1000000F */  beq     $zero, $zero, .L80829C38   
/* 163DC 80829BFC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 163E0 80829C00 86AC00A4 */  lh      $t4, 0x00A4($s5)           ## 000000A4
.L80829C04:
/* 163E4 80829C04 258DFFEF */  addiu   $t5, $t4, 0xFFEF           ## $t5 = FFFFFFEF
/* 163E8 80829C08 2DA10008 */  sltiu   $at, $t5, 0x0008           
/* 163EC 80829C0C 10200008 */  beq     $at, $zero, .L80829C30     
/* 163F0 80829C10 000D6880 */  sll     $t5, $t5,  2               
/* 163F4 80829C14 3C018083 */  lui     $at, %hi(jtbl_808305BC)       ## $at = 80830000
/* 163F8 80829C18 002D0821 */  addu    $at, $at, $t5              
/* 163FC 80829C1C 8C2D05BC */  lw      $t5, %lo(jtbl_808305BC)($at)  
/* 16400 80829C20 01A00008 */  jr      $t5                        
/* 16404 80829C24 00000000 */  nop
glabel L80829C28
/* 16408 80829C28 10000003 */  beq     $zero, $zero, .L80829C38   
/* 1640C 80829C2C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80829C30:
/* 16410 80829C30 10000001 */  beq     $zero, $zero, .L80829C38   
/* 16414 80829C34 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80829C38:
/* 16418 80829C38 104000D5 */  beq     $v0, $zero, .L80829F90     
/* 1641C 80829C3C 3C198083 */  lui     $t9, %hi(D_8082B270)       ## $t9 = 80830000
/* 16420 80829C40 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 16424 80829C44 866F0000 */  lh      $t7, 0x0000($s3)           ## 00000000
/* 16428 80829C48 2739B270 */  addiu   $t9, $t9, %lo(D_8082B270)  ## $t9 = 8082B270
/* 1642C 80829C4C 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000009
/* 16430 80829C50 AE2E02C0 */  sw      $t6, 0x02C0($s1)           ## 000002C0
/* 16434 80829C54 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000005
/* 16438 80829C58 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000001
/* 1643C 80829C5C 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 16440 80829C60 000FC0C0 */  sll     $t8, $t7,  3               
/* 16444 80829C64 030FC021 */  addu    $t8, $t8, $t7              
/* 16448 80829C68 0018C080 */  sll     $t8, $t8,  2               
/* 1644C 80829C6C 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000009
/* 16450 80829C70 03192821 */  addu    $a1, $t8, $t9              
/* 16454 80829C74 AE2902C0 */  sw      $t1, 0x02C0($s1)           ## 000002C0
/* 16458 80829C78 8CAA0008 */  lw      $t2, 0x0008($a1)           ## 00000008
/* 1645C 80829C7C 8CAE0004 */  lw      $t6, 0x0004($a1)           ## 00000004
/* 16460 80829C80 3C01FD00 */  lui     $at, 0xFD00                ## $at = FD000000
/* 16464 80829C84 000A5880 */  sll     $t3, $t2,  2               
/* 16468 80829C88 02EB6021 */  addu    $t4, $s7, $t3              
/* 1646C 80829C8C 8D8D0000 */  lw      $t5, 0x0000($t4)           ## 00000000
/* 16470 80829C90 31C90007 */  andi    $t1, $t6, 0x0007           ## $t1 = 00000001
/* 16474 80829C94 00095540 */  sll     $t2, $t1, 21               
/* 16478 80829C98 31AF0003 */  andi    $t7, $t5, 0x0003           ## $t7 = 00000003
/* 1647C 80829C9C 000FC4C0 */  sll     $t8, $t7, 19               
/* 16480 80829CA0 0301C825 */  or      $t9, $t8, $at              ## $t9 = FD000000
/* 16484 80829CA4 032A5825 */  or      $t3, $t9, $t2              ## $t3 = FD000000
/* 16488 80829CA8 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000001
/* 1648C 80829CAC 8CAC0000 */  lw      $t4, 0x0000($a1)           ## 00000000
/* 16490 80829CB0 240707FF */  addiu   $a3, $zero, 0x07FF         ## $a3 = 000007FF
/* 16494 80829CB4 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000005
/* 16498 80829CB8 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 1649C 80829CBC 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000009
/* 164A0 80829CC0 AE2D02C0 */  sw      $t5, 0x02C0($s1)           ## 000002C0
/* 164A4 80829CC4 8CAF0008 */  lw      $t7, 0x0008($a1)           ## 00000008
/* 164A8 80829CC8 8CAC0004 */  lw      $t4, 0x0004($a1)           ## 00000004
/* 164AC 80829CCC 000FC080 */  sll     $t8, $t7,  2               
/* 164B0 80829CD0 02F87021 */  addu    $t6, $s7, $t8              
/* 164B4 80829CD4 8DC90000 */  lw      $t1, 0x0000($t6)           ## 00000009
/* 164B8 80829CD8 318D0007 */  andi    $t5, $t4, 0x0007           ## $t5 = 00000000
/* 164BC 80829CDC 000D7D40 */  sll     $t7, $t5, 21               
/* 164C0 80829CE0 31390003 */  andi    $t9, $t1, 0x0003           ## $t9 = 00000001
/* 164C4 80829CE4 001954C0 */  sll     $t2, $t9, 19               
/* 164C8 80829CE8 015E5825 */  or      $t3, $t2, $s8              ## $t3 = F5000000
/* 164CC 80829CEC 016FC025 */  or      $t8, $t3, $t7              ## $t8 = F5000003
/* 164D0 80829CF0 3C0E0700 */  lui     $t6, 0x0700                ## $t6 = 07000000
/* 164D4 80829CF4 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000005
/* 164D8 80829CF8 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000001
/* 164DC 80829CFC 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 164E0 80829D00 3C19E600 */  lui     $t9, 0xE600                ## $t9 = E6000000
/* 164E4 80829D04 3C0CF300 */  lui     $t4, 0xF300                ## $t4 = F3000000
/* 164E8 80829D08 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000009
/* 164EC 80829D0C AE2902C0 */  sw      $t1, 0x02C0($s1)           ## 000002C0
/* 164F0 80829D10 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000005
/* 164F4 80829D14 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000001
/* 164F8 80829D18 8E2802C0 */  lw      $t0, 0x02C0($s1)           ## 000002C0
/* 164FC 80829D1C 3C0F8083 */  lui     $t7, %hi(D_80830540)       ## $t7 = 80830000
/* 16500 80829D20 3C0E8083 */  lui     $t6, %hi(D_80830550)       ## $t6 = 80830000
/* 16504 80829D24 250A0008 */  addiu   $t2, $t0, 0x0008           ## $t2 = 00000008
/* 16508 80829D28 AE2A02C0 */  sw      $t2, 0x02C0($s1)           ## 000002C0
/* 1650C 80829D2C AD0C0000 */  sw      $t4, 0x0000($t0)           ## 00000000
/* 16510 80829D30 8CAD0010 */  lw      $t5, 0x0010($a1)           ## 00000010
/* 16514 80829D34 8CA4000C */  lw      $a0, 0x000C($a1)           ## 0000000C
/* 16518 80829D38 8CA30008 */  lw      $v1, 0x0008($a1)           ## 00000008
/* 1651C 80829D3C 3C098083 */  lui     $t1, %hi(D_80830560)       ## $t1 = 80830000
/* 16520 80829D40 008D0019 */  multu   $a0, $t5                   
/* 16524 80829D44 00031880 */  sll     $v1, $v1,  2               
/* 16528 80829D48 01E37821 */  addu    $t7, $t7, $v1              
/* 1652C 80829D4C 8DEF0540 */  lw      $t7, %lo(D_80830540)($t7)  
/* 16530 80829D50 01C37021 */  addu    $t6, $t6, $v1              
/* 16534 80829D54 8DCE0550 */  lw      $t6, %lo(D_80830550)($t6)  
/* 16538 80829D58 01234821 */  addu    $t1, $t1, $v1              
/* 1653C 80829D5C 00005812 */  mflo    $t3                        
/* 16540 80829D60 016FC021 */  addu    $t8, $t3, $t7              
/* 16544 80829D64 01D83006 */  srlv    $a2, $t8, $t6              
/* 16548 80829D68 24C6FFFF */  addiu   $a2, $a2, 0xFFFF           ## $a2 = FFFFFFFF
/* 1654C 80829D6C 2CC107FF */  sltiu   $at, $a2, 0x07FF           
/* 16550 80829D70 10200003 */  beq     $at, $zero, .L80829D80     
/* 16554 80829D74 00000000 */  nop
/* 16558 80829D78 10000001 */  beq     $zero, $zero, .L80829D80   
/* 1655C 80829D7C 00C03825 */  or      $a3, $a2, $zero            ## $a3 = FFFFFFFF
.L80829D80:
/* 16560 80829D80 8D290560 */  lw      $t1, %lo(D_80830560)($t1)  
/* 16564 80829D84 30EB0FFF */  andi    $t3, $a3, 0x0FFF           ## $t3 = 00000FFF
/* 16568 80829D88 000B7B00 */  sll     $t7, $t3, 12               
/* 1656C 80829D8C 01240019 */  multu   $t1, $a0                   
/* 16570 80829D90 3C010700 */  lui     $at, 0x0700                ## $at = 07000000
/* 16574 80829D94 00001012 */  mflo    $v0                        
/* 16578 80829D98 000210C2 */  srl     $v0, $v0,  3               
/* 1657C 80829D9C 14400003 */  bne     $v0, $zero, .L80829DAC     
/* 16580 80829DA0 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000001
/* 16584 80829DA4 10000001 */  beq     $zero, $zero, .L80829DAC   
/* 16588 80829DA8 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
.L80829DAC:
/* 1658C 80829DAC 14400003 */  bne     $v0, $zero, .L80829DBC     
/* 16590 80829DB0 249907FF */  addiu   $t9, $a0, 0x07FF           ## $t9 = 00000800
/* 16594 80829DB4 10000002 */  beq     $zero, $zero, .L80829DC0   
/* 16598 80829DB8 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80829DBC:
/* 1659C 80829DBC 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000001
.L80829DC0:
/* 165A0 80829DC0 0323001B */  divu    $zero, $t9, $v1            
/* 165A4 80829DC4 00005012 */  mflo    $t2                        
/* 165A8 80829DC8 314C0FFF */  andi    $t4, $t2, 0x0FFF           ## $t4 = 00000008
/* 165AC 80829DCC 01816825 */  or      $t5, $t4, $at              ## $t5 = 07000008
/* 165B0 80829DD0 01AFC025 */  or      $t8, $t5, $t7              ## $t8 = 87830008
/* 165B4 80829DD4 AD180004 */  sw      $t8, 0x0004($t0)           ## 00000004
/* 165B8 80829DD8 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 165BC 80829DDC 14600002 */  bne     $v1, $zero, .L80829DE8     
/* 165C0 80829DE0 00000000 */  nop
/* 165C4 80829DE4 0007000D */  break 7
.L80829DE8:
/* 165C8 80829DE8 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000009
/* 165CC 80829DEC AE2E02C0 */  sw      $t6, 0x02C0($s1)           ## 000002C0
/* 165D0 80829DF0 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000005
/* 165D4 80829DF4 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000001
/* 165D8 80829DF8 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 165DC 80829DFC 3C198083 */  lui     $t9, %hi(D_80830570)       ## $t9 = 80830000
/* 165E0 80829E00 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000009
/* 165E4 80829E04 AE2902C0 */  sw      $t1, 0x02C0($s1)           ## 000002C0
/* 165E8 80829E08 8CA30008 */  lw      $v1, 0x0008($a1)           ## 00000008
/* 165EC 80829E0C 8CAA000C */  lw      $t2, 0x000C($a1)           ## 0000000C
/* 165F0 80829E10 8CA90004 */  lw      $t1, 0x0004($a1)           ## 00000004
/* 165F4 80829E14 00031880 */  sll     $v1, $v1,  2               
/* 165F8 80829E18 0323C821 */  addu    $t9, $t9, $v1              
/* 165FC 80829E1C 8F390570 */  lw      $t9, %lo(D_80830570)($t9)  
/* 16600 80829E20 032A0019 */  multu   $t9, $t2                   
/* 16604 80829E24 31390007 */  andi    $t9, $t1, 0x0007           ## $t9 = 00000001
/* 16608 80829E28 00195540 */  sll     $t2, $t9, 21               
/* 1660C 80829E2C 3C19F200 */  lui     $t9, 0xF200                ## $t9 = F2000000
/* 16610 80829E30 00006012 */  mflo    $t4                        
/* 16614 80829E34 258B0007 */  addiu   $t3, $t4, 0x0007           ## $t3 = 0000000F
/* 16618 80829E38 000B68C2 */  srl     $t5, $t3,  3               
/* 1661C 80829E3C 3C0B8083 */  lui     $t3, %hi(D_80830520)       ## $t3 = 80830000
/* 16620 80829E40 01635821 */  addu    $t3, $t3, $v1              
/* 16624 80829E44 8D6B0520 */  lw      $t3, %lo(D_80830520)($t3)  
/* 16628 80829E48 31AF01FF */  andi    $t7, $t5, 0x01FF           ## $t7 = 00000008
/* 1662C 80829E4C 000FC240 */  sll     $t8, $t7,  9               
/* 16630 80829E50 031E7025 */  or      $t6, $t8, $s8              ## $t6 = F7830008
/* 16634 80829E54 316D0003 */  andi    $t5, $t3, 0x0003           ## $t5 = 00000000
/* 16638 80829E58 000D7CC0 */  sll     $t7, $t5, 19               
/* 1663C 80829E5C 01CA6025 */  or      $t4, $t6, $t2              ## $t4 = F7830008
/* 16640 80829E60 018FC025 */  or      $t8, $t4, $t7              ## $t8 = F7830008
/* 16644 80829E64 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000001
/* 16648 80829E68 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000005
/* 1664C 80829E6C 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 16650 80829E70 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000009
/* 16654 80829E74 AE2902C0 */  sw      $t1, 0x02C0($s1)           ## 000002C0
/* 16658 80829E78 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000001
/* 1665C 80829E7C 8CAE000C */  lw      $t6, 0x000C($a1)           ## 0000000C
/* 16660 80829E80 8CAF0010 */  lw      $t7, 0x0010($a1)           ## 00000010
/* 16664 80829E84 25CAFFFF */  addiu   $t2, $t6, 0xFFFF           ## $t2 = F7830007
/* 16668 80829E88 000A5880 */  sll     $t3, $t2,  2               
/* 1666C 80829E8C 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = 00000007
/* 16670 80829E90 00184880 */  sll     $t1, $t8,  2               
/* 16674 80829E94 316D0FFF */  andi    $t5, $t3, 0x0FFF           ## $t5 = 00000000
/* 16678 80829E98 000D6300 */  sll     $t4, $t5, 12               
/* 1667C 80829E9C 31390FFF */  andi    $t9, $t1, 0x0FFF           ## $t9 = 00000009
/* 16680 80829EA0 01997025 */  or      $t6, $t4, $t9              ## $t6 = F7830009
/* 16684 80829EA4 0C034213 */  jal     Matrix_Push              
/* 16688 80829EA8 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000005
/* 1668C 80829EAC 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 16690 80829EB0 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 16694 80829EB4 C64A0004 */  lwc1    $f10, 0x0004($s2)          ## 00000018
/* 16698 80829EB8 C6440008 */  lwc1    $f4, 0x0008($s2)           ## 0000001C
/* 1669C 80829EBC 844A114C */  lh      $t2, 0x114C($v0)           ## 8016114C
/* 166A0 80829EC0 844B114E */  lh      $t3, 0x114E($v0)           ## 8016114E
/* 166A4 80829EC4 4406B000 */  mfc1    $a2, $f22                  
/* 166A8 80829EC8 448A3000 */  mtc1    $t2, $f6                   ## $f6 = 0.00
/* 166AC 80829ECC 448B8000 */  mtc1    $t3, $f16                  ## $f16 = 0.00
/* 166B0 80829ED0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 166B4 80829ED4 46803220 */  cvt.s.w $f8, $f6                   
/* 166B8 80829ED8 468084A0 */  cvt.s.w $f18, $f16                 
/* 166BC 80829EDC 460A4300 */  add.s   $f12, $f8, $f10            
/* 166C0 80829EE0 0C034261 */  jal     Matrix_Translate              
/* 166C4 80829EE4 46049380 */  add.s   $f14, $f18, $f4            
/* 166C8 80829EE8 4406A000 */  mfc1    $a2, $f20                  
/* 166CC 80829EEC 4600A306 */  mov.s   $f12, $f20                 
/* 166D0 80829EF0 4600A386 */  mov.s   $f14, $f20                 
/* 166D4 80829EF4 0C0342A3 */  jal     Matrix_Scale              
/* 166D8 80829EF8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 166DC 80829EFC 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 166E0 80829F00 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 166E4 80829F04 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 166E8 80829F08 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 166EC 80829F0C AE2D02C0 */  sw      $t5, 0x02C0($s1)           ## 000002C0
/* 166F0 80829F10 3C058083 */  lui     $a1, %hi(D_80830594)       ## $a1 = 80830000
/* 166F4 80829F14 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 166F8 80829F18 8EA40000 */  lw      $a0, 0x0000($s5)           ## 00000000
/* 166FC 80829F1C 24A50594 */  addiu   $a1, $a1, %lo(D_80830594)  ## $a1 = 80830594
/* 16700 80829F20 24060110 */  addiu   $a2, $zero, 0x0110         ## $a2 = 00000110
/* 16704 80829F24 0C0346A2 */  jal     Matrix_NewMtx              
/* 16708 80829F28 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 1670C 80829F2C 0C034221 */  jal     Matrix_Pull              
/* 16710 80829F30 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 16714 80829F34 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 16718 80829F38 3C010100 */  lui     $at, 0x0100                ## $at = 01000000
/* 1671C 80829F3C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 16720 80829F40 AE3802C0 */  sw      $t8, 0x02C0($s1)           ## 000002C0
/* 16724 80829F44 8E64000C */  lw      $a0, 0x000C($s3)           ## 0000000C
/* 16728 80829F48 3C180702 */  lui     $t8, 0x0702                ## $t8 = 07020000
/* 1672C 80829F4C 37180604 */  ori     $t8, $t8, 0x0604           ## $t8 = 07020604
/* 16730 80829F50 308900FF */  andi    $t1, $a0, 0x00FF           ## $t1 = 00000000
/* 16734 80829F54 00096300 */  sll     $t4, $t1, 12               
/* 16738 80829F58 308E007F */  andi    $t6, $a0, 0x007F           ## $t6 = 00000000
/* 1673C 80829F5C 000E5040 */  sll     $t2, $t6,  1               
/* 16740 80829F60 0181C825 */  or      $t9, $t4, $at              ## $t9 = 01000000
/* 16744 80829F64 032A5825 */  or      $t3, $t9, $t2              ## $t3 = 01000000
/* 16748 80829F68 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 1674C 80829F6C 8E6D0008 */  lw      $t5, 0x0008($s3)           ## 00000008
/* 16750 80829F70 3C090002 */  lui     $t1, 0x0002                ## $t1 = 00020000
/* 16754 80829F74 35290400 */  ori     $t1, $t1, 0x0400           ## $t1 = 00020400
/* 16758 80829F78 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 1675C 80829F7C 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 16760 80829F80 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 16764 80829F84 AE2F02C0 */  sw      $t7, 0x02C0($s1)           ## 000002C0
/* 16768 80829F88 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 1676C 80829F8C AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
.L80829F90:
/* 16770 80829F90 8E6C0010 */  lw      $t4, 0x0010($s3)           ## 00000010
/* 16774 80829F94 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 16778 80829F98 2652000C */  addiu   $s2, $s2, 0x000C           ## $s2 = 00000020
/* 1677C 80829F9C 028C082A */  slt     $at, $s4, $t4              
/* 16780 80829FA0 5420FF0D */  bnel    $at, $zero, .L80829BD8     
/* 16784 80829FA4 866B0000 */  lh      $t3, 0x0000($s3)           ## 00000000
.L80829FA8:
/* 16788 80829FA8 0C034221 */  jal     Matrix_Pull              
/* 1678C 80829FAC 267300A4 */  addiu   $s3, $s3, 0x00A4           ## $s3 = 000000A4
/* 16790 80829FB0 1000FEA5 */  beq     $zero, $zero, .L80829A48   
/* 16794 80829FB4 86620000 */  lh      $v0, 0x0000($s3)           ## 000000A4
.L80829FB8:
/* 16798 80829FB8 3C068083 */  lui     $a2, %hi(D_808305A8)       ## $a2 = 80830000
/* 1679C 80829FBC 24C605A8 */  addiu   $a2, $a2, %lo(D_808305A8)  ## $a2 = 808305A8
/* 167A0 80829FC0 27A400B0 */  addiu   $a0, $sp, 0x00B0           ## $a0 = FFFFFFD8
/* 167A4 80829FC4 8EA50000 */  lw      $a1, 0x0000($s5)           ## 00000000
/* 167A8 80829FC8 0C031AD5 */  jal     Graph_CloseDisps              
/* 167AC 80829FCC 2407011E */  addiu   $a3, $zero, 0x011E         ## $a3 = 0000011E
/* 167B0 80829FD0 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 167B4 80829FD4 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 167B8 80829FD8 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 167BC 80829FDC D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 167C0 80829FE0 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 167C4 80829FE4 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 167C8 80829FE8 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 167CC 80829FEC 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 167D0 80829FF0 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 167D4 80829FF4 8FB50044 */  lw      $s5, 0x0044($sp)           
/* 167D8 80829FF8 8FB60048 */  lw      $s6, 0x0048($sp)           
/* 167DC 80829FFC 8FB7004C */  lw      $s7, 0x004C($sp)           
/* 167E0 8082A000 8FBE0050 */  lw      $s8, 0x0050($sp)           
/* 167E4 8082A004 03E00008 */  jr      $ra                        
/* 167E8 8082A008 27BD00D8 */  addiu   $sp, $sp, 0x00D8           ## $sp = 00000000
