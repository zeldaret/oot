glabel func_80B46F2C
/* 02EDC 80B46F2C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 02EE0 80B46F30 AFBF002C */  sw      $ra, 0x002C($sp)
/* 02EE4 80B46F34 AFB00028 */  sw      $s0, 0x0028($sp)
/* 02EE8 80B46F38 AFA5003C */  sw      $a1, 0x003C($sp)
/* 02EEC 80B46F3C 8C8E03F0 */  lw      $t6, 0x03F0($a0)           ## 000003F0
/* 02EF0 80B46F40 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02EF4 80B46F44 51C0000E */  beql    $t6, $zero, .L80B46F80
/* 02EF8 80B46F48 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02EFC 80B46F4C C4800080 */  lwc1    $f0, 0x0080($a0)           ## 000001CC
/* 02F00 80B46F50 C4840028 */  lwc1    $f4, 0x0028($a0)           ## 00000174
/* 02F04 80B46F54 4600203E */  c.le.s  $f4, $f0
/* 02F08 80B46F58 00000000 */  nop
/* 02F0C 80B46F5C 45020008 */  bc1fl   .L80B46F80
/* 02F10 80B46F60 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02F14 80B46F64 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 02F18 80B46F68 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 02F1C 80B46F6C E4800028 */  swc1    $f0, 0x0028($a0)           ## 00000174
/* 02F20 80B46F70 AC8003E4 */  sw      $zero, 0x03E4($a0)         ## 00000530
/* 02F24 80B46F74 E4860060 */  swc1    $f6, 0x0060($a0)           ## 000001AC
/* 02F28 80B46F78 E4880068 */  swc1    $f8, 0x0068($a0)           ## 000001B4
/* 02F2C 80B46F7C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80B46F80:
/* 02F30 80B46F80 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 02F34 80B46F84 AFA40034 */  sw      $a0, 0x0034($sp)
/* 02F38 80B46F88 10400024 */  beq     $v0, $zero, .L80B4701C
/* 02F3C 80B46F8C 8FA40034 */  lw      $a0, 0x0034($sp)
/* 02F40 80B46F90 8E0F03F0 */  lw      $t7, 0x03F0($s0)           ## 000003F0
/* 02F44 80B46F94 8FA5003C */  lw      $a1, 0x003C($sp)
/* 02F48 80B46F98 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 02F4C 80B46F9C 15E00015 */  bne     $t7, $zero, .L80B46FF4
/* 02F50 80B46FA0 01054021 */  addu    $t0, $t0, $a1
/* 02F54 80B46FA4 3C014188 */  lui     $at, 0x4188                ## $at = 41880000
/* 02F58 80B46FA8 44815000 */  mtc1    $at, $f10                  ## $f10 = 17.00
/* 02F5C 80B46FAC 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 02F60 80B46FB0 44818000 */  mtc1    $at, $f16                  ## $f16 = -3.00
/* 02F64 80B46FB4 3C050601 */  lui     $a1, %hi(D_06008C6C)                ## $a1 = 06010000
/* 02F68 80B46FB8 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 02F6C 80B46FBC AFB80014 */  sw      $t8, 0x0014($sp)
/* 02F70 80B46FC0 24A58C6C */  addiu   $a1, $a1, %lo(D_06008C6C)           ## $a1 = 06008C6C
/* 02F74 80B46FC4 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 02F78 80B46FC8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02F7C 80B46FCC E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 02F80 80B46FD0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 02F84 80B46FD4 E7B00018 */  swc1    $f16, 0x0018($sp)
/* 02F88 80B46FD8 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 02F8C 80B46FDC AE1903F0 */  sw      $t9, 0x03F0($s0)           ## 000003F0
/* 02F90 80B46FE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F94 80B46FE4 0C00BE0A */  jal     Audio_PlayActorSound2

/* 02F98 80B46FE8 2405382F */  addiu   $a1, $zero, 0x382F         ## $a1 = 0000382F
/* 02F9C 80B46FEC 1000000C */  beq     $zero, $zero, .L80B47020
/* 02FA0 80B46FF0 8FAA003C */  lw      $t2, 0x003C($sp)
.L80B46FF4:
/* 02FA4 80B46FF4 8D081DE4 */  lw      $t0, 0x1DE4($t0)           ## 00001DE4
/* 02FA8 80B46FF8 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 02FAC 80B46FFC 11200005 */  beq     $t1, $zero, .L80B47014
/* 02FB0 80B47000 00000000 */  nop
/* 02FB4 80B47004 0C2D20F9 */  jal     func_80B483E4
/* 02FB8 80B47008 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02FBC 80B4700C 10000004 */  beq     $zero, $zero, .L80B47020
/* 02FC0 80B47010 8FAA003C */  lw      $t2, 0x003C($sp)
.L80B47014:
/* 02FC4 80B47014 0C2D14E1 */  jal     func_80B45384
/* 02FC8 80B47018 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B4701C:
/* 02FCC 80B4701C 8FAA003C */  lw      $t2, 0x003C($sp)
.L80B47020:
/* 02FD0 80B47020 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02FD4 80B47024 8D4B009C */  lw      $t3, 0x009C($t2)           ## 0000009C
/* 02FD8 80B47028 316C005F */  andi    $t4, $t3, 0x005F           ## $t4 = 00000000
/* 02FDC 80B4702C 55800004 */  bnel    $t4, $zero, .L80B47040
/* 02FE0 80B47030 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02FE4 80B47034 0C00BE0A */  jal     Audio_PlayActorSound2

/* 02FE8 80B47038 24053829 */  addiu   $a1, $zero, 0x3829         ## $a1 = 00003829
/* 02FEC 80B4703C 8FBF002C */  lw      $ra, 0x002C($sp)
.L80B47040:
/* 02FF0 80B47040 8FB00028 */  lw      $s0, 0x0028($sp)
/* 02FF4 80B47044 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 02FF8 80B47048 03E00008 */  jr      $ra
/* 02FFC 80B4704C 00000000 */  nop
