.rdata
glabel D_80B7B200
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B210
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B220
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B230
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B240
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B250
    .asciz "../z_fishing.c"
    .balign 4

.late_rodata
glabel D_80B7B784
    .float 9.58738019108e-05

.text
glabel func_80B76474
/* 0CAD4 80B76474 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 0CAD8 80B76478 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 0CADC 80B7647C AFBE0038 */  sw      $s8, 0x0038($sp)           
/* 0CAE0 80B76480 AFB70034 */  sw      $s7, 0x0034($sp)           
/* 0CAE4 80B76484 AFB60030 */  sw      $s6, 0x0030($sp)           
/* 0CAE8 80B76488 AFB5002C */  sw      $s5, 0x002C($sp)           
/* 0CAEC 80B7648C AFB40028 */  sw      $s4, 0x0028($sp)           
/* 0CAF0 80B76490 AFB30024 */  sw      $s3, 0x0024($sp)           
/* 0CAF4 80B76494 AFB20020 */  sw      $s2, 0x0020($sp)           
/* 0CAF8 80B76498 AFB1001C */  sw      $s1, 0x001C($sp)           
/* 0CAFC 80B7649C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0CB00 80B764A0 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 0CB04 80B764A4 0080F025 */  or      $s8, $a0, $zero            ## $s8 = 00000000
/* 0CB08 80B764A8 3C1080B8 */  lui     $s0, %hi(D_80B7FEF8)       ## $s0 = 80B80000
/* 0CB0C 80B764AC 3C0680B8 */  lui     $a2, %hi(D_80B7B200)       ## $a2 = 80B80000
/* 0CB10 80B764B0 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
/* 0CB14 80B764B4 2610FEF8 */  addiu   $s0, $s0, %lo(D_80B7FEF8)  ## $s0 = 80B7FEF8
/* 0CB18 80B764B8 24C6B200 */  addiu   $a2, $a2, %lo(D_80B7B200)  ## $a2 = 80B7B200
/* 0CB1C 80B764BC 27A4007C */  addiu   $a0, $sp, 0x007C           ## $a0 = FFFFFFDC
/* 0CB20 80B764C0 24071E18 */  addiu   $a3, $zero, 0x1E18         ## $a3 = 00001E18
/* 0CB24 80B764C4 0C031AB1 */  jal     Graph_OpenDisps              
/* 0CB28 80B764C8 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 0CB2C 80B764CC 0C034213 */  jal     Matrix_Push              
/* 0CB30 80B764D0 00000000 */  nop
/* 0CB34 80B764D4 3C17DA38 */  lui     $s7, 0xDA38                ## $s7 = DA380000
/* 0CB38 80B764D8 36F70003 */  ori     $s7, $s7, 0x0003           ## $s7 = DA380003
/* 0CB3C 80B764DC 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 0CB40 80B764E0 3C16DE00 */  lui     $s6, 0xDE00                ## $s6 = DE000000
.L80B764E4:
/* 0CB44 80B764E4 920E0030 */  lbu     $t6, 0x0030($s0)           ## 80B7FF28
/* 0CB48 80B764E8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0CB4C 80B764EC 55C10033 */  bnel    $t6, $at, .L80B765BC       
/* 0CB50 80B764F0 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 0CB54 80B764F4 16A00009 */  bne     $s5, $zero, .L80B7651C     
/* 0CB58 80B764F8 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 0CB5C 80B764FC 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 0CB60 80B76500 24844030 */  addiu   $a0, $a0, 0x4030           ## $a0 = 06014030
/* 0CB64 80B76504 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000001
/* 0CB68 80B76508 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 0CB6C 80B7650C AE4F02D0 */  sw      $t7, 0x02D0($s2)           ## 000002D0
/* 0CB70 80B76510 32B500FF */  andi    $s5, $s5, 0x00FF           ## $s5 = 00000001
/* 0CB74 80B76514 AC440004 */  sw      $a0, 0x0004($v0)           ## 00000004
/* 0CB78 80B76518 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
.L80B7651C:
/* 0CB7C 80B7651C 92180034 */  lbu     $t8, 0x0034($s0)           ## 80B7FF2C
/* 0CB80 80B76520 3C140601 */  lui     $s4, 0x0601                ## $s4 = 06010000
/* 0CB84 80B76524 269440B0 */  addiu   $s4, $s4, 0x40B0           ## $s4 = 060140B0
/* 0CB88 80B76528 13000023 */  beq     $t8, $zero, .L80B765B8     
/* 0CB8C 80B7652C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0CB90 80B76530 C60C0000 */  lwc1    $f12, 0x0000($s0)          ## 80B7FEF8
/* 0CB94 80B76534 C60E0004 */  lwc1    $f14, 0x0004($s0)          ## 80B7FEFC
/* 0CB98 80B76538 0C034261 */  jal     Matrix_Translate              
/* 0CB9C 80B7653C 8E060008 */  lw      $a2, 0x0008($s0)           ## 80B7FF00
/* 0CBA0 80B76540 C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 80B7FF1C
/* 0CBA4 80B76544 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0CBA8 80B76548 44066000 */  mfc1    $a2, $f12                  
/* 0CBAC 80B7654C 0C0342A3 */  jal     Matrix_Scale              
/* 0CBB0 80B76550 46006386 */  mov.s   $f14, $f12                 
/* 0CBB4 80B76554 C60C0010 */  lwc1    $f12, 0x0010($s0)          ## 80B7FF08
/* 0CBB8 80B76558 0C034348 */  jal     Matrix_RotateY              
/* 0CBBC 80B7655C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0CBC0 80B76560 C60C000C */  lwc1    $f12, 0x000C($s0)          ## 80B7FF04
/* 0CBC4 80B76564 0C0342DC */  jal     Matrix_RotateX              
/* 0CBC8 80B76568 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0CBCC 80B7656C C60C0014 */  lwc1    $f12, 0x0014($s0)          ## 80B7FF0C
/* 0CBD0 80B76570 0C034348 */  jal     Matrix_RotateY              
/* 0CBD4 80B76574 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0CBD8 80B76578 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 0CBDC 80B7657C 3C0580B8 */  lui     $a1, %hi(D_80B7B210)       ## $a1 = 80B80000
/* 0CBE0 80B76580 24A5B210 */  addiu   $a1, $a1, %lo(D_80B7B210)  ## $a1 = 80B7B210
/* 0CBE4 80B76584 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 0CBE8 80B76588 AE5902D0 */  sw      $t9, 0x02D0($s2)           ## 000002D0
/* 0CBEC 80B7658C AC570000 */  sw      $s7, 0x0000($v0)           ## 00000000
/* 0CBF0 80B76590 8FC40000 */  lw      $a0, 0x0000($s8)           ## 00000000
/* 0CBF4 80B76594 24061E2E */  addiu   $a2, $zero, 0x1E2E         ## $a2 = 00001E2E
/* 0CBF8 80B76598 0C0346A2 */  jal     Matrix_NewMtx              
/* 0CBFC 80B7659C 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 0CC00 80B765A0 AE220004 */  sw      $v0, 0x0004($s1)           ## 00000004
/* 0CC04 80B765A4 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 0CC08 80B765A8 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 0CC0C 80B765AC AE4802D0 */  sw      $t0, 0x02D0($s2)           ## 000002D0
/* 0CC10 80B765B0 AC540004 */  sw      $s4, 0x0004($v0)           ## 00000004
/* 0CC14 80B765B4 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
.L80B765B8:
/* 0CC18 80B765B8 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000002
.L80B765BC:
/* 0CC1C 80B765BC 00139C00 */  sll     $s3, $s3, 16               
/* 0CC20 80B765C0 00139C03 */  sra     $s3, $s3, 16               
/* 0CC24 80B765C4 2A61008C */  slti    $at, $s3, 0x008C           
/* 0CC28 80B765C8 1420FFC6 */  bne     $at, $zero, .L80B764E4     
/* 0CC2C 80B765CC 2610003C */  addiu   $s0, $s0, 0x003C           ## $s0 = 80B7FF34
/* 0CC30 80B765D0 3C1080B8 */  lui     $s0, %hi(D_80B7FEF8)       ## $s0 = 80B80000
/* 0CC34 80B765D4 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
/* 0CC38 80B765D8 2610FEF8 */  addiu   $s0, $s0, %lo(D_80B7FEF8)  ## $s0 = 80B7FEF8
/* 0CC3C 80B765DC 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
.L80B765E0:
/* 0CC40 80B765E0 92090030 */  lbu     $t1, 0x0030($s0)           ## 80B7FF28
/* 0CC44 80B765E4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0CC48 80B765E8 5521002A */  bnel    $t1, $at, .L80B76694       
/* 0CC4C 80B765EC 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 0CC50 80B765F0 16A00009 */  bne     $s5, $zero, .L80B76618     
/* 0CC54 80B765F4 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 0CC58 80B765F8 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 0CC5C 80B765FC 24843F50 */  addiu   $a0, $a0, 0x3F50           ## $a0 = 06013F50
/* 0CC60 80B76600 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000001
/* 0CC64 80B76604 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 0CC68 80B76608 AE4A02C0 */  sw      $t2, 0x02C0($s2)           ## 000002C0
/* 0CC6C 80B7660C 32B500FF */  andi    $s5, $s5, 0x00FF           ## $s5 = 00000001
/* 0CC70 80B76610 AC440004 */  sw      $a0, 0x0004($v0)           ## 00000004
/* 0CC74 80B76614 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
.L80B76618:
/* 0CC78 80B76618 920B0034 */  lbu     $t3, 0x0034($s0)           ## 80B7FF2C
/* 0CC7C 80B7661C 3C140601 */  lui     $s4, 0x0601                ## $s4 = 06010000
/* 0CC80 80B76620 26943FD0 */  addiu   $s4, $s4, 0x3FD0           ## $s4 = 06013FD0
/* 0CC84 80B76624 1160001A */  beq     $t3, $zero, .L80B76690     
/* 0CC88 80B76628 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0CC8C 80B7662C C60C0000 */  lwc1    $f12, 0x0000($s0)          ## 80B7FEF8
/* 0CC90 80B76630 C60E0004 */  lwc1    $f14, 0x0004($s0)          ## 80B7FEFC
/* 0CC94 80B76634 0C034261 */  jal     Matrix_Translate              
/* 0CC98 80B76638 8E060008 */  lw      $a2, 0x0008($s0)           ## 80B7FF00
/* 0CC9C 80B7663C C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 80B7FF1C
/* 0CCA0 80B76640 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0CCA4 80B76644 44066000 */  mfc1    $a2, $f12                  
/* 0CCA8 80B76648 0C0342A3 */  jal     Matrix_Scale              
/* 0CCAC 80B7664C 46006386 */  mov.s   $f14, $f12                 
/* 0CCB0 80B76650 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 0CCB4 80B76654 3C0580B8 */  lui     $a1, %hi(D_80B7B220)       ## $a1 = 80B80000
/* 0CCB8 80B76658 24A5B220 */  addiu   $a1, $a1, %lo(D_80B7B220)  ## $a1 = 80B7B220
/* 0CCBC 80B7665C 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 0CCC0 80B76660 AE4C02C0 */  sw      $t4, 0x02C0($s2)           ## 000002C0
/* 0CCC4 80B76664 AC570000 */  sw      $s7, 0x0000($v0)           ## 00000000
/* 0CCC8 80B76668 8FC40000 */  lw      $a0, 0x0000($s8)           ## 00000000
/* 0CCCC 80B7666C 24061E44 */  addiu   $a2, $zero, 0x1E44         ## $a2 = 00001E44
/* 0CCD0 80B76670 0C0346A2 */  jal     Matrix_NewMtx              
/* 0CCD4 80B76674 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 0CCD8 80B76678 AE220004 */  sw      $v0, 0x0004($s1)           ## 00000004
/* 0CCDC 80B7667C 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 0CCE0 80B76680 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 0CCE4 80B76684 AE4D02C0 */  sw      $t5, 0x02C0($s2)           ## 000002C0
/* 0CCE8 80B76688 AC540004 */  sw      $s4, 0x0004($v0)           ## 00000004
/* 0CCEC 80B7668C AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
.L80B76690:
/* 0CCF0 80B76690 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000002
.L80B76694:
/* 0CCF4 80B76694 00139C00 */  sll     $s3, $s3, 16               
/* 0CCF8 80B76698 00139C03 */  sra     $s3, $s3, 16               
/* 0CCFC 80B7669C 2A61008C */  slti    $at, $s3, 0x008C           
/* 0CD00 80B766A0 1420FFCF */  bne     $at, $zero, .L80B765E0     
/* 0CD04 80B766A4 2610003C */  addiu   $s0, $s0, 0x003C           ## $s0 = 80B7FF34
/* 0CD08 80B766A8 3C1080B8 */  lui     $s0, %hi(D_80B7FEF8)       ## $s0 = 80B80000
/* 0CD0C 80B766AC 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
/* 0CD10 80B766B0 2610FEF8 */  addiu   $s0, $s0, %lo(D_80B7FEF8)  ## $s0 = 80B7FEF8
/* 0CD14 80B766B4 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
.L80B766B8:
/* 0CD18 80B766B8 920E0030 */  lbu     $t6, 0x0030($s0)           ## 80B7FF28
/* 0CD1C 80B766BC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0CD20 80B766C0 55C1003C */  bnel    $t6, $at, .L80B767B4       
/* 0CD24 80B766C4 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 0CD28 80B766C8 16A00009 */  bne     $s5, $zero, .L80B766F0     
/* 0CD2C 80B766CC 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 0CD30 80B766D0 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 0CD34 80B766D4 24843330 */  addiu   $a0, $a0, 0x3330           ## $a0 = 06013330
/* 0CD38 80B766D8 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000001
/* 0CD3C 80B766DC 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 0CD40 80B766E0 AE4F02D0 */  sw      $t7, 0x02D0($s2)           ## 000002D0
/* 0CD44 80B766E4 32B500FF */  andi    $s5, $s5, 0x00FF           ## $s5 = 00000001
/* 0CD48 80B766E8 AC440004 */  sw      $a0, 0x0004($v0)           ## 00000004
/* 0CD4C 80B766EC AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
.L80B766F0:
/* 0CD50 80B766F0 92180034 */  lbu     $t8, 0x0034($s0)           ## 80B7FF2C
/* 0CD54 80B766F4 3C140601 */  lui     $s4, 0x0601                ## $s4 = 06010000
/* 0CD58 80B766F8 269433B0 */  addiu   $s4, $s4, 0x33B0           ## $s4 = 060133B0
/* 0CD5C 80B766FC 1300002C */  beq     $t8, $zero, .L80B767B0     
/* 0CD60 80B76700 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0CD64 80B76704 C60C0000 */  lwc1    $f12, 0x0000($s0)          ## 80B7FEF8
/* 0CD68 80B76708 C60E0004 */  lwc1    $f14, 0x0004($s0)          ## 80B7FEFC
/* 0CD6C 80B7670C 0C034261 */  jal     Matrix_Translate              
/* 0CD70 80B76710 8E060008 */  lw      $a2, 0x0008($s0)           ## 80B7FF00
/* 0CD74 80B76714 C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 80B7FF1C
/* 0CD78 80B76718 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0CD7C 80B7671C 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 0CD80 80B76720 44066000 */  mfc1    $a2, $f12                  
/* 0CD84 80B76724 0C0342A3 */  jal     Matrix_Scale              
/* 0CD88 80B76728 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0CD8C 80B7672C 86190028 */  lh      $t9, 0x0028($s0)           ## 80B7FF20
/* 0CD90 80B76730 3C0180B8 */  lui     $at, %hi(D_80B7B784)       ## $at = 80B80000
/* 0CD94 80B76734 C428B784 */  lwc1    $f8, %lo(D_80B7B784)($at)  
/* 0CD98 80B76738 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 0CD9C 80B7673C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0CDA0 80B76740 468021A0 */  cvt.s.w $f6, $f4                   
/* 0CDA4 80B76744 46083302 */  mul.s   $f12, $f6, $f8             
/* 0CDA8 80B76748 0C034348 */  jal     Matrix_RotateY              
/* 0CDAC 80B7674C 00000000 */  nop
/* 0CDB0 80B76750 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 0CDB4 80B76754 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 0CDB8 80B76758 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0CDBC 80B7675C 0C034261 */  jal     Matrix_Translate              
/* 0CDC0 80B76760 46006386 */  mov.s   $f14, $f12                 
/* 0CDC4 80B76764 C60C0010 */  lwc1    $f12, 0x0010($s0)          ## 80B7FF08
/* 0CDC8 80B76768 0C034348 */  jal     Matrix_RotateY              
/* 0CDCC 80B7676C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0CDD0 80B76770 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 0CDD4 80B76774 3C0580B8 */  lui     $a1, %hi(D_80B7B230)       ## $a1 = 80B80000
/* 0CDD8 80B76778 24A5B230 */  addiu   $a1, $a1, %lo(D_80B7B230)  ## $a1 = 80B7B230
/* 0CDDC 80B7677C 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 0CDE0 80B76780 AE4802D0 */  sw      $t0, 0x02D0($s2)           ## 000002D0
/* 0CDE4 80B76784 AC570000 */  sw      $s7, 0x0000($v0)           ## 00000000
/* 0CDE8 80B76788 8FC40000 */  lw      $a0, 0x0000($s8)           ## 00000000
/* 0CDEC 80B7678C 24061E5E */  addiu   $a2, $zero, 0x1E5E         ## $a2 = 00001E5E
/* 0CDF0 80B76790 0C0346A2 */  jal     Matrix_NewMtx              
/* 0CDF4 80B76794 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 0CDF8 80B76798 AE220004 */  sw      $v0, 0x0004($s1)           ## 00000004
/* 0CDFC 80B7679C 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 0CE00 80B767A0 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 0CE04 80B767A4 AE4902D0 */  sw      $t1, 0x02D0($s2)           ## 000002D0
/* 0CE08 80B767A8 AC540004 */  sw      $s4, 0x0004($v0)           ## 00000004
/* 0CE0C 80B767AC AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
.L80B767B0:
/* 0CE10 80B767B0 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000002
.L80B767B4:
/* 0CE14 80B767B4 00139C00 */  sll     $s3, $s3, 16               
/* 0CE18 80B767B8 00139C03 */  sra     $s3, $s3, 16               
/* 0CE1C 80B767BC 2A61008C */  slti    $at, $s3, 0x008C           
/* 0CE20 80B767C0 1420FFBD */  bne     $at, $zero, .L80B766B8     
/* 0CE24 80B767C4 2610003C */  addiu   $s0, $s0, 0x003C           ## $s0 = 80B7FF34
/* 0CE28 80B767C8 3C1080B8 */  lui     $s0, %hi(D_80B7FEF8)       ## $s0 = 80B80000
/* 0CE2C 80B767CC 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
/* 0CE30 80B767D0 2610FEF8 */  addiu   $s0, $s0, %lo(D_80B7FEF8)  ## $s0 = 80B7FEF8
/* 0CE34 80B767D4 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
.L80B767D8:
/* 0CE38 80B767D8 920A0030 */  lbu     $t2, 0x0030($s0)           ## 80B7FF28
/* 0CE3C 80B767DC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0CE40 80B767E0 5541002D */  bnel    $t2, $at, .L80B76898       
/* 0CE44 80B767E4 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 0CE48 80B767E8 16A00009 */  bne     $s5, $zero, .L80B76810     
/* 0CE4C 80B767EC 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 0CE50 80B767F0 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 0CE54 80B767F4 24843590 */  addiu   $a0, $a0, 0x3590           ## $a0 = 06013590
/* 0CE58 80B767F8 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000001
/* 0CE5C 80B767FC 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 0CE60 80B76800 AE4B02C0 */  sw      $t3, 0x02C0($s2)           ## 000002C0
/* 0CE64 80B76804 32B500FF */  andi    $s5, $s5, 0x00FF           ## $s5 = 00000001
/* 0CE68 80B76808 AC440004 */  sw      $a0, 0x0004($v0)           ## 00000004
/* 0CE6C 80B7680C AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
.L80B76810:
/* 0CE70 80B76810 920C0034 */  lbu     $t4, 0x0034($s0)           ## 80B7FF2C
/* 0CE74 80B76814 3C140601 */  lui     $s4, 0x0601                ## $s4 = 06010000
/* 0CE78 80B76818 26943610 */  addiu   $s4, $s4, 0x3610           ## $s4 = 06013610
/* 0CE7C 80B7681C 1180001D */  beq     $t4, $zero, .L80B76894     
/* 0CE80 80B76820 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0CE84 80B76824 C60C0000 */  lwc1    $f12, 0x0000($s0)          ## 80B7FEF8
/* 0CE88 80B76828 C60E0004 */  lwc1    $f14, 0x0004($s0)          ## 80B7FEFC
/* 0CE8C 80B7682C 0C034261 */  jal     Matrix_Translate              
/* 0CE90 80B76830 8E060008 */  lw      $a2, 0x0008($s0)           ## 80B7FF00
/* 0CE94 80B76834 C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 80B7FF1C
/* 0CE98 80B76838 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0CE9C 80B7683C 44066000 */  mfc1    $a2, $f12                  
/* 0CEA0 80B76840 0C0342A3 */  jal     Matrix_Scale              
/* 0CEA4 80B76844 46006386 */  mov.s   $f14, $f12                 
/* 0CEA8 80B76848 C60C0010 */  lwc1    $f12, 0x0010($s0)          ## 80B7FF08
/* 0CEAC 80B7684C 0C034348 */  jal     Matrix_RotateY              
/* 0CEB0 80B76850 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0CEB4 80B76854 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 0CEB8 80B76858 3C0580B8 */  lui     $a1, %hi(D_80B7B240)       ## $a1 = 80B80000
/* 0CEBC 80B7685C 24A5B240 */  addiu   $a1, $a1, %lo(D_80B7B240)  ## $a1 = 80B7B240
/* 0CEC0 80B76860 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 0CEC4 80B76864 AE4D02C0 */  sw      $t5, 0x02C0($s2)           ## 000002C0
/* 0CEC8 80B76868 AC570000 */  sw      $s7, 0x0000($v0)           ## 00000000
/* 0CECC 80B7686C 8FC40000 */  lw      $a0, 0x0000($s8)           ## 00000000
/* 0CED0 80B76870 24061E76 */  addiu   $a2, $zero, 0x1E76         ## $a2 = 00001E76
/* 0CED4 80B76874 0C0346A2 */  jal     Matrix_NewMtx              
/* 0CED8 80B76878 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 0CEDC 80B7687C AE220004 */  sw      $v0, 0x0004($s1)           ## 00000004
/* 0CEE0 80B76880 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 0CEE4 80B76884 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 0CEE8 80B76888 AE4E02C0 */  sw      $t6, 0x02C0($s2)           ## 000002C0
/* 0CEEC 80B7688C AC540004 */  sw      $s4, 0x0004($v0)           ## 00000004
/* 0CEF0 80B76890 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
.L80B76894:
/* 0CEF4 80B76894 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000002
.L80B76898:
/* 0CEF8 80B76898 00139C00 */  sll     $s3, $s3, 16               
/* 0CEFC 80B7689C 00139C03 */  sra     $s3, $s3, 16               
/* 0CF00 80B768A0 2A61008C */  slti    $at, $s3, 0x008C           
/* 0CF04 80B768A4 1420FFCC */  bne     $at, $zero, .L80B767D8     
/* 0CF08 80B768A8 2610003C */  addiu   $s0, $s0, 0x003C           ## $s0 = 80B7FF34
/* 0CF0C 80B768AC 0C034221 */  jal     Matrix_Pull              
/* 0CF10 80B768B0 00000000 */  nop
/* 0CF14 80B768B4 3C0680B8 */  lui     $a2, %hi(D_80B7B250)       ## $a2 = 80B80000
/* 0CF18 80B768B8 24C6B250 */  addiu   $a2, $a2, %lo(D_80B7B250)  ## $a2 = 80B7B250
/* 0CF1C 80B768BC 27A4007C */  addiu   $a0, $sp, 0x007C           ## $a0 = FFFFFFDC
/* 0CF20 80B768C0 8FC50000 */  lw      $a1, 0x0000($s8)           ## 00000000
/* 0CF24 80B768C4 0C031AD5 */  jal     Graph_CloseDisps              
/* 0CF28 80B768C8 24071E7D */  addiu   $a3, $zero, 0x1E7D         ## $a3 = 00001E7D
/* 0CF2C 80B768CC 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 0CF30 80B768D0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0CF34 80B768D4 8FB1001C */  lw      $s1, 0x001C($sp)           
/* 0CF38 80B768D8 8FB20020 */  lw      $s2, 0x0020($sp)           
/* 0CF3C 80B768DC 8FB30024 */  lw      $s3, 0x0024($sp)           
/* 0CF40 80B768E0 8FB40028 */  lw      $s4, 0x0028($sp)           
/* 0CF44 80B768E4 8FB5002C */  lw      $s5, 0x002C($sp)           
/* 0CF48 80B768E8 8FB60030 */  lw      $s6, 0x0030($sp)           
/* 0CF4C 80B768EC 8FB70034 */  lw      $s7, 0x0034($sp)           
/* 0CF50 80B768F0 8FBE0038 */  lw      $s8, 0x0038($sp)           
/* 0CF54 80B768F4 03E00008 */  jr      $ra                        
/* 0CF58 80B768F8 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000
