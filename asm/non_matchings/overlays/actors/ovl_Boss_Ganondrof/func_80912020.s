.late_rodata
glabel D_8091543C
    .float 1.99000000954

.text
glabel func_80912020
/* 019E0 80912020 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 019E4 80912024 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 019E8 80912028 AFA40020 */  sw      $a0, 0x0020($sp)
/* 019EC 8091202C 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 019F0 80912030 AFA50024 */  sw      $a1, 0x0024($sp)
/* 019F4 80912034 3C018091 */  lui     $at, %hi(D_8091543C)       ## $at = 80910000
/* 019F8 80912038 C424543C */  lwc1    $f4, %lo(D_8091543C)($at)
/* 019FC 8091203C 3C048091 */  lui     $a0, %hi(D_809150D0)       ## $a0 = 80910000
/* 01A00 80912040 46040182 */  mul.s   $f6, $f0, $f4
/* 01A04 80912044 4600320D */  trunc.w.s $f8, $f6
/* 01A08 80912048 44024000 */  mfc1    $v0, $f8
/* 01A0C 8091204C 00000000 */  nop
/* 01A10 80912050 00027C00 */  sll     $t7, $v0, 16
/* 01A14 80912054 000FC403 */  sra     $t8, $t7, 16
/* 01A18 80912058 0018C880 */  sll     $t9, $t8,  2
/* 01A1C 8091205C 00992021 */  addu    $a0, $a0, $t9
/* 01A20 80912060 8C8450D0 */  lw      $a0, %lo(D_809150D0)($a0)
/* 01A24 80912064 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01A28 80912068 A7A2001E */  sh      $v0, 0x001E($sp)
/* 01A2C 8091206C 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 01A30 80912070 8FA30020 */  lw      $v1, 0x0020($sp)
/* 01A34 80912074 3C058091 */  lui     $a1, %hi(D_809150D0)       ## $a1 = 80910000
/* 01A38 80912078 46805420 */  cvt.s.w $f16, $f10
/* 01A3C 8091207C 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 01A40 80912080 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 01A44 80912084 E47001D0 */  swc1    $f16, 0x01D0($v1)          ## 000001D0
/* 01A48 80912088 87A8001E */  lh      $t0, 0x001E($sp)
/* 01A4C 8091208C 00084880 */  sll     $t1, $t0,  2
/* 01A50 80912090 00A92821 */  addu    $a1, $a1, $t1
/* 01A54 80912094 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 01A58 80912098 8CA550D0 */  lw      $a1, %lo(D_809150D0)($a1)
/* 01A5C 8091209C 8FAB0020 */  lw      $t3, 0x0020($sp)
/* 01A60 809120A0 3C0A8091 */  lui     $t2, %hi(func_809120BC)    ## $t2 = 80910000
/* 01A64 809120A4 254A20BC */  addiu   $t2, $t2, %lo(func_809120BC) ## $t2 = 809120BC
/* 01A68 809120A8 AD6A0190 */  sw      $t2, 0x0190($t3)           ## 00000190
/* 01A6C 809120AC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01A70 809120B0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01A74 809120B4 03E00008 */  jr      $ra
/* 01A78 809120B8 00000000 */  nop
