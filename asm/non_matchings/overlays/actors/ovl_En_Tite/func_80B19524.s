glabel func_80B19524
/* 00AA4 80B19524 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AA8 80B19528 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00AAC 80B1952C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00AB0 80B19530 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00AB4 80B19534 24A50A14 */  addiu   $a1, $a1, 0x0A14           ## $a1 = 06000A14
/* 00AB8 80B19538 AFA60018 */  sw      $a2, 0x0018($sp)
/* 00ABC 80B1953C 0C0294BE */  jal     Animation_PlayLoop
/* 00AC0 80B19540 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00AC4 80B19544 8FA60018 */  lw      $a2, 0x0018($sp)
/* 00AC8 80B19548 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 00ACC 80B1954C 3C0580B2 */  lui     $a1, %hi(func_80B195C0)    ## $a1 = 80B20000
/* 00AD0 80B19550 94C20088 */  lhu     $v0, 0x0088($a2)           ## 00000088
/* 00AD4 80B19554 A0CE02BC */  sb      $t6, 0x02BC($a2)           ## 000002BC
/* 00AD8 80B19558 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00ADC 80B1955C 304F0003 */  andi    $t7, $v0, 0x0003           ## $t7 = 00000000
/* 00AE0 80B19560 55E00009 */  bnel    $t7, $zero, .L80B19588
/* 00AE4 80B19564 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00AE8 80B19568 84D8001C */  lh      $t8, 0x001C($a2)           ## 0000001C
/* 00AEC 80B1956C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00AF0 80B19570 30590020 */  andi    $t9, $v0, 0x0020           ## $t9 = 00000000
/* 00AF4 80B19574 1701000C */  bne     $t8, $at, .L80B195A8
/* 00AF8 80B19578 00000000 */  nop
/* 00AFC 80B1957C 1320000A */  beq     $t9, $zero, .L80B195A8
/* 00B00 80B19580 00000000 */  nop
/* 00B04 80B19584 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80B19588:
/* 00B08 80B19588 C4C40060 */  lwc1    $f4, 0x0060($a2)           ## 00000060
/* 00B0C 80B1958C 4600203E */  c.le.s  $f4, $f0
/* 00B10 80B19590 00000000 */  nop
/* 00B14 80B19594 45000004 */  bc1f    .L80B195A8
/* 00B18 80B19598 00000000 */  nop
/* 00B1C 80B1959C E4C0006C */  swc1    $f0, 0x006C($a2)           ## 0000006C
/* 00B20 80B195A0 E4C00060 */  swc1    $f0, 0x0060($a2)           ## 00000060
/* 00B24 80B195A4 E4C00068 */  swc1    $f0, 0x0068($a2)           ## 00000068
.L80B195A8:
/* 00B28 80B195A8 0C2C62A0 */  jal     func_80B18A80
/* 00B2C 80B195AC 24A595C0 */  addiu   $a1, $a1, %lo(func_80B195C0) ## $a1 = 80B195C0
/* 00B30 80B195B0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00B34 80B195B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B38 80B195B8 03E00008 */  jr      $ra
/* 00B3C 80B195BC 00000000 */  nop
