glabel EnGo_Draw
/* 02EC8 80A41438 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 02ECC 80A4143C AFB10028 */  sw      $s1, 0x0028($sp)
/* 02ED0 80A41440 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 02ED4 80A41444 AFBF002C */  sw      $ra, 0x002C($sp)
/* 02ED8 80A41448 AFB00024 */  sw      $s0, 0x0024($sp)
/* 02EDC 80A4144C 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 02EE0 80A41450 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02EE4 80A41454 3C0680A4 */  lui     $a2, %hi(D_80A41C60)       ## $a2 = 80A40000
/* 02EE8 80A41458 24C61C60 */  addiu   $a2, $a2, %lo(D_80A41C60)  ## $a2 = 80A41C60
/* 02EEC 80A4145C 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE8
/* 02EF0 80A41460 240709AF */  addiu   $a3, $zero, 0x09AF         ## $a3 = 000009AF
/* 02EF4 80A41464 0C031AB1 */  jal     Graph_OpenDisps
/* 02EF8 80A41468 AFA50050 */  sw      $a1, 0x0050($sp)
/* 02EFC 80A4146C 0C2905AA */  jal     func_80A416A8
/* 02F00 80A41470 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F04 80A41474 0C034213 */  jal     Matrix_Push
/* 02F08 80A41478 00000000 */  nop
/* 02F0C 80A4147C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F10 80A41480 0C2905ED */  jal     func_80A417B4
/* 02F14 80A41484 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02F18 80A41488 0C034221 */  jal     Matrix_Pull
/* 02F1C 80A4148C 00000000 */  nop
/* 02F20 80A41490 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 02F24 80A41494 3C0E80A4 */  lui     $t6, %hi(func_80A40218)    ## $t6 = 80A40000
/* 02F28 80A41498 25CE0218 */  addiu   $t6, $t6, %lo(func_80A40218) ## $t6 = 80A40218
/* 02F2C 80A4149C 15C20006 */  bne     $t6, $v0, .L80A414B8
/* 02F30 80A414A0 3C0F80A4 */  lui     $t7, %hi(func_80A4011C)    ## $t7 = 80A40000
/* 02F34 80A414A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F38 80A414A8 0C2903D6 */  jal     func_80A40F58
/* 02F3C 80A414AC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02F40 80A414B0 10000050 */  beq     $zero, $zero, .L80A415F4
/* 02F44 80A414B4 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A414B8:
/* 02F48 80A414B8 25EF011C */  addiu   $t7, $t7, %lo(func_80A4011C) ## $t7 = 0000011C
/* 02F4C 80A414BC 11E20008 */  beq     $t7, $v0, .L80A414E0
/* 02F50 80A414C0 3C0380A4 */  lui     $v1, %hi(func_80A3FEB4)    ## $v1 = 80A40000
/* 02F54 80A414C4 2463FEB4 */  addiu   $v1, $v1, %lo(func_80A3FEB4) ## $v1 = 80A3FEB4
/* 02F58 80A414C8 10620005 */  beq     $v1, $v0, .L80A414E0
/* 02F5C 80A414CC 3C1880A4 */  lui     $t8, %hi(func_80A3FEF8)    ## $t8 = 80A40000
/* 02F60 80A414D0 2718FEF8 */  addiu   $t8, $t8, %lo(func_80A3FEF8) ## $t8 = 80A3FEF8
/* 02F64 80A414D4 53020003 */  beql    $t8, $v0, .L80A414E4
/* 02F68 80A414D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F6C 80A414DC 14620005 */  bne     $v1, $v0, .L80A414F4
.L80A414E0:
/* 02F70 80A414E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A414E4:
/* 02F74 80A414E4 0C29041A */  jal     func_80A41068
/* 02F78 80A414E8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02F7C 80A414EC 10000041 */  beq     $zero, $zero, .L80A415F4
/* 02F80 80A414F0 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A414F4:
/* 02F84 80A414F4 0C0250F2 */  jal     func_800943C8
/* 02F88 80A414F8 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 02F8C 80A414FC 8FA50050 */  lw      $a1, 0x0050($sp)
/* 02F90 80A41500 3C040601 */  lui     $a0, %hi(D_0600CE80)                ## $a0 = 06010000
/* 02F94 80A41504 2484CE80 */  addiu   $a0, $a0, %lo(D_0600CE80)           ## $a0 = 0600CE80
/* 02F98 80A41508 8CA302C0 */  lw      $v1, 0x02C0($a1)           ## 000002C0
/* 02F9C 80A4150C 00045100 */  sll     $t2, $a0,  4
/* 02FA0 80A41510 000A5F02 */  srl     $t3, $t2, 28
/* 02FA4 80A41514 3C068016 */  lui     $a2, %hi(gSegments)
/* 02FA8 80A41518 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 02FAC 80A4151C 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 02FB0 80A41520 35290020 */  ori     $t1, $t1, 0x0020           ## $t1 = DB060020
/* 02FB4 80A41524 24C66FA8 */  addiu   $a2, %lo(gSegments)
/* 02FB8 80A41528 000B6080 */  sll     $t4, $t3,  2
/* 02FBC 80A4152C ACB902C0 */  sw      $t9, 0x02C0($a1)           ## 000002C0
/* 02FC0 80A41530 00CC6821 */  addu    $t5, $a2, $t4
/* 02FC4 80A41534 AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 02FC8 80A41538 8DAE0000 */  lw      $t6, 0x0000($t5)           ## 00000000
/* 02FCC 80A4153C 3C0700FF */  lui     $a3, 0x00FF                ## $a3 = 00FF0000
/* 02FD0 80A41540 34E7FFFF */  ori     $a3, $a3, 0xFFFF           ## $a3 = 00FFFFFF
/* 02FD4 80A41544 00877824 */  and     $t7, $a0, $a3
/* 02FD8 80A41548 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 02FDC 80A4154C 01CFC021 */  addu    $t8, $t6, $t7
/* 02FE0 80A41550 0308C821 */  addu    $t9, $t8, $t0
/* 02FE4 80A41554 AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
/* 02FE8 80A41558 8CA302C0 */  lw      $v1, 0x02C0($a1)           ## 000002C0
/* 02FEC 80A4155C 3C040601 */  lui     $a0, %hi(D_0600DE80)                ## $a0 = 06010000
/* 02FF0 80A41560 2484DE80 */  addiu   $a0, $a0, %lo(D_0600DE80)           ## $a0 = 0600DE80
/* 02FF4 80A41564 00045900 */  sll     $t3, $a0,  4
/* 02FF8 80A41568 000B6702 */  srl     $t4, $t3, 28
/* 02FFC 80A4156C 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 03000 80A41570 24690008 */  addiu   $t1, $v1, 0x0008           ## $t1 = 00000008
/* 03004 80A41574 354A0024 */  ori     $t2, $t2, 0x0024           ## $t2 = DB060024
/* 03008 80A41578 000C6880 */  sll     $t5, $t4,  2
/* 0300C 80A4157C ACA902C0 */  sw      $t1, 0x02C0($a1)           ## 000002C0
/* 03010 80A41580 00CD7021 */  addu    $t6, $a2, $t5
/* 03014 80A41584 AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 03018 80A41588 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 0301C 80A4158C 0087C024 */  and     $t8, $a0, $a3
/* 03020 80A41590 3C0A80A4 */  lui     $t2, %hi(func_80A411C8)    ## $t2 = 80A40000
/* 03024 80A41594 01F8C821 */  addu    $t9, $t7, $t8
/* 03028 80A41598 03284821 */  addu    $t1, $t9, $t0
/* 0302C 80A4159C AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 03030 80A415A0 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 03034 80A415A4 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 03038 80A415A8 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 0303C 80A415AC 3C0B80A4 */  lui     $t3, %hi(func_80A413DC)    ## $t3 = 80A40000
/* 03040 80A415B0 256B13DC */  addiu   $t3, $t3, %lo(func_80A413DC) ## $t3 = 80A413DC
/* 03044 80A415B4 254A11C8 */  addiu   $t2, $t2, %lo(func_80A411C8) ## $t2 = 80A411C8
/* 03048 80A415B8 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 0304C 80A415BC AFAB0014 */  sw      $t3, 0x0014($sp)
/* 03050 80A415C0 AFB00018 */  sw      $s0, 0x0018($sp)
/* 03054 80A415C4 0C0286B2 */  jal     SkelAnime_DrawFlexOpa
/* 03058 80A415C8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0305C 80A415CC 3C0680A4 */  lui     $a2, %hi(D_80A41C70)       ## $a2 = 80A40000
/* 03060 80A415D0 24C61C70 */  addiu   $a2, $a2, %lo(D_80A41C70)  ## $a2 = 80A41C70
/* 03064 80A415D4 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE8
/* 03068 80A415D8 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 0306C 80A415DC 0C031AD5 */  jal     Graph_CloseDisps
/* 03070 80A415E0 240709DD */  addiu   $a3, $zero, 0x09DD         ## $a3 = 000009DD
/* 03074 80A415E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03078 80A415E8 0C2905ED */  jal     func_80A417B4
/* 0307C 80A415EC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 03080 80A415F0 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A415F4:
/* 03084 80A415F4 8FB00024 */  lw      $s0, 0x0024($sp)
/* 03088 80A415F8 8FB10028 */  lw      $s1, 0x0028($sp)
/* 0308C 80A415FC 03E00008 */  jr      $ra
/* 03090 80A41600 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
