glabel func_809EDB08
/* 00298 809EDB08 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 0029C 809EDB0C 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 002A0 809EDB10 846E13CE */  lh      $t6, 0x13CE($v1)           ## 8015FA2E
/* 002A4 809EDB14 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 002A8 809EDB18 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 002AC 809EDB1C 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 002B0 809EDB20 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002B4 809EDB24 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 002B8 809EDB28 15C10020 */  bne     $t6, $at, .L809EDBAC       
/* 002BC 809EDB2C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 002C0 809EDB30 0C02FF21 */  jal     Gameplay_InCsMode              
/* 002C4 809EDB34 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002C8 809EDB38 1440001C */  bne     $v0, $zero, .L809EDBAC     
/* 002CC 809EDB3C 3C018016 */  lui     $at, %hi(gSaveContext+0x13ce)
/* 002D0 809EDB40 0C03D6D6 */  jal     func_800F5B58              
/* 002D4 809EDB44 A420FA2E */  sh      $zero, %lo(gSaveContext+0x13ce)($at)
/* 002D8 809EDB48 0C01E221 */  jal     func_80078884              
/* 002DC 809EDB4C 2404482C */  addiu   $a0, $zero, 0x482C         ## $a0 = 0000482C
/* 002E0 809EDB50 240F71AD */  addiu   $t7, $zero, 0x71AD         ## $t7 = 000071AD
/* 002E4 809EDB54 A60F010E */  sh      $t7, 0x010E($s0)           ## 0000010E
/* 002E8 809EDB58 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 002EC 809EDB5C 31E5FFFF */  andi    $a1, $t7, 0xFFFF           ## $a1 = 000071AD
/* 002F0 809EDB60 0C042DA0 */  jal     func_8010B680              
/* 002F4 809EDB64 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 002F8 809EDB68 A60002A4 */  sh      $zero, 0x02A4($s0)         ## 000002A4
/* 002FC 809EDB6C 860202A4 */  lh      $v0, 0x02A4($s0)           ## 000002A4
/* 00300 809EDB70 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 00304 809EDB74 A6180292 */  sh      $t8, 0x0292($s0)           ## 00000292
/* 00308 809EDB78 A60202A2 */  sh      $v0, 0x02A2($s0)           ## 000002A2
/* 0030C 809EDB7C A602029C */  sh      $v0, 0x029C($s0)           ## 0000029C
/* 00310 809EDB80 A60202A8 */  sh      $v0, 0x02A8($s0)           ## 000002A8
/* 00314 809EDB84 A202031E */  sb      $v0, 0x031E($s0)           ## 0000031E
/* 00318 809EDB88 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0031C 809EDB8C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00320 809EDB90 0C00B7D5 */  jal     func_8002DF54              
/* 00324 809EDB94 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00328 809EDB98 3C19809F */  lui     $t9, %hi(func_809EE048)    ## $t9 = 809F0000
/* 0032C 809EDB9C 2739E048 */  addiu   $t9, $t9, %lo(func_809EE048) ## $t9 = 809EE048
/* 00330 809EDBA0 AE190280 */  sw      $t9, 0x0280($s0)           ## 00000280
/* 00334 809EDBA4 1000003D */  beq     $zero, $zero, .L809EDC9C   
/* 00338 809EDBA8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L809EDBAC:
/* 0033C 809EDBAC 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00340 809EDBB0 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 00344 809EDBB4 94680EDA */  lhu     $t0, 0x0EDA($v1)           ## 8015F53A
/* 00348 809EDBB8 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
/* 0034C 809EDBBC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00350 809EDBC0 31090100 */  andi    $t1, $t0, 0x0100           ## $t1 = 00000000
/* 00354 809EDBC4 51200003 */  beql    $t1, $zero, .L809EDBD4     
/* 00358 809EDBC8 860A02A4 */  lh      $t2, 0x02A4($s0)           ## 000002A4
/* 0035C 809EDBCC 2402000A */  addiu   $v0, $zero, 0x000A         ## $v0 = 0000000A
/* 00360 809EDBD0 860A02A4 */  lh      $t2, 0x02A4($s0)           ## 000002A4
.L809EDBD4:
/* 00364 809EDBD4 0142082A */  slt     $at, $t2, $v0              
/* 00368 809EDBD8 14200030 */  bne     $at, $zero, .L809EDC9C     
/* 0036C 809EDBDC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00370 809EDBE0 A46013CE */  sh      $zero, 0x13CE($v1)         ## 8015FA2E
/* 00374 809EDBE4 A60002A4 */  sh      $zero, 0x02A4($s0)         ## 000002A4
/* 00378 809EDBE8 860202A4 */  lh      $v0, 0x02A4($s0)           ## 000002A4
/* 0037C 809EDBEC 240D4055 */  addiu   $t5, $zero, 0x4055         ## $t5 = 00004055
/* 00380 809EDBF0 A60202A2 */  sh      $v0, 0x02A2($s0)           ## 000002A2
/* 00384 809EDBF4 A602029C */  sh      $v0, 0x029C($s0)           ## 0000029C
/* 00388 809EDBF8 A60202A8 */  sh      $v0, 0x02A8($s0)           ## 000002A8
/* 0038C 809EDBFC A202031E */  sb      $v0, 0x031E($s0)           ## 0000031E
/* 00390 809EDC00 946B0EDA */  lhu     $t3, 0x0EDA($v1)           ## 8015F53A
/* 00394 809EDC04 316C0100 */  andi    $t4, $t3, 0x0100           ## $t4 = 00000000
/* 00398 809EDC08 55800004 */  bnel    $t4, $zero, .L809EDC1C     
/* 0039C 809EDC0C 860202AA */  lh      $v0, 0x02AA($s0)           ## 000002AA
/* 003A0 809EDC10 10000008 */  beq     $zero, $zero, .L809EDC34   
/* 003A4 809EDC14 A60D010E */  sh      $t5, 0x010E($s0)           ## 0000010E
/* 003A8 809EDC18 860202AA */  lh      $v0, 0x02AA($s0)           ## 000002AA
.L809EDC1C:
/* 003AC 809EDC1C 240E405D */  addiu   $t6, $zero, 0x405D         ## $t6 = 0000405D
/* 003B0 809EDC20 A60E010E */  sh      $t6, 0x010E($s0)           ## 0000010E
/* 003B4 809EDC24 28410064 */  slti    $at, $v0, 0x0064           
/* 003B8 809EDC28 10200002 */  beq     $at, $zero, .L809EDC34     
/* 003BC 809EDC2C 244F0001 */  addiu   $t7, $v0, 0x0001           ## $t7 = 00000001
/* 003C0 809EDC30 A60F02AA */  sh      $t7, 0x02AA($s0)           ## 000002AA
.L809EDC34:
/* 003C4 809EDC34 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 003C8 809EDC38 0C042DA0 */  jal     func_8010B680              
/* 003CC 809EDC3C 9605010E */  lhu     $a1, 0x010E($s0)           ## 0000010E
/* 003D0 809EDC40 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 003D4 809EDC44 0C03D6D6 */  jal     func_800F5B58              
/* 003D8 809EDC48 A6180292 */  sh      $t8, 0x0292($s0)           ## 00000292
/* 003DC 809EDC4C 0C03D719 */  jal     func_800F5C64              
/* 003E0 809EDC50 24040039 */  addiu   $a0, $zero, 0x0039         ## $a0 = 00000039
/* 003E4 809EDC54 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 003E8 809EDC58 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 003EC 809EDC5C 0C00B7D5 */  jal     func_8002DF54              
/* 003F0 809EDC60 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 003F4 809EDC64 3C198016 */  lui     $t9, %hi(gSaveContext+0xeda)
/* 003F8 809EDC68 9739F53A */  lhu     $t9, %lo(gSaveContext+0xeda)($t9)
/* 003FC 809EDC6C 3C0A809F */  lui     $t2, %hi(func_809EE048)    ## $t2 = 809F0000
/* 00400 809EDC70 3C09809F */  lui     $t1, %hi(func_809EE96C)    ## $t1 = 809F0000
/* 00404 809EDC74 33280100 */  andi    $t0, $t9, 0x0100           ## $t0 = 00000000
/* 00408 809EDC78 15000005 */  bne     $t0, $zero, .L809EDC90     
/* 0040C 809EDC7C 254AE048 */  addiu   $t2, $t2, %lo(func_809EE048) ## $t2 = 809EE048
/* 00410 809EDC80 2529E96C */  addiu   $t1, $t1, %lo(func_809EE96C) ## $t1 = 809EE96C
/* 00414 809EDC84 AE090280 */  sw      $t1, 0x0280($s0)           ## 00000280
/* 00418 809EDC88 10000004 */  beq     $zero, $zero, .L809EDC9C   
/* 0041C 809EDC8C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L809EDC90:
/* 00420 809EDC90 AE0A0280 */  sw      $t2, 0x0280($s0)           ## 00000280
/* 00424 809EDC94 10000001 */  beq     $zero, $zero, .L809EDC9C   
/* 00428 809EDC98 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L809EDC9C:
/* 0042C 809EDC9C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00430 809EDCA0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00434 809EDCA4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00438 809EDCA8 03E00008 */  jr      $ra                        
/* 0043C 809EDCAC 00000000 */  nop
