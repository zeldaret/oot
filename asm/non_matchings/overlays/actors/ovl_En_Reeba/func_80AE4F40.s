glabel func_80AE4F40
/* 00270 80AE4F40 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00274 80AE4F44 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00278 80AE4F48 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0027C 80AE4F4C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00280 80AE4F50 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00284 80AE4F54 AFA5003C */  sw      $a1, 0x003C($sp)
/* 00288 80AE4F58 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0028C 80AE4F5C 248401E4 */  addiu   $a0, $a0, 0x01E4           ## $a0 = 060001E4
/* 00290 80AE4F60 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00294 80AE4F64 8FAE003C */  lw      $t6, 0x003C($sp)
/* 00298 80AE4F68 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 0029C 80AE4F6C 468021A0 */  cvt.s.w $f6, $f4
/* 002A0 80AE4F70 8DCF1C44 */  lw      $t7, 0x1C44($t6)           ## 00001C44
/* 002A4 80AE4F74 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 002A8 80AE4F78 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 002AC 80AE4F7C 24A501E4 */  addiu   $a1, $a1, 0x01E4           ## $a1 = 060001E4
/* 002B0 80AE4F80 AFA00014 */  sw      $zero, 0x0014($sp)
/* 002B4 80AE4F84 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 002B8 80AE4F88 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 002BC 80AE4F8C 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 002C0 80AE4F90 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 002C4 80AE4F94 AFAF0030 */  sw      $t7, 0x0030($sp)
/* 002C8 80AE4F98 0C029468 */  jal     SkelAnime_ChangeAnim

/* 002CC 80AE4F9C E7A80018 */  swc1    $f8, 0x0018($sp)
/* 002D0 80AE4FA0 8FB80030 */  lw      $t8, 0x0030($sp)
/* 002D4 80AE4FA4 24030014 */  addiu   $v1, $zero, 0x0014         ## $v1 = 00000014
/* 002D8 80AE4FA8 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 002DC 80AE4FAC C7000838 */  lwc1    $f0, 0x0838($t8)           ## 00000838
/* 002E0 80AE4FB0 240539EE */  addiu   $a1, $zero, 0x39EE         ## $a1 = 000039EE
/* 002E4 80AE4FB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002E8 80AE4FB8 46000005 */  abs.s   $f0, $f0
/* 002EC 80AE4FBC 4600028D */  trunc.w.s $f10, $f0
/* 002F0 80AE4FC0 440A5000 */  mfc1    $t2, $f10
/* 002F4 80AE4FC4 00000000 */  nop
/* 002F8 80AE4FC8 000A5840 */  sll     $t3, $t2,  1
/* 002FC 80AE4FCC 006B6023 */  subu    $t4, $v1, $t3
/* 00300 80AE4FD0 A60C0278 */  sh      $t4, 0x0278($s0)           ## 00000278
/* 00304 80AE4FD4 86020278 */  lh      $v0, 0x0278($s0)           ## 00000278
/* 00308 80AE4FD8 04430004 */  bgezl   $v0, .L80AE4FEC
/* 0030C 80AE4FDC 28410015 */  slti    $at, $v0, 0x0015
/* 00310 80AE4FE0 A60D0278 */  sh      $t5, 0x0278($s0)           ## 00000278
/* 00314 80AE4FE4 86020278 */  lh      $v0, 0x0278($s0)           ## 00000278
/* 00318 80AE4FE8 28410015 */  slti    $at, $v0, 0x0015
.L80AE4FEC:
/* 0031C 80AE4FEC 54200003 */  bnel    $at, $zero, .L80AE4FFC
/* 00320 80AE4FF0 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00324 80AE4FF4 A6030278 */  sh      $v1, 0x0278($s0)           ## 00000278
/* 00328 80AE4FF8 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
.L80AE4FFC:
/* 0032C 80AE4FFC 8618027A */  lh      $t8, 0x027A($s0)           ## 0000027A
/* 00330 80AE5000 3C01F7FF */  lui     $at, 0xF7FF                ## $at = F7FF0000
/* 00334 80AE5004 C6100080 */  lwc1    $f16, 0x0080($s0)          ## 00000080
/* 00338 80AE5008 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = F7FFFFFF
/* 0033C 80AE500C 01C17824 */  and     $t7, $t6, $at
/* 00340 80AE5010 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 00344 80AE5014 13000005 */  beq     $t8, $zero, .L80AE502C
/* 00348 80AE5018 E6100028 */  swc1    $f16, 0x0028($s0)          ## 00000028
/* 0034C 80AE501C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00350 80AE5020 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00354 80AE5024 10000003 */  beq     $zero, $zero, .L80AE5034
/* 00358 80AE5028 00000000 */  nop
.L80AE502C:
/* 0035C 80AE502C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00360 80AE5030 24053986 */  addiu   $a1, $zero, 0x3986         ## $a1 = 00003986
.L80AE5034:
/* 00364 80AE5034 3C1980AE */  lui     $t9, %hi(func_80AE5054)    ## $t9 = 80AE0000
/* 00368 80AE5038 27395054 */  addiu   $t9, $t9, %lo(func_80AE5054) ## $t9 = 80AE5054
/* 0036C 80AE503C AE19026C */  sw      $t9, 0x026C($s0)           ## 0000026C
/* 00370 80AE5040 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00374 80AE5044 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00378 80AE5048 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0037C 80AE504C 03E00008 */  jr      $ra
/* 00380 80AE5050 00000000 */  nop
