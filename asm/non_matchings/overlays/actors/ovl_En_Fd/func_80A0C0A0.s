.late_rodata
glabel D_80A0E1B4
    .float 0.9

.text
glabel func_80A0C0A0
/* 009E0 80A0C0A0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 009E4 80A0C0A4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 009E8 80A0C0A8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 009EC 80A0C0AC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 009F0 80A0C0B0 848E04C2 */  lh      $t6, 0x04C2($a0)           ## 000004C2
/* 009F4 80A0C0B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009F8 80A0C0B8 248404CC */  addiu   $a0, $a0, 0x04CC           ## $a0 = 000004CC
/* 009FC 80A0C0BC 11C00036 */  beq     $t6, $zero, .L80A0C198     
/* 00A00 80A0C0C0 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 00A04 80A0C0C4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00A08 80A0C0C8 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 00A0C 80A0C0CC 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 00A10 80A0C0D0 44050000 */  mfc1    $a1, $f0                   
/* 00A14 80A0C0D4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00A18 80A0C0D8 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00A1C 80A0C0DC 444FF800 */  cfc1    $t7, $31
/* 00A20 80A0C0E0 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00A24 80A0C0E4 44D8F800 */  ctc1    $t8, $31
/* 00A28 80A0C0E8 C60004CC */  lwc1    $f0, 0x04CC($s0)           ## 000004CC
/* 00A2C 80A0C0EC 3C1980A1 */  lui     $t9, %hi(func_80A0CA44)    ## $t9 = 80A10000
/* 00A30 80A0C0F0 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 00A34 80A0C0F4 46000124 */  cvt.w.s $f4, $f0                   
/* 00A38 80A0C0F8 2739CA44 */  addiu   $t9, $t9, %lo(func_80A0CA44) ## $t9 = 80A0CA44
/* 00A3C 80A0C0FC 4458F800 */  cfc1    $t8, $31
/* 00A40 80A0C100 00000000 */  nop
/* 00A44 80A0C104 33180078 */  andi    $t8, $t8, 0x0078           ## $t8 = 00000000
/* 00A48 80A0C108 53000013 */  beql    $t8, $zero, .L80A0C158     
/* 00A4C 80A0C10C 44182000 */  mfc1    $t8, $f4                   
/* 00A50 80A0C110 44812000 */  mtc1    $at, $f4                   ## $f4 = 2147483648.00
/* 00A54 80A0C114 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00A58 80A0C118 46040101 */  sub.s   $f4, $f0, $f4              
/* 00A5C 80A0C11C 44D8F800 */  ctc1    $t8, $31
/* 00A60 80A0C120 00000000 */  nop
/* 00A64 80A0C124 46002124 */  cvt.w.s $f4, $f4                   
/* 00A68 80A0C128 4458F800 */  cfc1    $t8, $31
/* 00A6C 80A0C12C 00000000 */  nop
/* 00A70 80A0C130 33180078 */  andi    $t8, $t8, 0x0078           ## $t8 = 00000000
/* 00A74 80A0C134 17000005 */  bne     $t8, $zero, .L80A0C14C     
/* 00A78 80A0C138 00000000 */  nop
/* 00A7C 80A0C13C 44182000 */  mfc1    $t8, $f4                   
/* 00A80 80A0C140 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00A84 80A0C144 10000007 */  beq     $zero, $zero, .L80A0C164   
/* 00A88 80A0C148 0301C025 */  or      $t8, $t8, $at              ## $t8 = 80000000
.L80A0C14C:
/* 00A8C 80A0C14C 10000005 */  beq     $zero, $zero, .L80A0C164   
/* 00A90 80A0C150 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 00A94 80A0C154 44182000 */  mfc1    $t8, $f4                   
.L80A0C158:
/* 00A98 80A0C158 00000000 */  nop
/* 00A9C 80A0C15C 0700FFFB */  bltz    $t8, .L80A0C14C            
/* 00AA0 80A0C160 00000000 */  nop
.L80A0C164:
/* 00AA4 80A0C164 A21800C8 */  sb      $t8, 0x00C8($s0)           ## 000000C8
/* 00AA8 80A0C168 3C0180A1 */  lui     $at, %hi(D_80A0E1B4)       ## $at = 80A10000
/* 00AAC 80A0C16C 44CFF800 */  ctc1    $t7, $31
/* 00AB0 80A0C170 C426E1B4 */  lwc1    $f6, %lo(D_80A0E1B4)($at)  
/* 00AB4 80A0C174 4600303E */  c.le.s  $f6, $f0                   
/* 00AB8 80A0C178 00000000 */  nop
/* 00ABC 80A0C17C 45030007 */  bc1tl   .L80A0C19C                 
/* 00AC0 80A0C180 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00AC4 80A0C184 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00AC8 80A0C188 A60004C2 */  sh      $zero, 0x04C2($s0)         ## 000004C2
/* 00ACC 80A0C18C A60004BE */  sh      $zero, 0x04BE($s0)         ## 000004BE
/* 00AD0 80A0C190 AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
/* 00AD4 80A0C194 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
.L80A0C198:
/* 00AD8 80A0C198 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A0C19C:
/* 00ADC 80A0C19C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00AE0 80A0C1A0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00AE4 80A0C1A4 03E00008 */  jr      $ra                        
/* 00AE8 80A0C1A8 00000000 */  nop
