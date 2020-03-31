glabel func_809EBD78
/* 01038 809EBD78 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0103C 809EBD7C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01040 809EBD80 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01044 809EBD84 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01048 809EBD88 AFA50024 */  sw      $a1, 0x0024($sp)
/* 0104C 809EBD8C AFA4001C */  sw      $a0, 0x001C($sp)
/* 01050 809EBD90 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 01054 809EBD94 AFA60020 */  sw      $a2, 0x0020($sp)
/* 01058 809EBD98 8FA4001C */  lw      $a0, 0x001C($sp)
/* 0105C 809EBD9C 14400005 */  bne     $v0, $zero, .L809EBDB4
/* 01060 809EBDA0 8FA60020 */  lw      $a2, 0x0020($sp)
/* 01064 809EBDA4 84CE025C */  lh      $t6, 0x025C($a2)           ## 0000025C
/* 01068 809EBDA8 2401012C */  addiu   $at, $zero, 0x012C         ## $at = 0000012C
/* 0106C 809EBDAC 51C10021 */  beql    $t6, $at, .L809EBE34
/* 01070 809EBDB0 C4CA0164 */  lwc1    $f10, 0x0164($a2)          ## 00000164
.L809EBDB4:
/* 01074 809EBDB4 84C2025C */  lh      $v0, 0x025C($a2)           ## 0000025C
/* 01078 809EBDB8 2401012C */  addiu   $at, $zero, 0x012C         ## $at = 0000012C
/* 0107C 809EBDBC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01080 809EBDC0 14410005 */  bne     $v0, $at, .L809EBDD8
/* 01084 809EBDC4 24A5375C */  addiu   $a1, $a1, 0x375C           ## $a1 = 0600375C
/* 01088 809EBDC8 0C0294BE */  jal     SkelAnime_ChangeAnimationDefaultRepeat
/* 0108C 809EBDCC AFA60020 */  sw      $a2, 0x0020($sp)
/* 01090 809EBDD0 8FA60020 */  lw      $a2, 0x0020($sp)
/* 01094 809EBDD4 84C2025C */  lh      $v0, 0x025C($a2)           ## 0000025C
.L809EBDD8:
/* 01098 809EBDD8 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 0109C 809EBDDC A4CF025C */  sh      $t7, 0x025C($a2)           ## 0000025C
/* 010A0 809EBDE0 84D8025C */  lh      $t8, 0x025C($a2)           ## 0000025C
/* 010A4 809EBDE4 2B010096 */  slti    $at, $t8, 0x0096
/* 010A8 809EBDE8 5020002C */  beql    $at, $zero, .L809EBE9C
/* 010AC 809EBDEC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 010B0 809EBDF0 90C2025A */  lbu     $v0, 0x025A($a2)           ## 0000025A
/* 010B4 809EBDF4 3C01809F */  lui     $at, %hi(D_809EC6E8)       ## $at = 809F0000
/* 010B8 809EBDF8 10400009 */  beq     $v0, $zero, .L809EBE20
/* 010BC 809EBDFC 00000000 */  nop
/* 010C0 809EBE00 C4C40054 */  lwc1    $f4, 0x0054($a2)           ## 00000054
/* 010C4 809EBE04 C426C6E8 */  lwc1    $f6, %lo(D_809EC6E8)($at)
/* 010C8 809EBE08 2448FFFB */  addiu   $t0, $v0, 0xFFFB           ## $t0 = FFFFFFFB
/* 010CC 809EBE0C A0C8025A */  sb      $t0, 0x025A($a2)           ## 0000025A
/* 010D0 809EBE10 46062201 */  sub.s   $f8, $f4, $f6
/* 010D4 809EBE14 A0C800C8 */  sb      $t0, 0x00C8($a2)           ## 000000C8
/* 010D8 809EBE18 1000001F */  beq     $zero, $zero, .L809EBE98
/* 010DC 809EBE1C E4C80054 */  swc1    $f8, 0x0054($a2)           ## 00000054
.L809EBE20:
/* 010E0 809EBE20 0C00B55C */  jal     Actor_Kill

/* 010E4 809EBE24 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 010E8 809EBE28 1000001C */  beq     $zero, $zero, .L809EBE9C
/* 010EC 809EBE2C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 010F0 809EBE30 C4CA0164 */  lwc1    $f10, 0x0164($a2)          ## 00000164
.L809EBE34:
/* 010F4 809EBE34 24010035 */  addiu   $at, $zero, 0x0035         ## $at = 00000035
/* 010F8 809EBE38 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 010FC 809EBE3C 4600540D */  trunc.w.s $f16, $f10
/* 01100 809EBE40 2405387A */  addiu   $a1, $zero, 0x387A         ## $a1 = 0000387A
/* 01104 809EBE44 44028000 */  mfc1    $v0, $f16
/* 01108 809EBE48 00000000 */  nop
/* 0110C 809EBE4C 10410005 */  beq     $v0, $at, .L809EBE64
/* 01110 809EBE50 24010038 */  addiu   $at, $zero, 0x0038         ## $at = 00000038
/* 01114 809EBE54 10410003 */  beq     $v0, $at, .L809EBE64
/* 01118 809EBE58 2401003D */  addiu   $at, $zero, 0x003D         ## $at = 0000003D
/* 0111C 809EBE5C 54410009 */  bnel    $v0, $at, .L809EBE84
/* 01120 809EBE60 2401003D */  addiu   $at, $zero, 0x003D         ## $at = 0000003D
.L809EBE64:
/* 01124 809EBE64 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01128 809EBE68 AFA60020 */  sw      $a2, 0x0020($sp)
/* 0112C 809EBE6C 8FA60020 */  lw      $a2, 0x0020($sp)
/* 01130 809EBE70 C4D20164 */  lwc1    $f18, 0x0164($a2)          ## 00000164
/* 01134 809EBE74 4600910D */  trunc.w.s $f4, $f18
/* 01138 809EBE78 44022000 */  mfc1    $v0, $f4
/* 0113C 809EBE7C 00000000 */  nop
/* 01140 809EBE80 2401003D */  addiu   $at, $zero, 0x003D         ## $at = 0000003D
.L809EBE84:
/* 01144 809EBE84 14410004 */  bne     $v0, $at, .L809EBE98
/* 01148 809EBE88 8FA40024 */  lw      $a0, 0x0024($sp)
/* 0114C 809EBE8C 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 01150 809EBE90 0C00CDD2 */  jal     Actor_ChangeType

/* 01154 809EBE94 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
.L809EBE98:
/* 01158 809EBE98 8FBF0014 */  lw      $ra, 0x0014($sp)
.L809EBE9C:
/* 0115C 809EBE9C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01160 809EBEA0 03E00008 */  jr      $ra
/* 01164 809EBEA4 00000000 */  nop


