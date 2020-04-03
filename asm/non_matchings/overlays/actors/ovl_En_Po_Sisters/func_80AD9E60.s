glabel func_80AD9E60
/* 00ED0 80AD9E60 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00ED4 80AD9E64 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00ED8 80AD9E68 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00EDC 80AD9E6C AFBF001C */  sw      $ra, 0x001C($sp)
/* 00EE0 80AD9E70 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00EE4 80AD9E74 24A50D40 */  addiu   $a1, $a1, 0x0D40           ## $a1 = 06000D40
/* 00EE8 80AD9E78 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00EEC 80AD9E7C 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 00EF0 80AD9E80 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 00EF4 80AD9E84 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00EF8 80AD9E88 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00EFC 80AD9E8C 24840D40 */  addiu   $a0, $a0, 0x0D40           ## $a0 = 06000D40
/* 00F00 80AD9E90 8E030118 */  lw      $v1, 0x0118($s0)           ## 00000118
/* 00F04 80AD9E94 000270C0 */  sll     $t6, $v0,  3
/* 00F08 80AD9E98 01C27023 */  subu    $t6, $t6, $v0
/* 00F0C 80AD9E9C 25CF0007 */  addiu   $t7, $t6, 0x0007           ## $t7 = 00000007
/* 00F10 80AD9EA0 1060000B */  beq     $v1, $zero, .L80AD9ED0
/* 00F14 80AD9EA4 A60F019A */  sh      $t7, 0x019A($s0)           ## 0000019A
/* 00F18 80AD9EA8 8C790024 */  lw      $t9, 0x0024($v1)           ## 00000024
/* 00F1C 80AD9EAC 8E080118 */  lw      $t0, 0x0118($s0)           ## 00000118
/* 00F20 80AD9EB0 AE190024 */  sw      $t9, 0x0024($s0)           ## 00000024
/* 00F24 80AD9EB4 8C780028 */  lw      $t8, 0x0028($v1)           ## 00000028
/* 00F28 80AD9EB8 AE180028 */  sw      $t8, 0x0028($s0)           ## 00000028
/* 00F2C 80AD9EBC 8C79002C */  lw      $t9, 0x002C($v1)           ## 0000002C
/* 00F30 80AD9EC0 AE19002C */  sw      $t9, 0x002C($s0)           ## 0000002C
/* 00F34 80AD9EC4 850900B6 */  lh      $t1, 0x00B6($t0)           ## 000000B6
/* 00F38 80AD9EC8 10000006 */  beq     $zero, $zero, .L80AD9EE4
/* 00F3C 80AD9ECC A60900B6 */  sh      $t1, 0x00B6($s0)           ## 000000B6
.L80AD9ED0:
/* 00F40 80AD9ED0 860B019A */  lh      $t3, 0x019A($s0)           ## 0000019A
/* 00F44 80AD9ED4 860A008A */  lh      $t2, 0x008A($s0)           ## 0000008A
/* 00F48 80AD9ED8 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 00F4C 80AD9EDC A60C019A */  sh      $t4, 0x019A($s0)           ## 0000019A
/* 00F50 80AD9EE0 A60A00B6 */  sh      $t2, 0x00B6($s0)           ## 000000B6
.L80AD9EE4:
/* 00F54 80AD9EE4 920D0195 */  lbu     $t5, 0x0195($s0)           ## 00000195
/* 00F58 80AD9EE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F5C 80AD9EEC 15A00003 */  bne     $t5, $zero, .L80AD9EFC
/* 00F60 80AD9EF0 00000000 */  nop
/* 00F64 80AD9EF4 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00F68 80AD9EF8 240538EF */  addiu   $a1, $zero, 0x38EF         ## $a1 = 000038EF
.L80AD9EFC:
/* 00F6C 80AD9EFC 3C0E80AE */  lui     $t6, %hi(func_80ADB51C)    ## $t6 = 80AE0000
/* 00F70 80AD9F00 25CEB51C */  addiu   $t6, $t6, %lo(func_80ADB51C) ## $t6 = 80ADB51C
/* 00F74 80AD9F04 AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
/* 00F78 80AD9F08 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00F7C 80AD9F0C 8FB00018 */  lw      $s0, 0x0018($sp)
/* 00F80 80AD9F10 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00F84 80AD9F14 03E00008 */  jr      $ra
/* 00F88 80AD9F18 00000000 */  nop


