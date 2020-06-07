glabel func_80A3907C
/* 03D6C 80A3907C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03D70 80A39080 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 03D74 80A39084 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 03D78 80A39088 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 03D7C 80A3908C 24A51E10 */  addiu   $a1, $a1, 0x1E10           ## $a1 = 06001E10
/* 03D80 80A39090 AFA70018 */  sw      $a3, 0x0018($sp)
/* 03D84 80A39094 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 03D88 80A39098 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 03D8C 80A3909C 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 03D90 80A390A0 8FA70018 */  lw      $a3, 0x0018($sp)
/* 03D94 80A390A4 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 03D98 80A390A8 2405399A */  addiu   $a1, $zero, 0x399A         ## $a1 = 0000399A
/* 03D9C 80A390AC 94EE0088 */  lhu     $t6, 0x0088($a3)           ## 00000088
/* 03DA0 80A390B0 84E2008A */  lh      $v0, 0x008A($a3)           ## 0000008A
/* 03DA4 80A390B4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 03DA8 80A390B8 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 03DAC 80A390BC A4E200B6 */  sh      $v0, 0x00B6($a3)           ## 000000B6
/* 03DB0 80A390C0 11E00006 */  beq     $t7, $zero, .L80A390DC
/* 03DB4 80A390C4 A4E20032 */  sh      $v0, 0x0032($a3)           ## 00000032
/* 03DB8 80A390C8 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 03DBC 80A390CC 44812000 */  mtc1    $at, $f4                   ## $f4 = -6.00
/* 03DC0 80A390D0 A4E00318 */  sh      $zero, 0x0318($a3)         ## 00000318
/* 03DC4 80A390D4 10000003 */  beq     $zero, $zero, .L80A390E4
/* 03DC8 80A390D8 E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
.L80A390DC:
/* 03DCC 80A390DC 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 03DD0 80A390E0 A4F80318 */  sh      $t8, 0x0318($a3)           ## 00000318
.L80A390E4:
/* 03DD4 80A390E4 8CE80004 */  lw      $t0, 0x0004($a3)           ## 00000004
/* 03DD8 80A390E8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 03DDC 80A390EC ACF902EC */  sw      $t9, 0x02EC($a3)           ## 000002EC
/* 03DE0 80A390F0 01014824 */  and     $t1, $t0, $at
/* 03DE4 80A390F4 ACE90004 */  sw      $t1, 0x0004($a3)           ## 00000004
/* 03DE8 80A390F8 0C00BE0A */  jal     Audio_PlayActorSound2

/* 03DEC 80A390FC AFA70018 */  sw      $a3, 0x0018($sp)
/* 03DF0 80A39100 3C0580A4 */  lui     $a1, %hi(func_80A39120)    ## $a1 = 80A40000
/* 03DF4 80A39104 8FA40018 */  lw      $a0, 0x0018($sp)
/* 03DF8 80A39108 0C28D4C4 */  jal     func_80A35310
/* 03DFC 80A3910C 24A59120 */  addiu   $a1, $a1, %lo(func_80A39120) ## $a1 = 80A39120
/* 03E00 80A39110 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 03E04 80A39114 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03E08 80A39118 03E00008 */  jr      $ra
/* 03E0C 80A3911C 00000000 */  nop
