.rdata
glabel D_80B8E850
    .asciz "反射用 光の発生!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

glabel D_80B8E880
    .asciz "../z_mir_ray.c"
    .balign 4

glabel D_80B8E890
    .asciz "this->actor.arg_data = %d\n"
    .balign 4

glabel D_80B8E8AC
    .asciz "../z_mir_ray.c"
    .balign 4

glabel D_80B8E8BC
    .asciz "\"反射光 発生失敗\" = %s\n"
    .balign 4

glabel D_80B8E8D4
    .asciz "反射光 発生失敗"
    .balign 4

.late_rodata
glabel D_80B8E924
    .float 758.0
glabel D_80B8E928
    .float -939.0
glabel D_80B8E92C
    .float -1690.0
glabel D_80B8E930
    .float 938.0
glabel D_80B8E934
    .float 921.0

.text
glabel MirRay_Init
/* 00260 80B8D2B0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00264 80B8D2B4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00268 80B8D2B8 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 0026C 80B8D2BC AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00270 80B8D2C0 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00274 80B8D2C4 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00278 80B8D2C8 3C1880B9 */  lui     $t8, %hi(D_80B8E6F8)       ## $t8 = 80B90000
/* 0027C 80B8D2CC 2718E6F8 */  addiu   $t8, $t8, %lo(D_80B8E6F8)  ## $t8 = 80B8E6F8
/* 00280 80B8D2D0 3C0580B9 */  lui     $a1, %hi(D_80B8E838)       ## $a1 = 80B90000
/* 00284 80B8D2D4 000E7940 */  sll     $t7, $t6,  5               
/* 00288 80B8D2D8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0028C 80B8D2DC 01F88821 */  addu    $s1, $t7, $t8              
/* 00290 80B8D2E0 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00294 80B8D2E4 24A5E838 */  addiu   $a1, $a1, %lo(D_80B8E838)  ## $a1 = 80B8E838
/* 00298 80B8D2E8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0029C 80B8D2EC 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 002A0 80B8D2F0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 002A4 80B8D2F4 44050000 */  mfc1    $a1, $f0                   
/* 002A8 80B8D2F8 44070000 */  mfc1    $a3, $f0                   
/* 002AC 80B8D2FC 0C00AC78 */  jal     ActorShape_Init
              
/* 002B0 80B8D300 00000000 */  nop
/* 002B4 80B8D304 3C0480B9 */  lui     $a0, %hi(D_80B8E850)       ## $a0 = 80B90000
/* 002B8 80B8D308 0C00084C */  jal     osSyncPrintf
              
/* 002BC 80B8D30C 2484E850 */  addiu   $a0, $a0, %lo(D_80B8E850)  ## $a0 = 80B8E850
/* 002C0 80B8D310 3C0480B9 */  lui     $a0, %hi(D_80B8E880)       ## $a0 = 80B90000
/* 002C4 80B8D314 2484E880 */  addiu   $a0, $a0, %lo(D_80B8E880)  ## $a0 = 80B8E880
/* 002C8 80B8D318 0C000B84 */  jal     LogUtils_LogThreadId
              
/* 002CC 80B8D31C 24050206 */  addiu   $a1, $zero, 0x0206         ## $a1 = 00000206
/* 002D0 80B8D320 3C0480B9 */  lui     $a0, %hi(D_80B8E890)       ## $a0 = 80B90000
/* 002D4 80B8D324 2484E890 */  addiu   $a0, $a0, %lo(D_80B8E890)  ## $a0 = 80B8E890
/* 002D8 80B8D328 0C00084C */  jal     osSyncPrintf
              
/* 002DC 80B8D32C 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 002E0 80B8D330 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 002E4 80B8D334 3C0480B9 */  lui     $a0, %hi(D_80B8E8AC)       ## $a0 = 80B90000
/* 002E8 80B8D338 2484E8AC */  addiu   $a0, $a0, %lo(D_80B8E8AC)  ## $a0 = 80B8E8AC
/* 002EC 80B8D33C 2B21000A */  slti    $at, $t9, 0x000A           
/* 002F0 80B8D340 5420000B */  bnel    $at, $zero, .L80B8D370     
/* 002F4 80B8D344 86280000 */  lh      $t0, 0x0000($s1)           ## 00000000
/* 002F8 80B8D348 0C000B84 */  jal     LogUtils_LogThreadId
              
/* 002FC 80B8D34C 24050209 */  addiu   $a1, $zero, 0x0209         ## $a1 = 00000209
/* 00300 80B8D350 3C0480B9 */  lui     $a0, %hi(D_80B8E8BC)       ## $a0 = 80B90000
/* 00304 80B8D354 3C0580B9 */  lui     $a1, %hi(D_80B8E8D4)       ## $a1 = 80B90000
/* 00308 80B8D358 24A5E8D4 */  addiu   $a1, $a1, %lo(D_80B8E8D4)  ## $a1 = 80B8E8D4
/* 0030C 80B8D35C 0C00084C */  jal     osSyncPrintf
              
/* 00310 80B8D360 2484E8BC */  addiu   $a0, $a0, %lo(D_80B8E8BC)  ## $a0 = 80B8E8BC
/* 00314 80B8D364 0C00B55C */  jal     Actor_Kill
              
/* 00318 80B8D368 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0031C 80B8D36C 86280000 */  lh      $t0, 0x0000($s1)           ## 00000000
.L80B8D370:
/* 00320 80B8D370 260402A0 */  addiu   $a0, $s0, 0x02A0           ## $a0 = 000002A0
/* 00324 80B8D374 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 00328 80B8D378 00000000 */  nop
/* 0032C 80B8D37C 468021A0 */  cvt.s.w $f6, $f4                   
/* 00330 80B8D380 E606027C */  swc1    $f6, 0x027C($s0)           ## 0000027C
/* 00334 80B8D384 86290002 */  lh      $t1, 0x0002($s1)           ## 00000002
/* 00338 80B8D388 44894000 */  mtc1    $t1, $f8                   ## $f8 = 0.00
/* 0033C 80B8D38C 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 00340 80B8D390 468042A0 */  cvt.s.w $f10, $f8                  
/* 00344 80B8D394 E60A0280 */  swc1    $f10, 0x0280($s0)          ## 00000280
/* 00348 80B8D398 862A0004 */  lh      $t2, 0x0004($s1)           ## 00000004
/* 0034C 80B8D39C 448A8000 */  mtc1    $t2, $f16                  ## $f16 = 0.00
/* 00350 80B8D3A0 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 00354 80B8D3A4 468084A0 */  cvt.s.w $f18, $f16                 
/* 00358 80B8D3A8 E6120284 */  swc1    $f18, 0x0284($s0)          ## 00000284
/* 0035C 80B8D3AC 862B000C */  lh      $t3, 0x000C($s1)           ## 0000000C
/* 00360 80B8D3B0 A60B0294 */  sh      $t3, 0x0294($s0)           ## 00000294
/* 00364 80B8D3B4 862C0006 */  lh      $t4, 0x0006($s1)           ## 00000006
/* 00368 80B8D3B8 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 0036C 80B8D3BC 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 00370 80B8D3C0 240C0064 */  addiu   $t4, $zero, 0x0064         ## $t4 = 00000064
/* 00374 80B8D3C4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00378 80B8D3C8 C604027C */  lwc1    $f4, 0x027C($s0)           ## 0000027C
/* 0037C 80B8D3CC E6060288 */  swc1    $f6, 0x0288($s0)           ## 00000288
/* 00380 80B8D3D0 862D0008 */  lh      $t5, 0x0008($s1)           ## 00000008
/* 00384 80B8D3D4 4600218D */  trunc.w.s $f6, $f4                   
/* 00388 80B8D3D8 448D4000 */  mtc1    $t5, $f8                   ## $f8 = 0.00
/* 0038C 80B8D3DC 44053000 */  mfc1    $a1, $f6                   
/* 00390 80B8D3E0 468042A0 */  cvt.s.w $f10, $f8                  
/* 00394 80B8D3E4 C6080280 */  lwc1    $f8, 0x0280($s0)           ## 00000280
/* 00398 80B8D3E8 00052C00 */  sll     $a1, $a1, 16               
/* 0039C 80B8D3EC 00052C03 */  sra     $a1, $a1, 16               
/* 003A0 80B8D3F0 E60A028C */  swc1    $f10, 0x028C($s0)          ## 0000028C
/* 003A4 80B8D3F4 862E000A */  lh      $t6, 0x000A($s1)           ## 0000000A
/* 003A8 80B8D3F8 4600428D */  trunc.w.s $f10, $f8                  
/* 003AC 80B8D3FC 448E8000 */  mtc1    $t6, $f16                  ## $f16 = 0.00
/* 003B0 80B8D400 44065000 */  mfc1    $a2, $f10                  
/* 003B4 80B8D404 468084A0 */  cvt.s.w $f18, $f16                 
/* 003B8 80B8D408 C6100284 */  lwc1    $f16, 0x0284($s0)          ## 00000284
/* 003BC 80B8D40C 00063400 */  sll     $a2, $a2, 16               
/* 003C0 80B8D410 00063403 */  sra     $a2, $a2, 16               
/* 003C4 80B8D414 E6120290 */  swc1    $f18, 0x0290($s0)          ## 00000290
/* 003C8 80B8D418 4600848D */  trunc.w.s $f18, $f16                 
/* 003CC 80B8D41C 862F000E */  lh      $t7, 0x000E($s1)           ## 0000000E
/* 003D0 80B8D420 44079000 */  mfc1    $a3, $f18                  
/* 003D4 80B8D424 A60F0296 */  sh      $t7, 0x0296($s0)           ## 00000296
/* 003D8 80B8D428 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 003DC 80B8D42C 00073C00 */  sll     $a3, $a3, 16               
/* 003E0 80B8D430 00073C03 */  sra     $a3, $a3, 16               
/* 003E4 80B8D434 AFAC001C */  sw      $t4, 0x001C($sp)           
/* 003E8 80B8D438 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 003EC 80B8D43C AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 003F0 80B8D440 0C01E763 */  jal     Lights_PointNoGlowSetInfo
              
/* 003F4 80B8D444 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 003F8 80B8D448 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 003FC 80B8D44C 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 00400 80B8D450 0C01E9D9 */  jal     LightContext_InsertNewNode
              
/* 00404 80B8D454 248507A8 */  addiu   $a1, $a0, 0x07A8           ## $a1 = 000007A8
/* 00408 80B8D458 3C01C406 */  lui     $at, 0xC406                ## $at = C4060000
/* 0040C 80B8D45C 44810000 */  mtc1    $at, $f0                   ## $f0 = -536.00
/* 00410 80B8D460 3C0180B9 */  lui     $at, %hi(D_80B8E924)       ## $at = 80B90000
/* 00414 80B8D464 C422E924 */  lwc1    $f2, %lo(D_80B8E924)($at)  
/* 00418 80B8D468 AE02029C */  sw      $v0, 0x029C($s0)           ## 0000029C
/* 0041C 80B8D46C 3C0180B9 */  lui     $at, %hi(D_80B8E928)       ## $at = 80B90000
/* 00420 80B8D470 E6000230 */  swc1    $f0, 0x0230($s0)           ## 00000230
/* 00424 80B8D474 C424E928 */  lwc1    $f4, %lo(D_80B8E928)($at)  
/* 00428 80B8D478 3C0180B9 */  lui     $at, %hi(D_80B8E92C)       ## $at = 80B90000
/* 0042C 80B8D47C 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00430 80B8D480 E6040234 */  swc1    $f4, 0x0234($s0)           ## 00000234
/* 00434 80B8D484 C426E92C */  lwc1    $f6, %lo(D_80B8E92C)($at)  
/* 00438 80B8D488 3C0180B9 */  lui     $at, %hi(D_80B8E930)       ## $at = 80B90000
/* 0043C 80B8D48C E6000248 */  swc1    $f0, 0x0248($s0)           ## 00000248
/* 00440 80B8D490 E60C0240 */  swc1    $f12, 0x0240($s0)          ## 00000240
/* 00444 80B8D494 E606023C */  swc1    $f6, 0x023C($s0)           ## 0000023C
/* 00448 80B8D498 C428E930 */  lwc1    $f8, %lo(D_80B8E930)($at)  
/* 0044C 80B8D49C 3C0180B9 */  lui     $at, %hi(D_80B8E934)       ## $at = 80B90000
/* 00450 80B8D4A0 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00454 80B8D4A4 E608024C */  swc1    $f8, 0x024C($s0)           ## 0000024C
/* 00458 80B8D4A8 C42AE934 */  lwc1    $f10, %lo(D_80B8E934)($at) 
/* 0045C 80B8D4AC 3C014448 */  lui     $at, 0x4448                ## $at = 44480000
/* 00460 80B8D4B0 44818000 */  mtc1    $at, $f16                  ## $f16 = 800.00
/* 00464 80B8D4B4 3C01C448 */  lui     $at, 0xC448                ## $at = C4480000
/* 00468 80B8D4B8 44819000 */  mtc1    $at, $f18                  ## $f18 = -800.00
/* 0046C 80B8D4BC E6020260 */  swc1    $f2, 0x0260($s0)           ## 00000260
/* 00470 80B8D4C0 E602026C */  swc1    $f2, 0x026C($s0)           ## 0000026C
/* 00474 80B8D4C4 E60C0258 */  swc1    $f12, 0x0258($s0)          ## 00000258
/* 00478 80B8D4C8 E60A0254 */  swc1    $f10, 0x0254($s0)          ## 00000254
/* 0047C 80B8D4CC E6100264 */  swc1    $f16, 0x0264($s0)          ## 00000264
/* 00480 80B8D4D0 E6120270 */  swc1    $f18, 0x0270($s0)          ## 00000270
/* 00484 80B8D4D4 922D001F */  lbu     $t5, 0x001F($s1)           ## 0000001F
/* 00488 80B8D4D8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 0048C 80B8D4DC 31AE0002 */  andi    $t6, $t5, 0x0002           ## $t6 = 00000000
/* 00490 80B8D4E0 51C00012 */  beql    $t6, $zero, .L80B8D52C     
/* 00494 80B8D4E4 261101AC */  addiu   $s1, $s0, 0x01AC           ## $s1 = 000001AC
/* 00498 80B8D4E8 0C016EFE */  jal     Collider_InitJntSph              
/* 0049C 80B8D4EC AFA50030 */  sw      $a1, 0x0030($sp)           
/* 004A0 80B8D4F0 3C0780B9 */  lui     $a3, %hi(D_80B8E6E8)       ## $a3 = 80B90000
/* 004A4 80B8D4F4 260F016C */  addiu   $t7, $s0, 0x016C           ## $t7 = 0000016C
/* 004A8 80B8D4F8 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 004AC 80B8D4FC AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 004B0 80B8D500 24E7E6E8 */  addiu   $a3, $a3, %lo(D_80B8E6E8)  ## $a3 = 80B8E6E8
/* 004B4 80B8D504 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 004B8 80B8D508 0C017014 */  jal     Collider_SetJntSph              
/* 004BC 80B8D50C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 004C0 80B8D510 9238001F */  lbu     $t8, 0x001F($s1)           ## 000001CB
/* 004C4 80B8D514 33190004 */  andi    $t9, $t8, 0x0004           ## $t9 = 00000000
/* 004C8 80B8D518 57200004 */  bnel    $t9, $zero, .L80B8D52C     
/* 004CC 80B8D51C 261101AC */  addiu   $s1, $s0, 0x01AC           ## $s1 = 000001AC
/* 004D0 80B8D520 0C2E3414 */  jal     func_80B8D050              
/* 004D4 80B8D524 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004D8 80B8D528 261101AC */  addiu   $s1, $s0, 0x01AC           ## $s1 = 000001AC
.L80B8D52C:
/* 004DC 80B8D52C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 000001AC
/* 004E0 80B8D530 0C017406 */  jal     Collider_InitQuad              
/* 004E4 80B8D534 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 004E8 80B8D538 3C0780B9 */  lui     $a3, %hi(D_80B8E674)       ## $a3 = 80B90000
/* 004EC 80B8D53C 24E7E674 */  addiu   $a3, $a3, %lo(D_80B8E674)  ## $a3 = 80B8E674
/* 004F0 80B8D540 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 004F4 80B8D544 02202825 */  or      $a1, $s1, $zero            ## $a1 = 000001AC
/* 004F8 80B8D548 0C017441 */  jal     Collider_SetQuad              
/* 004FC 80B8D54C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00500 80B8D550 8603001C */  lh      $v1, 0x001C($s0)           ## 0000001C
/* 00504 80B8D554 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00508 80B8D558 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 0050C 80B8D55C 10610005 */  beq     $v1, $at, .L80B8D574       
/* 00510 80B8D560 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00514 80B8D564 10610003 */  beq     $v1, $at, .L80B8D574       
/* 00518 80B8D568 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 0051C 80B8D56C 54610003 */  bnel    $v1, $at, .L80B8D57C       
/* 00520 80B8D570 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80B8D574:
/* 00524 80B8D574 A2080003 */  sb      $t0, 0x0003($s0)           ## 00000003
/* 00528 80B8D578 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80B8D57C:
/* 0052C 80B8D57C 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 00530 80B8D580 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 00534 80B8D584 03E00008 */  jr      $ra                        
/* 00538 80B8D588 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
