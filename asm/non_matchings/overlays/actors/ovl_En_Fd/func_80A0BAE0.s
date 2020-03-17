glabel func_80A0BAE0
/* 00420 80A0BAE0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00424 80A0BAE4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00428 80A0BAE8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0042C 80A0BAEC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00430 80A0BAF0 908201A5 */  lbu     $v0, 0x01A5($a0)           ## 000001A5
/* 00434 80A0BAF4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00438 80A0BAF8 8CA61C44 */  lw      $a2, 0x1C44($a1)           ## 00001C44
/* 0043C 80A0BAFC 304F0002 */  andi    $t7, $v0, 0x0002           ## $t7 = 00000000
/* 00440 80A0BB00 55E00007 */  bnel    $t7, $zero, .L80A0BB20     
/* 00444 80A0BB04 861904C2 */  lh      $t9, 0x04C2($s0)           ## 000004C2
/* 00448 80A0BB08 0C282E91 */  jal     func_80A0BA44              
/* 0044C 80A0BB0C AFA6002C */  sw      $a2, 0x002C($sp)           
/* 00450 80A0BB10 10400027 */  beq     $v0, $zero, .L80A0BBB0     
/* 00454 80A0BB14 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 00458 80A0BB18 920201A5 */  lbu     $v0, 0x01A5($s0)           ## 000001A5
/* 0045C 80A0BB1C 861904C2 */  lh      $t9, 0x04C2($s0)           ## 000004C2
.L80A0BB20:
/* 00460 80A0BB20 3058FFFD */  andi    $t8, $v0, 0xFFFD           ## $t8 = 00000000
/* 00464 80A0BB24 A21801A5 */  sb      $t8, 0x01A5($s0)           ## 000001A5
/* 00468 80A0BB28 53200004 */  beql    $t9, $zero, .L80A0BB3C     
/* 0046C 80A0BB2C 8E0201B0 */  lw      $v0, 0x01B0($s0)           ## 000001B0
/* 00470 80A0BB30 1000004A */  beq     $zero, $zero, .L80A0BC5C   
/* 00474 80A0BB34 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00478 80A0BB38 8E0201B0 */  lw      $v0, 0x01B0($s0)           ## 000001B0
.L80A0BB3C:
/* 0047C 80A0BB3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00480 80A0BB40 8C430024 */  lw      $v1, 0x0024($v0)           ## 00000024
/* 00484 80A0BB44 10600007 */  beq     $v1, $zero, .L80A0BB64     
/* 00488 80A0BB48 00000000 */  nop
/* 0048C 80A0BB4C 8C680000 */  lw      $t0, 0x0000($v1)           ## 00000000
/* 00490 80A0BB50 31090080 */  andi    $t1, $t0, 0x0080           ## $t1 = 00000000
/* 00494 80A0BB54 11200003 */  beq     $t1, $zero, .L80A0BB64     
/* 00498 80A0BB58 00000000 */  nop
/* 0049C 80A0BB5C 1000003F */  beq     $zero, $zero, .L80A0BC5C   
/* 004A0 80A0BB60 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A0BB64:
/* 004A4 80A0BB64 0C282DB0 */  jal     func_80A0B6C0              
/* 004A8 80A0BB68 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 004AC 80A0BB6C 14400003 */  bne     $v0, $zero, .L80A0BB7C     
/* 004B0 80A0BB70 240A001E */  addiu   $t2, $zero, 0x001E         ## $t2 = 0000001E
/* 004B4 80A0BB74 10000039 */  beq     $zero, $zero, .L80A0BC5C   
/* 004B8 80A0BB78 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A0BB7C:
/* 004BC 80A0BB7C 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
/* 004C0 80A0BB80 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 004C4 80A0BB84 A60A04C2 */  sh      $t2, 0x04C2($s0)           ## 000004C2
/* 004C8 80A0BB88 01616024 */  and     $t4, $t3, $at              
/* 004CC 80A0BB8C AE0C0004 */  sw      $t4, 0x0004($s0)           ## 00000004
/* 004D0 80A0BB90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004D4 80A0BB94 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 004D8 80A0BB98 2405397A */  addiu   $a1, $zero, 0x397A         ## $a1 = 0000397A
/* 004DC 80A0BB9C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 004E0 80A0BBA0 0C00CB1F */  jal     func_80032C7C              
/* 004E4 80A0BBA4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 004E8 80A0BBA8 1000002C */  beq     $zero, $zero, .L80A0BC5C   
/* 004EC 80A0BBAC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A0BBB0:
/* 004F0 80A0BBB0 860204C4 */  lh      $v0, 0x04C4($s0)           ## 000004C4
/* 004F4 80A0BBB4 14400003 */  bne     $v0, $zero, .L80A0BBC4     
/* 004F8 80A0BBB8 244DFFFF */  addiu   $t5, $v0, 0xFFFF           ## $t5 = 00000000
/* 004FC 80A0BBBC 10000003 */  beq     $zero, $zero, .L80A0BBCC   
/* 00500 80A0BBC0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80A0BBC4:
/* 00504 80A0BBC4 A60D04C4 */  sh      $t5, 0x04C4($s0)           ## 000004C4
/* 00508 80A0BBC8 860304C4 */  lh      $v1, 0x04C4($s0)           ## 000004C4
.L80A0BBCC:
/* 0050C 80A0BBCC 54600023 */  bnel    $v1, $zero, .L80A0BC5C     
/* 00510 80A0BBD0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00514 80A0BBD4 920201A4 */  lbu     $v0, 0x01A4($s0)           ## 000001A4
/* 00518 80A0BBD8 304F0002 */  andi    $t7, $v0, 0x0002           ## $t7 = 00000000
/* 0051C 80A0BBDC 51E0001F */  beql    $t7, $zero, .L80A0BC5C     
/* 00520 80A0BBE0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00524 80A0BBE4 861804C2 */  lh      $t8, 0x04C2($s0)           ## 000004C2
/* 00528 80A0BBE8 304EFFFD */  andi    $t6, $v0, 0xFFFD           ## $t6 = 00000000
/* 0052C 80A0BBEC A20E01A4 */  sb      $t6, 0x01A4($s0)           ## 000001A4
/* 00530 80A0BBF0 53000004 */  beql    $t8, $zero, .L80A0BC04     
/* 00534 80A0BBF4 921901A4 */  lbu     $t9, 0x01A4($s0)           ## 000001A4
/* 00538 80A0BBF8 10000018 */  beq     $zero, $zero, .L80A0BC5C   
/* 0053C 80A0BBFC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00540 80A0BC00 921901A4 */  lbu     $t9, 0x01A4($s0)           ## 000001A4
.L80A0BC04:
/* 00544 80A0BC04 2409001E */  addiu   $t1, $zero, 0x001E         ## $t1 = 0000001E
/* 00548 80A0BC08 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0054C 80A0BC0C 33280004 */  andi    $t0, $t9, 0x0004           ## $t0 = 00000000
/* 00550 80A0BC10 11000003 */  beq     $t0, $zero, .L80A0BC20     
/* 00554 80A0BC14 2405083E */  addiu   $a1, $zero, 0x083E         ## $a1 = 0000083E
/* 00558 80A0BC18 10000010 */  beq     $zero, $zero, .L80A0BC5C   
/* 0055C 80A0BC1C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A0BC20:
/* 00560 80A0BC20 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00564 80A0BC24 A60904C4 */  sh      $t1, 0x04C4($s0)           ## 000004C4
/* 00568 80A0BC28 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 0056C 80A0BC2C 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 00570 80A0BC30 C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 00574 80A0BC34 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00578 80A0BC38 44815000 */  mtc1    $at, $f10                  ## $f10 = 6.00
/* 0057C 80A0BC3C 46062200 */  add.s   $f8, $f4, $f6              
/* 00580 80A0BC40 8607008A */  lh      $a3, 0x008A($s0)           ## 0000008A
/* 00584 80A0BC44 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00588 80A0BC48 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0058C 80A0BC4C 44064000 */  mfc1    $a2, $f8                   
/* 00590 80A0BC50 0C00BDC7 */  jal     func_8002F71C              
/* 00594 80A0BC54 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 00598 80A0BC58 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A0BC5C:
/* 0059C 80A0BC5C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 005A0 80A0BC60 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 005A4 80A0BC64 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 005A8 80A0BC68 03E00008 */  jr      $ra                        
/* 005AC 80A0BC6C 00000000 */  nop


