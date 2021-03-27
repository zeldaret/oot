.late_rodata
glabel D_808D64BC
    .float 0.3

glabel D_808D64C0
    .float 6000.0

glabel D_808D64C4
    .float 1300.0

.text
glabel func_808D4C68
/* 025F8 808D4C68 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 025FC 808D4C6C 3C0F808D */  lui     $t7, %hi(D_808D6200)       ## $t7 = 808D0000
/* 02600 808D4C70 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02604 808D4C74 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02608 808D4C78 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 0260C 808D4C7C 25EF6200 */  addiu   $t7, $t7, %lo(D_808D6200)  ## $t7 = 808D6200
/* 02610 808D4C80 8DF90000 */  lw      $t9, 0x0000($t7)           ## 808D6200
/* 02614 808D4C84 27AE0024 */  addiu   $t6, $sp, 0x0024           ## $t6 = FFFFFFEC
/* 02618 808D4C88 8DF80004 */  lw      $t8, 0x0004($t7)           ## 808D6204
/* 0261C 808D4C8C ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFEC
/* 02620 808D4C90 95F90008 */  lhu     $t9, 0x0008($t7)           ## 808D6208
/* 02624 808D4C94 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF0
/* 02628 808D4C98 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0262C 808D4C9C A5D90008 */  sh      $t9, 0x0008($t6)           ## FFFFFFF4
/* 02630 808D4CA0 8488019C */  lh      $t0, 0x019C($a0)           ## 0000019C
/* 02634 808D4CA4 31090007 */  andi    $t1, $t0, 0x0007           ## $t1 = 00000000
/* 02638 808D4CA8 5520000C */  bnel    $t1, $zero, .L808D4CDC     
/* 0263C 808D4CAC 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 02640 808D4CB0 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 02644 808D4CB4 00000000 */  nop
/* 02648 808D4CB8 3C01808D */  lui     $at, %hi(D_808D64BC)       ## $at = 808D0000
/* 0264C 808D4CBC C42464BC */  lwc1    $f4, %lo(D_808D64BC)($at)  
/* 02650 808D4CC0 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 02654 808D4CC4 4604003C */  c.lt.s  $f0, $f4                   
/* 02658 808D4CC8 00000000 */  nop
/* 0265C 808D4CCC 45020003 */  bc1fl   .L808D4CDC                 
/* 02660 808D4CD0 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 02664 808D4CD4 A60A01A2 */  sh      $t2, 0x01A2($s0)           ## 000001A2
/* 02668 808D4CD8 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
.L808D4CDC:
/* 0266C 808D4CDC 3C0B808D */  lui     $t3, %hi(func_808D3AE0)    ## $t3 = 808D0000
/* 02670 808D4CE0 256B3AE0 */  addiu   $t3, $t3, %lo(func_808D3AE0) ## $t3 = 808D3AE0
/* 02674 808D4CE4 11620005 */  beq     $t3, $v0, .L808D4CFC       
/* 02678 808D4CE8 2604138C */  addiu   $a0, $s0, 0x138C           ## $a0 = 0000138C
/* 0267C 808D4CEC 3C0C808D */  lui     $t4, %hi(func_808D3D98)    ## $t4 = 808D0000
/* 02680 808D4CF0 258C3D98 */  addiu   $t4, $t4, %lo(func_808D3D98) ## $t4 = 808D3D98
/* 02684 808D4CF4 5582000D */  bnel    $t4, $v0, .L808D4D2C       
/* 02688 808D4CF8 860201A2 */  lh      $v0, 0x01A2($s0)           ## 000001A2
.L808D4CFC:
/* 0268C 808D4CFC 860D019C */  lh      $t5, 0x019C($s0)           ## 0000019C
/* 02690 808D4D00 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 02694 808D4D04 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 02698 808D4D08 31AE0010 */  andi    $t6, $t5, 0x0010           ## $t6 = 00000000
/* 0269C 808D4D0C 51C00004 */  beql    $t6, $zero, .L808D4D20     
/* 026A0 808D4D10 A2180223 */  sb      $t8, 0x0223($s0)           ## 00000223
/* 026A4 808D4D14 10000002 */  beq     $zero, $zero, .L808D4D20   
/* 026A8 808D4D18 A20F0223 */  sb      $t7, 0x0223($s0)           ## 00000223
/* 026AC 808D4D1C A2180223 */  sb      $t8, 0x0223($s0)           ## 00000223
.L808D4D20:
/* 026B0 808D4D20 10000006 */  beq     $zero, $zero, .L808D4D3C   
/* 026B4 808D4D24 860201A2 */  lh      $v0, 0x01A2($s0)           ## 000001A2
/* 026B8 808D4D28 860201A2 */  lh      $v0, 0x01A2($s0)           ## 000001A2
.L808D4D2C:
/* 026BC 808D4D2C 0002C840 */  sll     $t9, $v0,  1               
/* 026C0 808D4D30 03B94021 */  addu    $t0, $sp, $t9              
/* 026C4 808D4D34 85080024 */  lh      $t0, 0x0024($t0)           ## 00000024
/* 026C8 808D4D38 A2080223 */  sb      $t0, 0x0223($s0)           ## 00000223
.L808D4D3C:
/* 026CC 808D4D3C 10400003 */  beq     $v0, $zero, .L808D4D4C     
/* 026D0 808D4D40 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 026D4 808D4D44 2449FFFF */  addiu   $t1, $v0, 0xFFFF           ## $t1 = FFFFFFFF
/* 026D8 808D4D48 A60901A2 */  sh      $t1, 0x01A2($s0)           ## 000001A2
.L808D4D4C:
/* 026DC 808D4D4C 860A01A4 */  lh      $t2, 0x01A4($s0)           ## 000001A4
/* 026E0 808D4D50 3C01808D */  lui     $at, %hi(D_808D64C0)       ## $at = 808D0000
/* 026E4 808D4D54 51400006 */  beql    $t2, $zero, .L808D4D70     
/* 026E8 808D4D58 860B019C */  lh      $t3, 0x019C($s0)           ## 0000019C
/* 026EC 808D4D5C C42064C0 */  lwc1    $f0, %lo(D_808D64C0)($at)  
/* 026F0 808D4D60 3C01808D */  lui     $at, %hi(D_808D64C4)       ## $at = 808D0000
/* 026F4 808D4D64 1000000E */  beq     $zero, $zero, .L808D4DA0   
/* 026F8 808D4D68 C42264C4 */  lwc1    $f2, %lo(D_808D64C4)($at)  
/* 026FC 808D4D6C 860B019C */  lh      $t3, 0x019C($s0)           ## 0000019C
.L808D4D70:
/* 02700 808D4D70 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 02704 808D4D74 316C0010 */  andi    $t4, $t3, 0x0010           ## $t4 = 00000000
/* 02708 808D4D78 51800005 */  beql    $t4, $zero, .L808D4D90     
/* 0270C 808D4D7C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02710 808D4D80 44810000 */  mtc1    $at, $f0                   ## $f0 = 1000.00
/* 02714 808D4D84 10000004 */  beq     $zero, $zero, .L808D4D98   
/* 02718 808D4D88 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
/* 0271C 808D4D8C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L808D4D90:
/* 02720 808D4D90 00000000 */  nop
/* 02724 808D4D94 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
.L808D4D98:
/* 02728 808D4D98 44811000 */  mtc1    $at, $f2                   ## $f2 = 700.00
/* 0272C 808D4D9C 00000000 */  nop
.L808D4DA0:
/* 02730 808D4DA0 44050000 */  mfc1    $a1, $f0                   
/* 02734 808D4DA4 44071000 */  mfc1    $a3, $f2                   
/* 02738 808D4DA8 0C01E107 */  jal     Math_ApproachF
              
/* 0273C 808D4DAC 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 02740 808D4DB0 860201A4 */  lh      $v0, 0x01A4($s0)           ## 000001A4
/* 02744 808D4DB4 10400002 */  beq     $v0, $zero, .L808D4DC0     
/* 02748 808D4DB8 244DFFFF */  addiu   $t5, $v0, 0xFFFF           ## $t5 = FFFFFFFF
/* 0274C 808D4DBC A60D01A4 */  sh      $t5, 0x01A4($s0)           ## 000001A4
.L808D4DC0:
/* 02750 808D4DC0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02754 808D4DC4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02758 808D4DC8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0275C 808D4DCC 03E00008 */  jr      $ra                        
/* 02760 808D4DD0 00000000 */  nop
