glabel func_80A1B778
/* 00DD8 80A1B778 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00DDC 80A1B77C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00DE0 80A1B780 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00DE4 80A1B784 AFA5003C */  sw      $a1, 0x003C($sp)
/* 00DE8 80A1B788 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00DEC 80A1B78C 3C0180A2 */  lui     $at, %hi(D_80A1D070)       ## $at = 80A20000
/* 00DF0 80A1B790 C4860390 */  lwc1    $f6, 0x0390($a0)           ## 00000390
/* 00DF4 80A1B794 000E7880 */  sll     $t7, $t6,  2
/* 00DF8 80A1B798 01EE7823 */  subu    $t7, $t7, $t6
/* 00DFC 80A1B79C 000F7880 */  sll     $t7, $t7,  2
/* 00E00 80A1B7A0 002F0821 */  addu    $at, $at, $t7
/* 00E04 80A1B7A4 C424D070 */  lwc1    $f4, %lo(D_80A1D070)($at)
/* 00E08 80A1B7A8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E0C 80A1B7AC 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 00E10 80A1B7B0 46062200 */  add.s   $f8, $f4, $f6
/* 00E14 80A1B7B4 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 00E18 80A1B7B8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00E1C 80A1B7BC 24072710 */  addiu   $a3, $zero, 0x2710         ## $a3 = 00002710
/* 00E20 80A1B7C0 E7A80034 */  swc1    $f8, 0x0034($sp)
/* 00E24 80A1B7C4 86050032 */  lh      $a1, 0x0032($s0)           ## 00000032
/* 00E28 80A1B7C8 0C01E1A7 */  jal     Math_SmoothStepToS

/* 00E2C 80A1B7CC AFB80010 */  sw      $t8, 0x0010($sp)
/* 00E30 80A1B7D0 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00E34 80A1B7D4 44811000 */  mtc1    $at, $f2                   ## $f2 = 6.00
/* 00E38 80A1B7D8 C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 00E3C 80A1B7DC 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00E40 80A1B7E0 46001032 */  c.eq.s  $f2, $f0
/* 00E44 80A1B7E4 00000000 */  nop
/* 00E48 80A1B7E8 45020005 */  bc1fl   .L80A1B800
/* 00E4C 80A1B7EC 44815000 */  mtc1    $at, $f10                  ## $f10 = 3.00
/* 00E50 80A1B7F0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00E54 80A1B7F4 1000000D */  beq     $zero, $zero, .L80A1B82C
/* 00E58 80A1B7F8 E6000168 */  swc1    $f0, 0x0168($s0)           ## 00000168
/* 00E5C 80A1B7FC 44815000 */  mtc1    $at, $f10                  ## $f10 = 3.00
.L80A1B800:
/* 00E60 80A1B800 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00E64 80A1B804 46005032 */  c.eq.s  $f10, $f0
/* 00E68 80A1B808 00000000 */  nop
/* 00E6C 80A1B80C 45020008 */  bc1fl   .L80A1B830
/* 00E70 80A1B810 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00E74 80A1B814 44818000 */  mtc1    $at, $f16                  ## $f16 = -10.00
/* 00E78 80A1B818 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00E7C 80A1B81C 44819000 */  mtc1    $at, $f18                  ## $f18 = 25.00
/* 00E80 80A1B820 E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
/* 00E84 80A1B824 E610006C */  swc1    $f16, 0x006C($s0)          ## 0000006C
/* 00E88 80A1B828 E6120060 */  swc1    $f18, 0x0060($s0)          ## 00000060
.L80A1B82C:
/* 00E8C 80A1B82C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80A1B830:
/* 00E90 80A1B830 C6040060 */  lwc1    $f4, 0x0060($s0)           ## 00000060
/* 00E94 80A1B834 C7A80034 */  lwc1    $f8, 0x0034($sp)
/* 00E98 80A1B838 4600203C */  c.lt.s  $f4, $f0
/* 00E9C 80A1B83C 00000000 */  nop
/* 00EA0 80A1B840 4502001F */  bc1fl   .L80A1B8C0
/* 00EA4 80A1B844 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00EA8 80A1B848 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00EAC 80A1B84C 3C040600 */  lui     $a0, %hi(D_06001534)                ## $a0 = 06000000
/* 00EB0 80A1B850 4608303C */  c.lt.s  $f6, $f8
/* 00EB4 80A1B854 00000000 */  nop
/* 00EB8 80A1B858 45020019 */  bc1fl   .L80A1B8C0
/* 00EBC 80A1B85C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00EC0 80A1B860 0C028800 */  jal     Animation_GetLastFrame

/* 00EC4 80A1B864 24841534 */  addiu   $a0, $a0, %lo(D_06001534)           ## $a0 = 06001534
/* 00EC8 80A1B868 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 00ECC 80A1B86C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00ED0 80A1B870 3C050600 */  lui     $a1, %hi(D_06001534)                ## $a1 = 06000000
/* 00ED4 80A1B874 46805420 */  cvt.s.w $f16, $f10
/* 00ED8 80A1B878 44070000 */  mfc1    $a3, $f0
/* 00EDC 80A1B87C 24A51534 */  addiu   $a1, $a1, %lo(D_06001534)           ## $a1 = 06001534
/* 00EE0 80A1B880 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00EE4 80A1B884 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00EE8 80A1B888 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00EEC 80A1B88C E7B00010 */  swc1    $f16, 0x0010($sp)
/* 00EF0 80A1B890 0C029468 */  jal     Animation_Change

/* 00EF4 80A1B894 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00EF8 80A1B898 3C1980A2 */  lui     $t9, %hi(func_80A1B22C)    ## $t9 = 80A20000
/* 00EFC 80A1B89C 2739B22C */  addiu   $t9, $t9, %lo(func_80A1B22C) ## $t9 = 80A1B22C
/* 00F00 80A1B8A0 AE190354 */  sw      $t9, 0x0354($s0)           ## 00000354
/* 00F04 80A1B8A4 0C286B03 */  jal     func_80A1AC0C
/* 00F08 80A1B8A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F0C 80A1B8AC 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00F10 80A1B8B0 A208037C */  sb      $t0, 0x037C($s0)           ## 0000037C
/* 00F14 80A1B8B4 0C286A68 */  jal     func_80A1A9A0
/* 00F18 80A1B8B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F1C 80A1B8BC 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A1B8C0:
/* 00F20 80A1B8C0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00F24 80A1B8C4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00F28 80A1B8C8 03E00008 */  jr      $ra
/* 00F2C 80A1B8CC 00000000 */  nop
