.rdata
glabel D_80A78728
    .asciz "../z_en_ik_inAwake.c"
    .balign 4

glabel D_80A78740
    .asciz "../z_en_ik_inAwake.c"
    .balign 4

glabel D_80A78758
    .asciz "../z_en_ik_inAwake.c"
    .balign 4

glabel D_80A78770
    .asciz "../z_en_ik_inAwake.c"
    .balign 4

glabel D_80A78788
    .asciz "../z_en_ik_inAwake.c"
    .balign 4

glabel D_80A787A0
    .asciz "../z_en_ik_inAwake.c"
    .balign 4

glabel D_80A787B8
    .asciz "../z_en_ik_inAwake.c"
    .balign 4

.late_rodata
glabel jtbl_80A789E4
.word L80A775FC
.word L80A77818
.word L80A77818
.word L80A77818
.word L80A77818
.word L80A77818
.word L80A77818
.word L80A77818
.word L80A77818
.word L80A77674
.word L80A77818
.word L80A776D0
.word L80A77818
.word L80A7772C
.word L80A777A4

.text
glabel func_80A7759C
/* 0328C 80A7759C 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 03290 80A775A0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03294 80A775A4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03298 80A775A8 AFA40070 */  sw      $a0, 0x0070($sp)           
/* 0329C 80A775AC AFA50074 */  sw      $a1, 0x0074($sp)           
/* 032A0 80A775B0 AFA60078 */  sw      $a2, 0x0078($sp)           
/* 032A4 80A775B4 AFA7007C */  sw      $a3, 0x007C($sp)           
/* 032A8 80A775B8 8C900000 */  lw      $s0, 0x0000($a0)           ## 00000000
/* 032AC 80A775BC 3C0680A8 */  lui     $a2, %hi(D_80A78728)       ## $a2 = 80A80000
/* 032B0 80A775C0 24C68728 */  addiu   $a2, $a2, %lo(D_80A78728)  ## $a2 = 80A78728
/* 032B4 80A775C4 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFE8
/* 032B8 80A775C8 240700CF */  addiu   $a3, $zero, 0x00CF         ## $a3 = 000000CF
/* 032BC 80A775CC 0C031AB1 */  jal     Graph_OpenDisps              
/* 032C0 80A775D0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 032C4 80A775D4 8FAF0074 */  lw      $t7, 0x0074($sp)           
/* 032C8 80A775D8 25F8FFF3 */  addiu   $t8, $t7, 0xFFF3           ## $t8 = FFFFFFF3
/* 032CC 80A775DC 2F01000F */  sltiu   $at, $t8, 0x000F           
/* 032D0 80A775E0 1020008D */  beq     $at, $zero, .L80A77818     
/* 032D4 80A775E4 0018C080 */  sll     $t8, $t8,  2               
/* 032D8 80A775E8 3C0180A8 */  lui     $at, %hi(jtbl_80A789E4)       ## $at = 80A80000
/* 032DC 80A775EC 00380821 */  addu    $at, $at, $t8              
/* 032E0 80A775F0 8C3889E4 */  lw      $t8, %lo(jtbl_80A789E4)($at)  
/* 032E4 80A775F4 03000008 */  jr      $t8                        
/* 032E8 80A775F8 00000000 */  nop
glabel L80A775FC
/* 032EC 80A775FC 0C29DC50 */  jal     func_80A77140              
/* 032F0 80A77600 8FA40080 */  lw      $a0, 0x0080($sp)           
/* 032F4 80A77604 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 032F8 80A77608 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 032FC 80A7760C 3C08DA38 */  lui     $t0, 0xDA38                ## $t0 = DA380000
/* 03300 80A77610 35080003 */  ori     $t0, $t0, 0x0003           ## $t0 = DA380003
/* 03304 80A77614 4604003C */  c.lt.s  $f0, $f4                   
/* 03308 80A77618 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0330C 80A7761C 3C0580A8 */  lui     $a1, %hi(D_80A78740)       ## $a1 = 80A80000
/* 03310 80A77620 4500007D */  bc1f    .L80A77818                 
/* 03314 80A77624 00000000 */  nop
/* 03318 80A77628 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0331C 80A7762C 24A58740 */  addiu   $a1, $a1, %lo(D_80A78740)  ## $a1 = 80A78740
/* 03320 80A77630 2406010B */  addiu   $a2, $zero, 0x010B         ## $a2 = 0000010B
/* 03324 80A77634 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 03328 80A77638 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 0332C 80A7763C AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 03330 80A77640 0C0346A2 */  jal     Matrix_NewMtx              
/* 03334 80A77644 AFA20050 */  sw      $v0, 0x0050($sp)           
/* 03338 80A77648 8FA30050 */  lw      $v1, 0x0050($sp)           
/* 0333C 80A7764C 3C0B0601 */  lui     $t3, 0x0601                ## $t3 = 06010000
/* 03340 80A77650 256B6D88 */  addiu   $t3, $t3, 0x6D88           ## $t3 = 06016D88
/* 03344 80A77654 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03348 80A77658 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0334C 80A7765C 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 03350 80A77660 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 03354 80A77664 AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 03358 80A77668 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 0335C 80A7766C 1000006A */  beq     $zero, $zero, .L80A77818   
/* 03360 80A77670 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
glabel L80A77674
/* 03364 80A77674 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03368 80A77678 3C0DDA38 */  lui     $t5, 0xDA38                ## $t5 = DA380000
/* 0336C 80A7767C 35AD0003 */  ori     $t5, $t5, 0x0003           ## $t5 = DA380003
/* 03370 80A77680 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 03374 80A77684 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 03378 80A77688 3C0580A8 */  lui     $a1, %hi(D_80A78758)       ## $a1 = 80A80000
/* 0337C 80A7768C AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 03380 80A77690 24A58758 */  addiu   $a1, $a1, %lo(D_80A78758)  ## $a1 = 80A78758
/* 03384 80A77694 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03388 80A77698 24060112 */  addiu   $a2, $zero, 0x0112         ## $a2 = 00000112
/* 0338C 80A7769C 0C0346A2 */  jal     Matrix_NewMtx              
/* 03390 80A776A0 AFA20048 */  sw      $v0, 0x0048($sp)           
/* 03394 80A776A4 8FA30048 */  lw      $v1, 0x0048($sp)           
/* 03398 80A776A8 3C180601 */  lui     $t8, 0x0601                ## $t8 = 06010000
/* 0339C 80A776AC 27186F88 */  addiu   $t8, $t8, 0x6F88           ## $t8 = 06016F88
/* 033A0 80A776B0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 033A4 80A776B4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 033A8 80A776B8 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 033AC 80A776BC 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 033B0 80A776C0 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 033B4 80A776C4 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 033B8 80A776C8 10000053 */  beq     $zero, $zero, .L80A77818   
/* 033BC 80A776CC AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
glabel L80A776D0
/* 033C0 80A776D0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 033C4 80A776D4 3C08DA38 */  lui     $t0, 0xDA38                ## $t0 = DA380000
/* 033C8 80A776D8 35080003 */  ori     $t0, $t0, 0x0003           ## $t0 = DA380003
/* 033CC 80A776DC 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 033D0 80A776E0 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 033D4 80A776E4 3C0580A8 */  lui     $a1, %hi(D_80A78770)       ## $a1 = 80A80000
/* 033D8 80A776E8 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 033DC 80A776EC 24A58770 */  addiu   $a1, $a1, %lo(D_80A78770)  ## $a1 = 80A78770
/* 033E0 80A776F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 033E4 80A776F4 24060118 */  addiu   $a2, $zero, 0x0118         ## $a2 = 00000118
/* 033E8 80A776F8 0C0346A2 */  jal     Matrix_NewMtx              
/* 033EC 80A776FC AFA20040 */  sw      $v0, 0x0040($sp)           
/* 033F0 80A77700 8FA30040 */  lw      $v1, 0x0040($sp)           
/* 033F4 80A77704 3C0B0601 */  lui     $t3, 0x0601                ## $t3 = 06010000
/* 033F8 80A77708 256B6EE8 */  addiu   $t3, $t3, 0x6EE8           ## $t3 = 06016EE8
/* 033FC 80A7770C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03400 80A77710 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03404 80A77714 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 03408 80A77718 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 0340C 80A7771C AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 03410 80A77720 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 03414 80A77724 1000003C */  beq     $zero, $zero, .L80A77818   
/* 03418 80A77728 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
glabel L80A7772C
/* 0341C 80A7772C 0C29DC50 */  jal     func_80A77140              
/* 03420 80A77730 8FA40080 */  lw      $a0, 0x0080($sp)           
/* 03424 80A77734 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 03428 80A77738 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 0342C 80A7773C 3C0DDA38 */  lui     $t5, 0xDA38                ## $t5 = DA380000
/* 03430 80A77740 35AD0003 */  ori     $t5, $t5, 0x0003           ## $t5 = DA380003
/* 03434 80A77744 4606003C */  c.lt.s  $f0, $f6                   
/* 03438 80A77748 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0343C 80A7774C 3C0580A8 */  lui     $a1, %hi(D_80A78788)       ## $a1 = 80A80000
/* 03440 80A77750 45000031 */  bc1f    .L80A77818                 
/* 03444 80A77754 00000000 */  nop
/* 03448 80A77758 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0344C 80A7775C 24A58788 */  addiu   $a1, $a1, %lo(D_80A78788)  ## $a1 = 80A78788
/* 03450 80A77760 24060120 */  addiu   $a2, $zero, 0x0120         ## $a2 = 00000120
/* 03454 80A77764 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 03458 80A77768 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 0345C 80A7776C AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 03460 80A77770 0C0346A2 */  jal     Matrix_NewMtx              
/* 03464 80A77774 AFA20034 */  sw      $v0, 0x0034($sp)           
/* 03468 80A77778 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 0346C 80A7777C 3C180601 */  lui     $t8, 0x0601                ## $t8 = 06010000
/* 03470 80A77780 27186BE0 */  addiu   $t8, $t8, 0x6BE0           ## $t8 = 06016BE0
/* 03474 80A77784 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03478 80A77788 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0347C 80A7778C 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 03480 80A77790 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 03484 80A77794 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 03488 80A77798 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 0348C 80A7779C 1000001E */  beq     $zero, $zero, .L80A77818   
/* 03490 80A777A0 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
glabel L80A777A4
/* 03494 80A777A4 0C29DC50 */  jal     func_80A77140              
/* 03498 80A777A8 8FA40080 */  lw      $a0, 0x0080($sp)           
/* 0349C 80A777AC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 034A0 80A777B0 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 034A4 80A777B4 3C08DA38 */  lui     $t0, 0xDA38                ## $t0 = DA380000
/* 034A8 80A777B8 35080003 */  ori     $t0, $t0, 0x0003           ## $t0 = DA380003
/* 034AC 80A777BC 4608003C */  c.lt.s  $f0, $f8                   
/* 034B0 80A777C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 034B4 80A777C4 3C0580A8 */  lui     $a1, %hi(D_80A787A0)       ## $a1 = 80A80000
/* 034B8 80A777C8 45000013 */  bc1f    .L80A77818                 
/* 034BC 80A777CC 00000000 */  nop
/* 034C0 80A777D0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 034C4 80A777D4 24A587A0 */  addiu   $a1, $a1, %lo(D_80A787A0)  ## $a1 = 80A787A0
/* 034C8 80A777D8 24060129 */  addiu   $a2, $zero, 0x0129         ## $a2 = 00000129
/* 034CC 80A777DC 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 034D0 80A777E0 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 034D4 80A777E4 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 034D8 80A777E8 0C0346A2 */  jal     Matrix_NewMtx              
/* 034DC 80A777EC AFA20028 */  sw      $v0, 0x0028($sp)           
/* 034E0 80A777F0 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 034E4 80A777F4 3C0B0601 */  lui     $t3, 0x0601                ## $t3 = 06010000
/* 034E8 80A777F8 256B6CD8 */  addiu   $t3, $t3, 0x6CD8           ## $t3 = 06016CD8
/* 034EC 80A777FC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 034F0 80A77800 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 034F4 80A77804 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 034F8 80A77808 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 034FC 80A7780C AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 03500 80A77810 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 03504 80A77814 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
glabel L80A77818
.L80A77818:
/* 03508 80A77818 3C0680A8 */  lui     $a2, %hi(D_80A787B8)       ## $a2 = 80A80000
/* 0350C 80A7781C 24C687B8 */  addiu   $a2, $a2, %lo(D_80A787B8)  ## $a2 = 80A787B8
/* 03510 80A77820 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFE8
/* 03514 80A77824 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 03518 80A77828 0C031AD5 */  jal     Graph_CloseDisps              
/* 0351C 80A7782C 24070130 */  addiu   $a3, $zero, 0x0130         ## $a3 = 00000130
/* 03520 80A77830 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03524 80A77834 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03528 80A77838 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 0352C 80A7783C 03E00008 */  jr      $ra                        
/* 03530 80A77840 00000000 */  nop


