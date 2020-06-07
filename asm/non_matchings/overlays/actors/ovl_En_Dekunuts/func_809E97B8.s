glabel func_809E97B8
/* 00258 809E97B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0025C 809E97BC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00260 809E97C0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00264 809E97C4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00268 809E97C8 24A501C4 */  addiu   $a1, $a1, 0x01C4           ## $a1 = 060001C4
/* 0026C 809E97CC AFA60018 */  sw      $a2, 0x0018($sp)
/* 00270 809E97D0 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 00274 809E97D4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00278 809E97D8 8FA60018 */  lw      $a2, 0x0018($sp)
/* 0027C 809E97DC 3C0F809F */  lui     $t7, %hi(func_809E9F6C)    ## $t7 = 809F0000
/* 00280 809E97E0 25EF9F6C */  addiu   $t7, $t7, %lo(func_809E9F6C) ## $t7 = 809E9F6C
/* 00284 809E97E4 84CE019A */  lh      $t6, 0x019A($a2)           ## 0000019A
/* 00288 809E97E8 ACCF0190 */  sw      $t7, 0x0190($a2)           ## 00000190
/* 0028C 809E97EC A4CE0196 */  sh      $t6, 0x0196($a2)           ## 00000196
/* 00290 809E97F0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00294 809E97F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00298 809E97F8 03E00008 */  jr      $ra
/* 0029C 809E97FC 00000000 */  nop
