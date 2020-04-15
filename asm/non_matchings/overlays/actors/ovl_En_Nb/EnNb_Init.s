.late_rodata
glabel jtbl_80AB5244
.word L80AB3F64
.word L80AB3F78
.word L80AB3F8C
.word L80AB3FA0
.word L80AB3FB4
.word 0x00000000, 0x00000000

.text
glabel EnNb_Init
/* 0313C 80AB3ECC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 03140 80AB3ED0 AFB10028 */  sw      $s1, 0x0028($sp)
/* 03144 80AB3ED4 AFB00024 */  sw      $s0, 0x0024($sp)
/* 03148 80AB3ED8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0314C 80AB3EDC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 03150 80AB3EE0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 03154 80AB3EE4 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 03158 80AB3EE8 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 0315C 80AB3EEC 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 03160 80AB3EF0 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 03164 80AB3EF4 0C00AC78 */  jal     ActorShape_Init

/* 03168 80AB3EF8 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 0316C 80AB3EFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03170 80AB3F00 0C2AC3C1 */  jal     func_80AB0F04
/* 03174 80AB3F04 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 03178 80AB3F08 3C060602 */  lui     $a2, 0x0602                ## $a2 = 06020000
/* 0317C 80AB3F0C 260E0190 */  addiu   $t6, $s0, 0x0190           ## $t6 = 00000190
/* 03180 80AB3F10 260F0202 */  addiu   $t7, $s0, 0x0202           ## $t7 = 00000202
/* 03184 80AB3F14 24180013 */  addiu   $t8, $zero, 0x0013         ## $t8 = 00000013
/* 03188 80AB3F18 AFB80018 */  sw      $t8, 0x0018($sp)
/* 0318C 80AB3F1C AFAF0014 */  sw      $t7, 0x0014($sp)
/* 03190 80AB3F20 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 03194 80AB3F24 24C681C8 */  addiu   $a2, $a2, 0x81C8           ## $a2 = 060181C8
/* 03198 80AB3F28 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0319C 80AB3F2C 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 031A0 80AB3F30 0C0291BE */  jal     SkelAnime_InitSV
/* 031A4 80AB3F34 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 031A8 80AB3F38 0C2AC368 */  jal     func_80AB0DA0
/* 031AC 80AB3F3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031B0 80AB3F40 2459FFFE */  addiu   $t9, $v0, 0xFFFE           ## $t9 = FFFFFFFE
/* 031B4 80AB3F44 2F210005 */  sltiu   $at, $t9, 0x0005
/* 031B8 80AB3F48 1020001F */  beq     $at, $zero, .L80AB3FC8
/* 031BC 80AB3F4C 0019C880 */  sll     $t9, $t9,  2
/* 031C0 80AB3F50 3C0180AB */  lui     $at, %hi(jtbl_80AB5244)       ## $at = 80AB0000
/* 031C4 80AB3F54 00390821 */  addu    $at, $at, $t9
/* 031C8 80AB3F58 8C395244 */  lw      $t9, %lo(jtbl_80AB5244)($at)
/* 031CC 80AB3F5C 03200008 */  jr      $t9
/* 031D0 80AB3F60 00000000 */  nop
glabel L80AB3F64
/* 031D4 80AB3F64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031D8 80AB3F68 0C2AC68B */  jal     func_80AB1A2C
/* 031DC 80AB3F6C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 031E0 80AB3F70 10000019 */  beq     $zero, $zero, .L80AB3FD8
/* 031E4 80AB3F74 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80AB3F78
/* 031E8 80AB3F78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031EC 80AB3F7C 0C2AC7E9 */  jal     func_80AB1FA4
/* 031F0 80AB3F80 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 031F4 80AB3F84 10000014 */  beq     $zero, $zero, .L80AB3FD8
/* 031F8 80AB3F88 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80AB3F8C
/* 031FC 80AB3F8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03200 80AB3F90 0C2AC921 */  jal     func_80AB2484
/* 03204 80AB3F94 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 03208 80AB3F98 1000000F */  beq     $zero, $zero, .L80AB3FD8
/* 0320C 80AB3F9C 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80AB3FA0
/* 03210 80AB3FA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03214 80AB3FA4 0C2ACC54 */  jal     func_80AB3150
/* 03218 80AB3FA8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0321C 80AB3FAC 1000000A */  beq     $zero, $zero, .L80AB3FD8
/* 03220 80AB3FB0 8FBF002C */  lw      $ra, 0x002C($sp)
glabel L80AB3FB4
/* 03224 80AB3FB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03228 80AB3FB8 0C2ACD2A */  jal     func_80AB34A8
/* 0322C 80AB3FBC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 03230 80AB3FC0 10000005 */  beq     $zero, $zero, .L80AB3FD8
/* 03234 80AB3FC4 8FBF002C */  lw      $ra, 0x002C($sp)
.L80AB3FC8:
/* 03238 80AB3FC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0323C 80AB3FCC 0C2AC54C */  jal     func_80AB1530
/* 03240 80AB3FD0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 03244 80AB3FD4 8FBF002C */  lw      $ra, 0x002C($sp)
.L80AB3FD8:
/* 03248 80AB3FD8 8FB00024 */  lw      $s0, 0x0024($sp)
/* 0324C 80AB3FDC 8FB10028 */  lw      $s1, 0x0028($sp)
/* 03250 80AB3FE0 03E00008 */  jr      $ra
/* 03254 80AB3FE4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
