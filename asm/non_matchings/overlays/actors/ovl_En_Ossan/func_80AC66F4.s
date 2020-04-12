.late_rodata
glabel D_80AC960C
    .float 0.05

glabel D_80AC9610
    .float 0.05

.text
glabel func_80AC66F4
/* 03A54 80AC66F4 908E0250 */  lbu     $t6, 0x0250($a0)           ## 00000250
/* 03A58 80AC66F8 C480024C */  lwc1    $f0, 0x024C($a0)           ## 0000024C
/* 03A5C 80AC66FC 3C0180AD */  lui     $at, %hi(D_80AC9610)       ## $at = 80AD0000
/* 03A60 80AC6700 15C00010 */  bne     $t6, $zero, .L80AC6744     
/* 03A64 80AC6704 00000000 */  nop
/* 03A68 80AC6708 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 03A6C 80AC670C 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 03A70 80AC6710 3C0180AD */  lui     $at, %hi(D_80AC960C)       ## $at = 80AD0000
/* 03A74 80AC6714 C424960C */  lwc1    $f4, %lo(D_80AC960C)($at)  
/* 03A78 80AC6718 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 03A7C 80AC671C 46040000 */  add.s   $f0, $f0, $f4              
/* 03A80 80AC6720 4600103E */  c.le.s  $f2, $f0                   
/* 03A84 80AC6724 00000000 */  nop
/* 03A88 80AC6728 45020004 */  bc1fl   .L80AC673C                 
/* 03A8C 80AC672C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 03A90 80AC6730 46001006 */  mov.s   $f0, $f2                   
/* 03A94 80AC6734 A08F0250 */  sb      $t7, 0x0250($a0)           ## 00000250
/* 03A98 80AC6738 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
.L80AC673C:
/* 03A9C 80AC673C 1000000B */  beq     $zero, $zero, .L80AC676C   
/* 03AA0 80AC6740 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
.L80AC6744:
/* 03AA4 80AC6744 C4269610 */  lwc1    $f6, %lo(D_80AC9610)($at)  
/* 03AA8 80AC6748 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 03AAC 80AC674C 46060001 */  sub.s   $f0, $f0, $f6              
/* 03AB0 80AC6750 4602003E */  c.le.s  $f0, $f2                   
/* 03AB4 80AC6754 00000000 */  nop
/* 03AB8 80AC6758 45020004 */  bc1fl   .L80AC676C                 
/* 03ABC 80AC675C 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 03AC0 80AC6760 46001006 */  mov.s   $f0, $f2                   
/* 03AC4 80AC6764 A0800250 */  sb      $zero, 0x0250($a0)         ## 00000250
/* 03AC8 80AC6768 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
.L80AC676C:
/* 03ACC 80AC676C 44815000 */  mtc1    $at, $f10                  ## $f10 = 80.00
/* 03AD0 80AC6770 4600120D */  trunc.w.s $f8, $f2                   
/* 03AD4 80AC6774 240300FF */  addiu   $v1, $zero, 0x00FF         ## $v1 = 000000FF
/* 03AD8 80AC6778 46005402 */  mul.s   $f16, $f10, $f0            
/* 03ADC 80AC677C 240D0050 */  addiu   $t5, $zero, 0x0050         ## $t5 = 00000050
/* 03AE0 80AC6780 44024000 */  mfc1    $v0, $f8                   
/* 03AE4 80AC6784 E480024C */  swc1    $f0, 0x024C($a0)           ## 0000024C
/* 03AE8 80AC6788 0002C823 */  subu    $t9, $zero, $v0            
/* 03AEC 80AC678C 332800FF */  andi    $t0, $t9, 0x00FF           ## $t0 = 00000000
/* 03AF0 80AC6790 4600848D */  trunc.w.s $f18, $f16                 
/* 03AF4 80AC6794 01A27023 */  subu    $t6, $t5, $v0              
/* 03AF8 80AC6798 0062C023 */  subu    $t8, $v1, $v0              
/* 03AFC 80AC679C 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 03B00 80AC67A0 440A9000 */  mfc1    $t2, $f18                  
/* 03B04 80AC67A4 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 00000000
/* 03B08 80AC67A8 AC88023C */  sw      $t0, 0x023C($a0)           ## 0000023C
/* 03B0C 80AC67AC 006A5823 */  subu    $t3, $v1, $t2              
/* 03B10 80AC67B0 316C00FF */  andi    $t4, $t3, 0x00FF           ## $t4 = 00000000
/* 03B14 80AC67B4 AC8C0240 */  sw      $t4, 0x0240($a0)           ## 00000240
/* 03B18 80AC67B8 AC8F0244 */  sw      $t7, 0x0244($a0)           ## 00000244
/* 03B1C 80AC67BC 03E00008 */  jr      $ra                        
/* 03B20 80AC67C0 AC990248 */  sw      $t9, 0x0248($a0)           ## 00000248
