.rdata
glabel D_8099D790
    .asciz "../z_efc_erupc.c"
    .balign 4

glabel D_8099D7A4
    .asciz "../z_efc_erupc.c"
    .balign 4

glabel D_8099D7B8
    .asciz "../z_efc_erupc.c"
    .balign 4

glabel D_8099D7CC
    .asciz "../z_efc_erupc.c"
    .balign 4

.late_rodata
glabel D_8099D820
    .float 0.8

glabel D_8099D824
 .word 0x4059999A, 0x00000000, 0x00000000

.text
glabel EfcErupc_Draw
/* 00300 8099CFB0 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 00304 8099CFB4 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00308 8099CFB8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0030C 8099CFBC AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00310 8099CFC0 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 00314 8099CFC4 AFA40090 */  sw      $a0, 0x0090($sp)           
/* 00318 8099CFC8 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0031C 8099CFCC 3C06809A */  lui     $a2, %hi(D_8099D790)       ## $a2 = 809A0000
/* 00320 8099CFD0 24C6D790 */  addiu   $a2, $a2, %lo(D_8099D790)  ## $a2 = 8099D790
/* 00324 8099CFD4 27A40074 */  addiu   $a0, $sp, 0x0074           ## $a0 = FFFFFFE4
/* 00328 8099CFD8 2407011A */  addiu   $a3, $zero, 0x011A         ## $a3 = 0000011A
/* 0032C 8099CFDC 0C031AB1 */  jal     Graph_OpenDisps              
/* 00330 8099CFE0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00334 8099CFE4 0C024F61 */  jal     func_80093D84              
/* 00338 8099CFE8 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0033C 8099CFEC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00340 8099CFF0 8FAA0090 */  lw      $t2, 0x0090($sp)           
/* 00344 8099CFF4 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 00348 8099CFF8 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 0034C 8099CFFC AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 00350 8099D000 35EF0020 */  ori     $t7, $t7, 0x0020           ## $t7 = DB060020
/* 00354 8099D004 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00358 8099D008 8543014C */  lh      $v1, 0x014C($t2)           ## 0000014C
/* 0035C 8099D00C 8548014E */  lh      $t0, 0x014E($t2)           ## 0000014E
/* 00360 8099D010 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00364 8099D014 240F0040 */  addiu   $t7, $zero, 0x0040         ## $t7 = 00000040
/* 00368 8099D018 00080823 */  subu    $at, $zero, $t0            
/* 0036C 8099D01C 00016880 */  sll     $t5, $at,  2               
/* 00370 8099D020 01A16821 */  addu    $t5, $t5, $at              
/* 00374 8099D024 000D6880 */  sll     $t5, $t5,  2               
/* 00378 8099D028 240E0040 */  addiu   $t6, $zero, 0x0040         ## $t6 = 00000040
/* 0037C 8099D02C 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 00380 8099D030 24190040 */  addiu   $t9, $zero, 0x0040         ## $t9 = 00000040
/* 00384 8099D034 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00388 8099D038 00036080 */  sll     $t4, $v1,  2               
/* 0038C 8099D03C AFAC001C */  sw      $t4, 0x001C($sp)           
/* 00390 8099D040 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 00394 8099D044 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00398 8099D048 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 0039C 8099D04C AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 003A0 8099D050 AFAD0020 */  sw      $t5, 0x0020($sp)           
/* 003A4 8099D054 00013880 */  sll     $a3, $at,  2               
/* 003A8 8099D058 AFAF0028 */  sw      $t7, 0x0028($sp)           
/* 003AC 8099D05C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 003B0 8099D060 AFA20070 */  sw      $v0, 0x0070($sp)           
/* 003B4 8099D064 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 003B8 8099D068 00603025 */  or      $a2, $v1, $zero            ## $a2 = 00000000
/* 003BC 8099D06C 8FA90070 */  lw      $t1, 0x0070($sp)           
/* 003C0 8099D070 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 003C4 8099D074 37390024 */  ori     $t9, $t9, 0x0024           ## $t9 = DB060024
/* 003C8 8099D078 AD220004 */  sw      $v0, 0x0004($t1)           ## 00000004
/* 003CC 8099D07C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 003D0 8099D080 240C0010 */  addiu   $t4, $zero, 0x0010         ## $t4 = 00000010
/* 003D4 8099D084 240D0080 */  addiu   $t5, $zero, 0x0080         ## $t5 = 00000080
/* 003D8 8099D088 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 003DC 8099D08C AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 003E0 8099D090 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 003E4 8099D094 8FAB0090 */  lw      $t3, 0x0090($sp)           
/* 003E8 8099D098 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 003EC 8099D09C 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 003F0 8099D0A0 85630150 */  lh      $v1, 0x0150($t3)           ## 00000150
/* 003F4 8099D0A4 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 003F8 8099D0A8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 003FC 8099D0AC 00037880 */  sll     $t7, $v1,  2               
/* 00400 8099D0B0 01E37823 */  subu    $t7, $t7, $v1              
/* 00404 8099D0B4 000F7880 */  sll     $t7, $t7,  2               
/* 00408 8099D0B8 00030823 */  subu    $at, $zero, $v1            
/* 0040C 8099D0BC 00013880 */  sll     $a3, $at,  2               
/* 00410 8099D0C0 AFAF0020 */  sw      $t7, 0x0020($sp)           
/* 00414 8099D0C4 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 00418 8099D0C8 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 0041C 8099D0CC AFB90028 */  sw      $t9, 0x0028($sp)           
/* 00420 8099D0D0 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00424 8099D0D4 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 00428 8099D0D8 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 0042C 8099D0DC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00430 8099D0E0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00434 8099D0E4 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 00438 8099D0E8 AFA2006C */  sw      $v0, 0x006C($sp)           
/* 0043C 8099D0EC 8FA8006C */  lw      $t0, 0x006C($sp)           
/* 00440 8099D0F0 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 00444 8099D0F4 358C0028 */  ori     $t4, $t4, 0x0028           ## $t4 = DB060028
/* 00448 8099D0F8 AD020004 */  sw      $v0, 0x0004($t0)           ## 00000004
/* 0044C 8099D0FC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00450 8099D100 240E0010 */  addiu   $t6, $zero, 0x0010         ## $t6 = 00000010
/* 00454 8099D104 240F0080 */  addiu   $t7, $zero, 0x0080         ## $t7 = 00000080
/* 00458 8099D108 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 0045C 8099D10C AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 00460 8099D110 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00464 8099D114 8FAD0090 */  lw      $t5, 0x0090($sp)           
/* 00468 8099D118 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0046C 8099D11C 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 00470 8099D120 85A30150 */  lh      $v1, 0x0150($t5)           ## 00000150
/* 00474 8099D124 240B0020 */  addiu   $t3, $zero, 0x0020         ## $t3 = 00000020
/* 00478 8099D128 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 0047C 8099D12C 0003C880 */  sll     $t9, $v1,  2               
/* 00480 8099D130 0323C823 */  subu    $t9, $t9, $v1              
/* 00484 8099D134 0019C880 */  sll     $t9, $t9,  2               
/* 00488 8099D138 00030823 */  subu    $at, $zero, $v1            
/* 0048C 8099D13C 00013880 */  sll     $a3, $at,  2               
/* 00490 8099D140 AFB90020 */  sw      $t9, 0x0020($sp)           
/* 00494 8099D144 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00498 8099D148 AFAB0024 */  sw      $t3, 0x0024($sp)           
/* 0049C 8099D14C AFAC0028 */  sw      $t4, 0x0028($sp)           
/* 004A0 8099D150 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 004A4 8099D154 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 004A8 8099D158 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 004AC 8099D15C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 004B0 8099D160 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 004B4 8099D164 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 004B8 8099D168 AFA20068 */  sw      $v0, 0x0068($sp)           
/* 004BC 8099D16C 8FA80068 */  lw      $t0, 0x0068($sp)           
/* 004C0 8099D170 0C034213 */  jal     Matrix_Push              
/* 004C4 8099D174 AD020004 */  sw      $v0, 0x0004($t0)           ## 00000004
/* 004C8 8099D178 3C01809A */  lui     $at, %hi(D_8099D820)       ## $at = 809A0000
/* 004CC 8099D17C C42CD820 */  lwc1    $f12, %lo(D_8099D820)($at) 
/* 004D0 8099D180 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 004D4 8099D184 44066000 */  mfc1    $a2, $f12                  
/* 004D8 8099D188 0C0342A3 */  jal     Matrix_Scale              
/* 004DC 8099D18C 46006386 */  mov.s   $f14, $f12                 
/* 004E0 8099D190 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 004E4 8099D194 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 004E8 8099D198 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 004EC 8099D19C 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 004F0 8099D1A0 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 004F4 8099D1A4 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 004F8 8099D1A8 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 004FC 8099D1AC 3C05809A */  lui     $a1, %hi(D_8099D7A4)       ## $a1 = 809A0000
/* 00500 8099D1B0 24A5D7A4 */  addiu   $a1, $a1, %lo(D_8099D7A4)  ## $a1 = 8099D7A4
/* 00504 8099D1B4 24060141 */  addiu   $a2, $zero, 0x0141         ## $a2 = 00000141
/* 00508 8099D1B8 0C0346A2 */  jal     Matrix_NewMtx              
/* 0050C 8099D1BC AFA20064 */  sw      $v0, 0x0064($sp)           
/* 00510 8099D1C0 8FA30064 */  lw      $v1, 0x0064($sp)           
/* 00514 8099D1C4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00518 8099D1C8 922F1D6C */  lbu     $t7, 0x1D6C($s1)           ## 00001D6C
/* 0051C 8099D1CC 11E00010 */  beq     $t7, $zero, .L8099D210     
/* 00520 8099D1D0 00000000 */  nop
/* 00524 8099D1D4 8E221D90 */  lw      $v0, 0x1D90($s1)           ## 00001D90
/* 00528 8099D1D8 1040000D */  beq     $v0, $zero, .L8099D210     
/* 0052C 8099D1DC 00000000 */  nop
/* 00530 8099D1E0 94580000 */  lhu     $t8, 0x0000($v0)           ## 00000000
/* 00534 8099D1E4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00538 8099D1E8 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 0053C 8099D1EC 17010008 */  bne     $t8, $at, .L8099D210       
/* 00540 8099D1F0 00000000 */  nop
/* 00544 8099D1F4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00548 8099D1F8 3C0C0600 */  lui     $t4, %hi(D_06002570)                ## $t4 = 06000000
/* 0054C 8099D1FC 258C2570 */  addiu   $t4, $t4, %lo(D_06002570)           ## $t4 = 06002570
/* 00550 8099D200 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 00554 8099D204 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 00558 8099D208 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 0055C 8099D20C AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
.L8099D210:
/* 00560 8099D210 0C034221 */  jal     Matrix_Pull              
/* 00564 8099D214 00000000 */  nop
/* 00568 8099D218 3C01809A */  lui     $at, %hi(D_8099D824)       ## $at = 809A0000
/* 0056C 8099D21C C42CD824 */  lwc1    $f12, %lo(D_8099D824)($at) 
/* 00570 8099D220 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00574 8099D224 44066000 */  mfc1    $a2, $f12                  
/* 00578 8099D228 0C0342A3 */  jal     Matrix_Scale              
/* 0057C 8099D22C 46006386 */  mov.s   $f14, $f12                 
/* 00580 8099D230 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00584 8099D234 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 00588 8099D238 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 0058C 8099D23C 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 00590 8099D240 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 00594 8099D244 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 00598 8099D248 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0059C 8099D24C 3C05809A */  lui     $a1, %hi(D_8099D7B8)       ## $a1 = 809A0000
/* 005A0 8099D250 24A5D7B8 */  addiu   $a1, $a1, %lo(D_8099D7B8)  ## $a1 = 8099D7B8
/* 005A4 8099D254 2406014D */  addiu   $a2, $zero, 0x014D         ## $a2 = 0000014D
/* 005A8 8099D258 0C0346A2 */  jal     Matrix_NewMtx              
/* 005AC 8099D25C AFA2005C */  sw      $v0, 0x005C($sp)           
/* 005B0 8099D260 8FA3005C */  lw      $v1, 0x005C($sp)           
/* 005B4 8099D264 3C06809A */  lui     $a2, %hi(D_8099D7CC)       ## $a2 = 809A0000
/* 005B8 8099D268 24C6D7CC */  addiu   $a2, $a2, %lo(D_8099D7CC)  ## $a2 = 8099D7CC
/* 005BC 8099D26C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 005C0 8099D270 922F1D6C */  lbu     $t7, 0x1D6C($s1)           ## 00001D6C
/* 005C4 8099D274 27A40074 */  addiu   $a0, $sp, 0x0074           ## $a0 = FFFFFFE4
/* 005C8 8099D278 24070164 */  addiu   $a3, $zero, 0x0164         ## $a3 = 00000164
/* 005CC 8099D27C 11E00022 */  beq     $t7, $zero, .L8099D308     
/* 005D0 8099D280 00000000 */  nop
/* 005D4 8099D284 8E231D94 */  lw      $v1, 0x1D94($s1)           ## 00001D94
/* 005D8 8099D288 1060001F */  beq     $v1, $zero, .L8099D308     
/* 005DC 8099D28C 00000000 */  nop
/* 005E0 8099D290 94620000 */  lhu     $v0, 0x0000($v1)           ## 00000000
/* 005E4 8099D294 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 005E8 8099D298 3C19FA00 */  lui     $t9, 0xFA00                ## $t9 = FA000000
/* 005EC 8099D29C 10410004 */  beq     $v0, $at, .L8099D2B0       
/* 005F0 8099D2A0 37398080 */  ori     $t9, $t9, 0x8080           ## $t9 = FA008080
/* 005F4 8099D2A4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 005F8 8099D2A8 14410017 */  bne     $v0, $at, .L8099D308       
/* 005FC 8099D2AC 00000000 */  nop
.L8099D2B0:
/* 00600 8099D2B0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00604 8099D2B4 240BC8FF */  addiu   $t3, $zero, 0xC8FF         ## $t3 = FFFFC8FF
/* 00608 8099D2B8 3C0E6400 */  lui     $t6, 0x6400                ## $t6 = 64000000
/* 0060C 8099D2BC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00610 8099D2C0 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 00614 8099D2C4 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 00618 8099D2C8 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 0061C 8099D2CC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00620 8099D2D0 35CE00FF */  ori     $t6, $t6, 0x00FF           ## $t6 = 640000FF
/* 00624 8099D2D4 3C0DFB00 */  lui     $t5, 0xFB00                ## $t5 = FB000000
/* 00628 8099D2D8 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 0062C 8099D2DC AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 00630 8099D2E0 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 00634 8099D2E4 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 00638 8099D2E8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0063C 8099D2EC 3C190600 */  lui     $t9, %hi(D_06001720)                ## $t9 = 06000000
/* 00640 8099D2F0 27391720 */  addiu   $t9, $t9, %lo(D_06001720)           ## $t9 = 06001720
/* 00644 8099D2F4 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00648 8099D2F8 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 0064C 8099D2FC 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 00650 8099D300 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00654 8099D304 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
.L8099D308:
/* 00658 8099D308 0C031AD5 */  jal     Graph_CloseDisps              
/* 0065C 8099D30C 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 00660 8099D310 8FA40090 */  lw      $a0, 0x0090($sp)           
/* 00664 8099D314 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00668 8099D318 0C2674CD */  jal     func_8099D334              
/* 0066C 8099D31C 24840158 */  addiu   $a0, $a0, 0x0158           ## $a0 = 00000158
/* 00670 8099D320 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00674 8099D324 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 00678 8099D328 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 0067C 8099D32C 03E00008 */  jr      $ra                        
/* 00680 8099D330 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
