.rdata
glabel D_80B3AA08
    .asciz "\x1b[35m☆☆☆☆☆ セーブしたよ！おもいっきり！ %x\n\x1b[m"
    .balign 4

glabel D_80B3AA3C
    .asciz "\n\n"
    .balign 4

glabel D_80B3AA40
    .asciz "\x1b[32m☆☆☆☆☆ 透明メッセージ君せっと %x\n\x1b[m"
    .balign 4

glabel D_80B3AA70
    .asciz "\x1b[33m☆☆☆☆☆ セーブ情報 	           %x\n\x1b[m"
    .balign 4

glabel D_80B3AAA0
    .asciz "\x1b[35m☆☆☆☆☆ 指定メッセージ種類     %x\n\x1b[m"
    .balign 4

glabel D_80B3AAD0
    .asciz "\x1b[36m☆☆☆☆☆ 実質メッセージ種類     %x\n\x1b[m"
    .balign 4

glabel D_80B3AB00
    .asciz "\x1b[32m☆☆☆☆☆ 指定範囲               %d\n\x1b[m"
    .balign 4

glabel D_80B3AB30
    .asciz "\x1b[33m☆☆☆☆☆ 処理範囲               %f\n\x1b[m"
    .balign 4

glabel D_80B3AB60
    .asciz "\x1b[35m ☆☆ 通常 ☆☆ \n\x1b[m"
    .balign 4

glabel D_80B3AB7C
    .asciz "\x1b[35m ☆☆ チェックのみ ☆☆ \n\x1b[m"
    .balign 4

glabel D_80B3ABA0
    .asciz "\x1b[35m ☆☆ ロックのみ ☆☆ \n\x1b[m"
    .balign 4

.text
glabel func_80B3A15C
/* 0028C 80B3A15C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00290 80B3A160 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00294 80B3A164 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00298 80B3A168 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0029C 80B3A16C 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 002A0 80B3A170 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002A4 80B3A174 AFAF002C */  sw      $t7, 0x002C($sp)           
/* 002A8 80B3A178 84980158 */  lh      $t8, 0x0158($a0)           ## 00000158
/* 002AC 80B3A17C 84860152 */  lh      $a2, 0x0152($a0)           ## 00000152
/* 002B0 80B3A180 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 002B4 80B3A184 04C00010 */  bltz    $a2, .L80B3A1C8            
/* 002B8 80B3A188 A4990158 */  sh      $t9, 0x0158($a0)           ## 00000158
/* 002BC 80B3A18C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 002C0 80B3A190 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 002C4 80B3A194 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 002C8 80B3A198 5040000C */  beql    $v0, $zero, .L80B3A1CC     
/* 002CC 80B3A19C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002D0 80B3A1A0 9208015A */  lbu     $t0, 0x015A($s0)           ## 0000015A
/* 002D4 80B3A1A4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 002D8 80B3A1A8 55000086 */  bnel    $t0, $zero, .L80B3A3C4     
/* 002DC 80B3A1AC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 002E0 80B3A1B0 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 002E4 80B3A1B4 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 002E8 80B3A1B8 A20B015A */  sb      $t3, 0x015A($s0)           ## 0000015A
/* 002EC 80B3A1BC 01215024 */  and     $t2, $t1, $at              
/* 002F0 80B3A1C0 1000007F */  beq     $zero, $zero, .L80B3A3C0   
/* 002F4 80B3A1C4 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
.L80B3A1C8:
/* 002F8 80B3A1C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B3A1CC:
/* 002FC 80B3A1CC 0C00BC65 */  jal     func_8002F194              
/* 00300 80B3A1D0 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00304 80B3A1D4 10400013 */  beq     $v0, $zero, .L80B3A224     
/* 00308 80B3A1D8 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 0030C 80B3A1DC 86060152 */  lh      $a2, 0x0152($s0)           ## 00000152
/* 00310 80B3A1E0 04C0000C */  bltz    $a2, .L80B3A214            
/* 00314 80B3A1E4 00000000 */  nop
/* 00318 80B3A1E8 860C0154 */  lh      $t4, 0x0154($s0)           ## 00000154
/* 0031C 80B3A1EC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00320 80B3A1F0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00324 80B3A1F4 11810007 */  beq     $t4, $at, .L80B3A214       
/* 00328 80B3A1F8 00000000 */  nop
/* 0032C 80B3A1FC 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00330 80B3A200 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 00334 80B3A204 3C0480B4 */  lui     $a0, %hi(D_80B3AA08)       ## $a0 = 80B40000
/* 00338 80B3A208 2484AA08 */  addiu   $a0, $a0, %lo(D_80B3AA08)  ## $a0 = 80B3AA08
/* 0033C 80B3A20C 0C00084C */  jal     osSyncPrintf
              
/* 00340 80B3A210 86050152 */  lh      $a1, 0x0152($s0)           ## 00000152
.L80B3A214:
/* 00344 80B3A214 3C0D80B4 */  lui     $t5, %hi(func_80B3A10C)    ## $t5 = 80B40000
/* 00348 80B3A218 25ADA10C */  addiu   $t5, $t5, %lo(func_80B3A10C) ## $t5 = 80B3A10C
/* 0034C 80B3A21C 10000068 */  beq     $zero, $zero, .L80B3A3C0   
/* 00350 80B3A220 AE0D014C */  sw      $t5, 0x014C($s0)           ## 0000014C
.L80B3A224:
/* 00354 80B3A224 860E008A */  lh      $t6, 0x008A($s0)           ## 0000008A
/* 00358 80B3A228 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 0035C 80B3A22C 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.00
/* 00360 80B3A230 8FB8002C */  lw      $t8, 0x002C($sp)           
/* 00364 80B3A234 01CF1023 */  subu    $v0, $t6, $t7              
/* 00368 80B3A238 00021400 */  sll     $v0, $v0, 16               
/* 0036C 80B3A23C 00021403 */  sra     $v0, $v0, 16               
/* 00370 80B3A240 04400004 */  bltz    $v0, .L80B3A254            
/* 00374 80B3A244 00021823 */  subu    $v1, $zero, $v0            
/* 00378 80B3A248 00021C00 */  sll     $v1, $v0, 16               
/* 0037C 80B3A24C 10000003 */  beq     $zero, $zero, .L80B3A25C   
/* 00380 80B3A250 00031C03 */  sra     $v1, $v1, 16               
.L80B3A254:
/* 00384 80B3A254 00031C00 */  sll     $v1, $v1, 16               
/* 00388 80B3A258 00031C03 */  sra     $v1, $v1, 16               
.L80B3A25C:
/* 0038C 80B3A25C C602015C */  lwc1    $f2, 0x015C($s0)           ## 0000015C
/* 00390 80B3A260 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 00394 80B3A264 46022180 */  add.s   $f6, $f4, $f2              
/* 00398 80B3A268 4608303C */  c.lt.s  $f6, $f8                   
/* 0039C 80B3A26C 00000000 */  nop
/* 003A0 80B3A270 45030054 */  bc1tl   .L80B3A3C4                 
/* 003A4 80B3A274 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 003A8 80B3A278 C70A0028 */  lwc1    $f10, 0x0028($t8)          ## 00000028
/* 003AC 80B3A27C C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 003B0 80B3A280 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 003B4 80B3A284 44819000 */  mtc1    $at, $f18                  ## $f18 = 100.00
/* 003B8 80B3A288 46105001 */  sub.s   $f0, $f10, $f16            
/* 003BC 80B3A28C 28614000 */  slti    $at, $v1, 0x4000           
/* 003C0 80B3A290 46000005 */  abs.s   $f0, $f0                   
/* 003C4 80B3A294 4600903C */  c.lt.s  $f18, $f0                  
/* 003C8 80B3A298 00000000 */  nop
/* 003CC 80B3A29C 45030049 */  bc1tl   .L80B3A3C4                 
/* 003D0 80B3A2A0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 003D4 80B3A2A4 50200047 */  beql    $at, $zero, .L80B3A3C4     
/* 003D8 80B3A2A8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 003DC 80B3A2AC 86190158 */  lh      $t9, 0x0158($s0)           ## 00000158
/* 003E0 80B3A2B0 3C0480B4 */  lui     $a0, %hi(D_80B3AA3C)       ## $a0 = 80B40000
/* 003E4 80B3A2B4 2B210002 */  slti    $at, $t9, 0x0002           
/* 003E8 80B3A2B8 54200037 */  bnel    $at, $zero, .L80B3A398     
/* 003EC 80B3A2BC 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 003F0 80B3A2C0 0C00084C */  jal     osSyncPrintf
              
/* 003F4 80B3A2C4 2484AA3C */  addiu   $a0, $a0, %lo(D_80B3AA3C)  ## $a0 = 80B3AA3C
/* 003F8 80B3A2C8 3C0480B4 */  lui     $a0, %hi(D_80B3AA40)       ## $a0 = 80B40000
/* 003FC 80B3A2CC 2484AA40 */  addiu   $a0, $a0, %lo(D_80B3AA40)  ## $a0 = 80B3AA40
/* 00400 80B3A2D0 0C00084C */  jal     osSyncPrintf
              
/* 00404 80B3A2D4 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00408 80B3A2D8 3C0480B4 */  lui     $a0, %hi(D_80B3AA70)       ## $a0 = 80B40000
/* 0040C 80B3A2DC 2484AA70 */  addiu   $a0, $a0, %lo(D_80B3AA70)  ## $a0 = 80B3AA70
/* 00410 80B3A2E0 0C00084C */  jal     osSyncPrintf
              
/* 00414 80B3A2E4 86050152 */  lh      $a1, 0x0152($s0)           ## 00000152
/* 00418 80B3A2E8 3C0480B4 */  lui     $a0, %hi(D_80B3AAA0)       ## $a0 = 80B40000
/* 0041C 80B3A2EC 2484AAA0 */  addiu   $a0, $a0, %lo(D_80B3AAA0)  ## $a0 = 80B3AAA0
/* 00420 80B3A2F0 0C00084C */  jal     osSyncPrintf
              
/* 00424 80B3A2F4 86050150 */  lh      $a1, 0x0150($s0)           ## 00000150
/* 00428 80B3A2F8 3C0480B4 */  lui     $a0, %hi(D_80B3AAD0)       ## $a0 = 80B40000
/* 0042C 80B3A2FC 2484AAD0 */  addiu   $a0, $a0, %lo(D_80B3AAD0)  ## $a0 = 80B3AAD0
/* 00430 80B3A300 0C00084C */  jal     osSyncPrintf
              
/* 00434 80B3A304 9605010E */  lhu     $a1, 0x010E($s0)           ## 0000010E
/* 00438 80B3A308 3C0480B4 */  lui     $a0, %hi(D_80B3AB00)       ## $a0 = 80B40000
/* 0043C 80B3A30C 2484AB00 */  addiu   $a0, $a0, %lo(D_80B3AB00)  ## $a0 = 80B3AB00
/* 00440 80B3A310 0C00084C */  jal     osSyncPrintf
              
/* 00444 80B3A314 86050034 */  lh      $a1, 0x0034($s0)           ## 00000034
/* 00448 80B3A318 C604015C */  lwc1    $f4, 0x015C($s0)           ## 0000015C
/* 0044C 80B3A31C 3C0480B4 */  lui     $a0, %hi(D_80B3AB30)       ## $a0 = 80B40000
/* 00450 80B3A320 2484AB30 */  addiu   $a0, $a0, %lo(D_80B3AB30)  ## $a0 = 80B3AB30
/* 00454 80B3A324 460021A1 */  cvt.d.s $f6, $f4                   
/* 00458 80B3A328 44073000 */  mfc1    $a3, $f6                   
/* 0045C 80B3A32C 44063800 */  mfc1    $a2, $f7                   
/* 00460 80B3A330 0C00084C */  jal     osSyncPrintf
              
/* 00464 80B3A334 00000000 */  nop
/* 00468 80B3A338 86020154 */  lh      $v0, 0x0154($s0)           ## 00000154
/* 0046C 80B3A33C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00470 80B3A340 3C0480B4 */  lui     $a0, %hi(D_80B3AB60)       ## $a0 = 80B40000
/* 00474 80B3A344 10400008 */  beq     $v0, $zero, .L80B3A368     
/* 00478 80B3A348 00000000 */  nop
/* 0047C 80B3A34C 1041000A */  beq     $v0, $at, .L80B3A378       
/* 00480 80B3A350 3C0480B4 */  lui     $a0, %hi(D_80B3AB7C)       ## $a0 = 80B40000
/* 00484 80B3A354 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00488 80B3A358 1041000B */  beq     $v0, $at, .L80B3A388       
/* 0048C 80B3A35C 3C0480B4 */  lui     $a0, %hi(D_80B3ABA0)       ## $a0 = 80B40000
/* 00490 80B3A360 1000000C */  beq     $zero, $zero, .L80B3A394   
/* 00494 80B3A364 C602015C */  lwc1    $f2, 0x015C($s0)           ## 0000015C
.L80B3A368:
/* 00498 80B3A368 0C00084C */  jal     osSyncPrintf
              
/* 0049C 80B3A36C 2484AB60 */  addiu   $a0, $a0, %lo(D_80B3AB60)  ## $a0 = 80B3AB60
/* 004A0 80B3A370 10000008 */  beq     $zero, $zero, .L80B3A394   
/* 004A4 80B3A374 C602015C */  lwc1    $f2, 0x015C($s0)           ## 0000015C
.L80B3A378:
/* 004A8 80B3A378 0C00084C */  jal     osSyncPrintf
              
/* 004AC 80B3A37C 2484AB7C */  addiu   $a0, $a0, %lo(D_80B3AB7C)  ## $a0 = FFFFAB7C
/* 004B0 80B3A380 10000004 */  beq     $zero, $zero, .L80B3A394   
/* 004B4 80B3A384 C602015C */  lwc1    $f2, 0x015C($s0)           ## 0000015C
.L80B3A388:
/* 004B8 80B3A388 0C00084C */  jal     osSyncPrintf
              
/* 004BC 80B3A38C 2484ABA0 */  addiu   $a0, $a0, %lo(D_80B3ABA0)  ## $a0 = FFFFABA0
/* 004C0 80B3A390 C602015C */  lwc1    $f2, 0x015C($s0)           ## 0000015C
.L80B3A394:
/* 004C4 80B3A394 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
.L80B3A398:
/* 004C8 80B3A398 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 004CC 80B3A39C A6000158 */  sh      $zero, 0x0158($s0)         ## 00000158
/* 004D0 80B3A3A0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 004D4 80B3A3A4 46081280 */  add.s   $f10, $f2, $f8             
/* 004D8 80B3A3A8 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 004DC 80B3A3AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004E0 80B3A3B0 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 004E4 80B3A3B4 44065000 */  mfc1    $a2, $f10                  
/* 004E8 80B3A3B8 0C00BC71 */  jal     func_8002F1C4              
/* 004EC 80B3A3BC 00000000 */  nop
.L80B3A3C0:
/* 004F0 80B3A3C0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B3A3C4:
/* 004F4 80B3A3C4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 004F8 80B3A3C8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 004FC 80B3A3CC 03E00008 */  jr      $ra                        
/* 00500 80B3A3D0 00000000 */  nop
