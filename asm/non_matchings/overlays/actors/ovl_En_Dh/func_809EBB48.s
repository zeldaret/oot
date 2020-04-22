glabel func_809EBB48
/* 00E08 809EBB48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E0C 809EBB4C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00E10 809EBB50 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00E14 809EBB54 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00E18 809EBB58 24A53D6C */  addiu   $a1, $a1, 0x3D6C           ## $a1 = 06003D6C
/* 00E1C 809EBB5C AFA70018 */  sw      $a3, 0x0018($sp)
/* 00E20 809EBB60 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00E24 809EBB64 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 00E28 809EBB68 3C06C0C0 */  lui     $a2, 0xC0C0                ## $a2 = C0C00000
/* 00E2C 809EBB6C 8FA70018 */  lw      $a3, 0x0018($sp)
/* 00E30 809EBB70 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00E34 809EBB74 240539A9 */  addiu   $a1, $zero, 0x39A9         ## $a1 = 000039A9
/* 00E38 809EBB78 94EE0088 */  lhu     $t6, 0x0088($a3)           ## 00000088
/* 00E3C 809EBB7C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00E40 809EBB80 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00E44 809EBB84 11E00004 */  beq     $t7, $zero, .L809EBB98
/* 00E48 809EBB88 00000000 */  nop
/* 00E4C 809EBB8C 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 00E50 809EBB90 00000000 */  nop
/* 00E54 809EBB94 E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
.L809EBB98:
/* 00E58 809EBB98 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00E5C 809EBB9C AFA70018 */  sw      $a3, 0x0018($sp)
/* 00E60 809EBBA0 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00E64 809EBBA4 24180006 */  addiu   $t8, $zero, 0x0006         ## $t8 = 00000006
/* 00E68 809EBBA8 3C05809F */  lui     $a1, %hi(func_809EBBC8)    ## $a1 = 809F0000
/* 00E6C 809EBBAC 24A5BBC8 */  addiu   $a1, $a1, %lo(func_809EBBC8) ## $a1 = 809EBBC8
/* 00E70 809EBBB0 0C27AB50 */  jal     func_809EAD40
/* 00E74 809EBBB4 A098025B */  sb      $t8, 0x025B($a0)           ## 0000025B
/* 00E78 809EBBB8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00E7C 809EBBBC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E80 809EBBC0 03E00008 */  jr      $ra
/* 00E84 809EBBC4 00000000 */  nop
