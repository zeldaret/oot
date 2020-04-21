.late_rodata
glabel D_80A668C0
    .float 0.01

.text
glabel func_80A5DDB0
/* 02AC0 80A5DDB0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02AC4 80A5DDB4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 02AC8 80A5DDB8 AFA5001C */  sw      $a1, 0x001C($sp)
/* 02ACC 80A5DDBC 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 02AD0 80A5DDC0 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 02AD4 80A5DDC4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 02AD8 80A5DDC8 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 02ADC 80A5DDCC AC8F0210 */  sw      $t7, 0x0210($a0)           ## 00000210
/* 02AE0 80A5DDD0 8CD80158 */  lw      $t8, 0x0158($a2)           ## 00000158
/* 02AE4 80A5DDD4 3C0880A6 */  lui     $t0, %hi(D_80A65E58)       ## $t0 = 80A60000
/* 02AE8 80A5DDD8 248401AC */  addiu   $a0, $a0, 0x01AC           ## $a0 = 000001AC
/* 02AEC 80A5DDDC 0018C880 */  sll     $t9, $t8,  2
/* 02AF0 80A5DDE0 01194021 */  addu    $t0, $t0, $t9
/* 02AF4 80A5DDE4 8D085E58 */  lw      $t0, %lo(D_80A65E58)($t0)
/* 02AF8 80A5DDE8 8D050018 */  lw      $a1, 0x0018($t0)           ## 80A60018
/* 02AFC 80A5DDEC 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 02B00 80A5DDF0 AFA60018 */  sw      $a2, 0x0018($sp)
/* 02B04 80A5DDF4 8FA60018 */  lw      $a2, 0x0018($sp)
/* 02B08 80A5DDF8 3C0180A6 */  lui     $at, %hi(D_80A668C0)       ## $at = 80A60000
/* 02B0C 80A5DDFC C42868C0 */  lwc1    $f8, %lo(D_80A668C0)($at)
/* 02B10 80A5DE00 8CC201CC */  lw      $v0, 0x01CC($a2)           ## 000001CC
/* 02B14 80A5DE04 C4C6025C */  lwc1    $f6, 0x025C($a2)           ## 0000025C
/* 02B18 80A5DE08 84490002 */  lh      $t1, 0x0002($v0)           ## 00000002
/* 02B1C 80A5DE0C ACC00244 */  sw      $zero, 0x0244($a2)         ## 00000244
/* 02B20 80A5DE10 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 02B24 80A5DE14 00000000 */  nop
/* 02B28 80A5DE18 46802020 */  cvt.s.w $f0, $f4
/* 02B2C 80A5DE1C 46080282 */  mul.s   $f10, $f0, $f8
/* 02B30 80A5DE20 460A3400 */  add.s   $f16, $f6, $f10
/* 02B34 80A5DE24 E4D0025C */  swc1    $f16, 0x025C($a2)          ## 0000025C
/* 02B38 80A5DE28 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 02B3C 80A5DE2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02B40 80A5DE30 03E00008 */  jr      $ra
/* 02B44 80A5DE34 00000000 */  nop
