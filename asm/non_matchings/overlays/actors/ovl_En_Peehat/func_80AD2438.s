.rdata
glabel D_80AD28CC
    .asciz "../z_en_peehat.c"
    .balign 4

glabel D_80AD28E0
    .asciz "../z_en_peehat.c"
    .balign 4

glabel D_80AD28F4
    .asciz "../z_en_peehat.c"
    .balign 4

.late_rodata
glabel D_80AD2974
 .word 0x3EB33333
glabel D_80AD2978
    .float 3.2

glabel D_80AD297C
    .float 0.2

glabel D_80AD2980
    .float 0.3

.text
glabel func_80AD2438
/* 02F98 80AD2438 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 02F9C 80AD243C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 02FA0 80AD2440 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02FA4 80AD2444 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 02FA8 80AD2448 AFA60048 */  sw      $a2, 0x0048($sp)           
/* 02FAC 80AD244C 14A1000D */  bne     $a1, $at, .L80AD2484       
/* 02FB0 80AD2450 AFA7004C */  sw      $a3, 0x004C($sp)           
/* 02FB4 80AD2454 8FA50050 */  lw      $a1, 0x0050($sp)           
/* 02FB8 80AD2458 3C0480AD */  lui     $a0, %hi(D_80AD2844)       ## $a0 = 80AD0000
/* 02FBC 80AD245C 24842844 */  addiu   $a0, $a0, %lo(D_80AD2844)  ## $a0 = 80AD2844
/* 02FC0 80AD2460 0C0346BD */  jal     Matrix_MultVec3f              
/* 02FC4 80AD2464 24A502BC */  addiu   $a1, $a1, 0x02BC           ## $a1 = 000002BC
/* 02FC8 80AD2468 8FA50050 */  lw      $a1, 0x0050($sp)           
/* 02FCC 80AD246C 3C0480AD */  lui     $a0, %hi(D_80AD2850)       ## $a0 = 80AD0000
/* 02FD0 80AD2470 24842850 */  addiu   $a0, $a0, %lo(D_80AD2850)  ## $a0 = 80AD2850
/* 02FD4 80AD2474 0C0346BD */  jal     Matrix_MultVec3f              
/* 02FD8 80AD2478 24A502C8 */  addiu   $a1, $a1, 0x02C8           ## $a1 = 000002C8
/* 02FDC 80AD247C 10000067 */  beq     $zero, $zero, .L80AD261C   
/* 02FE0 80AD2480 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AD2484:
/* 02FE4 80AD2484 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 02FE8 80AD2488 14A10063 */  bne     $a1, $at, .L80AD2618       
/* 02FEC 80AD248C 8FAE0050 */  lw      $t6, 0x0050($sp)           
/* 02FF0 80AD2490 85CF001C */  lh      $t7, 0x001C($t6)           ## 0000001C
/* 02FF4 80AD2494 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFE4
/* 02FF8 80AD2498 3C0680AD */  lui     $a2, %hi(D_80AD28CC)       ## $a2 = 80AD0000
/* 02FFC 80AD249C 5DE0005F */  bgtzl   $t7, .L80AD261C            
/* 03000 80AD24A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03004 80AD24A4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 03008 80AD24A8 8FB80040 */  lw      $t8, 0x0040($sp)           
/* 0300C 80AD24AC 24C628CC */  addiu   $a2, $a2, %lo(D_80AD28CC)  ## $a2 = 80AD28CC
/* 03010 80AD24B0 E7A40038 */  swc1    $f4, 0x0038($sp)           
/* 03014 80AD24B4 8F050000 */  lw      $a1, 0x0000($t8)           ## 00000000
/* 03018 80AD24B8 240707BD */  addiu   $a3, $zero, 0x07BD         ## $a3 = 000007BD
/* 0301C 80AD24BC 0C031AB1 */  jal     Graph_OpenDisps              
/* 03020 80AD24C0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 03024 80AD24C4 0C034213 */  jal     Matrix_Push              
/* 03028 80AD24C8 00000000 */  nop
/* 0302C 80AD24CC 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 03030 80AD24D0 3C01C47A */  lui     $at, 0xC47A                ## $at = C47A0000
/* 03034 80AD24D4 44816000 */  mtc1    $at, $f12                  ## $f12 = -1000.00
/* 03038 80AD24D8 44067000 */  mfc1    $a2, $f14                  
/* 0303C 80AD24DC 0C034261 */  jal     Matrix_Translate              
/* 03040 80AD24E0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 03044 80AD24E4 8FA50050 */  lw      $a1, 0x0050($sp)           
/* 03048 80AD24E8 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 0304C 80AD24EC 0C018A29 */  jal     func_800628A4              
/* 03050 80AD24F0 24A5034C */  addiu   $a1, $a1, 0x034C           ## $a1 = 0000034C
/* 03054 80AD24F4 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 03058 80AD24F8 44816000 */  mtc1    $at, $f12                  ## $f12 = 500.00
/* 0305C 80AD24FC 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 03060 80AD2500 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 03064 80AD2504 0C034261 */  jal     Matrix_Translate              
/* 03068 80AD2508 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0306C 80AD250C 8FA30050 */  lw      $v1, 0x0050($sp)           
/* 03070 80AD2510 90620114 */  lbu     $v0, 0x0114($v1)           ## 00000114
/* 03074 80AD2514 10400012 */  beq     $v0, $zero, .L80AD2560     
/* 03078 80AD2518 00000000 */  nop
/* 0307C 80AD251C 94790112 */  lhu     $t9, 0x0112($v1)           ## 00000112
/* 03080 80AD2520 00022080 */  sll     $a0, $v0,  2               
/* 03084 80AD2524 00822021 */  addu    $a0, $a0, $v0              
/* 03088 80AD2528 33284000 */  andi    $t0, $t9, 0x4000           ## $t0 = 00000000
/* 0308C 80AD252C 1100000C */  beq     $t0, $zero, .L80AD2560     
/* 03090 80AD2530 000420C0 */  sll     $a0, $a0,  3               
/* 03094 80AD2534 00822023 */  subu    $a0, $a0, $v0              
/* 03098 80AD2538 00042100 */  sll     $a0, $a0,  4               
/* 0309C 80AD253C 00822021 */  addu    $a0, $a0, $v0              
/* 030A0 80AD2540 00042140 */  sll     $a0, $a0,  5               
/* 030A4 80AD2544 00042400 */  sll     $a0, $a0, 16               
/* 030A8 80AD2548 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 030AC 80AD254C 00042403 */  sra     $a0, $a0, 16               
/* 030B0 80AD2550 3C0180AD */  lui     $at, %hi(D_80AD2974)       ## $at = 80AD0000
/* 030B4 80AD2554 C4262974 */  lwc1    $f6, %lo(D_80AD2974)($at)  
/* 030B8 80AD2558 46060202 */  mul.s   $f8, $f0, $f6              
/* 030BC 80AD255C E7A80038 */  swc1    $f8, 0x0038($sp)           
.L80AD2560:
/* 030C0 80AD2560 3C0180AD */  lui     $at, %hi(D_80AD2978)       ## $at = 80AD0000
/* 030C4 80AD2564 C42A2978 */  lwc1    $f10, %lo(D_80AD2978)($at) 
/* 030C8 80AD2568 C7B00038 */  lwc1    $f16, 0x0038($sp)          
/* 030CC 80AD256C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 030D0 80AD2570 0C034348 */  jal     Matrix_RotateY              
/* 030D4 80AD2574 46105300 */  add.s   $f12, $f10, $f16           
/* 030D8 80AD2578 3C0180AD */  lui     $at, %hi(D_80AD297C)       ## $at = 80AD0000
/* 030DC 80AD257C C42E297C */  lwc1    $f14, %lo(D_80AD297C)($at) 
/* 030E0 80AD2580 3C0180AD */  lui     $at, %hi(D_80AD2980)       ## $at = 80AD0000
/* 030E4 80AD2584 C42C2980 */  lwc1    $f12, %lo(D_80AD2980)($at) 
/* 030E8 80AD2588 44067000 */  mfc1    $a2, $f14                  
/* 030EC 80AD258C 0C0342A3 */  jal     Matrix_Scale              
/* 030F0 80AD2590 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 030F4 80AD2594 8FA70034 */  lw      $a3, 0x0034($sp)           
/* 030F8 80AD2598 3C0ADA38 */  lui     $t2, 0xDA38                ## $t2 = DA380000
/* 030FC 80AD259C 354A0003 */  ori     $t2, $t2, 0x0003           ## $t2 = DA380003
/* 03100 80AD25A0 8CE202C0 */  lw      $v0, 0x02C0($a3)           ## 000002C0
/* 03104 80AD25A4 3C0580AD */  lui     $a1, %hi(D_80AD28E0)       ## $a1 = 80AD0000
/* 03108 80AD25A8 24A528E0 */  addiu   $a1, $a1, %lo(D_80AD28E0)  ## $a1 = 80AD28E0
/* 0310C 80AD25AC 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 03110 80AD25B0 ACE902C0 */  sw      $t1, 0x02C0($a3)           ## 000002C0
/* 03114 80AD25B4 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 03118 80AD25B8 8FAB0040 */  lw      $t3, 0x0040($sp)           
/* 0311C 80AD25BC 240607C6 */  addiu   $a2, $zero, 0x07C6         ## $a2 = 000007C6
/* 03120 80AD25C0 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 03124 80AD25C4 0C0346A2 */  jal     Matrix_NewMtx              
/* 03128 80AD25C8 AFA20020 */  sw      $v0, 0x0020($sp)           
/* 0312C 80AD25CC 8FA30020 */  lw      $v1, 0x0020($sp)           
/* 03130 80AD25D0 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 03134 80AD25D4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03138 80AD25D8 8FAC0034 */  lw      $t4, 0x0034($sp)           
/* 0313C 80AD25DC 8D8202C0 */  lw      $v0, 0x02C0($t4)           ## 000002C0
/* 03140 80AD25E0 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 03144 80AD25E4 AD8D02C0 */  sw      $t5, 0x02C0($t4)           ## 000002C0
/* 03148 80AD25E8 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 0314C 80AD25EC 8FAF0048 */  lw      $t7, 0x0048($sp)           
/* 03150 80AD25F0 8DF80000 */  lw      $t8, 0x0000($t7)           ## 00000000
/* 03154 80AD25F4 0C034221 */  jal     Matrix_Pull              
/* 03158 80AD25F8 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 0315C 80AD25FC 8FB90040 */  lw      $t9, 0x0040($sp)           
/* 03160 80AD2600 3C0680AD */  lui     $a2, %hi(D_80AD28F4)       ## $a2 = 80AD0000
/* 03164 80AD2604 24C628F4 */  addiu   $a2, $a2, %lo(D_80AD28F4)  ## $a2 = 80AD28F4
/* 03168 80AD2608 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFE4
/* 0316C 80AD260C 240707CA */  addiu   $a3, $zero, 0x07CA         ## $a3 = 000007CA
/* 03170 80AD2610 0C031AD5 */  jal     Graph_CloseDisps              
/* 03174 80AD2614 8F250000 */  lw      $a1, 0x0000($t9)           ## 00000000
.L80AD2618:
/* 03178 80AD2618 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AD261C:
/* 0317C 80AD261C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 03180 80AD2620 03E00008 */  jr      $ra                        
/* 03184 80AD2624 00000000 */  nop
