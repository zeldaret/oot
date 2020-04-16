.late_rodata
glabel D_809C1738
    .float 1.2

.text
glabel func_809BFB40
/* 002A0 809BFB40 3C01809C */  lui     $at, %hi(D_809C1738)       ## $at = 809C0000
/* 002A4 809BFB44 C4241738 */  lwc1    $f4, %lo(D_809C1738)($at)  
/* 002A8 809BFB48 3C0E809C */  lui     $t6, %hi(func_809C0570)    ## $t6 = 809C0000
/* 002AC 809BFB4C 25CE0570 */  addiu   $t6, $t6, %lo(func_809C0570) ## $t6 = 809C0570
/* 002B0 809BFB50 AC8E0190 */  sw      $t6, 0x0190($a0)           ## 00000190
/* 002B4 809BFB54 03E00008 */  jr      $ra                        
/* 002B8 809BFB58 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
