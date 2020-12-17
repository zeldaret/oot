glabel func_80B18C5C
/* 001DC 80B18C5C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001E0 80B18C60 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 001E4 80B18C64 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 001E8 80B18C68 3C050600 */  lui     $a1, %hi(D_060012E4)                ## $a1 = 06000000
/* 001EC 80B18C6C 24A512E4 */  addiu   $a1, $a1, %lo(D_060012E4)           ## $a1 = 060012E4
/* 001F0 80B18C70 AFA70018 */  sw      $a3, 0x0018($sp)
/* 001F4 80B18C74 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 001F8 80B18C78 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 001FC 80B18C7C 3C064080 */  lui     $a2, 0x4080                ## $a2 = 40800000
/* 00200 80B18C80 8FA70018 */  lw      $a3, 0x0018($sp)
/* 00204 80B18C84 240E0006 */  addiu   $t6, $zero, 0x0006         ## $t6 = 00000006
/* 00208 80B18C88 2404000F */  addiu   $a0, $zero, 0x000F         ## $a0 = 0000000F
/* 0020C 80B18C8C 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 00210 80B18C90 0C01DF64 */  jal     Math_Rand_S16Offset

/* 00214 80B18C94 A0EE02BC */  sb      $t6, 0x02BC($a3)           ## 000002BC
/* 00218 80B18C98 8FA40018 */  lw      $a0, 0x0018($sp)
/* 0021C 80B18C9C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00220 80B18CA0 3C0580B2 */  lui     $a1, %hi(func_80B18CC4)    ## $a1 = 80B20000
/* 00224 80B18CA4 24A58CC4 */  addiu   $a1, $a1, %lo(func_80B18CC4) ## $a1 = 80B18CC4
/* 00228 80B18CA8 A48202E0 */  sh      $v0, 0x02E0($a0)           ## 000002E0
/* 0022C 80B18CAC 0C2C62A0 */  jal     func_80B18A80
/* 00230 80B18CB0 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00234 80B18CB4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00238 80B18CB8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0023C 80B18CBC 03E00008 */  jr      $ra
/* 00240 80B18CC0 00000000 */  nop
