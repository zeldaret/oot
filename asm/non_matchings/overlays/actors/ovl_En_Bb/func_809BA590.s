glabel func_809BA590
/* 022B0 809BA590 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 022B4 809BA594 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 022B8 809BA598 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 022BC 809BA59C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 022C0 809BA5A0 24A50444 */  addiu   $a1, $a1, 0x0444           ## $a1 = 06000444
/* 022C4 809BA5A4 AFA60018 */  sw      $a2, 0x0018($sp)
/* 022C8 809BA5A8 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 022CC 809BA5AC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 022D0 809BA5B0 8FA60018 */  lw      $a2, 0x0018($sp)
/* 022D4 809BA5B4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 022D8 809BA5B8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 022DC 809BA5BC 240F0009 */  addiu   $t7, $zero, 0x0009         ## $t7 = 00000009
/* 022E0 809BA5C0 ACCE025C */  sw      $t6, 0x025C($a2)           ## 0000025C
/* 022E4 809BA5C4 A4C00268 */  sh      $zero, 0x0268($a2)         ## 00000268
/* 022E8 809BA5C8 ACC00324 */  sw      $zero, 0x0324($a2)         ## 00000324
/* 022EC 809BA5CC ACCF0250 */  sw      $t7, 0x0250($a2)           ## 00000250
/* 022F0 809BA5D0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 022F4 809BA5D4 E4C40068 */  swc1    $f4, 0x0068($a2)           ## 00000068
/* 022F8 809BA5D8 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 022FC 809BA5DC 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 02300 809BA5E0 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 02304 809BA5E4 44815000 */  mtc1    $at, $f10                  ## $f10 = 180.00
/* 02308 809BA5E8 46060202 */  mul.s   $f8, $f0, $f6
/* 0230C 809BA5EC 8FA40018 */  lw      $a0, 0x0018($sp)
/* 02310 809BA5F0 3C05809C */  lui     $a1, %hi(func_809BA628)    ## $a1 = 809C0000
/* 02314 809BA5F4 24A5A628 */  addiu   $a1, $a1, %lo(func_809BA628) ## $a1 = 809BA628
/* 02318 809BA5F8 8488008A */  lh      $t0, 0x008A($a0)           ## 0000008A
/* 0231C 809BA5FC A48000B8 */  sh      $zero, 0x00B8($a0)         ## 000000B8
/* 02320 809BA600 460A4400 */  add.s   $f16, $f8, $f10
/* 02324 809BA604 A48800B6 */  sh      $t0, 0x00B6($a0)           ## 000000B6
/* 02328 809BA608 4600848D */  trunc.w.s $f18, $f16
/* 0232C 809BA60C 44199000 */  mfc1    $t9, $f18
/* 02330 809BA610 0C26E0B8 */  jal     func_809B82E0
/* 02334 809BA614 A499026E */  sh      $t9, 0x026E($a0)           ## 0000026E
/* 02338 809BA618 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0233C 809BA61C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02340 809BA620 03E00008 */  jr      $ra
/* 02344 809BA624 00000000 */  nop
