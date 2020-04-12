glabel func_80B2DD70
/* 00910 80B2DD70 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00914 80B2DD74 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00918 80B2DD78 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0091C 80B2DD7C AFA5003C */  sw      $a1, 0x003C($sp)
/* 00920 80B2DD80 8C8E0220 */  lw      $t6, 0x0220($a0)           ## 00000220
/* 00924 80B2DD84 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00928 80B2DD88 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0092C 80B2DD8C 15C0002D */  bne     $t6, $zero, .L80B2DE44
/* 00930 80B2DD90 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 00934 80B2DD94 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00938 80B2DD98 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 0093C 80B2DD9C AFA40030 */  sw      $a0, 0x0030($sp)
/* 00940 80B2DDA0 50400032 */  beql    $v0, $zero, .L80B2DE6C
/* 00944 80B2DDA4 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00948 80B2DDA8 860F025E */  lh      $t7, 0x025E($s0)           ## 0000025E
/* 0094C 80B2DDAC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00950 80B2DDB0 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00954 80B2DDB4 A618025E */  sh      $t8, 0x025E($s0)           ## 0000025E
/* 00958 80B2DDB8 8602025E */  lh      $v0, 0x025E($s0)           ## 0000025E
/* 0095C 80B2DDBC 54410006 */  bnel    $v0, $at, .L80B2DDD8
/* 00960 80B2DDC0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00964 80B2DDC4 0C2CB580 */  jal     func_80B2D600
/* 00968 80B2DDC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0096C 80B2DDCC 10000027 */  beq     $zero, $zero, .L80B2DE6C
/* 00970 80B2DDD0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00974 80B2DDD4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80B2DDD8:
/* 00978 80B2DDD8 14410013 */  bne     $v0, $at, .L80B2DE28
/* 0097C 80B2DDDC 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 00980 80B2DDE0 3C100600 */  lui     $s0, 0x0600                ## $s0 = 06000000
/* 00984 80B2DDE4 26100068 */  addiu   $s0, $s0, 0x0068           ## $s0 = 06000068
/* 00988 80B2DDE8 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0098C 80B2DDEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 06000068
/* 00990 80B2DDF0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00994 80B2DDF4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00998 80B2DDF8 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 0099C 80B2DDFC 468021A0 */  cvt.s.w $f6, $f4
/* 009A0 80B2DE00 44070000 */  mfc1    $a3, $f0
/* 009A4 80B2DE04 AFB90014 */  sw      $t9, 0x0014($sp)
/* 009A8 80B2DE08 8FA40030 */  lw      $a0, 0x0030($sp)
/* 009AC 80B2DE0C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 06000068
/* 009B0 80B2DE10 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 009B4 80B2DE14 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 009B8 80B2DE18 0C029468 */  jal     SkelAnime_ChangeAnim

/* 009BC 80B2DE1C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 009C0 80B2DE20 10000012 */  beq     $zero, $zero, .L80B2DE6C
/* 009C4 80B2DE24 8FBF002C */  lw      $ra, 0x002C($sp)
.L80B2DE28:
/* 009C8 80B2DE28 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 009CC 80B2DE2C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 009D0 80B2DE30 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 009D4 80B2DE34 AE080220 */  sw      $t0, 0x0220($s0)           ## 06000288
/* 009D8 80B2DE38 E6000164 */  swc1    $f0, 0x0164($s0)           ## 060001CC
/* 009DC 80B2DE3C 1000000A */  beq     $zero, $zero, .L80B2DE68
/* 009E0 80B2DE40 E6080168 */  swc1    $f8, 0x0168($s0)           ## 060001D0
.L80B2DE44:
/* 009E4 80B2DE44 26040254 */  addiu   $a0, $s0, 0x0254           ## $a0 = 060002BC
/* 009E8 80B2DE48 240705DC */  addiu   $a3, $zero, 0x05DC         ## $a3 = 000005DC
/* 009EC 80B2DE4C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 009F0 80B2DE50 AFA00010 */  sw      $zero, 0x0010($sp)
/* 009F4 80B2DE54 8E090220 */  lw      $t1, 0x0220($s0)           ## 06000288
/* 009F8 80B2DE58 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 060001B4
/* 009FC 80B2DE5C 252AFFFF */  addiu   $t2, $t1, 0xFFFF           ## $t2 = FFFFFFFF
/* 00A00 80B2DE60 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 00A04 80B2DE64 AE0A0220 */  sw      $t2, 0x0220($s0)           ## 06000288
.L80B2DE68:
/* 00A08 80B2DE68 8FBF002C */  lw      $ra, 0x002C($sp)
.L80B2DE6C:
/* 00A0C 80B2DE6C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00A10 80B2DE70 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00A14 80B2DE74 03E00008 */  jr      $ra
/* 00A18 80B2DE78 00000000 */  nop
