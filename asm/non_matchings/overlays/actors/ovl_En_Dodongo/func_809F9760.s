glabel func_809F9760
/* 01510 809F9760 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01514 809F9764 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01518 809F9768 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0151C 809F976C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01520 809F9770 24A51A44 */  addiu   $a1, $a1, 0x1A44           ## $a1 = 06001A44
/* 01524 809F9774 AFA70018 */  sw      $a3, 0x0018($sp)
/* 01528 809F9778 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0152C 809F977C 0C029490 */  jal     Animation_MorphToPlayOnce
/* 01530 809F9780 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 01534 809F9784 8FA40018 */  lw      $a0, 0x0018($sp)
/* 01538 809F9788 0C00BE0A */  jal     Audio_PlayActorSound2

/* 0153C 809F978C 24053803 */  addiu   $a1, $zero, 0x3803         ## $a1 = 00003803
/* 01540 809F9790 8FA40018 */  lw      $a0, 0x0018($sp)
/* 01544 809F9794 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01548 809F9798 3C0580A0 */  lui     $a1, %hi(func_809F97C0)    ## $a1 = 80A00000
/* 0154C 809F979C 24A597C0 */  addiu   $a1, $a1, %lo(func_809F97C0) ## $a1 = 809F97C0
/* 01550 809F97A0 AC800304 */  sw      $zero, 0x0304($a0)         ## 00000304
/* 01554 809F97A4 A480030C */  sh      $zero, 0x030C($a0)         ## 0000030C
/* 01558 809F97A8 0C27E094 */  jal     func_809F8250
/* 0155C 809F97AC E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 01560 809F97B0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01564 809F97B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01568 809F97B8 03E00008 */  jr      $ra
/* 0156C 809F97BC 00000000 */  nop
