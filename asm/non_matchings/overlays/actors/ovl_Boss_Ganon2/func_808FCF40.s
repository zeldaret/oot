glabel func_808FCF40
/* 00000 808FCF40 3C018091 */  lui     $at, %hi(D_809105C8)       ## $at = 80910000
/* 00004 808FCF44 AC2405C8 */  sw      $a0, %lo(D_809105C8)($at)  
/* 00008 808FCF48 3C018091 */  lui     $at, %hi(D_809105CC)       ## $at = 80910000
/* 0000C 808FCF4C AC2505CC */  sw      $a1, %lo(D_809105CC)($at)  
/* 00010 808FCF50 3C018091 */  lui     $at, %hi(D_809105D0)       ## $at = 80910000
/* 00014 808FCF54 03E00008 */  jr      $ra                        
/* 00018 808FCF58 AC2605D0 */  sw      $a2, %lo(D_809105D0)($at)  
