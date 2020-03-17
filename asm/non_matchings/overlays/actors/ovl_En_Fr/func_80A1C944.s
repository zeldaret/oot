glabel func_80A1C944
/* 01FA4 80A1C944 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01FA8 80A1C948 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01FAC 80A1C94C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01FB0 80A1C950 8C8203A4 */  lw      $v0, 0x03A4($a0)           ## 000003A4
/* 01FB4 80A1C954 3C0580A2 */  lui     $a1, %hi(D_80A1D004)       ## $a1 = 80A20000
/* 01FB8 80A1C958 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01FBC 80A1C95C 10400003 */  beq     $v0, $zero, .L80A1C96C     
/* 01FC0 80A1C960 24A5D004 */  addiu   $a1, $a1, %lo(D_80A1D004)  ## $a1 = 80A1D004
/* 01FC4 80A1C964 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 01FC8 80A1C968 A44E0110 */  sh      $t6, 0x0110($v0)           ## 00000110
.L80A1C96C:
/* 01FCC 80A1C96C 3C0280A2 */  lui     $v0, %hi(D_80A1CFF0)       ## $v0 = 80A20000
/* 01FD0 80A1C970 2442CFF0 */  addiu   $v0, $v0, %lo(D_80A1CFF0)  ## $v0 = 80A1CFF0
/* 01FD4 80A1C974 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 01FD8 80A1C978 8C430004 */  lw      $v1, 0x0004($v0)           ## 80A1CFF4
.L80A1C97C:
/* 01FDC 80A1C97C 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 80A1CFF4
/* 01FE0 80A1C980 0045082B */  sltu    $at, $v0, $a1              
/* 01FE4 80A1C984 54600010 */  bnel    $v1, $zero, .L80A1C9C8     
/* 01FE8 80A1C988 906F037C */  lbu     $t7, 0x037C($v1)           ## 0000037C
/* 01FEC 80A1C98C 3C0480A2 */  lui     $a0, %hi(D_80A1D1C0)       ## $a0 = 80A20000
/* 01FF0 80A1C990 0C00084C */  jal     osSyncPrintf
              
/* 01FF4 80A1C994 2484D1C0 */  addiu   $a0, $a0, %lo(D_80A1D1C0)  ## $a0 = 80A1D1C0
/* 01FF8 80A1C998 3C0480A2 */  lui     $a0, %hi(D_80A1D1CC)       ## $a0 = 80A20000
/* 01FFC 80A1C99C 3C0580A2 */  lui     $a1, %hi(D_80A1D1E8)       ## $a1 = 80A20000
/* 02000 80A1C9A0 24A5D1E8 */  addiu   $a1, $a1, %lo(D_80A1D1E8)  ## $a1 = 80A1D1E8
/* 02004 80A1C9A4 2484D1CC */  addiu   $a0, $a0, %lo(D_80A1D1CC)  ## $a0 = 80A1D1CC
/* 02008 80A1C9A8 0C00084C */  jal     osSyncPrintf
              
/* 0200C 80A1C9AC 24060644 */  addiu   $a2, $zero, 0x0644         ## $a2 = 00000644
/* 02010 80A1C9B0 3C0480A2 */  lui     $a0, %hi(D_80A1D1F8)       ## $a0 = 80A20000
/* 02014 80A1C9B4 0C00084C */  jal     osSyncPrintf
              
/* 02018 80A1C9B8 2484D1F8 */  addiu   $a0, $a0, %lo(D_80A1D1F8)  ## $a0 = 80A1D1F8
/* 0201C 80A1C9BC 10000038 */  beq     $zero, $zero, .L80A1CAA0   
/* 02020 80A1C9C0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02024 80A1C9C4 906F037C */  lbu     $t7, 0x037C($v1)           ## 0000037C
.L80A1C9C8:
/* 02028 80A1C9C8 548F0035 */  bnel    $a0, $t7, .L80A1CAA0       
/* 0202C 80A1C9CC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02030 80A1C9D0 5420FFEA */  bnel    $at, $zero, .L80A1C97C     
/* 02034 80A1C9D4 8C430004 */  lw      $v1, 0x0004($v0)           ## 00000004
/* 02038 80A1C9D8 3C0280A2 */  lui     $v0, %hi(D_80A1CFF0)       ## $v0 = 80A20000
/* 0203C 80A1C9DC 3C0480A2 */  lui     $a0, %hi(D_80A1D004)       ## $a0 = 80A20000
/* 02040 80A1C9E0 2484D004 */  addiu   $a0, $a0, %lo(D_80A1D004)  ## $a0 = 80A1D004
/* 02044 80A1C9E4 2442CFF0 */  addiu   $v0, $v0, %lo(D_80A1CFF0)  ## $v0 = 80A1CFF0
.L80A1C9E8:
/* 02048 80A1C9E8 8C430004 */  lw      $v1, 0x0004($v0)           ## 80A1CFF4
/* 0204C 80A1C9EC 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 80A1CFF4
/* 02050 80A1C9F0 1460000F */  bne     $v1, $zero, .L80A1CA30     
/* 02054 80A1C9F4 00000000 */  nop
/* 02058 80A1C9F8 3C0480A2 */  lui     $a0, %hi(D_80A1D1FC)       ## $a0 = 80A20000
/* 0205C 80A1C9FC 0C00084C */  jal     osSyncPrintf
              
/* 02060 80A1CA00 2484D1FC */  addiu   $a0, $a0, %lo(D_80A1D1FC)  ## $a0 = 80A1D1FC
/* 02064 80A1CA04 3C0480A2 */  lui     $a0, %hi(D_80A1D208)       ## $a0 = 80A20000
/* 02068 80A1CA08 3C0580A2 */  lui     $a1, %hi(D_80A1D224)       ## $a1 = 80A20000
/* 0206C 80A1CA0C 24A5D224 */  addiu   $a1, $a1, %lo(D_80A1D224)  ## $a1 = 80A1D224
/* 02070 80A1CA10 2484D208 */  addiu   $a0, $a0, %lo(D_80A1D208)  ## $a0 = 80A1D208
/* 02074 80A1CA14 0C00084C */  jal     osSyncPrintf
              
/* 02078 80A1CA18 24060652 */  addiu   $a2, $zero, 0x0652         ## $a2 = 00000652
/* 0207C 80A1CA1C 3C0480A2 */  lui     $a0, %hi(D_80A1D234)       ## $a0 = 80A20000
/* 02080 80A1CA20 0C00084C */  jal     osSyncPrintf
              
/* 02084 80A1CA24 2484D234 */  addiu   $a0, $a0, %lo(D_80A1D234)  ## $a0 = 80A1D234
/* 02088 80A1CA28 1000001D */  beq     $zero, $zero, .L80A1CAA0   
/* 0208C 80A1CA2C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A1CA30:
/* 02090 80A1CA30 1444FFED */  bne     $v0, $a0, .L80A1C9E8       
/* 02094 80A1CA34 A060037C */  sb      $zero, 0x037C($v1)         ## 0000037C
/* 02098 80A1CA38 8FB90024 */  lw      $t9, 0x0024($sp)           
/* 0209C 80A1CA3C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 020A0 80A1CA40 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 020A4 80A1CA44 00390821 */  addu    $at, $at, $t9              
/* 020A8 80A1CA48 A43804C6 */  sh      $t8, 0x04C6($at)           ## 000104C6
/* 020AC 80A1CA4C AFA60020 */  sw      $a2, 0x0020($sp)           
/* 020B0 80A1CA50 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 020B4 80A1CA54 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 020B8 80A1CA58 240528E3 */  addiu   $a1, $zero, 0x28E3         ## $a1 = 000028E3
/* 020BC 80A1CA5C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 020C0 80A1CA60 3C0980A2 */  lui     $t1, %hi(func_80A1CAAC)    ## $t1 = 80A20000
/* 020C4 80A1CA64 3C0880A2 */  lui     $t0, %hi(func_80A1BCB4)    ## $t0 = 80A20000
/* 020C8 80A1CA68 8C860388 */  lw      $a2, 0x0388($a0)           ## 00000388
/* 020CC 80A1CA6C 2529CAAC */  addiu   $t1, $t1, %lo(func_80A1CAAC) ## $t1 = 80A1CAAC
/* 020D0 80A1CA70 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 020D4 80A1CA74 14C00004 */  bne     $a2, $zero, .L80A1CA88     
/* 020D8 80A1CA78 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 020DC 80A1CA7C 2508BCB4 */  addiu   $t0, $t0, %lo(func_80A1BCB4) ## $t0 = 80A1BCB4
/* 020E0 80A1CA80 10000006 */  beq     $zero, $zero, .L80A1CA9C   
/* 020E4 80A1CA84 AC880354 */  sw      $t0, 0x0354($a0)           ## 00000354
.L80A1CA88:
/* 020E8 80A1CA88 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 020EC 80A1CA8C AC890354 */  sw      $t1, 0x0354($a0)           ## 00000354
/* 020F0 80A1CA90 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 020F4 80A1CA94 0C00BD0D */  jal     func_8002F434              
/* 020F8 80A1CA98 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80A1CA9C:
/* 020FC 80A1CA9C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A1CAA0:
/* 02100 80A1CAA0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02104 80A1CAA4 03E00008 */  jr      $ra                        
/* 02108 80A1CAA8 00000000 */  nop


