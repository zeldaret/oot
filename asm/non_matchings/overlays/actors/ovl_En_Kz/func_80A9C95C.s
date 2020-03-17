glabel func_80A9C95C
/* 0040C 80A9C95C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00410 80A9C960 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00414 80A9C964 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00418 80A9C968 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 0041C 80A9C96C AFA60040 */  sw      $a2, 0x0040($sp)           
/* 00420 80A9C970 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 00424 80A9C974 8C8E1C44 */  lw      $t6, 0x1C44($a0)           ## 00001C44
/* 00428 80A9C978 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0042C 80A9C97C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00430 80A9C980 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 00434 80A9C984 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00438 80A9C988 0C00BC65 */  jal     func_8002F194              
/* 0043C 80A9C98C AFAE0034 */  sw      $t6, 0x0034($sp)           
/* 00440 80A9C990 10400005 */  beq     $v0, $zero, .L80A9C9A8     
/* 00444 80A9C994 8FA30040 */  lw      $v1, 0x0040($sp)           
/* 00448 80A9C998 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0044C 80A9C99C A46F0000 */  sh      $t7, 0x0000($v1)           ## 00000000
/* 00450 80A9C9A0 10000058 */  beq     $zero, $zero, .L80A9CB04   
/* 00454 80A9C9A4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A9C9A8:
/* 00458 80A9C9A8 84780000 */  lh      $t8, 0x0000($v1)           ## 00000000
/* 0045C 80A9C9AC 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00460 80A9C9B0 8FB9004C */  lw      $t9, 0x004C($sp)           
/* 00464 80A9C9B4 13000008 */  beq     $t8, $zero, .L80A9C9D8     
/* 00468 80A9C9B8 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 0046C 80A9C9BC 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 00470 80A9C9C0 0320F809 */  jalr    $ra, $t9                   
/* 00474 80A9C9C4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00478 80A9C9C8 8FA30040 */  lw      $v1, 0x0040($sp)           
/* 0047C 80A9C9CC A4620000 */  sh      $v0, 0x0000($v1)           ## 00000000
/* 00480 80A9C9D0 1000004C */  beq     $zero, $zero, .L80A9CB04   
/* 00484 80A9C9D4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A9C9D8:
/* 00488 80A9C9D8 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 0048C 80A9C9DC AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00490 80A9C9E0 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00494 80A9C9E4 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00498 80A9C9E8 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 0049C 80A9C9EC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 004A0 80A9C9F0 3C0180AA */  lui     $at, %hi(D_80A9D9B8)       ## $at = 80AA0000
/* 004A4 80A9C9F4 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 004A8 80A9C9F8 468021A0 */  cvt.s.w $f6, $f4                   
/* 004AC 80A9C9FC C430D9B8 */  lwc1    $f16, %lo(D_80A9D9B8)($at) 
/* 004B0 80A9CA00 3C0180AA */  lui     $at, %hi(D_80A9D9BC)       ## $at = 80AA0000
/* 004B4 80A9CA04 468042A0 */  cvt.s.w $f10, $f8                  
/* 004B8 80A9CA08 460A3081 */  sub.s   $f2, $f6, $f10             
/* 004BC 80A9CA0C 46001005 */  abs.s   $f0, $f2                   
/* 004C0 80A9CA10 4600803C */  c.lt.s  $f16, $f0                  
/* 004C4 80A9CA14 00000000 */  nop
/* 004C8 80A9CA18 45030009 */  bc1tl   .L80A9CA40                 
/* 004CC 80A9CA1C 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 004D0 80A9CA20 C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
/* 004D4 80A9CA24 C424D9BC */  lwc1    $f4, %lo(D_80A9D9BC)($at)  
/* 004D8 80A9CA28 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 004DC 80A9CA2C 4604903C */  c.lt.s  $f18, $f4                  
/* 004E0 80A9CA30 00000000 */  nop
/* 004E4 80A9CA34 45020008 */  bc1fl   .L80A9CA58                 
/* 004E8 80A9CA38 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
/* 004EC 80A9CA3C 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
.L80A9CA40:
/* 004F0 80A9CA40 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 004F4 80A9CA44 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 004F8 80A9CA48 01215024 */  and     $t2, $t1, $at              
/* 004FC 80A9CA4C 1000002D */  beq     $zero, $zero, .L80A9CB04   
/* 00500 80A9CA50 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 00504 80A9CA54 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
.L80A9CA58:
/* 00508 80A9CA58 27A60032 */  addiu   $a2, $sp, 0x0032           ## $a2 = FFFFFFFA
/* 0050C 80A9CA5C 27A70030 */  addiu   $a3, $sp, 0x0030           ## $a3 = FFFFFFF8
/* 00510 80A9CA60 356C0001 */  ori     $t4, $t3, 0x0001           ## $t4 = 00000001
/* 00514 80A9CA64 AE0C0004 */  sw      $t4, 0x0004($s0)           ## 00000004
/* 00518 80A9CA68 0C00BCDD */  jal     func_8002F374              
/* 0051C 80A9CA6C 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 00520 80A9CA70 87A20032 */  lh      $v0, 0x0032($sp)           
/* 00524 80A9CA74 2841FFE2 */  slti    $at, $v0, 0xFFE2           
/* 00528 80A9CA78 14200008 */  bne     $at, $zero, .L80A9CA9C     
/* 0052C 80A9CA7C 28410169 */  slti    $at, $v0, 0x0169           
/* 00530 80A9CA80 10200006 */  beq     $at, $zero, .L80A9CA9C     
/* 00534 80A9CA84 87A20030 */  lh      $v0, 0x0030($sp)           
/* 00538 80A9CA88 2841FFF6 */  slti    $at, $v0, 0xFFF6           
/* 0053C 80A9CA8C 14200003 */  bne     $at, $zero, .L80A9CA9C     
/* 00540 80A9CA90 284100F1 */  slti    $at, $v0, 0x00F1           
/* 00544 80A9CA94 54200004 */  bnel    $at, $zero, .L80A9CAA8     
/* 00548 80A9CA98 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
.L80A9CA9C:
/* 0054C 80A9CA9C 10000019 */  beq     $zero, $zero, .L80A9CB04   
/* 00550 80A9CAA0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00554 80A9CAA4 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
.L80A9CAA8:
/* 00558 80A9CAA8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0055C 80A9CAAC 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00560 80A9CAB0 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 00564 80A9CAB4 E7A8002C */  swc1    $f8, 0x002C($sp)           
/* 00568 80A9CAB8 E6000090 */  swc1    $f0, 0x0090($s0)           ## 00000090
/* 0056C 80A9CABC 8FA60044 */  lw      $a2, 0x0044($sp)           
/* 00570 80A9CAC0 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 00574 80A9CAC4 0C00BCB3 */  jal     func_8002F2CC              
/* 00578 80A9CAC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0057C 80A9CACC 14400005 */  bne     $v0, $zero, .L80A9CAE4     
/* 00580 80A9CAD0 C7AA002C */  lwc1    $f10, 0x002C($sp)          
/* 00584 80A9CAD4 C7A6002C */  lwc1    $f6, 0x002C($sp)           
/* 00588 80A9CAD8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0058C 80A9CADC 10000009 */  beq     $zero, $zero, .L80A9CB04   
/* 00590 80A9CAE0 E6060090 */  swc1    $f6, 0x0090($s0)           ## 00000090
.L80A9CAE4:
/* 00594 80A9CAE4 E60A0090 */  swc1    $f10, 0x0090($s0)          ## 00000090
/* 00598 80A9CAE8 8FB90048 */  lw      $t9, 0x0048($sp)           
/* 0059C 80A9CAEC 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 005A0 80A9CAF0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 005A4 80A9CAF4 0320F809 */  jalr    $ra, $t9                   
/* 005A8 80A9CAF8 00000000 */  nop
/* 005AC 80A9CAFC A602010E */  sh      $v0, 0x010E($s0)           ## 0000010E
/* 005B0 80A9CB00 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A9CB04:
/* 005B4 80A9CB04 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 005B8 80A9CB08 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 005BC 80A9CB0C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 005C0 80A9CB10 03E00008 */  jr      $ra                        
/* 005C4 80A9CB14 00000000 */  nop


