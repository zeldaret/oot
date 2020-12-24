glabel func_80B45EF0
/* 01EA0 80B45EF0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01EA4 80B45EF4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01EA8 80B45EF8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01EAC 80B45EFC AFA5003C */  sw      $a1, 0x003C($sp)
/* 01EB0 80B45F00 8C8E03F0 */  lw      $t6, 0x03F0($a0)           ## 000003F0
/* 01EB4 80B45F04 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01EB8 80B45F08 51C0000E */  beql    $t6, $zero, .L80B45F44
/* 01EBC 80B45F0C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01EC0 80B45F10 C4800080 */  lwc1    $f0, 0x0080($a0)           ## 000001CC
/* 01EC4 80B45F14 C4840028 */  lwc1    $f4, 0x0028($a0)           ## 00000174
/* 01EC8 80B45F18 4600203E */  c.le.s  $f4, $f0
/* 01ECC 80B45F1C 00000000 */  nop
/* 01ED0 80B45F20 45020008 */  bc1fl   .L80B45F44
/* 01ED4 80B45F24 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01ED8 80B45F28 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01EDC 80B45F2C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01EE0 80B45F30 E4800028 */  swc1    $f0, 0x0028($a0)           ## 00000174
/* 01EE4 80B45F34 AC8003E4 */  sw      $zero, 0x03E4($a0)         ## 00000530
/* 01EE8 80B45F38 E4860060 */  swc1    $f6, 0x0060($a0)           ## 000001AC
/* 01EEC 80B45F3C E4880068 */  swc1    $f8, 0x0068($a0)           ## 000001B4
/* 01EF0 80B45F40 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80B45F44:
/* 01EF4 80B45F44 0C02927F */  jal     SkelAnime_Update

/* 01EF8 80B45F48 AFA40034 */  sw      $a0, 0x0034($sp)
/* 01EFC 80B45F4C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01F00 80B45F50 1040001C */  beq     $v0, $zero, .L80B45FC4
/* 01F04 80B45F54 8FA40034 */  lw      $a0, 0x0034($sp)
/* 01F08 80B45F58 8E0F03F0 */  lw      $t7, 0x03F0($s0)           ## 000003F0
/* 01F0C 80B45F5C 3C050601 */  lui     $a1, %hi(D_06008C6C)                ## $a1 = 06010000
/* 01F10 80B45F60 24A58C6C */  addiu   $a1, $a1, %lo(D_06008C6C)           ## $a1 = 06008C6C
/* 01F14 80B45F64 15E00012 */  bne     $t7, $zero, .L80B45FB0
/* 01F18 80B45F68 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 01F1C 80B45F6C 3C014188 */  lui     $at, 0x4188                ## $at = 41880000
/* 01F20 80B45F70 44815000 */  mtc1    $at, $f10                  ## $f10 = 17.00
/* 01F24 80B45F74 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 01F28 80B45F78 44818000 */  mtc1    $at, $f16                  ## $f16 = -3.00
/* 01F2C 80B45F7C 44070000 */  mfc1    $a3, $f0
/* 01F30 80B45F80 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 01F34 80B45F84 AFB80014 */  sw      $t8, 0x0014($sp)
/* 01F38 80B45F88 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 01F3C 80B45F8C 0C029468 */  jal     Animation_Change

/* 01F40 80B45F90 E7B00018 */  swc1    $f16, 0x0018($sp)
/* 01F44 80B45F94 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 01F48 80B45F98 AE1903F0 */  sw      $t9, 0x03F0($s0)           ## 000003F0
/* 01F4C 80B45F9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F50 80B45FA0 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01F54 80B45FA4 2405382F */  addiu   $a1, $zero, 0x382F         ## $a1 = 0000382F
/* 01F58 80B45FA8 10000007 */  beq     $zero, $zero, .L80B45FC8
/* 01F5C 80B45FAC 8FA8003C */  lw      $t0, 0x003C($sp)
.L80B45FB0:
/* 01F60 80B45FB0 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 01F64 80B45FB4 AE0003E4 */  sw      $zero, 0x03E4($s0)         ## 000003E4
/* 01F68 80B45FB8 8FA5003C */  lw      $a1, 0x003C($sp)
/* 01F6C 80B45FBC 0C2D15AD */  jal     func_80B456B4
/* 01F70 80B45FC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B45FC4:
/* 01F74 80B45FC4 8FA8003C */  lw      $t0, 0x003C($sp)
.L80B45FC8:
/* 01F78 80B45FC8 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 01F7C 80B45FCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F80 80B45FD0 01284821 */  addu    $t1, $t1, $t0
/* 01F84 80B45FD4 8D291DE4 */  lw      $t1, 0x1DE4($t1)           ## 00011DE4
/* 01F88 80B45FD8 312A005F */  andi    $t2, $t1, 0x005F           ## $t2 = 00000000
/* 01F8C 80B45FDC 55400004 */  bnel    $t2, $zero, .L80B45FF0
/* 01F90 80B45FE0 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 01F94 80B45FE4 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01F98 80B45FE8 24053829 */  addiu   $a1, $zero, 0x3829         ## $a1 = 00003829
/* 01F9C 80B45FEC 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
.L80B45FF0:
/* 01FA0 80B45FF0 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 01FA4 80B45FF4 55610011 */  bnel    $t3, $at, .L80B4603C
/* 01FA8 80B45FF8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01FAC 80B45FFC 960C0088 */  lhu     $t4, 0x0088($s0)           ## 00000088
/* 01FB0 80B46000 8FA4003C */  lw      $a0, 0x003C($sp)
/* 01FB4 80B46004 318D0003 */  andi    $t5, $t4, 0x0003           ## $t5 = 00000000
/* 01FB8 80B46008 51A0000C */  beql    $t5, $zero, .L80B4603C
/* 01FBC 80B4600C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01FC0 80B46010 0C2D133C */  jal     func_80B44CF0
/* 01FC4 80B46014 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01FC8 80B46018 10400005 */  beq     $v0, $zero, .L80B46030
/* 01FCC 80B4601C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FD0 80B46020 0C2D1A89 */  jal     func_80B46A24
/* 01FD4 80B46024 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FD8 80B46028 10000004 */  beq     $zero, $zero, .L80B4603C
/* 01FDC 80B4602C 8FBF002C */  lw      $ra, 0x002C($sp)
.L80B46030:
/* 01FE0 80B46030 0C2D20F9 */  jal     func_80B483E4
/* 01FE4 80B46034 8FA5003C */  lw      $a1, 0x003C($sp)
/* 01FE8 80B46038 8FBF002C */  lw      $ra, 0x002C($sp)
.L80B4603C:
/* 01FEC 80B4603C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01FF0 80B46040 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01FF4 80B46044 03E00008 */  jr      $ra
/* 01FF8 80B46048 00000000 */  nop
