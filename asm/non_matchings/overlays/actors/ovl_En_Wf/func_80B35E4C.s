glabel func_80B35E4C
/* 0219C 80B35E4C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 021A0 80B35E50 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 021A4 80B35E54 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 021A8 80B35E58 3C050601 */  lui     $a1, %hi(D_06009B20)                ## $a1 = 06010000
/* 021AC 80B35E5C 24A59B20 */  addiu   $a1, $a1, %lo(D_06009B20)           ## $a1 = 06009B20
/* 021B0 80B35E60 AFA70018 */  sw      $a3, 0x0018($sp)
/* 021B4 80B35E64 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 021B8 80B35E68 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 021BC 80B35E6C 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 021C0 80B35E70 8FA70018 */  lw      $a3, 0x0018($sp)
/* 021C4 80B35E74 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 021C8 80B35E78 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 021CC 80B35E7C 94EE0088 */  lhu     $t6, 0x0088($a3)           ## 00000088
/* 021D0 80B35E80 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 021D4 80B35E84 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 021D8 80B35E88 51E00006 */  beql    $t7, $zero, .L80B35EA4
/* 021DC 80B35E8C A4F80300 */  sh      $t8, 0x0300($a3)           ## 00000300
/* 021E0 80B35E90 44812000 */  mtc1    $at, $f4                   ## $f4 = -4.00
/* 021E4 80B35E94 A4E00300 */  sh      $zero, 0x0300($a3)         ## 00000300
/* 021E8 80B35E98 10000002 */  beq     $zero, $zero, .L80B35EA4
/* 021EC 80B35E9C E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
/* 021F0 80B35EA0 A4F80300 */  sh      $t8, 0x0300($a3)           ## 00000300
.L80B35EA4:
/* 021F4 80B35EA4 84F9008A */  lh      $t9, 0x008A($a3)           ## 0000008A
/* 021F8 80B35EA8 A4E002E2 */  sh      $zero, 0x02E2($a3)         ## 000002E2
/* 021FC 80B35EAC 24053843 */  addiu   $a1, $zero, 0x3843         ## $a1 = 00003843
/* 02200 80B35EB0 A4F90032 */  sh      $t9, 0x0032($a3)           ## 00000032
/* 02204 80B35EB4 0C00BE0A */  jal     Audio_PlayActorSound2

/* 02208 80B35EB8 AFA70018 */  sw      $a3, 0x0018($sp)
/* 0220C 80B35EBC 8FA40018 */  lw      $a0, 0x0018($sp)
/* 02210 80B35EC0 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 02214 80B35EC4 3C0580B3 */  lui     $a1, %hi(func_80B35EE4)    ## $a1 = 80B30000
/* 02218 80B35EC8 24A55EE4 */  addiu   $a1, $a1, %lo(func_80B35EE4) ## $a1 = 80B35EE4
/* 0221C 80B35ECC 0C2CCF2C */  jal     func_80B33CB0
/* 02220 80B35ED0 AC8802D4 */  sw      $t0, 0x02D4($a0)           ## 000002D4
/* 02224 80B35ED4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 02228 80B35ED8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0222C 80B35EDC 03E00008 */  jr      $ra
/* 02230 80B35EE0 00000000 */  nop
