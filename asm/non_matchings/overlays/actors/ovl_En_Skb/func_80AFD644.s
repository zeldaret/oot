glabel func_80AFD644
/* 00CA4 80AFD644 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CA8 80AFD648 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00CAC 80AFD64C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00CB0 80AFD650 3C050600 */  lui     $a1, %hi(D_06000D98)                ## $a1 = 06000000
/* 00CB4 80AFD654 24A50D98 */  addiu   $a1, $a1, %lo(D_06000D98)           ## $a1 = 06000D98
/* 00CB8 80AFD658 AFA70018 */  sw      $a3, 0x0018($sp)
/* 00CBC 80AFD65C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00CC0 80AFD660 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 00CC4 80AFD664 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 00CC8 80AFD668 8FA70018 */  lw      $a3, 0x0018($sp)
/* 00CCC 80AFD66C 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00CD0 80AFD670 94EE0088 */  lhu     $t6, 0x0088($a3)           ## 00000088
/* 00CD4 80AFD674 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00CD8 80AFD678 51E00005 */  beql    $t7, $zero, .L80AFD690
/* 00CDC 80AFD67C 84F8008A */  lh      $t8, 0x008A($a3)           ## 0000008A
/* 00CE0 80AFD680 44812000 */  mtc1    $at, $f4                   ## $f4 = -4.00
/* 00CE4 80AFD684 00000000 */  nop
/* 00CE8 80AFD688 E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
/* 00CEC 80AFD68C 84F8008A */  lh      $t8, 0x008A($a3)           ## 0000008A
.L80AFD690:
/* 00CF0 80AFD690 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00CF4 80AFD694 24053832 */  addiu   $a1, $zero, 0x3832         ## $a1 = 00003832
/* 00CF8 80AFD698 A4F80032 */  sh      $t8, 0x0032($a3)           ## 00000032
/* 00CFC 80AFD69C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00D00 80AFD6A0 AFA70018 */  sw      $a3, 0x0018($sp)
/* 00D04 80AFD6A4 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00D08 80AFD6A8 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 00D0C 80AFD6AC 3C0580B0 */  lui     $a1, %hi(func_80AFD6CC)    ## $a1 = 80B00000
/* 00D10 80AFD6B0 24A5D6CC */  addiu   $a1, $a1, %lo(func_80AFD6CC) ## $a1 = 80AFD6CC
/* 00D14 80AFD6B4 0C2BF268 */  jal     func_80AFC9A0
/* 00D18 80AFD6B8 A0990280 */  sb      $t9, 0x0280($a0)           ## 00000280
/* 00D1C 80AFD6BC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00D20 80AFD6C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D24 80AFD6C4 03E00008 */  jr      $ra
/* 00D28 80AFD6C8 00000000 */  nop
