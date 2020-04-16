glabel func_809EDD4C
/* 004DC 809EDD4C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 004E0 809EDD50 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 004E4 809EDD54 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004E8 809EDD58 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 004EC 809EDD5C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 004F0 809EDD60 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 004F4 809EDD64 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 004F8 809EDD68 860E02A8 */  lh      $t6, 0x02A8($s0)           ## 000002A8
/* 004FC 809EDD6C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00500 809EDD70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00504 809EDD74 55C10005 */  bnel    $t6, $at, .L809EDD8C       
/* 00508 809EDD78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0050C 809EDD7C 0C27B6C2 */  jal     func_809EDB08              
/* 00510 809EDD80 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00514 809EDD84 14400050 */  bne     $v0, $zero, .L809EDEC8     
/* 00518 809EDD88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809EDD8C:
/* 0051C 809EDD8C 0C00BC65 */  jal     func_8002F194              
/* 00520 809EDD90 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00524 809EDD94 1040001D */  beq     $v0, $zero, .L809EDE0C     
/* 00528 809EDD98 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0052C 809EDD9C 860F0292 */  lh      $t7, 0x0292($s0)           ## 00000292
/* 00530 809EDDA0 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00534 809EDDA4 51E10049 */  beql    $t7, $at, .L809EDECC       
/* 00538 809EDDA8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0053C 809EDDAC 860202A8 */  lh      $v0, 0x02A8($s0)           ## 000002A8
/* 00540 809EDDB0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00544 809EDDB4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00548 809EDDB8 10400008 */  beq     $v0, $zero, .L809EDDDC     
/* 0054C 809EDDBC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00550 809EDDC0 1041000C */  beq     $v0, $at, .L809EDDF4       
/* 00554 809EDDC4 3C19809F */  lui     $t9, %hi(func_809EEA00)    ## $t9 = 809F0000
/* 00558 809EDDC8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0055C 809EDDCC 1041000C */  beq     $v0, $at, .L809EDE00       
/* 00560 809EDDD0 3C08809F */  lui     $t0, %hi(func_809EE8F0)    ## $t0 = 809F0000
/* 00564 809EDDD4 1000003D */  beq     $zero, $zero, .L809EDECC   
/* 00568 809EDDD8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809EDDDC:
/* 0056C 809EDDDC 0C00B7D5 */  jal     func_8002DF54              
/* 00570 809EDDE0 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00574 809EDDE4 3C18809F */  lui     $t8, %hi(func_809EDEDC)    ## $t8 = 809F0000
/* 00578 809EDDE8 2718DEDC */  addiu   $t8, $t8, %lo(func_809EDEDC) ## $t8 = 809EDEDC
/* 0057C 809EDDEC 10000036 */  beq     $zero, $zero, .L809EDEC8   
/* 00580 809EDDF0 AE180280 */  sw      $t8, 0x0280($s0)           ## 00000280
.L809EDDF4:
/* 00584 809EDDF4 2739EA00 */  addiu   $t9, $t9, %lo(func_809EEA00) ## $t9 = FFFFEA00
/* 00588 809EDDF8 10000033 */  beq     $zero, $zero, .L809EDEC8   
/* 0058C 809EDDFC AE190280 */  sw      $t9, 0x0280($s0)           ## 00000280
.L809EDE00:
/* 00590 809EDE00 2508E8F0 */  addiu   $t0, $t0, %lo(func_809EE8F0) ## $t0 = FFFFE8F0
/* 00594 809EDE04 10000030 */  beq     $zero, $zero, .L809EDEC8   
/* 00598 809EDE08 AE080280 */  sw      $t0, 0x0280($s0)           ## 00000280
.L809EDE0C:
/* 0059C 809EDE0C 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 005A0 809EDE10 2405001D */  addiu   $a1, $zero, 0x001D         ## $a1 = 0000001D
/* 005A4 809EDE14 10400007 */  beq     $v0, $zero, .L809EDE34     
/* 005A8 809EDE18 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 005AC 809EDE1C 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 005B0 809EDE20 2405001D */  addiu   $a1, $zero, 0x001D         ## $a1 = 0000001D
/* 005B4 809EDE24 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 005B8 809EDE28 A602010E */  sh      $v0, 0x010E($s0)           ## 0000010E
/* 005BC 809EDE2C 10000022 */  beq     $zero, $zero, .L809EDEB8   
/* 005C0 809EDE30 A6090292 */  sh      $t1, 0x0292($s0)           ## 00000292
.L809EDE34:
/* 005C4 809EDE34 860202A8 */  lh      $v0, 0x02A8($s0)           ## 000002A8
/* 005C8 809EDE38 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 005CC 809EDE3C 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 005D0 809EDE40 10400008 */  beq     $v0, $zero, .L809EDE64     
/* 005D4 809EDE44 3C0B8016 */  lui     $t3, 0x8016                ## $t3 = 80160000
/* 005D8 809EDE48 10410014 */  beq     $v0, $at, .L809EDE9C       
/* 005DC 809EDE4C 24194056 */  addiu   $t9, $zero, 0x4056         ## $t9 = 00004056
/* 005E0 809EDE50 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 005E4 809EDE54 10410015 */  beq     $v0, $at, .L809EDEAC       
/* 005E8 809EDE58 2409405B */  addiu   $t1, $zero, 0x405B         ## $t1 = 0000405B
/* 005EC 809EDE5C 10000017 */  beq     $zero, $zero, .L809EDEBC   
/* 005F0 809EDE60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809EDE64:
/* 005F4 809EDE64 A60A0292 */  sh      $t2, 0x0292($s0)           ## 00000292
/* 005F8 809EDE68 956BF53A */  lhu     $t3, -0x0AC6($t3)          ## 8015F53A
/* 005FC 809EDE6C 240D4053 */  addiu   $t5, $zero, 0x4053         ## $t5 = 00004053
/* 00600 809EDE70 240F405C */  addiu   $t7, $zero, 0x405C         ## $t7 = 0000405C
/* 00604 809EDE74 316C0100 */  andi    $t4, $t3, 0x0100           ## $t4 = 00000000
/* 00608 809EDE78 15800005 */  bne     $t4, $zero, .L809EDE90     
/* 0060C 809EDE7C 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00610 809EDE80 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00614 809EDE84 A60D010E */  sh      $t5, 0x010E($s0)           ## 0000010E
/* 00618 809EDE88 1000000B */  beq     $zero, $zero, .L809EDEB8   
/* 0061C 809EDE8C A60E029C */  sh      $t6, 0x029C($s0)           ## 0000029C
.L809EDE90:
/* 00620 809EDE90 A60F010E */  sh      $t7, 0x010E($s0)           ## 0000010E
/* 00624 809EDE94 10000008 */  beq     $zero, $zero, .L809EDEB8   
/* 00628 809EDE98 A618029C */  sh      $t8, 0x029C($s0)           ## 0000029C
.L809EDE9C:
/* 0062C 809EDE9C 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 00630 809EDEA0 A619010E */  sh      $t9, 0x010E($s0)           ## 0000010E
/* 00634 809EDEA4 10000004 */  beq     $zero, $zero, .L809EDEB8   
/* 00638 809EDEA8 A6080292 */  sh      $t0, 0x0292($s0)           ## 00000292
.L809EDEAC:
/* 0063C 809EDEAC 240A0005 */  addiu   $t2, $zero, 0x0005         ## $t2 = 00000005
/* 00640 809EDEB0 A609010E */  sh      $t1, 0x010E($s0)           ## 0000010E
/* 00644 809EDEB4 A60A0292 */  sh      $t2, 0x0292($s0)           ## 00000292
.L809EDEB8:
/* 00648 809EDEB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809EDEBC:
/* 0064C 809EDEBC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00650 809EDEC0 0C00BCB3 */  jal     func_8002F2CC              
/* 00654 809EDEC4 3C0642A0 */  lui     $a2, 0x42A0                ## $a2 = 42A00000
.L809EDEC8:
/* 00658 809EDEC8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809EDECC:
/* 0065C 809EDECC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00660 809EDED0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00664 809EDED4 03E00008 */  jr      $ra                        
/* 00668 809EDED8 00000000 */  nop
