.rdata
glabel D_80A23980
    .asciz "[32m☆☆☆☆☆ 音？ ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A239A8
    .asciz "[32m☆☆☆☆☆ 時はまさに世紀末〜  ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A239E0
    .asciz "[32m☆☆☆☆☆ らすとぉ！          ☆☆☆☆☆ \n[m"
    .balign 4

.text
glabel func_80A2248C
/* 005CC 80A2248C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 005D0 80A22490 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 005D4 80A22494 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 005D8 80A22498 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 005DC 80A2249C 3C0280A2 */  lui     $v0, %hi(D_80A236E0)       ## $v0 = 80A20000
/* 005E0 80A224A0 844236E0 */  lh      $v0, %lo(D_80A236E0)($v0)  
/* 005E4 80A224A4 8486016A */  lh      $a2, 0x016A($a0)           ## 0000016A
/* 005E8 80A224A8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005EC 80A224AC 00C2082A */  slt     $at, $a2, $v0              
/* 005F0 80A224B0 10200013 */  beq     $at, $zero, .L80A22500     
/* 005F4 80A224B4 28410005 */  slti    $at, $v0, 0x0005           
/* 005F8 80A224B8 10200011 */  beq     $at, $zero, .L80A22500     
/* 005FC 80A224BC 3C0480A2 */  lui     $a0, %hi(D_80A23980)       ## $a0 = 80A20000
/* 00600 80A224C0 24843980 */  addiu   $a0, $a0, %lo(D_80A23980)  ## $a0 = 80A23980
/* 00604 80A224C4 0C00084C */  jal     osSyncPrintf
              
/* 00608 80A224C8 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 0060C 80A224CC 860E016A */  lh      $t6, 0x016A($s0)           ## 0000016A
/* 00610 80A224D0 3C0680A2 */  lui     $a2, %hi(D_80A23754)       ## $a2 = 80A20000
/* 00614 80A224D4 3C048013 */  lui     $a0, 0x8013                ## $a0 = 80130000
/* 00618 80A224D8 00CE3021 */  addu    $a2, $a2, $t6              
/* 0061C 80A224DC 80C63754 */  lb      $a2, %lo(D_80A23754)($a2)  
/* 00620 80A224E0 248433D4 */  addiu   $a0, $a0, 0x33D4           ## $a0 = 801333D4
/* 00624 80A224E4 0C03D2FD */  jal     func_800F4BF4              
/* 00628 80A224E8 240528E8 */  addiu   $a1, $zero, 0x28E8         ## $a1 = 000028E8
/* 0062C 80A224EC 3C0F80A2 */  lui     $t7, %hi(D_80A236E0)       ## $t7 = 80A20000
/* 00630 80A224F0 85EF36E0 */  lh      $t7, %lo(D_80A236E0)($t7)  
/* 00634 80A224F4 3C0280A2 */  lui     $v0, %hi(D_80A236E0)       ## $v0 = 80A20000
/* 00638 80A224F8 A60F016A */  sh      $t7, 0x016A($s0)           ## 0000016A
/* 0063C 80A224FC 844236E0 */  lh      $v0, %lo(D_80A236E0)($v0)  
.L80A22500:
/* 00640 80A22500 86180152 */  lh      $t8, 0x0152($s0)           ## 00000152
/* 00644 80A22504 3C0480A2 */  lui     $a0, %hi(D_80A239A8)       ## $a0 = 80A20000
/* 00648 80A22508 248439A8 */  addiu   $a0, $a0, %lo(D_80A239A8)  ## $a0 = 80A239A8
/* 0064C 80A2250C 0058082A */  slt     $at, $v0, $t8              
/* 00650 80A22510 5420001D */  bnel    $at, $zero, .L80A22588     
/* 00654 80A22514 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00658 80A22518 0C00084C */  jal     osSyncPrintf
              
/* 0065C 80A2251C 86050154 */  lh      $a1, 0x0154($s0)           ## 00000154
/* 00660 80A22520 3C0480A2 */  lui     $a0, %hi(D_80A239E0)       ## $a0 = 80A20000
/* 00664 80A22524 0C00084C */  jal     osSyncPrintf
              
/* 00668 80A22528 248439E0 */  addiu   $a0, $a0, %lo(D_80A239E0)  ## $a0 = 80A239E0
/* 0066C 80A2252C 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00670 80A22530 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 00674 80A22534 84D900A4 */  lh      $t9, 0x00A4($a2)           ## 000000A4
/* 00678 80A22538 17210009 */  bne     $t9, $at, .L80A22560       
/* 0067C 80A2253C 00000000 */  nop
/* 00680 80A22540 82050003 */  lb      $a1, 0x0003($s0)           ## 00000003
/* 00684 80A22544 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00688 80A22548 14A10005 */  bne     $a1, $at, .L80A22560       
/* 0068C 80A2254C 00000000 */  nop
/* 00690 80A22550 0C00B34E */  jal     Flags_SetTempClear
              
/* 00694 80A22554 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00698 80A22558 10000006 */  beq     $zero, $zero, .L80A22574   
/* 0069C 80A2255C 00000000 */  nop
.L80A22560:
/* 006A0 80A22560 0C01E221 */  jal     func_80078884              
/* 006A4 80A22564 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 006A8 80A22568 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 006AC 80A2256C 0C00B2DD */  jal     Flags_SetSwitch
              
/* 006B0 80A22570 86050154 */  lh      $a1, 0x0154($s0)           ## 00000154
.L80A22574:
/* 006B4 80A22574 0C01E221 */  jal     func_80078884              
/* 006B8 80A22578 24044803 */  addiu   $a0, $zero, 0x4803         ## $a0 = 00004803
/* 006BC 80A2257C 0C00B55C */  jal     Actor_Kill
              
/* 006C0 80A22580 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006C4 80A22584 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A22588:
/* 006C8 80A22588 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 006CC 80A2258C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 006D0 80A22590 03E00008 */  jr      $ra                        
/* 006D4 80A22594 00000000 */  nop


