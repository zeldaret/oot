.rdata
glabel D_80A78650
    .asciz "../z_en_ik_inFight.c"
    .balign 4

glabel D_80A78668
    .asciz "../z_en_ik_inFight.c"
    .balign 4

glabel D_80A78680
    .asciz "../z_en_ik_inFight.c"
    .balign 4

glabel D_80A78698
    .asciz "../z_en_ik_inFight.c"
    .balign 4

glabel D_80A786B0
    .asciz "../z_en_ik_inFight.c"
    .balign 4

glabel D_80A786C8
    .asciz "../z_en_ik_inFight.c"
    .balign 4

glabel D_80A786E0
    .asciz "../z_en_ik_inFight.c"
    .balign 4

.text
glabel func_80A76330
/* 02020 80A76330 27BDFF00 */  addiu   $sp, $sp, 0xFF00           ## $sp = FFFFFF00
/* 02024 80A76334 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 02028 80A76338 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 0202C 80A7633C AFB50038 */  sw      $s5, 0x0038($sp)           
/* 02030 80A76340 AFB40034 */  sw      $s4, 0x0034($sp)           
/* 02034 80A76344 AFB30030 */  sw      $s3, 0x0030($sp)           
/* 02038 80A76348 AFB2002C */  sw      $s2, 0x002C($sp)           
/* 0203C 80A7634C AFB10028 */  sw      $s1, 0x0028($sp)           
/* 02040 80A76350 AFA40100 */  sw      $a0, 0x0100($sp)           
/* 02044 80A76354 AFA50104 */  sw      $a1, 0x0104($sp)           
/* 02048 80A76358 AFA7010C */  sw      $a3, 0x010C($sp)           
/* 0204C 80A7635C 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 02050 80A76360 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 02054 80A76364 3C0680A8 */  lui     $a2, %hi(D_80A78650)       ## $a2 = 80A80000
/* 02058 80A76368 24C68650 */  addiu   $a2, $a2, %lo(D_80A78650)  ## $a2 = 80A78650
/* 0205C 80A7636C 27A400D0 */  addiu   $a0, $sp, 0x00D0           ## $a0 = FFFFFFD0
/* 02060 80A76370 240704B1 */  addiu   $a3, $zero, 0x04B1         ## $a3 = 000004B1
/* 02064 80A76374 0C031AB1 */  jal     Graph_OpenDisps              
/* 02068 80A76378 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 0206C 80A7637C 8FB40110 */  lw      $s4, 0x0110($sp)           
/* 02070 80A76380 8FA50104 */  lw      $a1, 0x0104($sp)           
/* 02074 80A76384 2406001A */  addiu   $a2, $zero, 0x001A         ## $a2 = 0000001A
/* 02078 80A76388 928F02FB */  lbu     $t7, 0x02FB($s4)           ## 000002FB
/* 0207C 80A7638C 2407001B */  addiu   $a3, $zero, 0x001B         ## $a3 = 0000001B
/* 02080 80A76390 2419001C */  addiu   $t9, $zero, 0x001C         ## $t9 = 0000001C
/* 02084 80A76394 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 02088 80A76398 13000006 */  beq     $t8, $zero, .L80A763B4     
/* 0208C 80A7639C 26840308 */  addiu   $a0, $s4, 0x0308           ## $a0 = 00000308
/* 02090 80A763A0 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 02094 80A763A4 AFA80018 */  sw      $t0, 0x0018($sp)           
/* 02098 80A763A8 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 0209C 80A763AC 0C00CBD5 */  jal     func_80032F54              
/* 020A0 80A763B0 AFB00014 */  sw      $s0, 0x0014($sp)           
.L80A763B4:
/* 020A4 80A763B4 8FA30104 */  lw      $v1, 0x0104($sp)           
/* 020A8 80A763B8 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 020AC 80A763BC 3C11DA38 */  lui     $s1, 0xDA38                ## $s1 = DA380000
/* 020B0 80A763C0 14610022 */  bne     $v1, $at, .L80A7644C       
/* 020B4 80A763C4 36310003 */  ori     $s1, $s1, 0x0003           ## $s1 = DA380003
/* 020B8 80A763C8 8EA202D0 */  lw      $v0, 0x02D0($s5)           ## 000002D0
/* 020BC 80A763CC 3C0580A8 */  lui     $a1, %hi(D_80A78668)       ## $a1 = 80A80000
/* 020C0 80A763D0 24A58668 */  addiu   $a1, $a1, %lo(D_80A78668)  ## $a1 = 80A78668
/* 020C4 80A763D4 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 020C8 80A763D8 AEA902D0 */  sw      $t1, 0x02D0($s5)           ## 000002D0
/* 020CC 80A763DC AC510000 */  sw      $s1, 0x0000($v0)           ## 00000000
/* 020D0 80A763E0 8FAA0100 */  lw      $t2, 0x0100($sp)           
/* 020D4 80A763E4 240604C1 */  addiu   $a2, $zero, 0x04C1         ## $a2 = 000004C1
/* 020D8 80A763E8 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 020DC 80A763EC 0C0346A2 */  jal     Matrix_NewMtx              
/* 020E0 80A763F0 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 020E4 80A763F4 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 020E8 80A763F8 868B001C */  lh      $t3, 0x001C($s4)           ## 0000001C
/* 020EC 80A763FC 3C12DE00 */  lui     $s2, 0xDE00                ## $s2 = DE000000
/* 020F0 80A76400 3C0D0602 */  lui     $t5, 0x0602                ## $t5 = 06020000
/* 020F4 80A76404 5160000A */  beql    $t3, $zero, .L80A76430     
/* 020F8 80A76408 8EA202D0 */  lw      $v0, 0x02D0($s5)           ## 000002D0
/* 020FC 80A7640C 8EA202D0 */  lw      $v0, 0x02D0($s5)           ## 000002D0
/* 02100 80A76410 3C12DE00 */  lui     $s2, 0xDE00                ## $s2 = DE000000
/* 02104 80A76414 25AD9E08 */  addiu   $t5, $t5, 0x9E08           ## $t5 = 06019E08
/* 02108 80A76418 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 0210C 80A7641C AEAC02D0 */  sw      $t4, 0x02D0($s5)           ## 000002D0
/* 02110 80A76420 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 02114 80A76424 10000066 */  beq     $zero, $zero, .L80A765C0   
/* 02118 80A76428 AC520000 */  sw      $s2, 0x0000($v0)           ## 00000000
/* 0211C 80A7642C 8EA202D0 */  lw      $v0, 0x02D0($s5)           ## 000002D0
.L80A76430:
/* 02120 80A76430 3C0F0601 */  lui     $t7, 0x0601                ## $t7 = 06010000
/* 02124 80A76434 25EF6D88 */  addiu   $t7, $t7, 0x6D88           ## $t7 = 06016D88
/* 02128 80A76438 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 0212C 80A7643C AEAE02D0 */  sw      $t6, 0x02D0($s5)           ## 000002D0
/* 02130 80A76440 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 02134 80A76444 1000005E */  beq     $zero, $zero, .L80A765C0   
/* 02138 80A76448 AC520000 */  sw      $s2, 0x0000($v0)           ## 00000000
.L80A7644C:
/* 0213C 80A7644C 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 02140 80A76450 1461005B */  bne     $v1, $at, .L80A765C0       
/* 02144 80A76454 3C0480A8 */  lui     $a0, %hi(D_80A7847C)       ## $a0 = 80A80000
/* 02148 80A76458 269103B8 */  addiu   $s1, $s4, 0x03B8           ## $s1 = 000003B8
/* 0214C 80A7645C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 000003B8
/* 02150 80A76460 0C0346BD */  jal     Matrix_MultVec3f              
/* 02154 80A76464 2484847C */  addiu   $a0, $a0, %lo(D_80A7847C)  ## $a0 = 80A7847C
/* 02158 80A76468 3C0480A8 */  lui     $a0, %hi(D_80A78488)       ## $a0 = 80A80000
/* 0215C 80A7646C 269003AC */  addiu   $s0, $s4, 0x03AC           ## $s0 = 000003AC
/* 02160 80A76470 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000003AC
/* 02164 80A76474 0C0346BD */  jal     Matrix_MultVec3f              
/* 02168 80A76478 24848488 */  addiu   $a0, $a0, %lo(D_80A78488)  ## $a0 = 80A78488
/* 0216C 80A7647C 3C0480A8 */  lui     $a0, %hi(D_80A78494)       ## $a0 = 80A80000
/* 02170 80A76480 269303D0 */  addiu   $s3, $s4, 0x03D0           ## $s3 = 000003D0
/* 02174 80A76484 02602825 */  or      $a1, $s3, $zero            ## $a1 = 000003D0
/* 02178 80A76488 0C0346BD */  jal     Matrix_MultVec3f              
/* 0217C 80A7648C 24848494 */  addiu   $a0, $a0, %lo(D_80A78494)  ## $a0 = 80A78494
/* 02180 80A76490 3C0480A8 */  lui     $a0, %hi(D_80A784A0)       ## $a0 = 80A80000
/* 02184 80A76494 269203C4 */  addiu   $s2, $s4, 0x03C4           ## $s2 = 000003C4
/* 02188 80A76498 02402825 */  or      $a1, $s2, $zero            ## $a1 = 000003C4
/* 0218C 80A7649C 0C0346BD */  jal     Matrix_MultVec3f              
/* 02190 80A764A0 248484A0 */  addiu   $a0, $a0, %lo(D_80A784A0)  ## $a0 = 80A784A0
/* 02194 80A764A4 2684036C */  addiu   $a0, $s4, 0x036C           ## $a0 = 0000036C
/* 02198 80A764A8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000003AC
/* 0219C 80A764AC 02203025 */  or      $a2, $s1, $zero            ## $a2 = 000003B8
/* 021A0 80A764B0 02403825 */  or      $a3, $s2, $zero            ## $a3 = 000003C4
/* 021A4 80A764B4 0C0189CD */  jal     func_80062734              
/* 021A8 80A764B8 AFB30010 */  sw      $s3, 0x0010($sp)           
/* 021AC 80A764BC 27B000F4 */  addiu   $s0, $sp, 0x00F4           ## $s0 = FFFFFFF4
/* 021B0 80A764C0 3C0480A8 */  lui     $a0, %hi(D_80A7847C)       ## $a0 = 80A80000
/* 021B4 80A764C4 2484847C */  addiu   $a0, $a0, %lo(D_80A7847C)  ## $a0 = 80A7847C
/* 021B8 80A764C8 0C0346BD */  jal     Matrix_MultVec3f              
/* 021BC 80A764CC 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFFF4
/* 021C0 80A764D0 27B100E8 */  addiu   $s1, $sp, 0x00E8           ## $s1 = FFFFFFE8
/* 021C4 80A764D4 3C0480A8 */  lui     $a0, %hi(D_80A78488)       ## $a0 = 80A80000
/* 021C8 80A764D8 24848488 */  addiu   $a0, $a0, %lo(D_80A78488)  ## $a0 = 80A78488
/* 021CC 80A764DC 0C0346BD */  jal     Matrix_MultVec3f              
/* 021D0 80A764E0 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFE8
/* 021D4 80A764E4 828202FE */  lb      $v0, 0x02FE($s4)           ## 000002FE
/* 021D8 80A764E8 18400009 */  blez    $v0, .L80A76510            
/* 021DC 80A764EC 00000000 */  nop
/* 021E0 80A764F0 0C009AC3 */  jal     func_80026B0C              
/* 021E4 80A764F4 8E8404C4 */  lw      $a0, 0x04C4($s4)           ## 000004C4
/* 021E8 80A764F8 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 021EC 80A764FC 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFFF4
/* 021F0 80A76500 0C007F7C */  jal     func_8001FDF0              
/* 021F4 80A76504 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFE8
/* 021F8 80A76508 1000000A */  beq     $zero, $zero, .L80A76534   
/* 021FC 80A7650C 929902F8 */  lbu     $t9, 0x02F8($s4)           ## 000002F8
.L80A76510:
/* 02200 80A76510 54400008 */  bnel    $v0, $zero, .L80A76534     
/* 02204 80A76514 929902F8 */  lbu     $t9, 0x02F8($s4)           ## 000002F8
/* 02208 80A76518 0C009AC3 */  jal     func_80026B0C              
/* 0220C 80A7651C 8E8404C4 */  lw      $a0, 0x04C4($s4)           ## 000004C4
/* 02210 80A76520 0C008048 */  jal     func_80020120              
/* 02214 80A76524 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 02218 80A76528 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 0221C 80A7652C A29802FE */  sb      $t8, 0x02FE($s4)           ## 000002FE
/* 02220 80A76530 929902F8 */  lbu     $t9, 0x02F8($s4)           ## 000002F8
.L80A76534:
/* 02224 80A76534 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 02228 80A76538 3C1180A8 */  lui     $s1, %hi(D_80A784AC)       ## $s1 = 80A80000
/* 0222C 80A7653C 17210020 */  bne     $t9, $at, .L80A765C0       
/* 02230 80A76540 263184AC */  addiu   $s1, $s1, %lo(D_80A784AC)  ## $s1 = 80A784AC
/* 02234 80A76544 3C1380A8 */  lui     $s3, %hi(D_80A784D0)       ## $s3 = 80A80000
/* 02238 80A76548 267384D0 */  addiu   $s3, $s3, %lo(D_80A784D0)  ## $s3 = 80A784D0
/* 0223C 80A7654C 27B2009C */  addiu   $s2, $sp, 0x009C           ## $s2 = FFFFFF9C
/* 02240 80A76550 27B00078 */  addiu   $s0, $sp, 0x0078           ## $s0 = FFFFFF78
.L80A76554:
/* 02244 80A76554 02202025 */  or      $a0, $s1, $zero            ## $a0 = 80A784AC
/* 02248 80A76558 0C0346BD */  jal     Matrix_MultVec3f              
/* 0224C 80A7655C 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFF9C
/* 02250 80A76560 02602025 */  or      $a0, $s3, $zero            ## $a0 = 80A784D0
/* 02254 80A76564 0C0346BD */  jal     Matrix_MultVec3f              
/* 02258 80A76568 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFF78
/* 0225C 80A7656C 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = FFFFFF84
/* 02260 80A76570 27A8009C */  addiu   $t0, $sp, 0x009C           ## $t0 = FFFFFF9C
/* 02264 80A76574 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 80A784B8
/* 02268 80A76578 2652000C */  addiu   $s2, $s2, 0x000C           ## $s2 = FFFFFFA8
/* 0226C 80A7657C 1608FFF5 */  bne     $s0, $t0, .L80A76554       
/* 02270 80A76580 2673000C */  addiu   $s3, $s3, 0x000C           ## $s3 = 80A784DC
/* 02274 80A76584 269003EC */  addiu   $s0, $s4, 0x03EC           ## $s0 = 000003EC
/* 02278 80A76588 27A900B4 */  addiu   $t1, $sp, 0x00B4           ## $t1 = FFFFFFB4
/* 0227C 80A7658C AFA90010 */  sw      $t1, 0x0010($sp)           
/* 02280 80A76590 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000003EC
/* 02284 80A76594 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02288 80A76598 27A6009C */  addiu   $a2, $sp, 0x009C           ## $a2 = FFFFFF9C
/* 0228C 80A7659C 0C0189E8 */  jal     func_800627A0              
/* 02290 80A765A0 27A700A8 */  addiu   $a3, $sp, 0x00A8           ## $a3 = FFFFFFA8
/* 02294 80A765A4 27AA0090 */  addiu   $t2, $sp, 0x0090           ## $t2 = FFFFFF90
/* 02298 80A765A8 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 0229C 80A765AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000003EC
/* 022A0 80A765B0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 022A4 80A765B4 27A60078 */  addiu   $a2, $sp, 0x0078           ## $a2 = FFFFFF78
/* 022A8 80A765B8 0C0189E8 */  jal     func_800627A0              
/* 022AC 80A765BC 27A70084 */  addiu   $a3, $sp, 0x0084           ## $a3 = FFFFFF84
.L80A765C0:
/* 022B0 80A765C0 8FA30104 */  lw      $v1, 0x0104($sp)           
/* 022B4 80A765C4 3C11DA38 */  lui     $s1, 0xDA38                ## $s1 = DA380000
/* 022B8 80A765C8 24010016 */  addiu   $at, $zero, 0x0016         ## $at = 00000016
/* 022BC 80A765CC 36310003 */  ori     $s1, $s1, 0x0003           ## $s1 = DA380003
/* 022C0 80A765D0 1061000B */  beq     $v1, $at, .L80A76600       
/* 022C4 80A765D4 3C12DE00 */  lui     $s2, 0xDE00                ## $s2 = DE000000
/* 022C8 80A765D8 24010018 */  addiu   $at, $zero, 0x0018         ## $at = 00000018
/* 022CC 80A765DC 1061001C */  beq     $v1, $at, .L80A76650       
/* 022D0 80A765E0 3C0580A8 */  lui     $a1, %hi(D_80A78698)       ## $a1 = 80A80000
/* 022D4 80A765E4 2401001A */  addiu   $at, $zero, 0x001A         ## $at = 0000001A
/* 022D8 80A765E8 1061002C */  beq     $v1, $at, .L80A7669C       
/* 022DC 80A765EC 2401001B */  addiu   $at, $zero, 0x001B         ## $at = 0000001B
/* 022E0 80A765F0 50610043 */  beql    $v1, $at, .L80A76700       
/* 022E4 80A765F4 928F02FA */  lbu     $t7, 0x02FA($s4)           ## 000002FA
/* 022E8 80A765F8 10000058 */  beq     $zero, $zero, .L80A7675C   
/* 022EC 80A765FC 8FAB0100 */  lw      $t3, 0x0100($sp)           
.L80A76600:
/* 022F0 80A76600 8EA202D0 */  lw      $v0, 0x02D0($s5)           ## 000002D0
/* 022F4 80A76604 3C0580A8 */  lui     $a1, %hi(D_80A78680)       ## $a1 = 80A80000
/* 022F8 80A76608 24A58680 */  addiu   $a1, $a1, %lo(D_80A78680)  ## $a1 = 80A78680
/* 022FC 80A7660C 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 02300 80A76610 AEAB02D0 */  sw      $t3, 0x02D0($s5)           ## 000002D0
/* 02304 80A76614 AC510000 */  sw      $s1, 0x0000($v0)           ## 00000000
/* 02308 80A76618 8FAC0100 */  lw      $t4, 0x0100($sp)           
/* 0230C 80A7661C 240604F6 */  addiu   $a2, $zero, 0x04F6         ## $a2 = 000004F6
/* 02310 80A76620 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 02314 80A76624 0C0346A2 */  jal     Matrix_NewMtx              
/* 02318 80A76628 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 0231C 80A7662C AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 02320 80A76630 8EA202D0 */  lw      $v0, 0x02D0($s5)           ## 000002D0
/* 02324 80A76634 3C0E0601 */  lui     $t6, 0x0601                ## $t6 = 06010000
/* 02328 80A76638 25CE6F88 */  addiu   $t6, $t6, 0x6F88           ## $t6 = 06016F88
/* 0232C 80A7663C 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 02330 80A76640 AEAD02D0 */  sw      $t5, 0x02D0($s5)           ## 000002D0
/* 02334 80A76644 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 02338 80A76648 10000043 */  beq     $zero, $zero, .L80A76758   
/* 0233C 80A7664C AC520000 */  sw      $s2, 0x0000($v0)           ## 00000000
.L80A76650:
/* 02340 80A76650 8EA202D0 */  lw      $v0, 0x02D0($s5)           ## 000002D0
/* 02344 80A76654 24A58698 */  addiu   $a1, $a1, %lo(D_80A78698)  ## $a1 = FFFF8698
/* 02348 80A76658 240604FB */  addiu   $a2, $zero, 0x04FB         ## $a2 = 000004FB
/* 0234C 80A7665C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 02350 80A76660 AEAF02D0 */  sw      $t7, 0x02D0($s5)           ## 000002D0
/* 02354 80A76664 AC510000 */  sw      $s1, 0x0000($v0)           ## 00000000
/* 02358 80A76668 8FB80100 */  lw      $t8, 0x0100($sp)           
/* 0235C 80A7666C 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 02360 80A76670 0C0346A2 */  jal     Matrix_NewMtx              
/* 02364 80A76674 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 02368 80A76678 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 0236C 80A7667C 8EA202D0 */  lw      $v0, 0x02D0($s5)           ## 000002D0
/* 02370 80A76680 3C080601 */  lui     $t0, 0x0601                ## $t0 = 06010000
/* 02374 80A76684 25086EE8 */  addiu   $t0, $t0, 0x6EE8           ## $t0 = 06016EE8
/* 02378 80A76688 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 0237C 80A7668C AEB902D0 */  sw      $t9, 0x02D0($s5)           ## 000002D0
/* 02380 80A76690 AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 02384 80A76694 10000030 */  beq     $zero, $zero, .L80A76758   
/* 02388 80A76698 AC520000 */  sw      $s2, 0x0000($v0)           ## 00000000
.L80A7669C:
/* 0238C 80A7669C 928902FA */  lbu     $t1, 0x02FA($s4)           ## 000002FA
/* 02390 80A766A0 3C0580A8 */  lui     $a1, %hi(D_80A786B0)       ## $a1 = 80A80000
/* 02394 80A766A4 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 02398 80A766A8 5540002C */  bnel    $t2, $zero, .L80A7675C     
/* 0239C 80A766AC 8FAB0100 */  lw      $t3, 0x0100($sp)           
/* 023A0 80A766B0 8EA202D0 */  lw      $v0, 0x02D0($s5)           ## 000002D0
/* 023A4 80A766B4 24A586B0 */  addiu   $a1, $a1, %lo(D_80A786B0)  ## $a1 = 80A786B0
/* 023A8 80A766B8 24060501 */  addiu   $a2, $zero, 0x0501         ## $a2 = 00000501
/* 023AC 80A766BC 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 023B0 80A766C0 AEAB02D0 */  sw      $t3, 0x02D0($s5)           ## 000002D0
/* 023B4 80A766C4 AC510000 */  sw      $s1, 0x0000($v0)           ## 00000000
/* 023B8 80A766C8 8FAC0100 */  lw      $t4, 0x0100($sp)           
/* 023BC 80A766CC 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 023C0 80A766D0 0C0346A2 */  jal     Matrix_NewMtx              
/* 023C4 80A766D4 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 023C8 80A766D8 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 023CC 80A766DC 8EA202D0 */  lw      $v0, 0x02D0($s5)           ## 000002D0
/* 023D0 80A766E0 3C0E0601 */  lui     $t6, 0x0601                ## $t6 = 06010000
/* 023D4 80A766E4 25CE6BE0 */  addiu   $t6, $t6, 0x6BE0           ## $t6 = 06016BE0
/* 023D8 80A766E8 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 023DC 80A766EC AEAD02D0 */  sw      $t5, 0x02D0($s5)           ## 000002D0
/* 023E0 80A766F0 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 023E4 80A766F4 10000018 */  beq     $zero, $zero, .L80A76758   
/* 023E8 80A766F8 AC520000 */  sw      $s2, 0x0000($v0)           ## 00000000
/* 023EC 80A766FC 928F02FA */  lbu     $t7, 0x02FA($s4)           ## 000002FA
.L80A76700:
/* 023F0 80A76700 3C0580A8 */  lui     $a1, %hi(D_80A786C8)       ## $a1 = 80A80000
/* 023F4 80A76704 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 023F8 80A76708 57000014 */  bnel    $t8, $zero, .L80A7675C     
/* 023FC 80A7670C 8FAB0100 */  lw      $t3, 0x0100($sp)           
/* 02400 80A76710 8EA202D0 */  lw      $v0, 0x02D0($s5)           ## 000002D0
/* 02404 80A76714 24A586C8 */  addiu   $a1, $a1, %lo(D_80A786C8)  ## $a1 = 80A786C8
/* 02408 80A76718 24060508 */  addiu   $a2, $zero, 0x0508         ## $a2 = 00000508
/* 0240C 80A7671C 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 02410 80A76720 AEB902D0 */  sw      $t9, 0x02D0($s5)           ## 000002D0
/* 02414 80A76724 AC510000 */  sw      $s1, 0x0000($v0)           ## 00000000
/* 02418 80A76728 8FA80100 */  lw      $t0, 0x0100($sp)           
/* 0241C 80A7672C 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 02420 80A76730 0C0346A2 */  jal     Matrix_NewMtx              
/* 02424 80A76734 8D040000 */  lw      $a0, 0x0000($t0)           ## 00000000
/* 02428 80A76738 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 0242C 80A7673C 8EA202D0 */  lw      $v0, 0x02D0($s5)           ## 000002D0
/* 02430 80A76740 3C0A0601 */  lui     $t2, 0x0601                ## $t2 = 06010000
/* 02434 80A76744 254A6CD8 */  addiu   $t2, $t2, 0x6CD8           ## $t2 = 06016CD8
/* 02438 80A76748 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 0243C 80A7674C AEA902D0 */  sw      $t1, 0x02D0($s5)           ## 000002D0
/* 02440 80A76750 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 02444 80A76754 AC520000 */  sw      $s2, 0x0000($v0)           ## 00000000
.L80A76758:
/* 02448 80A76758 8FAB0100 */  lw      $t3, 0x0100($sp)           
.L80A7675C:
/* 0244C 80A7675C 3C0680A8 */  lui     $a2, %hi(D_80A786E0)       ## $a2 = 80A80000
/* 02450 80A76760 24C686E0 */  addiu   $a2, $a2, %lo(D_80A786E0)  ## $a2 = 80A786E0
/* 02454 80A76764 27A400D0 */  addiu   $a0, $sp, 0x00D0           ## $a0 = FFFFFFD0
/* 02458 80A76768 2407050E */  addiu   $a3, $zero, 0x050E         ## $a3 = 0000050E
/* 0245C 80A7676C 0C031AD5 */  jal     Graph_CloseDisps              
/* 02460 80A76770 8D650000 */  lw      $a1, 0x0000($t3)           ## 00000000
/* 02464 80A76774 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 02468 80A76778 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 0246C 80A7677C 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 02470 80A76780 8FB2002C */  lw      $s2, 0x002C($sp)           
/* 02474 80A76784 8FB30030 */  lw      $s3, 0x0030($sp)           
/* 02478 80A76788 8FB40034 */  lw      $s4, 0x0034($sp)           
/* 0247C 80A7678C 8FB50038 */  lw      $s5, 0x0038($sp)           
/* 02480 80A76790 03E00008 */  jr      $ra                        
/* 02484 80A76794 27BD0100 */  addiu   $sp, $sp, 0x0100           ## $sp = 00000000
