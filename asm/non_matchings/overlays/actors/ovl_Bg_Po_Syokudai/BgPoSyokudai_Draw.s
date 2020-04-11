.rdata
glabel D_808A89D0
    .asciz "../z_bg_po_syokudai.c"
    .balign 4

glabel D_808A89E8
    .asciz "../z_bg_po_syokudai.c"
    .balign 4

glabel D_808A8A00
    .asciz "../z_bg_po_syokudai.c"
    .balign 4

glabel D_808A8A18
    .asciz "../z_bg_po_syokudai.c"
    .balign 4

.late_rodata
glabel D_808A8A34
    .float 0.3
    .balign 4

glabel D_808A8A38
    .float 0.7
    .balign 4

glabel D_808A8A3C
    .float 9.58738019108e-05
    .balign 4

glabel D_808A8A40
    .float 0.0027



.text
glabel BgPoSyokudai_Draw
/* 00390 808A8440 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 00394 808A8444 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00398 808A8448 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0039C 808A844C AFBF003C */  sw      $ra, 0x003C($sp)           
/* 003A0 808A8450 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 003A4 808A8454 AFA40090 */  sw      $a0, 0x0090($sp)           
/* 003A8 808A8458 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 003AC 808A845C 3C06808B */  lui     $a2, %hi(D_808A89D0)       ## $a2 = 808B0000
/* 003B0 808A8460 24C689D0 */  addiu   $a2, $a2, %lo(D_808A89D0)  ## $a2 = 808A89D0
/* 003B4 808A8464 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFE0
/* 003B8 808A8468 2407013B */  addiu   $a3, $zero, 0x013B         ## $a3 = 0000013B
/* 003BC 808A846C 0C031AB1 */  jal     Graph_OpenDisps              
/* 003C0 808A8470 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 003C4 808A8474 0C024F46 */  jal     func_80093D18              
/* 003C8 808A8478 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 003CC 808A847C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 003D0 808A8480 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 003D4 808A8484 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 003D8 808A8488 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 003DC 808A848C AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 003E0 808A8490 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 003E4 808A8494 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 003E8 808A8498 3C05808B */  lui     $a1, %hi(D_808A89E8)       ## $a1 = 808B0000
/* 003EC 808A849C 24A589E8 */  addiu   $a1, $a1, %lo(D_808A89E8)  ## $a1 = 808A89E8
/* 003F0 808A84A0 2406013F */  addiu   $a2, $zero, 0x013F         ## $a2 = 0000013F
/* 003F4 808A84A4 0C0346A2 */  jal     Matrix_NewMtx              
/* 003F8 808A84A8 AFA2006C */  sw      $v0, 0x006C($sp)           
/* 003FC 808A84AC 8FA3006C */  lw      $v1, 0x006C($sp)           
/* 00400 808A84B0 3C090600 */  lui     $t1, 0x0600                ## $t1 = 06000000
/* 00404 808A84B4 252903A0 */  addiu   $t1, $t1, 0x03A0           ## $t1 = 060003A0
/* 00408 808A84B8 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 0040C 808A84BC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00410 808A84C0 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 00414 808A84C4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00418 808A84C8 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 0041C 808A84CC AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 00420 808A84D0 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 00424 808A84D4 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00428 808A84D8 8FAA0090 */  lw      $t2, 0x0090($sp)           
/* 0042C 808A84DC 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00430 808A84E0 8545001C */  lh      $a1, 0x001C($t2)           ## 0000001C
/* 00434 808A84E4 10400113 */  beq     $v0, $zero, .L808A8934     
/* 00438 808A84E8 8FAB0090 */  lw      $t3, 0x0090($sp)           
/* 0043C 808A84EC 9162014C */  lbu     $v0, 0x014C($t3)           ## 0000014C
/* 00440 808A84F0 3C0C808B */  lui     $t4, %hi(D_808A898C)       ## $t4 = 808B0000
/* 00444 808A84F4 3C0D808B */  lui     $t5, %hi(D_808A899C)       ## $t5 = 808B0000
/* 00448 808A84F8 00021080 */  sll     $v0, $v0,  2               
/* 0044C 808A84FC 258C898C */  addiu   $t4, $t4, %lo(D_808A898C)  ## $t4 = 808A898C
/* 00450 808A8500 25AD899C */  addiu   $t5, $t5, %lo(D_808A899C)  ## $t5 = 808A899C
/* 00454 808A8504 004C4021 */  addu    $t0, $v0, $t4              
/* 00458 808A8508 004D7021 */  addu    $t6, $v0, $t5              
/* 0045C 808A850C AFAE0060 */  sw      $t6, 0x0060($sp)           
/* 00460 808A8510 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00464 808A8514 AFA80064 */  sw      $t0, 0x0064($sp)           
/* 00468 808A8518 3C01808B */  lui     $at, %hi(D_808A8A34)       ## $at = 808B0000
/* 0046C 808A851C C4248A34 */  lwc1    $f4, %lo(D_808A8A34)($at)  
/* 00470 808A8520 8FA80064 */  lw      $t0, 0x0064($sp)           
/* 00474 808A8524 3C01808B */  lui     $at, %hi(D_808A8A38)       ## $at = 808B0000
/* 00478 808A8528 46040182 */  mul.s   $f6, $f0, $f4              
/* 0047C 808A852C 910F0000 */  lbu     $t7, 0x0000($t0)           ## 00000000
/* 00480 808A8530 C4288A38 */  lwc1    $f8, %lo(D_808A8A38)($at)  
/* 00484 808A8534 8FA40090 */  lw      $a0, 0x0090($sp)           
/* 00488 808A8538 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 0048C 808A853C 240C00C8 */  addiu   $t4, $zero, 0x00C8         ## $t4 = 000000C8
/* 00490 808A8540 24840154 */  addiu   $a0, $a0, 0x0154           ## $a0 = 00000154
/* 00494 808A8544 46083080 */  add.s   $f2, $f6, $f8              
/* 00498 808A8548 05E10005 */  bgez    $t7, .L808A8560            
/* 0049C 808A854C 46805420 */  cvt.s.w $f16, $f10                 
/* 004A0 808A8550 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 004A4 808A8554 44819000 */  mtc1    $at, $f18                  ## $f18 = 4294967296.00
/* 004A8 808A8558 00000000 */  nop
/* 004AC 808A855C 46128400 */  add.s   $f16, $f16, $f18           
.L808A8560:
/* 004B0 808A8560 46028102 */  mul.s   $f4, $f16, $f2             
/* 004B4 808A8564 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 004B8 808A8568 4458F800 */  cfc1    $t8, $31
/* 004BC 808A856C 44C5F800 */  ctc1    $a1, $31
/* 004C0 808A8570 00000000 */  nop
/* 004C4 808A8574 460021A4 */  cvt.w.s $f6, $f4                   
/* 004C8 808A8578 4445F800 */  cfc1    $a1, $31
/* 004CC 808A857C 00000000 */  nop
/* 004D0 808A8580 30A50078 */  andi    $a1, $a1, 0x0078           ## $a1 = 00000000
/* 004D4 808A8584 10A00012 */  beq     $a1, $zero, .L808A85D0     
/* 004D8 808A8588 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 004DC 808A858C 44813000 */  mtc1    $at, $f6                   ## $f6 = 2147483648.00
/* 004E0 808A8590 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 004E4 808A8594 46062181 */  sub.s   $f6, $f4, $f6              
/* 004E8 808A8598 44C5F800 */  ctc1    $a1, $31
/* 004EC 808A859C 00000000 */  nop
/* 004F0 808A85A0 460031A4 */  cvt.w.s $f6, $f6                   
/* 004F4 808A85A4 4445F800 */  cfc1    $a1, $31
/* 004F8 808A85A8 00000000 */  nop
/* 004FC 808A85AC 30A50078 */  andi    $a1, $a1, 0x0078           ## $a1 = 00000000
/* 00500 808A85B0 14A00005 */  bne     $a1, $zero, .L808A85C8     
/* 00504 808A85B4 00000000 */  nop
/* 00508 808A85B8 44053000 */  mfc1    $a1, $f6                   
/* 0050C 808A85BC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00510 808A85C0 10000007 */  beq     $zero, $zero, .L808A85E0   
/* 00514 808A85C4 00A12825 */  or      $a1, $a1, $at              ## $a1 = 80000000
.L808A85C8:
/* 00518 808A85C8 10000005 */  beq     $zero, $zero, .L808A85E0   
/* 0051C 808A85CC 2405FFFF */  addiu   $a1, $zero, 0xFFFF         ## $a1 = FFFFFFFF
.L808A85D0:
/* 00520 808A85D0 44053000 */  mfc1    $a1, $f6                   
/* 00524 808A85D4 00000000 */  nop
/* 00528 808A85D8 04A0FFFB */  bltz    $a1, .L808A85C8            
/* 0052C 808A85DC 00000000 */  nop
.L808A85E0:
/* 00530 808A85E0 91190001 */  lbu     $t9, 0x0001($t0)           ## 00000001
/* 00534 808A85E4 44D8F800 */  ctc1    $t8, $31
/* 00538 808A85E8 30A500FF */  andi    $a1, $a1, 0x00FF           ## $a1 = 000000FF
/* 0053C 808A85EC 44994000 */  mtc1    $t9, $f8                   ## $f8 = 0.00
/* 00540 808A85F0 07210005 */  bgez    $t9, .L808A8608            
/* 00544 808A85F4 468042A0 */  cvt.s.w $f10, $f8                  
/* 00548 808A85F8 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 0054C 808A85FC 44819000 */  mtc1    $at, $f18                  ## $f18 = 4294967296.00
/* 00550 808A8600 00000000 */  nop
/* 00554 808A8604 46125280 */  add.s   $f10, $f10, $f18           
.L808A8608:
/* 00558 808A8608 46025402 */  mul.s   $f16, $f10, $f2            
/* 0055C 808A860C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00560 808A8610 4449F800 */  cfc1    $t1, $31
/* 00564 808A8614 44C6F800 */  ctc1    $a2, $31
/* 00568 808A8618 00000000 */  nop
/* 0056C 808A861C 46008124 */  cvt.w.s $f4, $f16                  
/* 00570 808A8620 4446F800 */  cfc1    $a2, $31
/* 00574 808A8624 00000000 */  nop
/* 00578 808A8628 30C60078 */  andi    $a2, $a2, 0x0078           ## $a2 = 00000000
/* 0057C 808A862C 10C00012 */  beq     $a2, $zero, .L808A8678     
/* 00580 808A8630 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 00584 808A8634 44812000 */  mtc1    $at, $f4                   ## $f4 = 2147483648.00
/* 00588 808A8638 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0058C 808A863C 46048101 */  sub.s   $f4, $f16, $f4             
/* 00590 808A8640 44C6F800 */  ctc1    $a2, $31
/* 00594 808A8644 00000000 */  nop
/* 00598 808A8648 46002124 */  cvt.w.s $f4, $f4                   
/* 0059C 808A864C 4446F800 */  cfc1    $a2, $31
/* 005A0 808A8650 00000000 */  nop
/* 005A4 808A8654 30C60078 */  andi    $a2, $a2, 0x0078           ## $a2 = 00000000
/* 005A8 808A8658 14C00005 */  bne     $a2, $zero, .L808A8670     
/* 005AC 808A865C 00000000 */  nop
/* 005B0 808A8660 44062000 */  mfc1    $a2, $f4                   
/* 005B4 808A8664 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 005B8 808A8668 10000007 */  beq     $zero, $zero, .L808A8688   
/* 005BC 808A866C 00C13025 */  or      $a2, $a2, $at              ## $a2 = 80000000
.L808A8670:
/* 005C0 808A8670 10000005 */  beq     $zero, $zero, .L808A8688   
/* 005C4 808A8674 2406FFFF */  addiu   $a2, $zero, 0xFFFF         ## $a2 = FFFFFFFF
.L808A8678:
/* 005C8 808A8678 44062000 */  mfc1    $a2, $f4                   
/* 005CC 808A867C 00000000 */  nop
/* 005D0 808A8680 04C0FFFB */  bltz    $a2, .L808A8670            
/* 005D4 808A8684 00000000 */  nop
.L808A8688:
/* 005D8 808A8688 910A0002 */  lbu     $t2, 0x0002($t0)           ## 00000002
/* 005DC 808A868C 44C9F800 */  ctc1    $t1, $31
/* 005E0 808A8690 30C600FF */  andi    $a2, $a2, 0x00FF           ## $a2 = 000000FF
/* 005E4 808A8694 448A3000 */  mtc1    $t2, $f6                   ## $f6 = 0.00
/* 005E8 808A8698 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 005EC 808A869C 05410004 */  bgez    $t2, .L808A86B0            
/* 005F0 808A86A0 46803220 */  cvt.s.w $f8, $f6                   
/* 005F4 808A86A4 44819000 */  mtc1    $at, $f18                  ## $f18 = 4294967296.00
/* 005F8 808A86A8 00000000 */  nop
/* 005FC 808A86AC 46124200 */  add.s   $f8, $f8, $f18             
.L808A86B0:
/* 00600 808A86B0 46024282 */  mul.s   $f10, $f8, $f2             
/* 00604 808A86B4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00608 808A86B8 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 0060C 808A86BC 444BF800 */  cfc1    $t3, $31
/* 00610 808A86C0 44C7F800 */  ctc1    $a3, $31
/* 00614 808A86C4 00000000 */  nop
/* 00618 808A86C8 46005424 */  cvt.w.s $f16, $f10                 
/* 0061C 808A86CC 4447F800 */  cfc1    $a3, $31
/* 00620 808A86D0 00000000 */  nop
/* 00624 808A86D4 30E70078 */  andi    $a3, $a3, 0x0078           ## $a3 = 00000000
/* 00628 808A86D8 50E00013 */  beql    $a3, $zero, .L808A8728     
/* 0062C 808A86DC 44078000 */  mfc1    $a3, $f16                  
/* 00630 808A86E0 44818000 */  mtc1    $at, $f16                  ## $f16 = 2147483648.00
/* 00634 808A86E4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00638 808A86E8 46105401 */  sub.s   $f16, $f10, $f16           
/* 0063C 808A86EC 44C7F800 */  ctc1    $a3, $31
/* 00640 808A86F0 00000000 */  nop
/* 00644 808A86F4 46008424 */  cvt.w.s $f16, $f16                 
/* 00648 808A86F8 4447F800 */  cfc1    $a3, $31
/* 0064C 808A86FC 00000000 */  nop
/* 00650 808A8700 30E70078 */  andi    $a3, $a3, 0x0078           ## $a3 = 00000000
/* 00654 808A8704 14E00005 */  bne     $a3, $zero, .L808A871C     
/* 00658 808A8708 00000000 */  nop
/* 0065C 808A870C 44078000 */  mfc1    $a3, $f16                  
/* 00660 808A8710 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00664 808A8714 10000007 */  beq     $zero, $zero, .L808A8734   
/* 00668 808A8718 00E13825 */  or      $a3, $a3, $at              ## $a3 = 80000000
.L808A871C:
/* 0066C 808A871C 10000005 */  beq     $zero, $zero, .L808A8734   
/* 00670 808A8720 2407FFFF */  addiu   $a3, $zero, 0xFFFF         ## $a3 = FFFFFFFF
/* 00674 808A8724 44078000 */  mfc1    $a3, $f16                  
.L808A8728:
/* 00678 808A8728 00000000 */  nop
/* 0067C 808A872C 04E0FFFB */  bltz    $a3, .L808A871C            
/* 00680 808A8730 00000000 */  nop
.L808A8734:
/* 00684 808A8734 44CBF800 */  ctc1    $t3, $31
/* 00688 808A8738 30E700FF */  andi    $a3, $a3, 0x00FF           ## $a3 = 000000FF
/* 0068C 808A873C 0C01E796 */  jal     Lights_SetPositionalLightColorAndRadius
/* 00690 808A8740 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00694 808A8744 0C024F61 */  jal     func_80093D84              
/* 00698 808A8748 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0069C 808A874C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 006A0 808A8750 8FA80064 */  lw      $t0, 0x0064($sp)           
/* 006A4 808A8754 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 006A8 808A8758 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 006AC 808A875C AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 006B0 808A8760 35CE0020 */  ori     $t6, $t6, 0x0020           ## $t6 = DB060020
/* 006B4 808A8764 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 006B8 808A8768 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 006BC 808A876C 8FA90090 */  lw      $t1, 0x0090($sp)           
/* 006C0 808A8770 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 006C4 808A8774 24180040 */  addiu   $t8, $zero, 0x0040         ## $t8 = 00000040
/* 006C8 808A8778 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 006CC 808A877C AFB90018 */  sw      $t9, 0x0018($sp)           
/* 006D0 808A8780 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 006D4 808A8784 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 006D8 808A8788 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 006DC 808A878C 852A014E */  lh      $t2, 0x014E($t1)           ## 0000014E
/* 006E0 808A8790 240E0080 */  addiu   $t6, $zero, 0x0080         ## $t6 = 00000080
/* 006E4 808A8794 240D0020 */  addiu   $t5, $zero, 0x0020         ## $t5 = 00000020
/* 006E8 808A8798 000A0823 */  subu    $at, $zero, $t2            
/* 006EC 808A879C 00015880 */  sll     $t3, $at,  2               
/* 006F0 808A87A0 01615821 */  addu    $t3, $t3, $at              
/* 006F4 808A87A4 000B5880 */  sll     $t3, $t3,  2               
/* 006F8 808A87A8 316C01FF */  andi    $t4, $t3, 0x01FF           ## $t4 = 00000000
/* 006FC 808A87AC AFAC0020 */  sw      $t4, 0x0020($sp)           
/* 00700 808A87B0 AFAD0024 */  sw      $t5, 0x0024($sp)           
/* 00704 808A87B4 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 00708 808A87B8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0070C 808A87BC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00710 808A87C0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00714 808A87C4 AFA2005C */  sw      $v0, 0x005C($sp)           
/* 00718 808A87C8 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 0071C 808A87CC AFA80064 */  sw      $t0, 0x0064($sp)           
/* 00720 808A87D0 8FA3005C */  lw      $v1, 0x005C($sp)           
/* 00724 808A87D4 8FA80064 */  lw      $t0, 0x0064($sp)           
/* 00728 808A87D8 3C18FA00 */  lui     $t8, 0xFA00                ## $t8 = FA000000
/* 0072C 808A87DC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00730 808A87E0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00734 808A87E4 37188080 */  ori     $t8, $t8, 0x8080           ## $t8 = FA008080
/* 00738 808A87E8 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 0073C 808A87EC 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00740 808A87F0 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 00744 808A87F4 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00748 808A87F8 910C0001 */  lbu     $t4, 0x0001($t0)           ## 00000001
/* 0074C 808A87FC 91090000 */  lbu     $t1, 0x0000($t0)           ## 00000000
/* 00750 808A8800 91180002 */  lbu     $t8, 0x0002($t0)           ## 00000002
/* 00754 808A8804 000C6C00 */  sll     $t5, $t4, 16               
/* 00758 808A8808 00095600 */  sll     $t2, $t1, 24               
/* 0075C 808A880C 014D7025 */  or      $t6, $t2, $t5              ## $t6 = 00000000
/* 00760 808A8810 0018CA00 */  sll     $t9, $t8,  8               
/* 00764 808A8814 01D94825 */  or      $t1, $t6, $t9              ## $t1 = 00000000
/* 00768 808A8818 352B00FF */  ori     $t3, $t1, 0x00FF           ## $t3 = 000000FF
/* 0076C 808A881C AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 00770 808A8820 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00774 808A8824 8FA40060 */  lw      $a0, 0x0060($sp)           
/* 00778 808A8828 3C0AFB00 */  lui     $t2, 0xFB00                ## $t2 = FB000000
/* 0077C 808A882C 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 00780 808A8830 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 00784 808A8834 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 00788 808A8838 90990001 */  lbu     $t9, 0x0001($a0)           ## 00000001
/* 0078C 808A883C 908F0000 */  lbu     $t7, 0x0000($a0)           ## 00000000
/* 00790 808A8840 908A0002 */  lbu     $t2, 0x0002($a0)           ## 00000002
/* 00794 808A8844 00194C00 */  sll     $t1, $t9, 16               
/* 00798 808A8848 000FC600 */  sll     $t8, $t7, 24               
/* 0079C 808A884C 03095825 */  or      $t3, $t8, $t1              ## $t3 = FA008080
/* 007A0 808A8850 000A6A00 */  sll     $t5, $t2,  8               
/* 007A4 808A8854 016D7825 */  or      $t7, $t3, $t5              ## $t7 = FA008080
/* 007A8 808A8858 3C014250 */  lui     $at, 0x4250                ## $at = 42500000
/* 007AC 808A885C 35EE00FF */  ori     $t6, $t7, 0x00FF           ## $t6 = FA0080FF
/* 007B0 808A8860 44817000 */  mtc1    $at, $f14                  ## $f14 = 52.00
/* 007B4 808A8864 44066000 */  mfc1    $a2, $f12                  
/* 007B8 808A8868 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 007BC 808A886C 0C034261 */  jal     Matrix_Translate              
/* 007C0 808A8870 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 007C4 808A8874 863907A0 */  lh      $t9, 0x07A0($s1)           ## 000007A0
/* 007C8 808A8878 0019C080 */  sll     $t8, $t9,  2               
/* 007CC 808A887C 02384821 */  addu    $t1, $s1, $t8              
/* 007D0 808A8880 0C016A7D */  jal     func_8005A9F4              
/* 007D4 808A8884 8D240790 */  lw      $a0, 0x0790($t1)           ## 00000790
/* 007D8 808A8888 8FAC0090 */  lw      $t4, 0x0090($sp)           
/* 007DC 808A888C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 007E0 808A8890 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 007E4 808A8894 858A00B6 */  lh      $t2, 0x00B6($t4)           ## 000000B6
/* 007E8 808A8898 004A5823 */  subu    $t3, $v0, $t2              
/* 007EC 808A889C 01616821 */  addu    $t5, $t3, $at              
/* 007F0 808A88A0 000D7C00 */  sll     $t7, $t5, 16               
/* 007F4 808A88A4 000F7403 */  sra     $t6, $t7, 16               
/* 007F8 808A88A8 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 007FC 808A88AC 3C01808B */  lui     $at, %hi(D_808A8A3C)       ## $at = 808B0000
/* 00800 808A88B0 C4328A3C */  lwc1    $f18, %lo(D_808A8A3C)($at) 
/* 00804 808A88B4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00808 808A88B8 46123302 */  mul.s   $f12, $f6, $f18            
/* 0080C 808A88BC 0C034348 */  jal     Matrix_RotateY              
/* 00810 808A88C0 00000000 */  nop
/* 00814 808A88C4 3C01808B */  lui     $at, %hi(D_808A8A40)       ## $at = 808B0000
/* 00818 808A88C8 C42C8A40 */  lwc1    $f12, %lo(D_808A8A40)($at) 
/* 0081C 808A88CC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00820 808A88D0 44066000 */  mfc1    $a2, $f12                  
/* 00824 808A88D4 0C0342A3 */  jal     Matrix_Scale              
/* 00828 808A88D8 46006386 */  mov.s   $f14, $f12                 
/* 0082C 808A88DC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00830 808A88E0 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 00834 808A88E4 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 00838 808A88E8 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 0083C 808A88EC AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 00840 808A88F0 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00844 808A88F4 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00848 808A88F8 3C05808B */  lui     $a1, %hi(D_808A8A00)       ## $a1 = 808B0000
/* 0084C 808A88FC 24A58A00 */  addiu   $a1, $a1, %lo(D_808A8A00)  ## $a1 = 808A8A00
/* 00850 808A8900 24060170 */  addiu   $a2, $zero, 0x0170         ## $a2 = 00000170
/* 00854 808A8904 0C0346A2 */  jal     Matrix_NewMtx              
/* 00858 808A8908 AFA20050 */  sw      $v0, 0x0050($sp)           
/* 0085C 808A890C 8FA30050 */  lw      $v1, 0x0050($sp)           
/* 00860 808A8910 3C0A0405 */  lui     $t2, 0x0405                ## $t2 = 04050000
/* 00864 808A8914 254AD4E0 */  addiu   $t2, $t2, 0xD4E0           ## $t2 = 0404D4E0
/* 00868 808A8918 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 0086C 808A891C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00870 808A8920 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 00874 808A8924 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 00878 808A8928 AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 0087C 808A892C AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 00880 808A8930 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
.L808A8934:
/* 00884 808A8934 3C06808B */  lui     $a2, %hi(D_808A8A18)       ## $a2 = 808B0000
/* 00888 808A8938 24C68A18 */  addiu   $a2, $a2, %lo(D_808A8A18)  ## $a2 = 808A8A18
/* 0088C 808A893C 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFE0
/* 00890 808A8940 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 00894 808A8944 0C031AD5 */  jal     Graph_CloseDisps              
/* 00898 808A8948 24070175 */  addiu   $a3, $zero, 0x0175         ## $a3 = 00000175
/* 0089C 808A894C 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 008A0 808A8950 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 008A4 808A8954 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 008A8 808A8958 03E00008 */  jr      $ra                        
/* 008AC 808A895C 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000

