glabel func_808DED30
/* 084C0 808DED30 3C018090 */  lui     $at, %hi(D_808F93C4)       ## $at = 80900000
/* 084C4 808DED34 AC2493C4 */  sw      $a0, %lo(D_808F93C4)($at)  
/* 084C8 808DED38 3C018090 */  lui     $at, %hi(D_808F93C8)       ## $at = 80900000
/* 084CC 808DED3C AC2593C8 */  sw      $a1, %lo(D_808F93C8)($at)  
/* 084D0 808DED40 3C018090 */  lui     $at, %hi(D_808F93CC)       ## $at = 80900000
/* 084D4 808DED44 03E00008 */  jr      $ra                        
/* 084D8 808DED48 AC2693CC */  sw      $a2, %lo(D_808F93CC)($at)  


