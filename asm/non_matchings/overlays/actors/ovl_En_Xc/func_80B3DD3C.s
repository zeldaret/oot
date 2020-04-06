glabel func_80B3DD3C
/* 01B5C 80B3DD3C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01B60 80B3DD40 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01B64 80B3DD44 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01B68 80B3DD48 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01B6C 80B3DD4C AFA50034 */  sw      $a1, 0x0034($sp)
/* 01B70 80B3DD50 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 01B74 80B3DD54 0C2CF13C */  jal     func_80B3C4F0
/* 01B78 80B3DD58 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 01B7C 80B3DD5C 1040001A */  beq     $v0, $zero, .L80B3DDC8
/* 01B80 80B3DD60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B84 80B3DD64 C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 01B88 80B3DD68 C602015C */  lwc1    $f2, 0x015C($s0)           ## 0000015C
/* 01B8C 80B3DD6C 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 01B90 80B3DD70 4600103E */  c.le.s  $f2, $f0
/* 01B94 80B3DD74 00000000 */  nop
/* 01B98 80B3DD78 4502001D */  bc1fl   .L80B3DDF0
/* 01B9C 80B3DD7C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01BA0 80B3DD80 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01BA4 80B3DD84 24847C54 */  addiu   $a0, $a0, 0x7C54           ## $a0 = 06017C54
/* 01BA8 80B3DD88 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01BAC 80B3DD8C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01BB0 80B3DD90 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01BB4 80B3DD94 46802120 */  cvt.s.w $f4, $f4
/* 01BB8 80B3DD98 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01BBC 80B3DD9C AFAE0014 */  sw      $t6, 0x0014($sp)
/* 01BC0 80B3DDA0 24A57C54 */  addiu   $a1, $a1, 0x7C54           ## $a1 = 06017C54
/* 01BC4 80B3DDA4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01BC8 80B3DDA8 3C06BF80 */  lui     $a2, 0xBF80                ## $a2 = BF800000
/* 01BCC 80B3DDAC 44072000 */  mfc1    $a3, $f4
/* 01BD0 80B3DDB0 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 01BD4 80B3DDB4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01BD8 80B3DDB8 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 01BDC 80B3DDBC 240F000B */  addiu   $t7, $zero, 0x000B         ## $t7 = 0000000B
/* 01BE0 80B3DDC0 1000000A */  beq     $zero, $zero, .L80B3DDEC
/* 01BE4 80B3DDC4 AE0F0260 */  sw      $t7, 0x0260($s0)           ## 00000260
.L80B3DDC8:
/* 01BE8 80B3DDC8 8FA50034 */  lw      $a1, 0x0034($sp)
/* 01BEC 80B3DDCC 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 01BF0 80B3DDD0 0C2CF14F */  jal     func_80B3C53C
/* 01BF4 80B3DDD4 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 01BF8 80B3DDD8 10400004 */  beq     $v0, $zero, .L80B3DDEC
/* 01BFC 80B3DDDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C00 80B3DDE0 8FA50034 */  lw      $a1, 0x0034($sp)
/* 01C04 80B3DDE4 0C2CF709 */  jal     func_80B3DC24
/* 01C08 80B3DDE8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
.L80B3DDEC:
/* 01C0C 80B3DDEC 8FBF002C */  lw      $ra, 0x002C($sp)
.L80B3DDF0:
/* 01C10 80B3DDF0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01C14 80B3DDF4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01C18 80B3DDF8 03E00008 */  jr      $ra
/* 01C1C 80B3DDFC 00000000 */  nop


