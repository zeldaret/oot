glabel func_80AC6D30
/* 04090 80AC6D30 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 04094 80AC6D34 AFA40030 */  sw      $a0, 0x0030($sp)
/* 04098 80AC6D38 AFA50034 */  sw      $a1, 0x0034($sp)
/* 0409C 80AC6D3C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 040A0 80AC6D40 8FA50030 */  lw      $a1, 0x0030($sp)
/* 040A4 80AC6D44 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 040A8 80AC6D48 3C060601 */  lui     $a2, %hi(D_0600BFA8)                ## $a2 = 06010000
/* 040AC 80AC6D4C 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 040B0 80AC6D50 AFA50028 */  sw      $a1, 0x0028($sp)
/* 040B4 80AC6D54 24C6BFA8 */  addiu   $a2, $a2, %lo(D_0600BFA8)           ## $a2 = 0600BFA8
/* 040B8 80AC6D58 AFA00010 */  sw      $zero, 0x0010($sp)
/* 040BC 80AC6D5C AFA00014 */  sw      $zero, 0x0014($sp)
/* 040C0 80AC6D60 AFA00018 */  sw      $zero, 0x0018($sp)
/* 040C4 80AC6D64 0C0291BE */  jal     SkelAnime_InitFlex
/* 040C8 80AC6D68 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 040CC 80AC6D6C 8FAF0030 */  lw      $t7, 0x0030($sp)
/* 040D0 80AC6D70 8FAE0034 */  lw      $t6, 0x0034($sp)
/* 040D4 80AC6D74 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 040D8 80AC6D78 81F801EA */  lb      $t8, 0x01EA($t7)           ## 000001EA
/* 040DC 80AC6D7C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 040E0 80AC6D80 3C040600 */  lui     $a0, %hi(D_0600078C)                ## $a0 = 06000000
/* 040E4 80AC6D84 0018C900 */  sll     $t9, $t8,  4
/* 040E8 80AC6D88 0338C821 */  addu    $t9, $t9, $t8
/* 040EC 80AC6D8C 0019C880 */  sll     $t9, $t9,  2
/* 040F0 80AC6D90 01D94021 */  addu    $t0, $t6, $t9
/* 040F4 80AC6D94 01284821 */  addu    $t1, $t1, $t0
/* 040F8 80AC6D98 8D2917B4 */  lw      $t1, 0x17B4($t1)           ## 000117B4
/* 040FC 80AC6D9C 2484078C */  addiu   $a0, $a0, %lo(D_0600078C)           ## $a0 = 0600078C
/* 04100 80AC6DA0 01215021 */  addu    $t2, $t1, $at
/* 04104 80AC6DA4 3C018016 */  lui     $at, %hi(gSegments+0x18)
/* 04108 80AC6DA8 0C028800 */  jal     Animation_GetLastFrame

/* 0410C 80AC6DAC AC2A6FC0 */  sw      $t2, %lo(gSegments+0x18)($at)
/* 04110 80AC6DB0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 04114 80AC6DB4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 04118 80AC6DB8 3C050600 */  lui     $a1, %hi(D_0600078C)                ## $a1 = 06000000
/* 0411C 80AC6DBC 468021A0 */  cvt.s.w $f6, $f4
/* 04120 80AC6DC0 44070000 */  mfc1    $a3, $f0
/* 04124 80AC6DC4 24A5078C */  addiu   $a1, $a1, %lo(D_0600078C)           ## $a1 = 0600078C
/* 04128 80AC6DC8 8FA40028 */  lw      $a0, 0x0028($sp)
/* 0412C 80AC6DCC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04130 80AC6DD0 AFA00014 */  sw      $zero, 0x0014($sp)
/* 04134 80AC6DD4 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 04138 80AC6DD8 0C029468 */  jal     Animation_Change

/* 0413C 80AC6DDC E7A00018 */  swc1    $f0, 0x0018($sp)
/* 04140 80AC6DE0 8FA20030 */  lw      $v0, 0x0030($sp)
/* 04144 80AC6DE4 3C0B80AD */  lui     $t3, %hi(func_80AC83DC)    ## $t3 = 80AD0000
/* 04148 80AC6DE8 3C0C80AC */  lui     $t4, %hi(func_80AC7380)    ## $t4 = 80AC0000
/* 0414C 80AC6DEC 256B83DC */  addiu   $t3, $t3, %lo(func_80AC83DC) ## $t3 = 80AC83DC
/* 04150 80AC6DF0 258C7380 */  addiu   $t4, $t4, %lo(func_80AC7380) ## $t4 = 80AC7380
/* 04154 80AC6DF4 AC4B0134 */  sw      $t3, 0x0134($v0)           ## 00000134
/* 04158 80AC6DF8 AC4C0194 */  sw      $t4, 0x0194($v0)           ## 00000194
/* 0415C 80AC6DFC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 04160 80AC6E00 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 04164 80AC6E04 03E00008 */  jr      $ra
/* 04168 80AC6E08 00000000 */  nop
