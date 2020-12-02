.rdata
glabel D_80B2F3A0
    .asciz "\x1b[32m☆☆☆☆ やった原！ ☆☆☆☆☆ \n\x1b[m"
    .balign 4

glabel D_80B2F3CC
    .asciz "\x1b[33m☆☆☆☆ やった原！ ☆☆☆☆☆ \n\x1b[m"
    .balign 4

glabel D_80B2F3F8
    .asciz "\x1b[34m☆☆☆☆ やった原！ ☆☆☆☆☆ \n\x1b[m"
    .balign 4

glabel D_80B2F424
    .asciz "\x1b[35m☆☆☆☆ やった原！ ☆☆☆☆☆ \n\x1b[m"
    .balign 4

glabel D_80B2F450
    .asciz "\x1b[36m☆☆☆☆ やった原！ ☆☆☆☆☆ \n\x1b[m"
    .balign 4

.text
glabel func_80B2F0B8
/* 002C8 80B2F0B8 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 002CC 80B2F0BC 3C0F80B3 */  lui     $t7, %hi(D_80B2F358)       ## $t7 = 80B30000
/* 002D0 80B2F0C0 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 002D4 80B2F0C4 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 002D8 80B2F0C8 AFA50064 */  sw      $a1, 0x0064($sp)           
/* 002DC 80B2F0CC 25EFF358 */  addiu   $t7, $t7, %lo(D_80B2F358)  ## $t7 = 80B2F358
/* 002E0 80B2F0D0 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B2F358
/* 002E4 80B2F0D4 27AE0050 */  addiu   $t6, $sp, 0x0050           ## $t6 = FFFFFFF0
/* 002E8 80B2F0D8 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B2F35C
/* 002EC 80B2F0DC ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF0
/* 002F0 80B2F0E0 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B2F360
/* 002F4 80B2F0E4 3C0980B3 */  lui     $t1, %hi(D_80B2F364)       ## $t1 = 80B30000
/* 002F8 80B2F0E8 2529F364 */  addiu   $t1, $t1, %lo(D_80B2F364)  ## $t1 = 80B2F364
/* 002FC 80B2F0EC ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF4
/* 00300 80B2F0F0 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF8
/* 00304 80B2F0F4 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80B2F364
/* 00308 80B2F0F8 27A80044 */  addiu   $t0, $sp, 0x0044           ## $t0 = FFFFFFE4
/* 0030C 80B2F0FC 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80B2F368
/* 00310 80B2F100 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE4
/* 00314 80B2F104 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80B2F36C
/* 00318 80B2F108 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFE8
/* 0031C 80B2F10C 3C0D0001 */  lui     $t5, 0x0001                ## $t5 = 00010000
/* 00320 80B2F110 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFEC
/* 00324 80B2F114 8FAC0064 */  lw      $t4, 0x0064($sp)           
/* 00328 80B2F118 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0032C 80B2F11C 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 00330 80B2F120 01AC6821 */  addu    $t5, $t5, $t4              
/* 00334 80B2F124 8DAD1DE4 */  lw      $t5, 0x1DE4($t5)           ## 00011DE4
/* 00338 80B2F128 31AE0001 */  andi    $t6, $t5, 0x0001           ## $t6 = 00000000
/* 0033C 80B2F12C 55C0002C */  bnel    $t6, $zero, .L80B2F1E0     
/* 00340 80B2F130 860C0150 */  lh      $t4, 0x0150($s0)           ## 00000150
/* 00344 80B2F134 44816000 */  mtc1    $at, $f12                  ## $f12 = 300.00
/* 00348 80B2F138 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0034C 80B2F13C 00000000 */  nop
/* 00350 80B2F140 C6040154 */  lwc1    $f4, 0x0154($s0)           ## 00000154
/* 00354 80B2F144 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 00358 80B2F148 44816000 */  mtc1    $at, $f12                  ## $f12 = 300.00
/* 0035C 80B2F14C 46040180 */  add.s   $f6, $f0, $f4              
/* 00360 80B2F150 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00364 80B2F154 E7A60038 */  swc1    $f6, 0x0038($sp)           
/* 00368 80B2F158 C6080158 */  lwc1    $f8, 0x0158($s0)           ## 00000158
/* 0036C 80B2F15C 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 00370 80B2F160 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 00374 80B2F164 46080280 */  add.s   $f10, $f0, $f8             
/* 00378 80B2F168 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 0037C 80B2F16C 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFD8
/* 00380 80B2F170 27A60044 */  addiu   $a2, $sp, 0x0044           ## $a2 = FFFFFFE4
/* 00384 80B2F174 E7AA003C */  swc1    $f10, 0x003C($sp)          
/* 00388 80B2F178 C610015C */  lwc1    $f16, 0x015C($s0)          ## 0000015C
/* 0038C 80B2F17C AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00390 80B2F180 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00394 80B2F184 27A70050 */  addiu   $a3, $sp, 0x0050           ## $a3 = FFFFFFF0
/* 00398 80B2F188 0C00A3A1 */  jal     EffectSsBomb2_SpawnLayered              
/* 0039C 80B2F18C E7B00040 */  swc1    $f16, 0x0040($sp)          
/* 003A0 80B2F190 24190032 */  addiu   $t9, $zero, 0x0032         ## $t9 = 00000032
/* 003A4 80B2F194 2408000F */  addiu   $t0, $zero, 0x000F         ## $t0 = 0000000F
/* 003A8 80B2F198 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 003AC 80B2F19C 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 003B0 80B2F1A0 240B000A */  addiu   $t3, $zero, 0x000A         ## $t3 = 0000000A
/* 003B4 80B2F1A4 AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 003B8 80B2F1A8 AFAA001C */  sw      $t2, 0x001C($sp)           
/* 003BC 80B2F1AC AFA90018 */  sw      $t1, 0x0018($sp)           
/* 003C0 80B2F1B0 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 003C4 80B2F1B4 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 003C8 80B2F1B8 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 003CC 80B2F1BC 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFD8
/* 003D0 80B2F1C0 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 003D4 80B2F1C4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 003D8 80B2F1C8 0C00A5E9 */  jal     EffectSsHahen_SpawnBurst              
/* 003DC 80B2F1CC AFA00024 */  sw      $zero, 0x0024($sp)         
/* 003E0 80B2F1D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003E4 80B2F1D4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 003E8 80B2F1D8 2405180E */  addiu   $a1, $zero, 0x180E         ## $a1 = 0000180E
/* 003EC 80B2F1DC 860C0150 */  lh      $t4, 0x0150($s0)           ## 00000150
.L80B2F1E0:
/* 003F0 80B2F1E0 5580001A */  bnel    $t4, $zero, .L80B2F24C     
/* 003F4 80B2F1E4 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 003F8 80B2F1E8 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
/* 003FC 80B2F1EC 10400014 */  beq     $v0, $zero, .L80B2F240     
/* 00400 80B2F1F0 00000000 */  nop
/* 00404 80B2F1F4 8C4D0130 */  lw      $t5, 0x0130($v0)           ## 00000130
/* 00408 80B2F1F8 3C0480B3 */  lui     $a0, %hi(D_80B2F3A0)       ## $a0 = 80B30000
/* 0040C 80B2F1FC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00410 80B2F200 11A0000F */  beq     $t5, $zero, .L80B2F240     
/* 00414 80B2F204 2484F3A0 */  addiu   $a0, $a0, %lo(D_80B2F3A0)  ## $a0 = 80B2F3A0
/* 00418 80B2F208 0C00084C */  jal     osSyncPrintf
              
/* 0041C 80B2F20C A44E0180 */  sh      $t6, 0x0180($v0)           ## 00000180
/* 00420 80B2F210 3C0480B3 */  lui     $a0, %hi(D_80B2F3CC)       ## $a0 = 80B30000
/* 00424 80B2F214 0C00084C */  jal     osSyncPrintf
              
/* 00428 80B2F218 2484F3CC */  addiu   $a0, $a0, %lo(D_80B2F3CC)  ## $a0 = 80B2F3CC
/* 0042C 80B2F21C 3C0480B3 */  lui     $a0, %hi(D_80B2F3F8)       ## $a0 = 80B30000
/* 00430 80B2F220 0C00084C */  jal     osSyncPrintf
              
/* 00434 80B2F224 2484F3F8 */  addiu   $a0, $a0, %lo(D_80B2F3F8)  ## $a0 = 80B2F3F8
/* 00438 80B2F228 3C0480B3 */  lui     $a0, %hi(D_80B2F424)       ## $a0 = 80B30000
/* 0043C 80B2F22C 0C00084C */  jal     osSyncPrintf
              
/* 00440 80B2F230 2484F424 */  addiu   $a0, $a0, %lo(D_80B2F424)  ## $a0 = 80B2F424
/* 00444 80B2F234 3C0480B3 */  lui     $a0, %hi(D_80B2F450)       ## $a0 = 80B30000
/* 00448 80B2F238 0C00084C */  jal     osSyncPrintf
              
/* 0044C 80B2F23C 2484F450 */  addiu   $a0, $a0, %lo(D_80B2F450)  ## $a0 = 80B2F450
.L80B2F240:
/* 00450 80B2F240 0C00B55C */  jal     Actor_Kill
              
/* 00454 80B2F244 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00458 80B2F248 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80B2F24C:
/* 0045C 80B2F24C 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00460 80B2F250 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 00464 80B2F254 03E00008 */  jr      $ra                        
/* 00468 80B2F258 00000000 */  nop
