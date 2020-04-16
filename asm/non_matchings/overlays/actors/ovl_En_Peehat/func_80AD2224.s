.rdata
glabel D_80AD2890
    .asciz "../z_en_peehat.c"
    .balign 4

glabel D_80AD28A4
    .asciz "../z_en_peehat.c"
    .balign 4

glabel D_80AD28B8
    .asciz "../z_en_peehat.c"
    .balign 4

.late_rodata
glabel D_80AD295C
 .word 0x3DEB851F
glabel D_80AD2960
 .word 0x3E051EB8
glabel D_80AD2964
    .float 0.1

glabel D_80AD2968
    .float 0.1

glabel D_80AD296C
 .word 0x3E051EB8
glabel D_80AD2970
 .word 0x3DEB851F

.text
glabel func_80AD2224
/* 02D84 80AD2224 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 02D88 80AD2228 AFA70054 */  sw      $a3, 0x0054($sp)           
/* 02D8C 80AD222C 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 02D90 80AD2230 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02D94 80AD2234 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02D98 80AD2238 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 02D9C 80AD223C 14A70006 */  bne     $a1, $a3, .L80AD2258       
/* 02DA0 80AD2240 AFA60050 */  sw      $a2, 0x0050($sp)           
/* 02DA4 80AD2244 8FB0005C */  lw      $s0, 0x005C($sp)           
/* 02DA8 80AD2248 8FB80058 */  lw      $t8, 0x0058($sp)           
/* 02DAC 80AD224C 860E02F2 */  lh      $t6, 0x02F2($s0)           ## 000002F2
/* 02DB0 80AD2250 000E7823 */  subu    $t7, $zero, $t6            
/* 02DB4 80AD2254 A70F0000 */  sh      $t7, 0x0000($t8)           ## 00000000
.L80AD2258:
/* 02DB8 80AD2258 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
/* 02DBC 80AD225C 10A3000B */  beq     $a1, $v1, .L80AD228C       
/* 02DC0 80AD2260 8FB0005C */  lw      $s0, 0x005C($sp)           
/* 02DC4 80AD2264 24010017 */  addiu   $at, $zero, 0x0017         ## $at = 00000017
/* 02DC8 80AD2268 54A1006E */  bnel    $a1, $at, .L80AD2424       
/* 02DCC 80AD226C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02DD0 80AD2270 8E0202B0 */  lw      $v0, 0x02B0($s0)           ## 000002B0
/* 02DD4 80AD2274 50400006 */  beql    $v0, $zero, .L80AD2290     
/* 02DD8 80AD2278 8FB90048 */  lw      $t9, 0x0048($sp)           
/* 02DDC 80AD227C 50620004 */  beql    $v1, $v0, .L80AD2290       
/* 02DE0 80AD2280 8FB90048 */  lw      $t9, 0x0048($sp)           
/* 02DE4 80AD2284 54E20067 */  bnel    $a3, $v0, .L80AD2424       
/* 02DE8 80AD2288 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AD228C:
/* 02DEC 80AD228C 8FB90048 */  lw      $t9, 0x0048($sp)           
.L80AD2290:
/* 02DF0 80AD2290 3C0680AD */  lui     $a2, %hi(D_80AD2890)       ## $a2 = 80AD0000
/* 02DF4 80AD2294 24C62890 */  addiu   $a2, $a2, %lo(D_80AD2890)  ## $a2 = 80AD2890
/* 02DF8 80AD2298 8F250000 */  lw      $a1, 0x0000($t9)           ## 00000000
/* 02DFC 80AD229C 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 02E00 80AD22A0 2407079A */  addiu   $a3, $zero, 0x079A         ## $a3 = 0000079A
/* 02E04 80AD22A4 0C031AB1 */  jal     Graph_OpenDisps              
/* 02E08 80AD22A8 AFA50040 */  sw      $a1, 0x0040($sp)           
/* 02E0C 80AD22AC 0C034213 */  jal     Matrix_Push              
/* 02E10 80AD22B0 00000000 */  nop
/* 02E14 80AD22B4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02E18 80AD22B8 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 02E1C 80AD22BC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02E20 80AD22C0 44066000 */  mfc1    $a2, $f12                  
/* 02E24 80AD22C4 0C0342A3 */  jal     Matrix_Scale              
/* 02E28 80AD22C8 46006386 */  mov.s   $f14, $f12                 
/* 02E2C 80AD22CC 3C0180AD */  lui     $at, %hi(D_80AD295C)       ## $at = 80AD0000
/* 02E30 80AD22D0 C426295C */  lwc1    $f6, %lo(D_80AD295C)($at)  
/* 02E34 80AD22D4 C60402E4 */  lwc1    $f4, 0x02E4($s0)           ## 000002E4
/* 02E38 80AD22D8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02E3C 80AD22DC 46062302 */  mul.s   $f12, $f4, $f6             
/* 02E40 80AD22E0 0C0342DC */  jal     Matrix_RotateX              
/* 02E44 80AD22E4 00000000 */  nop
/* 02E48 80AD22E8 3C0180AD */  lui     $at, %hi(D_80AD2960)       ## $at = 80AD0000
/* 02E4C 80AD22EC C42A2960 */  lwc1    $f10, %lo(D_80AD2960)($at) 
/* 02E50 80AD22F0 C60802E4 */  lwc1    $f8, 0x02E4($s0)           ## 000002E4
/* 02E54 80AD22F4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02E58 80AD22F8 460A4302 */  mul.s   $f12, $f8, $f10            
/* 02E5C 80AD22FC 0C034348 */  jal     Matrix_RotateY              
/* 02E60 80AD2300 00000000 */  nop
/* 02E64 80AD2304 3C0180AD */  lui     $at, %hi(D_80AD2964)       ## $at = 80AD0000
/* 02E68 80AD2308 C4322964 */  lwc1    $f18, %lo(D_80AD2964)($at) 
/* 02E6C 80AD230C C61002E4 */  lwc1    $f16, 0x02E4($s0)          ## 000002E4
/* 02E70 80AD2310 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02E74 80AD2314 46128302 */  mul.s   $f12, $f16, $f18           
/* 02E78 80AD2318 0C0343B5 */  jal     Matrix_RotateZ              
/* 02E7C 80AD231C 00000000 */  nop
/* 02E80 80AD2320 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02E84 80AD2324 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 02E88 80AD2328 C60002EC */  lwc1    $f0, 0x02EC($s0)           ## 000002EC
/* 02E8C 80AD232C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02E90 80AD2330 46001301 */  sub.s   $f12, $f2, $f0             
/* 02E94 80AD2334 46020380 */  add.s   $f14, $f0, $f2             
/* 02E98 80AD2338 44066000 */  mfc1    $a2, $f12                  
/* 02E9C 80AD233C 0C0342A3 */  jal     Matrix_Scale              
/* 02EA0 80AD2340 00000000 */  nop
/* 02EA4 80AD2344 3C0180AD */  lui     $at, %hi(D_80AD2968)       ## $at = 80AD0000
/* 02EA8 80AD2348 C4262968 */  lwc1    $f6, %lo(D_80AD2968)($at)  
/* 02EAC 80AD234C C60402E4 */  lwc1    $f4, 0x02E4($s0)           ## 000002E4
/* 02EB0 80AD2350 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02EB4 80AD2354 46062302 */  mul.s   $f12, $f4, $f6             
/* 02EB8 80AD2358 0C0343B5 */  jal     Matrix_RotateZ              
/* 02EBC 80AD235C 46006307 */  neg.s   $f12, $f12                 
/* 02EC0 80AD2360 3C0180AD */  lui     $at, %hi(D_80AD296C)       ## $at = 80AD0000
/* 02EC4 80AD2364 C42A296C */  lwc1    $f10, %lo(D_80AD296C)($at) 
/* 02EC8 80AD2368 C60802E4 */  lwc1    $f8, 0x02E4($s0)           ## 000002E4
/* 02ECC 80AD236C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02ED0 80AD2370 460A4302 */  mul.s   $f12, $f8, $f10            
/* 02ED4 80AD2374 0C034348 */  jal     Matrix_RotateY              
/* 02ED8 80AD2378 46006307 */  neg.s   $f12, $f12                 
/* 02EDC 80AD237C 3C0180AD */  lui     $at, %hi(D_80AD2970)       ## $at = 80AD0000
/* 02EE0 80AD2380 C4322970 */  lwc1    $f18, %lo(D_80AD2970)($at) 
/* 02EE4 80AD2384 C61002E4 */  lwc1    $f16, 0x02E4($s0)          ## 000002E4
/* 02EE8 80AD2388 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02EEC 80AD238C 46128302 */  mul.s   $f12, $f16, $f18           
/* 02EF0 80AD2390 0C0342DC */  jal     Matrix_RotateX              
/* 02EF4 80AD2394 46006307 */  neg.s   $f12, $f12                 
/* 02EF8 80AD2398 8FA30040 */  lw      $v1, 0x0040($sp)           
/* 02EFC 80AD239C 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 02F00 80AD23A0 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 02F04 80AD23A4 8C6202C0 */  lw      $v0, 0x02C0($v1)           ## 000002C0
/* 02F08 80AD23A8 3C0580AD */  lui     $a1, %hi(D_80AD28A4)       ## $a1 = 80AD0000
/* 02F0C 80AD23AC 24A528A4 */  addiu   $a1, $a1, %lo(D_80AD28A4)  ## $a1 = 80AD28A4
/* 02F10 80AD23B0 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 02F14 80AD23B4 AC6802C0 */  sw      $t0, 0x02C0($v1)           ## 000002C0
/* 02F18 80AD23B8 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 02F1C 80AD23BC 8FAA0048 */  lw      $t2, 0x0048($sp)           
/* 02F20 80AD23C0 240607A7 */  addiu   $a2, $zero, 0x07A7         ## $a2 = 000007A7
/* 02F24 80AD23C4 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 02F28 80AD23C8 0C0346A2 */  jal     Matrix_NewMtx              
/* 02F2C 80AD23CC 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 02F30 80AD23D0 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 02F34 80AD23D4 8FAB0040 */  lw      $t3, 0x0040($sp)           
/* 02F38 80AD23D8 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 02F3C 80AD23DC 8D6202C0 */  lw      $v0, 0x02C0($t3)           ## 000002C0
/* 02F40 80AD23E0 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 02F44 80AD23E4 AD6C02C0 */  sw      $t4, 0x02C0($t3)           ## 000002C0
/* 02F48 80AD23E8 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 02F4C 80AD23EC 8FAE0050 */  lw      $t6, 0x0050($sp)           
/* 02F50 80AD23F0 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 02F54 80AD23F4 0C034221 */  jal     Matrix_Pull              
/* 02F58 80AD23F8 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 02F5C 80AD23FC 8FB80048 */  lw      $t8, 0x0048($sp)           
/* 02F60 80AD2400 3C0680AD */  lui     $a2, %hi(D_80AD28B8)       ## $a2 = 80AD0000
/* 02F64 80AD2404 24C628B8 */  addiu   $a2, $a2, %lo(D_80AD28B8)  ## $a2 = 80AD28B8
/* 02F68 80AD2408 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 02F6C 80AD240C 240707AB */  addiu   $a3, $zero, 0x07AB         ## $a3 = 000007AB
/* 02F70 80AD2410 0C031AD5 */  jal     Graph_CloseDisps              
/* 02F74 80AD2414 8F050000 */  lw      $a1, 0x0000($t8)           ## 00000000
/* 02F78 80AD2418 10000002 */  beq     $zero, $zero, .L80AD2424   
/* 02F7C 80AD241C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 02F80 80AD2420 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AD2424:
/* 02F84 80AD2424 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02F88 80AD2428 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02F8C 80AD242C 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 02F90 80AD2430 03E00008 */  jr      $ra                        
/* 02F94 80AD2434 00000000 */  nop
