.late_rodata
glabel jtbl_809FABAC
.word L809FA2E4
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA338
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA40C
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA494
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4AC
glabel jtbl_809FAC18
.word L809FA4F0
.word L809FA540
.word L809FA540
.word L809FA540
.word L809FA540
.word L809FA540
.word L809FA504
.word L809FA50C
.word L809FA514
.word L809FA51C
.word L809FA540
.word L809FA540
.word L809FA540
.word L809FA540
.word L809FA534
.word L809FA524
.word L809FA540
.word L809FA540
.word L809FA540
.word L809FA540
.word L809FA540
.word L809FA53C
.word L809FA52C

.text
glabel func_809FA14C
/* 01EFC 809FA14C 27BDFE78 */  addiu   $sp, $sp, 0xFE78           ## $sp = FFFFFE78
/* 01F00 809FA150 3C0E80A0 */  lui     $t6, %hi(D_809FAA9C)       ## $t6 = 80A00000
/* 01F04 809FA154 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 01F08 809FA158 AFB60038 */  sw      $s6, 0x0038($sp)           
/* 01F0C 809FA15C AFB50034 */  sw      $s5, 0x0034($sp)           
/* 01F10 809FA160 AFB40030 */  sw      $s4, 0x0030($sp)           
/* 01F14 809FA164 AFB3002C */  sw      $s3, 0x002C($sp)           
/* 01F18 809FA168 AFB20028 */  sw      $s2, 0x0028($sp)           
/* 01F1C 809FA16C AFB10024 */  sw      $s1, 0x0024($sp)           
/* 01F20 809FA170 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01F24 809FA174 AFA60190 */  sw      $a2, 0x0190($sp)           
/* 01F28 809FA178 AFA70194 */  sw      $a3, 0x0194($sp)           
/* 01F2C 809FA17C 25CEAA9C */  addiu   $t6, $t6, %lo(D_809FAA9C)  ## $t6 = 809FAA9C
/* 01F30 809FA180 8DD80000 */  lw      $t8, 0x0000($t6)           ## 809FAA9C
/* 01F34 809FA184 27B1017C */  addiu   $s1, $sp, 0x017C           ## $s1 = FFFFFFF4
/* 01F38 809FA188 8FB60198 */  lw      $s6, 0x0198($sp)           
/* 01F3C 809FA18C AE380000 */  sw      $t8, 0x0000($s1)           ## FFFFFFF4
/* 01F40 809FA190 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 809FAAA0
/* 01F44 809FA194 3C0880A0 */  lui     $t0, %hi(D_809FAAA8)       ## $t0 = 80A00000
/* 01F48 809FA198 2508AAA8 */  addiu   $t0, $t0, %lo(D_809FAAA8)  ## $t0 = 809FAAA8
/* 01F4C 809FA19C AE2F0004 */  sw      $t7, 0x0004($s1)           ## FFFFFFF8
/* 01F50 809FA1A0 8DD80008 */  lw      $t8, 0x0008($t6)           ## 809FAAA4
/* 01F54 809FA1A4 27B90170 */  addiu   $t9, $sp, 0x0170           ## $t9 = FFFFFFE8
/* 01F58 809FA1A8 3C0C80A0 */  lui     $t4, %hi(D_809FAAB4)       ## $t4 = 80A00000
/* 01F5C 809FA1AC AE380008 */  sw      $t8, 0x0008($s1)           ## FFFFFFFC
/* 01F60 809FA1B0 8D0A0000 */  lw      $t2, 0x0000($t0)           ## 809FAAA8
/* 01F64 809FA1B4 8D090004 */  lw      $t1, 0x0004($t0)           ## 809FAAAC
/* 01F68 809FA1B8 258CAAB4 */  addiu   $t4, $t4, %lo(D_809FAAB4)  ## $t4 = 809FAAB4
/* 01F6C 809FA1BC AF2A0000 */  sw      $t2, 0x0000($t9)           ## FFFFFFE8
/* 01F70 809FA1C0 8D0A0008 */  lw      $t2, 0x0008($t0)           ## 809FAAB0
/* 01F74 809FA1C4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01F78 809FA1C8 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 01F7C 809FA1CC 258F0024 */  addiu   $t7, $t4, 0x0024           ## $t7 = 809FAAD8
/* 01F80 809FA1D0 27AB00C0 */  addiu   $t3, $sp, 0x00C0           ## $t3 = FFFFFF38
/* 01F84 809FA1D4 AF290004 */  sw      $t1, 0x0004($t9)           ## FFFFFFEC
/* 01F88 809FA1D8 AF2A0008 */  sw      $t2, 0x0008($t9)           ## FFFFFFF0
.L809FA1DC:
/* 01F8C 809FA1DC 8D8E0000 */  lw      $t6, 0x0000($t4)           ## 809FAAB4
/* 01F90 809FA1E0 258C000C */  addiu   $t4, $t4, 0x000C           ## $t4 = 809FAAC0
/* 01F94 809FA1E4 256B000C */  addiu   $t3, $t3, 0x000C           ## $t3 = FFFFFF44
/* 01F98 809FA1E8 AD6EFFF4 */  sw      $t6, -0x000C($t3)          ## FFFFFF38
/* 01F9C 809FA1EC 8D8DFFF8 */  lw      $t5, -0x0008($t4)          ## 809FAAB8
/* 01FA0 809FA1F0 AD6DFFF8 */  sw      $t5, -0x0008($t3)          ## FFFFFF3C
/* 01FA4 809FA1F4 8D8EFFFC */  lw      $t6, -0x0004($t4)          ## 809FAABC
/* 01FA8 809FA1F8 158FFFF8 */  bne     $t4, $t7, .L809FA1DC       
/* 01FAC 809FA1FC AD6EFFFC */  sw      $t6, -0x0004($t3)          ## FFFFFF40
/* 01FB0 809FA200 3C1980A0 */  lui     $t9, %hi(D_809FAAD8)       ## $t9 = 80A00000
/* 01FB4 809FA204 2739AAD8 */  addiu   $t9, $t9, %lo(D_809FAAD8)  ## $t9 = 809FAAD8
/* 01FB8 809FA208 272A0024 */  addiu   $t2, $t9, 0x0024           ## $t2 = 809FAAFC
/* 01FBC 809FA20C 27B8009C */  addiu   $t8, $sp, 0x009C           ## $t8 = FFFFFF14
.L809FA210:
/* 01FC0 809FA210 8F290000 */  lw      $t1, 0x0000($t9)           ## 809FAAD8
/* 01FC4 809FA214 2739000C */  addiu   $t9, $t9, 0x000C           ## $t9 = 809FAAE4
/* 01FC8 809FA218 2718000C */  addiu   $t8, $t8, 0x000C           ## $t8 = FFFFFF20
/* 01FCC 809FA21C AF09FFF4 */  sw      $t1, -0x000C($t8)          ## FFFFFF14
/* 01FD0 809FA220 8F28FFF8 */  lw      $t0, -0x0008($t9)          ## 809FAADC
/* 01FD4 809FA224 AF08FFF8 */  sw      $t0, -0x0008($t8)          ## FFFFFF18
/* 01FD8 809FA228 8F29FFFC */  lw      $t1, -0x0004($t9)          ## 809FAAE0
/* 01FDC 809FA22C 172AFFF8 */  bne     $t9, $t2, .L809FA210       
/* 01FE0 809FA230 AF09FFFC */  sw      $t1, -0x0004($t8)          ## FFFFFF1C
/* 01FE4 809FA234 3C0C80A0 */  lui     $t4, %hi(D_809FAAFC)       ## $t4 = 80A00000
/* 01FE8 809FA238 258CAAFC */  addiu   $t4, $t4, %lo(D_809FAAFC)  ## $t4 = 809FAAFC
/* 01FEC 809FA23C 258E0024 */  addiu   $t6, $t4, 0x0024           ## $t6 = 809FAB20
/* 01FF0 809FA240 27AF0078 */  addiu   $t7, $sp, 0x0078           ## $t7 = FFFFFEF0
.L809FA244:
/* 01FF4 809FA244 8D8D0000 */  lw      $t5, 0x0000($t4)           ## 809FAAFC
/* 01FF8 809FA248 258C000C */  addiu   $t4, $t4, 0x000C           ## $t4 = 809FAB08
/* 01FFC 809FA24C 25EF000C */  addiu   $t7, $t7, 0x000C           ## $t7 = FFFFFEFC
/* 02000 809FA250 ADEDFFF4 */  sw      $t5, -0x000C($t7)          ## FFFFFEF0
/* 02004 809FA254 8D8BFFF8 */  lw      $t3, -0x0008($t4)          ## 809FAB00
/* 02008 809FA258 ADEBFFF8 */  sw      $t3, -0x0008($t7)          ## FFFFFEF4
/* 0200C 809FA25C 8D8DFFFC */  lw      $t5, -0x0004($t4)          ## 809FAB04
/* 02010 809FA260 158EFFF8 */  bne     $t4, $t6, .L809FA244       
/* 02014 809FA264 ADEDFFFC */  sw      $t5, -0x0004($t7)          ## FFFFFEF8
/* 02018 809FA268 3C1980A0 */  lui     $t9, %hi(D_809FAB20)       ## $t9 = 80A00000
/* 0201C 809FA26C 2739AB20 */  addiu   $t9, $t9, %lo(D_809FAB20)  ## $t9 = 809FAB20
/* 02020 809FA270 8F280000 */  lw      $t0, 0x0000($t9)           ## 809FAB20
/* 02024 809FA274 27AA006C */  addiu   $t2, $sp, 0x006C           ## $t2 = FFFFFEE4
/* 02028 809FA278 8F380004 */  lw      $t8, 0x0004($t9)           ## 809FAB24
/* 0202C 809FA27C AD480000 */  sw      $t0, 0x0000($t2)           ## FFFFFEE4
/* 02030 809FA280 8F280008 */  lw      $t0, 0x0008($t9)           ## 809FAB28
/* 02034 809FA284 3C0E80A0 */  lui     $t6, %hi(D_809FAB2C)       ## $t6 = 80A00000
/* 02038 809FA288 25CEAB2C */  addiu   $t6, $t6, %lo(D_809FAB2C)  ## $t6 = 809FAB2C
/* 0203C 809FA28C AD580004 */  sw      $t8, 0x0004($t2)           ## FFFFFEE8
/* 02040 809FA290 AD480008 */  sw      $t0, 0x0008($t2)           ## FFFFFEEC
/* 02044 809FA294 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 809FAB2C
/* 02048 809FA298 27A90060 */  addiu   $t1, $sp, 0x0060           ## $t1 = FFFFFED8
/* 0204C 809FA29C 8DCC0004 */  lw      $t4, 0x0004($t6)           ## 809FAB30
/* 02050 809FA2A0 AD2F0000 */  sw      $t7, 0x0000($t1)           ## FFFFFED8
/* 02054 809FA2A4 8DCF0008 */  lw      $t7, 0x0008($t6)           ## 809FAB34
/* 02058 809FA2A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0205C 809FA2AC 26C50588 */  addiu   $a1, $s6, 0x0588           ## $a1 = 00000588
/* 02060 809FA2B0 AD2C0004 */  sw      $t4, 0x0004($t1)           ## FFFFFEDC
/* 02064 809FA2B4 0C018A29 */  jal     func_800628A4              
/* 02068 809FA2B8 AD2F0008 */  sw      $t7, 0x0008($t1)           ## FFFFFEE0
/* 0206C 809FA2BC 260DFFFE */  addiu   $t5, $s0, 0xFFFE           ## $t5 = FFFFFFFE
/* 02070 809FA2C0 2DA1001B */  sltiu   $at, $t5, 0x001B           
/* 02074 809FA2C4 1020007D */  beq     $at, $zero, .L809FA4BC     
/* 02078 809FA2C8 AFB00058 */  sw      $s0, 0x0058($sp)           
/* 0207C 809FA2CC 000D6880 */  sll     $t5, $t5,  2               
/* 02080 809FA2D0 3C0180A0 */  lui     $at, %hi(jtbl_809FABAC)       ## $at = 80A00000
/* 02084 809FA2D4 002D0821 */  addu    $at, $at, $t5              
/* 02088 809FA2D8 8C2DABAC */  lw      $t5, %lo(jtbl_809FABAC)($at)  
/* 0208C 809FA2DC 01A00008 */  jr      $t5                        
/* 02090 809FA2E0 00000000 */  nop
glabel L809FA2E4
/* 02094 809FA2E4 8ECA0304 */  lw      $t2, 0x0304($s6)           ## 00000304
/* 02098 809FA2E8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0209C 809FA2EC 15410073 */  bne     $t2, $at, .L809FA4BC       
/* 020A0 809FA2F0 3C0141E8 */  lui     $at, 0x41E8                ## $at = 41E80000
/* 020A4 809FA2F4 44812000 */  mtc1    $at, $f4                   ## $f4 = 29.00
/* 020A8 809FA2F8 C6C00164 */  lwc1    $f0, 0x0164($s6)           ## 00000164
/* 020AC 809FA2FC 3C01422C */  lui     $at, 0x422C                ## $at = 422C0000
/* 020B0 809FA300 4600203C */  c.lt.s  $f4, $f0                   
/* 020B4 809FA304 00000000 */  nop
/* 020B8 809FA308 4502006D */  bc1fl   .L809FA4C0                 
/* 020BC 809FA30C 86CF0312 */  lh      $t7, 0x0312($s6)           ## 00000312
/* 020C0 809FA310 44813000 */  mtc1    $at, $f6                   ## $f6 = 43.00
/* 020C4 809FA314 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 020C8 809FA318 4606003C */  c.lt.s  $f0, $f6                   
/* 020CC 809FA31C 00000000 */  nop
/* 020D0 809FA320 45020067 */  bc1fl   .L809FA4C0                 
/* 020D4 809FA324 86CF0312 */  lh      $t7, 0x0312($s6)           ## 00000312
/* 020D8 809FA328 0C27E772 */  jal     func_809F9DC8              
/* 020DC 809FA32C 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 020E0 809FA330 10000063 */  beq     $zero, $zero, .L809FA4C0   
/* 020E4 809FA334 86CF0312 */  lh      $t7, 0x0312($s6)           ## 00000312
glabel L809FA338
/* 020E8 809FA338 27B100C0 */  addiu   $s1, $sp, 0x00C0           ## $s1 = FFFFFF38
/* 020EC 809FA33C 27B20148 */  addiu   $s2, $sp, 0x0148           ## $s2 = FFFFFFC0
/* 020F0 809FA340 27B3009C */  addiu   $s3, $sp, 0x009C           ## $s3 = FFFFFF14
/* 020F4 809FA344 27B40124 */  addiu   $s4, $sp, 0x0124           ## $s4 = FFFFFF9C
/* 020F8 809FA348 27B50078 */  addiu   $s5, $sp, 0x0078           ## $s5 = FFFFFEF0
/* 020FC 809FA34C 27B00100 */  addiu   $s0, $sp, 0x0100           ## $s0 = FFFFFF78
.L809FA350:
/* 02100 809FA350 02202025 */  or      $a0, $s1, $zero            ## $a0 = FFFFFF38
/* 02104 809FA354 0C0346BD */  jal     Matrix_MultVec3f              
/* 02108 809FA358 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFFC0
/* 0210C 809FA35C 02602025 */  or      $a0, $s3, $zero            ## $a0 = FFFFFF14
/* 02110 809FA360 0C0346BD */  jal     Matrix_MultVec3f              
/* 02114 809FA364 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFF9C
/* 02118 809FA368 02A02025 */  or      $a0, $s5, $zero            ## $a0 = FFFFFEF0
/* 0211C 809FA36C 0C0346BD */  jal     Matrix_MultVec3f              
/* 02120 809FA370 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFF78
/* 02124 809FA374 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = FFFFFF84
/* 02128 809FA378 27B90124 */  addiu   $t9, $sp, 0x0124           ## $t9 = FFFFFF9C
/* 0212C 809FA37C 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = FFFFFF44
/* 02130 809FA380 2652000C */  addiu   $s2, $s2, 0x000C           ## $s2 = FFFFFFCC
/* 02134 809FA384 2673000C */  addiu   $s3, $s3, 0x000C           ## $s3 = FFFFFF20
/* 02138 809FA388 2694000C */  addiu   $s4, $s4, 0x000C           ## $s4 = FFFFFFA8
/* 0213C 809FA38C 1619FFF0 */  bne     $s0, $t9, .L809FA350       
/* 02140 809FA390 26B5000C */  addiu   $s5, $s5, 0x000C           ## $s5 = FFFFFEFC
/* 02144 809FA394 26D00454 */  addiu   $s0, $s6, 0x0454           ## $s0 = 00000454
/* 02148 809FA398 27B80160 */  addiu   $t8, $sp, 0x0160           ## $t8 = FFFFFFD8
/* 0214C 809FA39C AFB80010 */  sw      $t8, 0x0010($sp)           
/* 02150 809FA3A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000454
/* 02154 809FA3A4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02158 809FA3A8 27A60148 */  addiu   $a2, $sp, 0x0148           ## $a2 = FFFFFFC0
/* 0215C 809FA3AC 0C0189E8 */  jal     func_800627A0              
/* 02160 809FA3B0 27A70154 */  addiu   $a3, $sp, 0x0154           ## $a3 = FFFFFFCC
/* 02164 809FA3B4 27A8013C */  addiu   $t0, $sp, 0x013C           ## $t0 = FFFFFFB4
/* 02168 809FA3B8 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 0216C 809FA3BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000454
/* 02170 809FA3C0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02174 809FA3C4 27A60124 */  addiu   $a2, $sp, 0x0124           ## $a2 = FFFFFF9C
/* 02178 809FA3C8 0C0189E8 */  jal     func_800627A0              
/* 0217C 809FA3CC 27A70130 */  addiu   $a3, $sp, 0x0130           ## $a3 = FFFFFFA8
/* 02180 809FA3D0 27A90118 */  addiu   $t1, $sp, 0x0118           ## $t1 = FFFFFF90
/* 02184 809FA3D4 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 02188 809FA3D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000454
/* 0218C 809FA3DC 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 02190 809FA3E0 27A60100 */  addiu   $a2, $sp, 0x0100           ## $a2 = FFFFFF78
/* 02194 809FA3E4 0C0189E8 */  jal     func_800627A0              
/* 02198 809FA3E8 27A7010C */  addiu   $a3, $sp, 0x010C           ## $a3 = FFFFFF84
/* 0219C 809FA3EC 27A4006C */  addiu   $a0, $sp, 0x006C           ## $a0 = FFFFFEE4
/* 021A0 809FA3F0 0C0346BD */  jal     Matrix_MultVec3f              
/* 021A4 809FA3F4 26C50334 */  addiu   $a1, $s6, 0x0334           ## $a1 = 00000334
/* 021A8 809FA3F8 27A40060 */  addiu   $a0, $sp, 0x0060           ## $a0 = FFFFFED8
/* 021AC 809FA3FC 0C0346BD */  jal     Matrix_MultVec3f              
/* 021B0 809FA400 26C50340 */  addiu   $a1, $s6, 0x0340           ## $a1 = 00000340
/* 021B4 809FA404 1000002E */  beq     $zero, $zero, .L809FA4C0   
/* 021B8 809FA408 86CF0312 */  lh      $t7, 0x0312($s6)           ## 00000312
glabel L809FA40C
/* 021BC 809FA40C 8EC20304 */  lw      $v0, 0x0304($s6)           ## 00000304
/* 021C0 809FA410 14400015 */  bne     $v0, $zero, .L809FA468     
/* 021C4 809FA414 00000000 */  nop
/* 021C8 809FA418 86CE030C */  lh      $t6, 0x030C($s6)           ## 0000030C
/* 021CC 809FA41C 27B000F4 */  addiu   $s0, $sp, 0x00F4           ## $s0 = FFFFFF6C
/* 021D0 809FA420 02202025 */  or      $a0, $s1, $zero            ## $a0 = FFFFFF44
/* 021D4 809FA424 29C10002 */  slti    $at, $t6, 0x0002           
/* 021D8 809FA428 1420000F */  bne     $at, $zero, .L809FA468     
/* 021DC 809FA42C 00000000 */  nop
/* 021E0 809FA430 0C0346BD */  jal     Matrix_MultVec3f              
/* 021E4 809FA434 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFF6C
/* 021E8 809FA438 27B100E8 */  addiu   $s1, $sp, 0x00E8           ## $s1 = FFFFFF60
/* 021EC 809FA43C 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFF60
/* 021F0 809FA440 0C0346BD */  jal     Matrix_MultVec3f              
/* 021F4 809FA444 27A40170 */  addiu   $a0, $sp, 0x0170           ## $a0 = FFFFFFE8
/* 021F8 809FA448 0C009AC3 */  jal     func_80026B0C              
/* 021FC 809FA44C 8EC403D0 */  lw      $a0, 0x03D0($s6)           ## 000003D0
/* 02200 809FA450 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 02204 809FA454 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFF6C
/* 02208 809FA458 0C007F7C */  jal     func_8001FDF0              
/* 0220C 809FA45C 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFF60
/* 02210 809FA460 10000017 */  beq     $zero, $zero, .L809FA4C0   
/* 02214 809FA464 86CF0312 */  lh      $t7, 0x0312($s6)           ## 00000312
.L809FA468:
/* 02218 809FA468 54400015 */  bnel    $v0, $zero, .L809FA4C0     
/* 0221C 809FA46C 86CF0312 */  lh      $t7, 0x0312($s6)           ## 00000312
/* 02220 809FA470 86CC030C */  lh      $t4, 0x030C($s6)           ## 0000030C
/* 02224 809FA474 51800012 */  beql    $t4, $zero, .L809FA4C0     
/* 02228 809FA478 86CF0312 */  lh      $t7, 0x0312($s6)           ## 00000312
/* 0222C 809FA47C 0C009AC3 */  jal     func_80026B0C              
/* 02230 809FA480 8EC403D0 */  lw      $a0, 0x03D0($s6)           ## 000003D0
/* 02234 809FA484 0C008048 */  jal     func_80020120              
/* 02238 809FA488 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 0223C 809FA48C 1000000C */  beq     $zero, $zero, .L809FA4C0   
/* 02240 809FA490 86CF0312 */  lh      $t7, 0x0312($s6)           ## 00000312
glabel L809FA494
/* 02244 809FA494 3C0480A0 */  lui     $a0, %hi(D_809FAB44)       ## $a0 = 80A00000
/* 02248 809FA498 2484AB44 */  addiu   $a0, $a0, %lo(D_809FAB44)  ## $a0 = 809FAB44
/* 0224C 809FA49C 0C0346BD */  jal     Matrix_MultVec3f              
/* 02250 809FA4A0 26C5031C */  addiu   $a1, $s6, 0x031C           ## $a1 = 0000031C
/* 02254 809FA4A4 10000006 */  beq     $zero, $zero, .L809FA4C0   
/* 02258 809FA4A8 86CF0312 */  lh      $t7, 0x0312($s6)           ## 00000312
glabel L809FA4AC
/* 0225C 809FA4AC 3C0480A0 */  lui     $a0, %hi(D_809FAB44)       ## $a0 = 80A00000
/* 02260 809FA4B0 2484AB44 */  addiu   $a0, $a0, %lo(D_809FAB44)  ## $a0 = 809FAB44
/* 02264 809FA4B4 0C0346BD */  jal     Matrix_MultVec3f              
/* 02268 809FA4B8 26C50328 */  addiu   $a1, $s6, 0x0328           ## $a1 = 00000328
glabel L809FA4BC
.L809FA4BC:
/* 0226C 809FA4BC 86CF0312 */  lh      $t7, 0x0312($s6)           ## 00000312
.L809FA4C0:
/* 02270 809FA4C0 8FAB0058 */  lw      $t3, 0x0058($sp)           
/* 02274 809FA4C4 11E00026 */  beq     $t7, $zero, .L809FA560     
/* 02278 809FA4C8 256DFFF9 */  addiu   $t5, $t3, 0xFFF9           ## $t5 = FFFFFFF9
/* 0227C 809FA4CC 2DA10017 */  sltiu   $at, $t5, 0x0017           
/* 02280 809FA4D0 1020001B */  beq     $at, $zero, .L809FA540     
/* 02284 809FA4D4 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
/* 02288 809FA4D8 000D6880 */  sll     $t5, $t5,  2               
/* 0228C 809FA4DC 3C0180A0 */  lui     $at, %hi(jtbl_809FAC18)       ## $at = 80A00000
/* 02290 809FA4E0 002D0821 */  addu    $at, $at, $t5              
/* 02294 809FA4E4 8C2DAC18 */  lw      $t5, %lo(jtbl_809FAC18)($at)  
/* 02298 809FA4E8 01A00008 */  jr      $t5                        
/* 0229C 809FA4EC 00000000 */  nop
glabel L809FA4F0
/* 022A0 809FA4F0 3C014496 */  lui     $at, 0x4496                ## $at = 44960000
/* 022A4 809FA4F4 44814000 */  mtc1    $at, $f8                   ## $f8 = 1200.00
/* 022A8 809FA4F8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 022AC 809FA4FC 10000010 */  beq     $zero, $zero, .L809FA540   
/* 022B0 809FA500 E7A80170 */  swc1    $f8, 0x0170($sp)           
glabel L809FA504
/* 022B4 809FA504 1000000E */  beq     $zero, $zero, .L809FA540   
/* 022B8 809FA508 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
glabel L809FA50C
/* 022BC 809FA50C 1000000C */  beq     $zero, $zero, .L809FA540   
/* 022C0 809FA510 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
glabel L809FA514
/* 022C4 809FA514 1000000A */  beq     $zero, $zero, .L809FA540   
/* 022C8 809FA518 24020003 */  addiu   $v0, $zero, 0x0003         ## $v0 = 00000003
glabel L809FA51C
/* 022CC 809FA51C 10000008 */  beq     $zero, $zero, .L809FA540   
/* 022D0 809FA520 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
glabel L809FA524
/* 022D4 809FA524 10000006 */  beq     $zero, $zero, .L809FA540   
/* 022D8 809FA528 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
glabel L809FA52C
/* 022DC 809FA52C 10000004 */  beq     $zero, $zero, .L809FA540   
/* 022E0 809FA530 24020006 */  addiu   $v0, $zero, 0x0006         ## $v0 = 00000006
glabel L809FA534
/* 022E4 809FA534 10000002 */  beq     $zero, $zero, .L809FA540   
/* 022E8 809FA538 24020007 */  addiu   $v0, $zero, 0x0007         ## $v0 = 00000007
glabel L809FA53C
/* 022EC 809FA53C 24020008 */  addiu   $v0, $zero, 0x0008         ## $v0 = 00000008
glabel L809FA540
.L809FA540:
/* 022F0 809FA540 04400007 */  bltz    $v0, .L809FA560            
/* 022F4 809FA544 27A40170 */  addiu   $a0, $sp, 0x0170           ## $a0 = FFFFFFE8
/* 022F8 809FA548 00025080 */  sll     $t2, $v0,  2               
/* 022FC 809FA54C 01425023 */  subu    $t2, $t2, $v0              
/* 02300 809FA550 000A5080 */  sll     $t2, $t2,  2               
/* 02304 809FA554 02CA2821 */  addu    $a1, $s6, $t2              
/* 02308 809FA558 0C0346BD */  jal     Matrix_MultVec3f              
/* 0230C 809FA55C 24A50358 */  addiu   $a1, $a1, 0x0358           ## $a1 = 00000358
.L809FA560:
/* 02310 809FA560 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 02314 809FA564 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02318 809FA568 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 0231C 809FA56C 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 02320 809FA570 8FB3002C */  lw      $s3, 0x002C($sp)           
/* 02324 809FA574 8FB40030 */  lw      $s4, 0x0030($sp)           
/* 02328 809FA578 8FB50034 */  lw      $s5, 0x0034($sp)           
/* 0232C 809FA57C 8FB60038 */  lw      $s6, 0x0038($sp)           
/* 02330 809FA580 03E00008 */  jr      $ra                        
/* 02334 809FA584 27BD0188 */  addiu   $sp, $sp, 0x0188           ## $sp = 00000000
