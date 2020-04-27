.rdata
glabel D_80A11840
    .asciz "yari hikari ct 1\n"
    .balign 4

glabel D_80A11854
    .asciz "yari hikari ct 2\n"
    .balign 4

.late_rodata
glabel D_80A119C4
 .word 0x3E051EB8
glabel D_80A119C8
 .word 0x4622F983
glabel D_80A119CC
 .word 0x4622F983

.text
glabel EnFhgFire_Init
/* 00008 80A0F268 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 0000C 80A0F26C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00010 80A0F270 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00014 80A0F274 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00018 80A0F278 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 0001C 80A0F27C 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00020 80A0F280 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00024 80A0F284 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 00028 80A0F288 44050000 */  mfc1    $a1, $f0                   
/* 0002C 80A0F28C 44070000 */  mfc1    $a3, $f0                   
/* 00030 80A0F290 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 00034 80A0F294 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00038 80A0F298 0C00AC78 */  jal     ActorShape_Init
              
/* 0003C 80A0F29C AFAF004C */  sw      $t7, 0x004C($sp)           
/* 00040 80A0F2A0 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00044 80A0F2A4 24010023 */  addiu   $at, $zero, 0x0023         ## $at = 00000023
/* 00048 80A0F2A8 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 0004C 80A0F2AC 10410006 */  beq     $v0, $at, .L80A0F2C8       
/* 00050 80A0F2B0 260501B0 */  addiu   $a1, $s0, 0x01B0           ## $a1 = 000001B0
/* 00054 80A0F2B4 24010024 */  addiu   $at, $zero, 0x0024         ## $at = 00000024
/* 00058 80A0F2B8 10410003 */  beq     $v0, $at, .L80A0F2C8       
/* 0005C 80A0F2BC 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00060 80A0F2C0 5441000A */  bnel    $v0, $at, .L80A0F2EC       
/* 00064 80A0F2C4 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
.L80A0F2C8:
/* 00068 80A0F2C8 0C0170D9 */  jal     Collider_InitCylinder
              
/* 0006C 80A0F2CC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00070 80A0F2D0 3C0780A1 */  lui     $a3, %hi(D_80A11790)       ## $a3 = 80A10000
/* 00074 80A0F2D4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00078 80A0F2D8 24E71790 */  addiu   $a3, $a3, %lo(D_80A11790)  ## $a3 = 80A11790
/* 0007C 80A0F2DC 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 00080 80A0F2E0 0C01712B */  jal     Collider_SetCylinder
              
/* 00084 80A0F2E4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00088 80A0F2E8 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
.L80A0F2EC:
/* 0008C 80A0F2EC 44812000 */  mtc1    $at, $f4                   ## $f4 = 200.00
/* 00090 80A0F2F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00094 80A0F2F4 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00098 80A0F2F8 0C00B58B */  jal     Actor_SetScale
              
/* 0009C 80A0F2FC E6040160 */  swc1    $f4, 0x0160($s0)           ## 00000160
/* 000A0 80A0F300 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 000A4 80A0F304 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 000A8 80A0F308 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000AC 80A0F30C 14410008 */  bne     $v0, $at, .L80A0F330       
/* 000B0 80A0F310 3C0580A1 */  lui     $a1, %hi(func_80A0F6F8)    ## $a1 = 80A10000
/* 000B4 80A0F314 0C283C98 */  jal     func_80A0F260              
/* 000B8 80A0F318 24A5F6F8 */  addiu   $a1, $a1, %lo(func_80A0F6F8) ## $a1 = 80A0F6F8
/* 000BC 80A0F31C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000C0 80A0F320 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 000C4 80A0F324 240538A2 */  addiu   $a1, $zero, 0x38A2         ## $a1 = 000038A2
/* 000C8 80A0F328 1000000F */  beq     $zero, $zero, .L80A0F368   
/* 000CC 80A0F32C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L80A0F330:
/* 000D0 80A0F330 28410064 */  slti    $at, $v0, 0x0064           
/* 000D4 80A0F334 1420000C */  bne     $at, $zero, .L80A0F368     
/* 000D8 80A0F338 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000DC 80A0F33C 3C0580A1 */  lui     $a1, %hi(func_80A0FA90)    ## $a1 = 80A10000
/* 000E0 80A0F340 0C283C98 */  jal     func_80A0F260              
/* 000E4 80A0F344 24A5FA90 */  addiu   $a1, $a1, %lo(func_80A0FA90) ## $a1 = 80A0FA90
/* 000E8 80A0F348 8A080030 */  lwl     $t0, 0x0030($s0)           ## 00000030
/* 000EC 80A0F34C 8FB80038 */  lw      $t8, 0x0038($sp)           
/* 000F0 80A0F350 9A080033 */  lwr     $t0, 0x0033($s0)           ## 00000033
/* 000F4 80A0F354 AB080000 */  swl     $t0, 0x0000($t8)           ## 00000000
/* 000F8 80A0F358 BB080003 */  swr     $t0, 0x0003($t8)           ## 00000003
/* 000FC 80A0F35C 96080034 */  lhu     $t0, 0x0034($s0)           ## 00000034
/* 00100 80A0F360 A7080004 */  sh      $t0, 0x0004($t8)           ## 00000004
/* 00104 80A0F364 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L80A0F368:
/* 00108 80A0F368 24010023 */  addiu   $at, $zero, 0x0023         ## $at = 00000023
/* 0010C 80A0F36C 1441000D */  bne     $v0, $at, .L80A0F3A4       
/* 00110 80A0F370 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00114 80A0F374 3C0580A1 */  lui     $a1, %hi(func_80A0FC48)    ## $a1 = 80A10000
/* 00118 80A0F378 AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 0011C 80A0F37C 0C283C98 */  jal     func_80A0F260              
/* 00120 80A0F380 24A5FC48 */  addiu   $a1, $a1, %lo(func_80A0FC48) ## $a1 = 80A0FC48
/* 00124 80A0F384 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00128 80A0F388 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 0012C 80A0F38C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00130 80A0F390 240538A3 */  addiu   $a1, $zero, 0x38A3         ## $a1 = 000038A3
/* 00134 80A0F394 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00138 80A0F398 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 0013C 80A0F39C 100000B7 */  beq     $zero, $zero, .L80A0F67C   
/* 00140 80A0F3A0 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A0F3A4:
/* 00144 80A0F3A4 24010024 */  addiu   $at, $zero, 0x0024         ## $at = 00000024
/* 00148 80A0F3A8 1441001E */  bne     $v0, $at, .L80A0F424       
/* 0014C 80A0F3AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00150 80A0F3B0 3C0580A1 */  lui     $a1, %hi(func_80A0FD8C)    ## $a1 = 80A10000
/* 00154 80A0F3B4 0C283C98 */  jal     func_80A0F260              
/* 00158 80A0F3B8 24A5FD8C */  addiu   $a1, $a1, %lo(func_80A0FD8C) ## $a1 = 80A0FD8C
/* 0015C 80A0F3BC 860C0030 */  lh      $t4, 0x0030($s0)           ## 00000030
/* 00160 80A0F3C0 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00164 80A0F3C4 44814000 */  mtc1    $at, $f8                   ## $f8 = 255.00
/* 00168 80A0F3C8 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 0016C 80A0F3CC 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00170 80A0F3D0 44819000 */  mtc1    $at, $f18                  ## $f18 = 100.00
/* 00174 80A0F3D4 46805020 */  cvt.s.w $f0, $f10                  
/* 00178 80A0F3D8 24090020 */  addiu   $t1, $zero, 0x0020         ## $t1 = 00000020
/* 0017C 80A0F3DC 240A0032 */  addiu   $t2, $zero, 0x0032         ## $t2 = 00000032
/* 00180 80A0F3E0 240B000A */  addiu   $t3, $zero, 0x000A         ## $t3 = 0000000A
/* 00184 80A0F3E4 A6090150 */  sh      $t1, 0x0150($s0)           ## 00000150
/* 00188 80A0F3E8 A60A0152 */  sh      $t2, 0x0152($s0)           ## 00000152
/* 0018C 80A0F3EC 46120103 */  div.s   $f4, $f0, $f18             
/* 00190 80A0F3F0 A60B01FE */  sh      $t3, 0x01FE($s0)           ## 000001FE
/* 00194 80A0F3F4 3C0180A1 */  lui     $at, %hi(D_80A119C4)       ## $at = 80A10000
/* 00198 80A0F3F8 E6080160 */  swc1    $f8, 0x0160($s0)           ## 00000160
/* 0019C 80A0F3FC E604018C */  swc1    $f4, 0x018C($s0)           ## 0000018C
/* 001A0 80A0F400 C42619C4 */  lwc1    $f6, %lo(D_80A119C4)($at)  
/* 001A4 80A0F404 A60001F4 */  sh      $zero, 0x01F4($s0)         ## 000001F4
/* 001A8 80A0F408 46060202 */  mul.s   $f8, $f0, $f6              
/* 001AC 80A0F40C 4600428D */  trunc.w.s $f10, $f8                  
/* 001B0 80A0F410 44025000 */  mfc1    $v0, $f10                  
/* 001B4 80A0F414 00000000 */  nop
/* 001B8 80A0F418 A60201F0 */  sh      $v0, 0x01F0($s0)           ## 000001F0
/* 001BC 80A0F41C 10000096 */  beq     $zero, $zero, .L80A0F678   
/* 001C0 80A0F420 A60201F2 */  sh      $v0, 0x01F2($s0)           ## 000001F2
.L80A0F424:
/* 001C4 80A0F424 24010026 */  addiu   $at, $zero, 0x0026         ## $at = 00000026
/* 001C8 80A0F428 1441000F */  bne     $v0, $at, .L80A0F468       
/* 001CC 80A0F42C 3C0480A1 */  lui     $a0, %hi(D_80A11840)       ## $a0 = 80A10000
/* 001D0 80A0F430 0C00084C */  jal     osSyncPrintf
              
/* 001D4 80A0F434 24841840 */  addiu   $a0, $a0, %lo(D_80A11840)  ## $a0 = 80A11840
/* 001D8 80A0F438 3C0580A1 */  lui     $a1, %hi(func_80A10008)    ## $a1 = 80A10000
/* 001DC 80A0F43C 24A50008 */  addiu   $a1, $a1, %lo(func_80A10008) ## $a1 = 80A10008
/* 001E0 80A0F440 0C283C98 */  jal     func_80A0F260              
/* 001E4 80A0F444 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001E8 80A0F448 3C0480A1 */  lui     $a0, %hi(D_80A11854)       ## $a0 = 80A10000
/* 001EC 80A0F44C 0C00084C */  jal     osSyncPrintf
              
/* 001F0 80A0F450 24841854 */  addiu   $a0, $a0, %lo(D_80A11854)  ## $a0 = 80A11854
/* 001F4 80A0F454 860E0030 */  lh      $t6, 0x0030($s0)           ## 00000030
/* 001F8 80A0F458 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 001FC 80A0F45C A60E0150 */  sh      $t6, 0x0150($s0)           ## 00000150
/* 00200 80A0F460 10000085 */  beq     $zero, $zero, .L80A0F678   
/* 00204 80A0F464 A60F0158 */  sh      $t7, 0x0158($s0)           ## 00000158
.L80A0F468:
/* 00208 80A0F468 24010027 */  addiu   $at, $zero, 0x0027         ## $at = 00000027
/* 0020C 80A0F46C 10410006 */  beq     $v0, $at, .L80A0F488       
/* 00210 80A0F470 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00214 80A0F474 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
/* 00218 80A0F478 10410003 */  beq     $v0, $at, .L80A0F488       
/* 0021C 80A0F47C 24010029 */  addiu   $at, $zero, 0x0029         ## $at = 00000029
/* 00220 80A0F480 5441001B */  bnel    $v0, $at, .L80A0F4F0       
/* 00224 80A0F484 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
.L80A0F488:
/* 00228 80A0F488 0C00B58B */  jal     Actor_SetScale
              
/* 0022C 80A0F48C 3C0540E0 */  lui     $a1, 0x40E0                ## $a1 = 40E00000
/* 00230 80A0F490 3C0580A1 */  lui     $a1, %hi(func_80A10F18)    ## $a1 = 80A10000
/* 00234 80A0F494 24A50F18 */  addiu   $a1, $a1, %lo(func_80A10F18) ## $a1 = 80A10F18
/* 00238 80A0F498 0C283C98 */  jal     func_80A0F260              
/* 0023C 80A0F49C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00240 80A0F4A0 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 00244 80A0F4A4 24010029 */  addiu   $at, $zero, 0x0029         ## $at = 00000029
/* 00248 80A0F4A8 2408004C */  addiu   $t0, $zero, 0x004C         ## $t0 = 0000004C
/* 0024C 80A0F4AC 17010007 */  bne     $t8, $at, .L80A0F4CC       
/* 00250 80A0F4B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00254 80A0F4B4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00258 80A0F4B8 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 0025C 80A0F4BC 241901B8 */  addiu   $t9, $zero, 0x01B8         ## $t9 = 000001B8
/* 00260 80A0F4C0 A6190150 */  sh      $t9, 0x0150($s0)           ## 00000150
/* 00264 80A0F4C4 1000006C */  beq     $zero, $zero, .L80A0F678   
/* 00268 80A0F4C8 E6120058 */  swc1    $f18, 0x0058($s0)          ## 00000058
.L80A0F4CC:
/* 0026C 80A0F4CC A6080150 */  sh      $t0, 0x0150($s0)           ## 00000150
/* 00270 80A0F4D0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00274 80A0F4D4 2405283F */  addiu   $a1, $zero, 0x283F         ## $a1 = 0000283F
/* 00278 80A0F4D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0027C 80A0F4DC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00280 80A0F4E0 24052853 */  addiu   $a1, $zero, 0x2853         ## $a1 = 00002853
/* 00284 80A0F4E4 10000065 */  beq     $zero, $zero, .L80A0F67C   
/* 00288 80A0F4E8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0028C 80A0F4EC 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
.L80A0F4F0:
/* 00290 80A0F4F0 14410061 */  bne     $v0, $at, .L80A0F678       
/* 00294 80A0F4F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00298 80A0F4F8 86090030 */  lh      $t1, 0x0030($s0)           ## 00000030
/* 0029C 80A0F4FC 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 002A0 80A0F500 3C0580A1 */  lui     $a1, %hi(func_80A10220)    ## $a1 = 80A10000
/* 002A4 80A0F504 55200006 */  bnel    $t1, $zero, .L80A0F520     
/* 002A8 80A0F508 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 002AC 80A0F50C 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 002B0 80A0F510 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 002B4 80A0F514 10000004 */  beq     $zero, $zero, .L80A0F528   
/* 002B8 80A0F518 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 002BC 80A0F51C 44813000 */  mtc1    $at, $f6                   ## $f6 = 8.00
.L80A0F520:
/* 002C0 80A0F520 00000000 */  nop
/* 002C4 80A0F524 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
.L80A0F528:
/* 002C8 80A0F528 0C283C98 */  jal     func_80A0F260              
/* 002CC 80A0F52C 24A50220 */  addiu   $a1, $a1, %lo(func_80A10220) ## $a1 = 80A10220
/* 002D0 80A0F530 8FA2004C */  lw      $v0, 0x004C($sp)           
/* 002D4 80A0F534 240A0046 */  addiu   $t2, $zero, 0x0046         ## $t2 = 00000046
/* 002D8 80A0F538 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 002DC 80A0F53C A60A0150 */  sh      $t2, 0x0150($s0)           ## 00000150
/* 002E0 80A0F540 A60B0152 */  sh      $t3, 0x0152($s0)           ## 00000152
/* 002E4 80A0F544 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 002E8 80A0F548 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 002EC 80A0F54C 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 002F0 80A0F550 C4480024 */  lwc1    $f8, 0x0024($v0)           ## 00000024
/* 002F4 80A0F554 C4520028 */  lwc1    $f18, 0x0028($v0)          ## 00000028
/* 002F8 80A0F558 460A4301 */  sub.s   $f12, $f8, $f10            
/* 002FC 80A0F55C C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00300 80A0F560 46049180 */  add.s   $f6, $f18, $f4             
/* 00304 80A0F564 46083281 */  sub.s   $f10, $f6, $f8             
/* 00308 80A0F568 E7AA0044 */  swc1    $f10, 0x0044($sp)          
/* 0030C 80A0F56C C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 00310 80A0F570 C452002C */  lwc1    $f18, 0x002C($v0)          ## 0000002C
/* 00314 80A0F574 E7AC0048 */  swc1    $f12, 0x0048($sp)          
/* 00318 80A0F578 46049381 */  sub.s   $f14, $f18, $f4            
/* 0031C 80A0F57C 0C03F494 */  jal     Math_atan2f              
/* 00320 80A0F580 E7AE0040 */  swc1    $f14, 0x0040($sp)          
/* 00324 80A0F584 3C0180A1 */  lui     $at, %hi(D_80A119C8)       ## $at = 80A10000
/* 00328 80A0F588 C42619C8 */  lwc1    $f6, %lo(D_80A119C8)($at)  
/* 0032C 80A0F58C C7A20048 */  lwc1    $f2, 0x0048($sp)           
/* 00330 80A0F590 C7B00040 */  lwc1    $f16, 0x0040($sp)          
/* 00334 80A0F594 46060202 */  mul.s   $f8, $f0, $f6              
/* 00338 80A0F598 00000000 */  nop
/* 0033C 80A0F59C 46021482 */  mul.s   $f18, $f2, $f2             
/* 00340 80A0F5A0 00000000 */  nop
/* 00344 80A0F5A4 46108102 */  mul.s   $f4, $f16, $f16            
/* 00348 80A0F5A8 4600428D */  trunc.w.s $f10, $f8                  
/* 0034C 80A0F5AC 46049000 */  add.s   $f0, $f18, $f4             
/* 00350 80A0F5B0 440D5000 */  mfc1    $t5, $f10                  
/* 00354 80A0F5B4 00000000 */  nop
/* 00358 80A0F5B8 A60D0032 */  sh      $t5, 0x0032($s0)           ## 00000032
/* 0035C 80A0F5BC 46000384 */  sqrt.s  $f14, $f0                  
/* 00360 80A0F5C0 0C03F494 */  jal     Math_atan2f              
/* 00364 80A0F5C4 C7AC0044 */  lwc1    $f12, 0x0044($sp)          
/* 00368 80A0F5C8 3C0180A1 */  lui     $at, %hi(D_80A119CC)       ## $at = 80A10000
/* 0036C 80A0F5CC C42619CC */  lwc1    $f6, %lo(D_80A119CC)($at)  
/* 00370 80A0F5D0 24180028 */  addiu   $t8, $zero, 0x0028         ## $t8 = 00000028
/* 00374 80A0F5D4 24190032 */  addiu   $t9, $zero, 0x0032         ## $t9 = 00000032
/* 00378 80A0F5D8 46060202 */  mul.s   $f8, $f0, $f6              
/* 0037C 80A0F5DC 2408FFE7 */  addiu   $t0, $zero, 0xFFE7         ## $t0 = FFFFFFE7
/* 00380 80A0F5E0 A61801F0 */  sh      $t8, 0x01F0($s0)           ## 000001F0
/* 00384 80A0F5E4 A61901F2 */  sh      $t9, 0x01F2($s0)           ## 000001F2
/* 00388 80A0F5E8 A60801F4 */  sh      $t0, 0x01F4($s0)           ## 000001F4
/* 0038C 80A0F5EC 260601A0 */  addiu   $a2, $s0, 0x01A0           ## $a2 = 000001A0
/* 00390 80A0F5F0 4600428D */  trunc.w.s $f10, $f8                  
/* 00394 80A0F5F4 440F5000 */  mfc1    $t7, $f10                  
/* 00398 80A0F5F8 00000000 */  nop
/* 0039C 80A0F5FC A60F0030 */  sh      $t7, 0x0030($s0)           ## 00000030
/* 003A0 80A0F600 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 003A4 80A0F604 AFA60038 */  sw      $a2, 0x0038($sp)           
/* 003A8 80A0F608 0C01E9D9 */  jal     Lights_Insert
              
/* 003AC 80A0F60C 248507A8 */  addiu   $a1, $a0, 0x07A8           ## $a1 = 000007A8
/* 003B0 80A0F610 C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 003B4 80A0F614 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 003B8 80A0F618 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 003BC 80A0F61C 4600910D */  trunc.w.s $f4, $f18                  
/* 003C0 80A0F620 AE02019C */  sw      $v0, 0x019C($s0)           ## 0000019C
/* 003C4 80A0F624 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 003C8 80A0F628 4600320D */  trunc.w.s $f8, $f6                   
/* 003CC 80A0F62C 44052000 */  mfc1    $a1, $f4                   
/* 003D0 80A0F630 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 003D4 80A0F634 4600548D */  trunc.w.s $f18, $f10                 
/* 003D8 80A0F638 44064000 */  mfc1    $a2, $f8                   
/* 003DC 80A0F63C 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 003E0 80A0F640 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 003E4 80A0F644 44079000 */  mfc1    $a3, $f18                  
/* 003E8 80A0F648 00052C00 */  sll     $a1, $a1, 16               
/* 003EC 80A0F64C 00063400 */  sll     $a2, $a2, 16               
/* 003F0 80A0F650 00073C00 */  sll     $a3, $a3, 16               
/* 003F4 80A0F654 00073C03 */  sra     $a3, $a3, 16               
/* 003F8 80A0F658 00063403 */  sra     $a2, $a2, 16               
/* 003FC 80A0F65C 00052C03 */  sra     $a1, $a1, 16               
/* 00400 80A0F660 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 00404 80A0F664 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 00408 80A0F668 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 0040C 80A0F66C AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00410 80A0F670 0C01E763 */  jal     Lights_InitType0PositionalLight
              
/* 00414 80A0F674 8FA40038 */  lw      $a0, 0x0038($sp)           
.L80A0F678:
/* 00418 80A0F678 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A0F67C:
/* 0041C 80A0F67C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00420 80A0F680 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 00424 80A0F684 03E00008 */  jr      $ra                        
/* 00428 80A0F688 00000000 */  nop
