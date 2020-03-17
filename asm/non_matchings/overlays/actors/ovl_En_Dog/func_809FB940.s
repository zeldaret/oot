glabel func_809FB940
/* 00970 809FB940 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00974 809FB944 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00978 809FB948 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 0097C 809FB94C 24A5E660 */  addiu   $a1, $a1, 0xE660           ## $a1 = 8015E660
/* 00980 809FB950 84AE13C4 */  lh      $t6, 0x13C4($a1)           ## 8015FA24
/* 00984 809FB954 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00988 809FB958 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0098C 809FB95C 15C00009 */  bne     $t6, $zero, .L809FB984     
/* 00990 809FB960 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00994 809FB964 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00998 809FB968 3C1880A0 */  lui     $t8, %hi(func_809FBC6C)    ## $t8 = 80A00000
/* 0099C 809FB96C 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 009A0 809FB970 2718BC6C */  addiu   $t8, $t8, %lo(func_809FBC6C) ## $t8 = 809FBC6C
/* 009A4 809FB974 A48F01F0 */  sh      $t7, 0x01F0($a0)           ## 000001F0
/* 009A8 809FB978 AC980190 */  sw      $t8, 0x0190($a0)           ## 00000190
/* 009AC 809FB97C 1000004A */  beq     $zero, $zero, .L809FBAA8   
/* 009B0 809FB980 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
.L809FB984:
/* 009B4 809FB984 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 009B8 809FB988 44813000 */  mtc1    $at, $f6                   ## $f6 = 400.00
/* 009BC 809FB98C C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 009C0 809FB990 4600303C */  c.lt.s  $f6, $f0                   
/* 009C4 809FB994 00000000 */  nop
/* 009C8 809FB998 4502000C */  bc1fl   .L809FB9CC                 
/* 009CC 809FB99C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 009D0 809FB9A0 860201F0 */  lh      $v0, 0x01F0($s0)           ## 000001F0
/* 009D4 809FB9A4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 009D8 809FB9A8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 009DC 809FB9AC 10410004 */  beq     $v0, $at, .L809FB9C0       
/* 009E0 809FB9B0 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 009E4 809FB9B4 10410002 */  beq     $v0, $at, .L809FB9C0       
/* 009E8 809FB9B8 24030005 */  addiu   $v1, $zero, 0x0005         ## $v1 = 00000005
/* 009EC 809FB9BC A60301F0 */  sh      $v1, 0x01F0($s0)           ## 000001F0
.L809FB9C0:
/* 009F0 809FB9C0 1000001F */  beq     $zero, $zero, .L809FBA40   
/* 009F4 809FB9C4 A4A013C4 */  sh      $zero, 0x13C4($a1)         ## 8015FA24
/* 009F8 809FB9C8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
.L809FB9CC:
/* 009FC 809FB9CC 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 00A00 809FB9D0 00000000 */  nop
/* 00A04 809FB9D4 4600403C */  c.lt.s  $f8, $f0                   
/* 00A08 809FB9D8 00000000 */  nop
/* 00A0C 809FB9DC 45000005 */  bc1f    .L809FB9F4                 
/* 00A10 809FB9E0 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00A14 809FB9E4 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00A18 809FB9E8 44810000 */  mtc1    $at, $f0                   ## $f0 = 4.00
/* 00A1C 809FB9EC 10000014 */  beq     $zero, $zero, .L809FBA40   
/* 00A20 809FB9F0 A61901F0 */  sh      $t9, 0x01F0($s0)           ## 000001F0
.L809FB9F4:
/* 00A24 809FB9F4 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00A28 809FB9F8 44815000 */  mtc1    $at, $f10                  ## $f10 = 40.00
/* 00A2C 809FB9FC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00A30 809FBA00 460A003C */  c.lt.s  $f0, $f10                  
/* 00A34 809FBA04 00000000 */  nop
/* 00A38 809FBA08 4502000C */  bc1fl   .L809FBA3C                 
/* 00A3C 809FBA0C 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00A40 809FBA10 860201F0 */  lh      $v0, 0x01F0($s0)           ## 000001F0
/* 00A44 809FBA14 24030005 */  addiu   $v1, $zero, 0x0005         ## $v1 = 00000005
/* 00A48 809FBA18 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00A4C 809FBA1C 10620004 */  beq     $v1, $v0, .L809FBA30       
/* 00A50 809FBA20 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00A54 809FBA24 10410002 */  beq     $v0, $at, .L809FBA30       
/* 00A58 809FBA28 00000000 */  nop
/* 00A5C 809FBA2C A60301F0 */  sh      $v1, 0x01F0($s0)           ## 000001F0
.L809FBA30:
/* 00A60 809FBA30 10000004 */  beq     $zero, $zero, .L809FBA44   
/* 00A64 809FBA34 44050000 */  mfc1    $a1, $f0                   
/* 00A68 809FBA38 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.00
.L809FBA3C:
/* 00A6C 809FBA3C A60001F0 */  sh      $zero, 0x01F0($s0)         ## 000001F0
.L809FBA40:
/* 00A70 809FBA40 44050000 */  mfc1    $a1, $f0                   
.L809FBA44:
/* 00A74 809FBA44 3C063F19 */  lui     $a2, 0x3F19                ## $a2 = 3F190000
/* 00A78 809FBA48 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3F19999A
/* 00A7C 809FBA4C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00A80 809FBA50 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00A84 809FBA54 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00A88 809FBA58 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 00A8C 809FBA5C 44818000 */  mtc1    $at, $f16                  ## $f16 = 400.00
/* 00A90 809FBA60 C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
/* 00A94 809FBA64 4612803C */  c.lt.s  $f16, $f18                 
/* 00A98 809FBA68 00000000 */  nop
/* 00A9C 809FBA6C 4503000F */  bc1tl   .L809FBAAC                 
/* 00AA0 809FBA70 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00AA4 809FBA74 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00AA8 809FBA78 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00AAC 809FBA7C AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00AB0 809FBA80 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00AB4 809FBA84 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 00AB8 809FBA88 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00ABC 809FBA8C 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 00AC0 809FBA90 8A0A0030 */  lwl     $t2, 0x0030($s0)           ## 00000030
/* 00AC4 809FBA94 9A0A0033 */  lwr     $t2, 0x0033($s0)           ## 00000033
/* 00AC8 809FBA98 AA0A00B4 */  swl     $t2, 0x00B4($s0)           ## 000000B4
/* 00ACC 809FBA9C BA0A00B7 */  swr     $t2, 0x00B7($s0)           ## 000000B7
/* 00AD0 809FBAA0 960A0034 */  lhu     $t2, 0x0034($s0)           ## 00000034
/* 00AD4 809FBAA4 A60A00B8 */  sh      $t2, 0x00B8($s0)           ## 000000B8
.L809FBAA8:
/* 00AD8 809FBAA8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809FBAAC:
/* 00ADC 809FBAAC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00AE0 809FBAB0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00AE4 809FBAB4 03E00008 */  jr      $ra                        
/* 00AE8 809FBAB8 00000000 */  nop


