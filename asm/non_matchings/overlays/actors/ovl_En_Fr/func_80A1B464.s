glabel func_80A1B464
/* 00AC4 80A1B464 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00AC8 80A1B468 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00ACC 80A1B46C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AD0 80A1B470 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00AD4 80A1B474 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00AD8 80A1B478 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00ADC 80A1B47C 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 00AE0 80A1B480 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 00AE4 80A1B484 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 00AE8 80A1B488 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00AEC 80A1B48C 0C01E1A7 */  jal     Math_SmoothStepToS

/* 00AF0 80A1B490 24072710 */  addiu   $a3, $zero, 0x2710         ## $a3 = 00002710
/* 00AF4 80A1B494 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 00AF8 80A1B498 1440001D */  bne     $v0, $zero, .L80A1B510
/* 00AFC 80A1B49C A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 00B00 80A1B4A0 C604015C */  lwc1    $f4, 0x015C($s0)           ## 0000015C
/* 00B04 80A1B4A4 C6060164 */  lwc1    $f6, 0x0164($s0)           ## 00000164
/* 00B08 80A1B4A8 3C0280A2 */  lui     $v0, %hi(D_80A1CFF0)       ## $v0 = 80A20000
/* 00B0C 80A1B4AC 3C0880A2 */  lui     $t0, %hi(func_80A1B524)    ## $t0 = 80A20000
/* 00B10 80A1B4B0 46062032 */  c.eq.s  $f4, $f6
/* 00B14 80A1B4B4 2442CFF0 */  addiu   $v0, $v0, %lo(D_80A1CFF0)  ## $v0 = 80A1CFF0
/* 00B18 80A1B4B8 2508B524 */  addiu   $t0, $t0, %lo(func_80A1B524) ## $t0 = 80A1B524
/* 00B1C 80A1B4BC 45020015 */  bc1fl   .L80A1B514
/* 00B20 80A1B4C0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00B24 80A1B4C4 90580000 */  lbu     $t8, 0x0000($v0)           ## 80A1CFF0
/* 00B28 80A1B4C8 3C040600 */  lui     $a0, %hi(D_06001534)                ## $a0 = 06000000
/* 00B2C 80A1B4CC 24841534 */  addiu   $a0, $a0, %lo(D_06001534)           ## $a0 = 06001534
/* 00B30 80A1B4D0 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00B34 80A1B4D4 A0590000 */  sb      $t9, 0x0000($v0)           ## 80A1CFF0
/* 00B38 80A1B4D8 0C028800 */  jal     Animation_GetLastFrame

/* 00B3C 80A1B4DC AE080354 */  sw      $t0, 0x0354($s0)           ## 00000354
/* 00B40 80A1B4E0 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 00B44 80A1B4E4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00B48 80A1B4E8 3C050600 */  lui     $a1, %hi(D_06001534)                ## $a1 = 06000000
/* 00B4C 80A1B4EC 468042A0 */  cvt.s.w $f10, $f8
/* 00B50 80A1B4F0 44070000 */  mfc1    $a3, $f0
/* 00B54 80A1B4F4 24A51534 */  addiu   $a1, $a1, %lo(D_06001534)           ## $a1 = 06001534
/* 00B58 80A1B4F8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00B5C 80A1B4FC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00B60 80A1B500 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00B64 80A1B504 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 00B68 80A1B508 0C029468 */  jal     Animation_Change

/* 00B6C 80A1B50C E7A00018 */  swc1    $f0, 0x0018($sp)
.L80A1B510:
/* 00B70 80A1B510 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A1B514:
/* 00B74 80A1B514 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00B78 80A1B518 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00B7C 80A1B51C 03E00008 */  jr      $ra
/* 00B80 80A1B520 00000000 */  nop
