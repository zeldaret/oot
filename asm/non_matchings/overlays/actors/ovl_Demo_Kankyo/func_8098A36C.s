.rdata
glabel D_8098C8D4
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C8E8
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C8FC
    .asciz "../z_demo_kankyo.c"
    .balign 4

.late_rodata
glabel D_8098CB38
 .word 0x3C8EFA35
glabel D_8098CB3C
 .word 0x3C8EFA35
glabel D_8098CB40
 .word 0x3C8EFA35

.text
glabel func_8098A36C
/* 014EC 8098A36C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 014F0 8098A370 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 014F4 8098A374 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 014F8 8098A378 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 014FC 8098A37C AFA50054 */  sw      $a1, 0x0054($sp)           
/* 01500 8098A380 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01504 8098A384 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01508 8098A388 3C068099 */  lui     $a2, %hi(D_8098C8D4)       ## $a2 = 80990000
/* 0150C 8098A38C 24C6C8D4 */  addiu   $a2, $a2, %lo(D_8098C8D4)  ## $a2 = 8098C8D4
/* 01510 8098A390 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 01514 8098A394 24070560 */  addiu   $a3, $zero, 0x0560         ## $a3 = 00000560
/* 01518 8098A398 0C031AB1 */  jal     Graph_OpenDisps              
/* 0151C 8098A39C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01520 8098A3A0 8FAF0054 */  lw      $t7, 0x0054($sp)           
/* 01524 8098A3A4 0C024F46 */  jal     func_80093D18              
/* 01528 8098A3A8 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 0152C 8098A3AC C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 00000024
/* 01530 8098A3B0 C60E0028 */  lwc1    $f14, 0x0028($s0)          ## 00000028
/* 01534 8098A3B4 8E06002C */  lw      $a2, 0x002C($s0)           ## 0000002C
/* 01538 8098A3B8 0C034261 */  jal     Matrix_Translate              
/* 0153C 8098A3BC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01540 8098A3C0 3C018099 */  lui     $at, %hi(D_8098CB38)       ## $at = 80990000
/* 01544 8098A3C4 C426CB38 */  lwc1    $f6, %lo(D_8098CB38)($at)  
/* 01548 8098A3C8 C604015C */  lwc1    $f4, 0x015C($s0)           ## 0000015C
/* 0154C 8098A3CC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01550 8098A3D0 46062302 */  mul.s   $f12, $f4, $f6             
/* 01554 8098A3D4 0C0342DC */  jal     Matrix_RotateX              
/* 01558 8098A3D8 00000000 */  nop
/* 0155C 8098A3DC 3C018099 */  lui     $at, %hi(D_8098CB3C)       ## $at = 80990000
/* 01560 8098A3E0 C42ACB3C */  lwc1    $f10, %lo(D_8098CB3C)($at) 
/* 01564 8098A3E4 C6080160 */  lwc1    $f8, 0x0160($s0)           ## 00000160
/* 01568 8098A3E8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0156C 8098A3EC 460A4302 */  mul.s   $f12, $f8, $f10            
/* 01570 8098A3F0 0C034348 */  jal     Matrix_RotateY              
/* 01574 8098A3F4 00000000 */  nop
/* 01578 8098A3F8 3C018099 */  lui     $at, %hi(D_8098CB40)       ## $at = 80990000
/* 0157C 8098A3FC C432CB40 */  lwc1    $f18, %lo(D_8098CB40)($at) 
/* 01580 8098A400 C6100164 */  lwc1    $f16, 0x0164($s0)          ## 00000164
/* 01584 8098A404 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01588 8098A408 46128302 */  mul.s   $f12, $f16, $f18           
/* 0158C 8098A40C 0C0343B5 */  jal     Matrix_RotateZ              
/* 01590 8098A410 00000000 */  nop
/* 01594 8098A414 C60C0050 */  lwc1    $f12, 0x0050($s0)          ## 00000050
/* 01598 8098A418 C60E0054 */  lwc1    $f14, 0x0054($s0)          ## 00000054
/* 0159C 8098A41C 8E060058 */  lw      $a2, 0x0058($s0)           ## 00000058
/* 015A0 8098A420 0C0342A3 */  jal     Matrix_Scale              
/* 015A4 8098A424 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 015A8 8098A428 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 015AC 8098A42C 3C08FF9B */  lui     $t0, 0xFF9B                ## $t0 = FF9B0000
/* 015B0 8098A430 350837FF */  ori     $t0, $t0, 0x37FF           ## $t0 = FF9B37FF
/* 015B4 8098A434 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 015B8 8098A438 AE3802C0 */  sw      $t8, 0x02C0($s1)           ## 000002C0
/* 015BC 8098A43C 3C19FA00 */  lui     $t9, 0xFA00                ## $t9 = FA000000
/* 015C0 8098A440 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 015C4 8098A444 AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 015C8 8098A448 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 015CC 8098A44C 3C0B9BFF */  lui     $t3, 0x9BFF                ## $t3 = 9BFF0000
/* 015D0 8098A450 356B37FF */  ori     $t3, $t3, 0x37FF           ## $t3 = 9BFF37FF
/* 015D4 8098A454 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 015D8 8098A458 AE2902C0 */  sw      $t1, 0x02C0($s1)           ## 000002C0
/* 015DC 8098A45C 3C0AFB00 */  lui     $t2, 0xFB00                ## $t2 = FB000000
/* 015E0 8098A460 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 015E4 8098A464 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 015E8 8098A468 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 015EC 8098A46C 3C0DDA38 */  lui     $t5, 0xDA38                ## $t5 = DA380000
/* 015F0 8098A470 35AD0003 */  ori     $t5, $t5, 0x0003           ## $t5 = DA380003
/* 015F4 8098A474 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 015F8 8098A478 AE2C02C0 */  sw      $t4, 0x02C0($s1)           ## 000002C0
/* 015FC 8098A47C AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01600 8098A480 8FAE0054 */  lw      $t6, 0x0054($sp)           
/* 01604 8098A484 3C058099 */  lui     $a1, %hi(D_8098C8E8)       ## $a1 = 80990000
/* 01608 8098A488 24A5C8E8 */  addiu   $a1, $a1, %lo(D_8098C8E8)  ## $a1 = 8098C8E8
/* 0160C 8098A48C 2406057C */  addiu   $a2, $zero, 0x057C         ## $a2 = 0000057C
/* 01610 8098A490 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 01614 8098A494 0C0346A2 */  jal     Matrix_NewMtx              
/* 01618 8098A498 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 0161C 8098A49C AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 01620 8098A4A0 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 01624 8098A4A4 3C190600 */  lui     $t9, 0x0600                ## $t9 = 06000000
/* 01628 8098A4A8 27390DE0 */  addiu   $t9, $t9, 0x0DE0           ## $t9 = 06000DE0
/* 0162C 8098A4AC 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01630 8098A4B0 AE2F02C0 */  sw      $t7, 0x02C0($s1)           ## 000002C0
/* 01634 8098A4B4 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 01638 8098A4B8 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 0163C 8098A4BC AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 01640 8098A4C0 8FA80054 */  lw      $t0, 0x0054($sp)           
/* 01644 8098A4C4 3C068099 */  lui     $a2, %hi(D_8098C8FC)       ## $a2 = 80990000
/* 01648 8098A4C8 24C6C8FC */  addiu   $a2, $a2, %lo(D_8098C8FC)  ## $a2 = 8098C8FC
/* 0164C 8098A4CC 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 01650 8098A4D0 24070581 */  addiu   $a3, $zero, 0x0581         ## $a3 = 00000581
/* 01654 8098A4D4 0C031AD5 */  jal     Graph_CloseDisps              
/* 01658 8098A4D8 8D050000 */  lw      $a1, 0x0000($t0)           ## 00000000
/* 0165C 8098A4DC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01660 8098A4E0 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 01664 8098A4E4 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 01668 8098A4E8 03E00008 */  jr      $ra                        
/* 0166C 8098A4EC 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000


