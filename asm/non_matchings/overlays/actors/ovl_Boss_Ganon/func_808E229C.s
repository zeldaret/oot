glabel func_808E229C
/* 0BA2C 808E229C 27BDFF48 */  addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
/* 0BA30 808E22A0 AFB40058 */  sw      $s4, 0x0058($sp)           
/* 0BA34 808E22A4 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 0BA38 808E22A8 AFBF006C */  sw      $ra, 0x006C($sp)           
/* 0BA3C 808E22AC AFBE0068 */  sw      $s8, 0x0068($sp)           
/* 0BA40 808E22B0 AFB70064 */  sw      $s7, 0x0064($sp)           
/* 0BA44 808E22B4 AFB60060 */  sw      $s6, 0x0060($sp)           
/* 0BA48 808E22B8 AFB5005C */  sw      $s5, 0x005C($sp)           
/* 0BA4C 808E22BC AFB30054 */  sw      $s3, 0x0054($sp)           
/* 0BA50 808E22C0 AFB20050 */  sw      $s2, 0x0050($sp)           
/* 0BA54 808E22C4 AFB1004C */  sw      $s1, 0x004C($sp)           
/* 0BA58 808E22C8 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 0BA5C 808E22CC F7BE0040 */  sdc1    $f30, 0x0040($sp)          
/* 0BA60 808E22D0 F7BC0038 */  sdc1    $f28, 0x0038($sp)          
/* 0BA64 808E22D4 F7BA0030 */  sdc1    $f26, 0x0030($sp)          
/* 0BA68 808E22D8 F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 0BA6C 808E22DC F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 0BA70 808E22E0 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 0BA74 808E22E4 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0BA78 808E22E8 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 0BA7C 808E22EC 3C06808F */  lui     $a2, %hi(D_808F7CE4)       ## $a2 = 808F0000
/* 0BA80 808E22F0 24C67CE4 */  addiu   $a2, $a2, %lo(D_808F7CE4)  ## $a2 = 808F7CE4
/* 0BA84 808E22F4 27A40094 */  addiu   $a0, $sp, 0x0094           ## $a0 = FFFFFFDC
/* 0BA88 808E22F8 24072761 */  addiu   $a3, $zero, 0x2761         ## $a3 = 00002761
/* 0BA8C 808E22FC 0C031AB1 */  jal     Graph_OpenDisps              
/* 0BA90 808E2300 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 0BA94 808E2304 0C024F61 */  jal     func_80093D84              
/* 0BA98 808E2308 8E840000 */  lw      $a0, 0x0000($s4)           ## 00000000
/* 0BA9C 808E230C 8E6202D0 */  lw      $v0, 0x02D0($s3)           ## 000002D0
/* 0BAA0 808E2310 3C0FFA00 */  lui     $t7, 0xFA00                ## $t7 = FA000000
/* 0BAA4 808E2314 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 0BAA8 808E2318 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 0BAAC 808E231C AE6E02D0 */  sw      $t6, 0x02D0($s3)           ## 000002D0
/* 0BAB0 808E2320 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 0BAB4 808E2324 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 0BAB8 808E2328 8E6202D0 */  lw      $v0, 0x02D0($s3)           ## 000002D0
/* 0BABC 808E232C 3C08FB00 */  lui     $t0, 0xFB00                ## $t0 = FB000000
/* 0BAC0 808E2330 3C09FFFF */  lui     $t1, 0xFFFF                ## $t1 = FFFF0000
/* 0BAC4 808E2334 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 0BAC8 808E2338 AE7902D0 */  sw      $t9, 0x02D0($s3)           ## 000002D0
/* 0BACC 808E233C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0BAD0 808E2340 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 0BAD4 808E2344 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 0BAD8 808E2348 8E6202D0 */  lw      $v0, 0x02D0($s3)           ## 000002D0
/* 0BADC 808E234C 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 0BAE0 808E2350 0281B021 */  addu    $s6, $s4, $at              
/* 0BAE4 808E2354 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 0BAE8 808E2358 4481F000 */  mtc1    $at, $f30                  ## $f30 = 32768.00
/* 0BAEC 808E235C 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 0BAF0 808E2360 AE6A02D0 */  sw      $t2, 0x02D0($s3)           ## 000002D0
/* 0BAF4 808E2364 3C0B808E */  lui     $t3, %hi(D_808E7DE8)       ## $t3 = 808E0000
/* 0BAF8 808E2368 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0BAFC 808E236C 256B7DE8 */  addiu   $t3, $t3, %lo(D_808E7DE8)  ## $t3 = 808E7DE8
/* 0BB00 808E2370 3C17DE00 */  lui     $s7, 0xDE00                ## $s7 = DE000000
/* 0BB04 808E2374 4481E000 */  mtc1    $at, $f28                  ## $f28 = 10.00
/* 0BB08 808E2378 3C018090 */  lui     $at, %hi(D_808F81D4)       ## $at = 80900000
/* 0BB0C 808E237C AC570000 */  sw      $s7, 0x0000($v0)           ## 00000000
/* 0BB10 808E2380 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 0BB14 808E2384 C43A81D4 */  lwc1    $f26, %lo(D_808F81D4)($at) 
/* 0BB18 808E2388 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0BB1C 808E238C 4481C000 */  mtc1    $at, $f24                  ## $f24 = 1.00
/* 0BB20 808E2390 3C018090 */  lui     $at, %hi(D_808F81D8)       ## $at = 80900000
/* 0BB24 808E2394 3C15808E */  lui     $s5, %hi(D_808E7E58)       ## $s5 = 808E0000
/* 0BB28 808E2398 26B57E58 */  addiu   $s5, $s5, %lo(D_808E7E58)  ## $s5 = 808E7E58
/* 0BB2C 808E239C C43681D8 */  lwc1    $f22, %lo(D_808F81D8)($at) 
/* 0BB30 808E23A0 24110009 */  addiu   $s1, $zero, 0x0009         ## $s1 = 00000009
/* 0BB34 808E23A4 241E000F */  addiu   $s8, $zero, 0x000F         ## $s8 = 0000000F
/* 0BB38 808E23A8 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L808E23AC:
/* 0BB3C 808E23AC 864C01A6 */  lh      $t4, 0x01A6($s2)           ## 000001A6
/* 0BB40 808E23B0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0BB44 808E23B4 01916823 */  subu    $t5, $t4, $s1              
/* 0BB48 808E23B8 25AE000F */  addiu   $t6, $t5, 0x000F           ## $t6 = 0000000F
/* 0BB4C 808E23BC 01DE001A */  div     $zero, $t6, $s8            
/* 0BB50 808E23C0 00001810 */  mfhi    $v1                        
/* 0BB54 808E23C4 00031C00 */  sll     $v1, $v1, 16               
/* 0BB58 808E23C8 00031C03 */  sra     $v1, $v1, 16               
/* 0BB5C 808E23CC 00037880 */  sll     $t7, $v1,  2               
/* 0BB60 808E23D0 01E37823 */  subu    $t7, $t7, $v1              
/* 0BB64 808E23D4 000F7880 */  sll     $t7, $t7,  2               
/* 0BB68 808E23D8 024F1021 */  addu    $v0, $s2, $t7              
/* 0BB6C 808E23DC 17C00002 */  bne     $s8, $zero, .L808E23E8     
/* 0BB70 808E23E0 00000000 */  nop
/* 0BB74 808E23E4 0007000D */  break 7
.L808E23E8:
/* 0BB78 808E23E8 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 0BB7C 808E23EC 17C10004 */  bne     $s8, $at, .L808E2400       
/* 0BB80 808E23F0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0BB84 808E23F4 15C10002 */  bne     $t6, $at, .L808E2400       
/* 0BB88 808E23F8 00000000 */  nop
/* 0BB8C 808E23FC 0006000D */  break 6
.L808E2400:
/* 0BB90 808E2400 C44C02EC */  lwc1    $f12, 0x02EC($v0)          ## 000002EC
/* 0BB94 808E2404 C44E02F0 */  lwc1    $f14, 0x02F0($v0)          ## 000002F0
/* 0BB98 808E2408 0C034261 */  jal     Matrix_Translate              
/* 0BB9C 808E240C 8C4602F4 */  lw      $a2, 0x02F4($v0)           ## 000002F4
/* 0BBA0 808E2410 44912000 */  mtc1    $s1, $f4                   ## $f4 = 0.00
/* 0BBA4 808E2414 C6480050 */  lwc1    $f8, 0x0050($s2)           ## 00000050
/* 0BBA8 808E2418 C64A0054 */  lwc1    $f10, 0x0054($s2)          ## 00000054
/* 0BBAC 808E241C 46802520 */  cvt.s.w $f20, $f4                  
/* 0BBB0 808E2420 C6500058 */  lwc1    $f16, 0x0058($s2)          ## 00000058
/* 0BBB4 808E2424 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0BBB8 808E2428 461AA182 */  mul.s   $f6, $f20, $f26            
/* 0BBBC 808E242C 4606C001 */  sub.s   $f0, $f24, $f6             
/* 0BBC0 808E2430 46004302 */  mul.s   $f12, $f8, $f0             
/* 0BBC4 808E2434 00000000 */  nop
/* 0BBC8 808E2438 46005382 */  mul.s   $f14, $f10, $f0            
/* 0BBCC 808E243C 00000000 */  nop
/* 0BBD0 808E2440 46008482 */  mul.s   $f18, $f16, $f0            
/* 0BBD4 808E2444 44069000 */  mfc1    $a2, $f18                  
/* 0BBD8 808E2448 0C0342A3 */  jal     Matrix_Scale              
/* 0BBDC 808E244C 00000000 */  nop
/* 0BBE0 808E2450 0C0347F5 */  jal     func_800D1FD4              
/* 0BBE4 808E2454 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 0BBE8 808E2458 865800B8 */  lh      $t8, 0x00B8($s2)           ## 000000B8
/* 0BBEC 808E245C 4616A002 */  mul.s   $f0, $f20, $f22            
/* 0BBF0 808E2460 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0BBF4 808E2464 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 0BBF8 808E2468 00000000 */  nop
/* 0BBFC 808E246C 468042A0 */  cvt.s.w $f10, $f8                  
/* 0BC00 808E2470 46000100 */  add.s   $f4, $f0, $f0              
/* 0BC04 808E2474 461E5403 */  div.s   $f16, $f10, $f30           
/* 0BC08 808E2478 461C2183 */  div.s   $f6, $f4, $f28             
/* 0BC0C 808E247C 46168482 */  mul.s   $f18, $f16, $f22           
/* 0BC10 808E2480 0C0343B5 */  jal     Matrix_RotateZ              
/* 0BC14 808E2484 46123300 */  add.s   $f12, $f6, $f18            
/* 0BC18 808E2488 8E6202D0 */  lw      $v0, 0x02D0($s3)           ## 000002D0
/* 0BC1C 808E248C 3C08DA38 */  lui     $t0, 0xDA38                ## $t0 = DA380000
/* 0BC20 808E2490 35080003 */  ori     $t0, $t0, 0x0003           ## $t0 = DA380003
/* 0BC24 808E2494 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 0BC28 808E2498 AE7902D0 */  sw      $t9, 0x02D0($s3)           ## 000002D0
/* 0BC2C 808E249C 3C05808F */  lui     $a1, %hi(D_808F7CF8)       ## $a1 = 808F0000
/* 0BC30 808E24A0 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 0BC34 808E24A4 8E840000 */  lw      $a0, 0x0000($s4)           ## 00000000
/* 0BC38 808E24A8 24A57CF8 */  addiu   $a1, $a1, %lo(D_808F7CF8)  ## $a1 = 808F7CF8
/* 0BC3C 808E24AC 2406277D */  addiu   $a2, $zero, 0x277D         ## $a2 = 0000277D
/* 0BC40 808E24B0 0C0346A2 */  jal     Matrix_NewMtx              
/* 0BC44 808E24B4 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 0BC48 808E24B8 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 0BC4C 808E24BC 8E6202D0 */  lw      $v0, 0x02D0($s3)           ## 000002D0
/* 0BC50 808E24C0 2631FFFF */  addiu   $s1, $s1, 0xFFFF           ## $s1 = 00000008
/* 0BC54 808E24C4 00118C00 */  sll     $s1, $s1, 16               
/* 0BC58 808E24C8 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 0BC5C 808E24CC 00118C03 */  sra     $s1, $s1, 16               
/* 0BC60 808E24D0 AE6902D0 */  sw      $t1, 0x02D0($s3)           ## 000002D0
/* 0BC64 808E24D4 AC550004 */  sw      $s5, 0x0004($v0)           ## 00000004
/* 0BC68 808E24D8 AC570000 */  sw      $s7, 0x0000($v0)           ## 00000000
/* 0BC6C 808E24DC 0621FFB3 */  bgez    $s1, .L808E23AC            
/* 0BC70 808E24E0 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 0BC74 808E24E4 3C06808F */  lui     $a2, %hi(D_808F7D0C)       ## $a2 = 808F0000
/* 0BC78 808E24E8 24C67D0C */  addiu   $a2, $a2, %lo(D_808F7D0C)  ## $a2 = 808F7D0C
/* 0BC7C 808E24EC 27A40094 */  addiu   $a0, $sp, 0x0094           ## $a0 = FFFFFFDC
/* 0BC80 808E24F0 8E850000 */  lw      $a1, 0x0000($s4)           ## 00000000
/* 0BC84 808E24F4 0C031AD5 */  jal     Graph_CloseDisps              
/* 0BC88 808E24F8 24072781 */  addiu   $a3, $zero, 0x2781         ## $a3 = 00002781
/* 0BC8C 808E24FC 8FBF006C */  lw      $ra, 0x006C($sp)           
/* 0BC90 808E2500 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 0BC94 808E2504 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 0BC98 808E2508 D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 0BC9C 808E250C D7BA0030 */  ldc1    $f26, 0x0030($sp)          
/* 0BCA0 808E2510 D7BC0038 */  ldc1    $f28, 0x0038($sp)          
/* 0BCA4 808E2514 D7BE0040 */  ldc1    $f30, 0x0040($sp)          
/* 0BCA8 808E2518 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 0BCAC 808E251C 8FB1004C */  lw      $s1, 0x004C($sp)           
/* 0BCB0 808E2520 8FB20050 */  lw      $s2, 0x0050($sp)           
/* 0BCB4 808E2524 8FB30054 */  lw      $s3, 0x0054($sp)           
/* 0BCB8 808E2528 8FB40058 */  lw      $s4, 0x0058($sp)           
/* 0BCBC 808E252C 8FB5005C */  lw      $s5, 0x005C($sp)           
/* 0BCC0 808E2530 8FB60060 */  lw      $s6, 0x0060($sp)           
/* 0BCC4 808E2534 8FB70064 */  lw      $s7, 0x0064($sp)           
/* 0BCC8 808E2538 8FBE0068 */  lw      $s8, 0x0068($sp)           
/* 0BCCC 808E253C 03E00008 */  jr      $ra                        
/* 0BCD0 808E2540 27BD00B8 */  addiu   $sp, $sp, 0x00B8           ## $sp = 00000000


