glabel func_80B69A44
/* 000A4 80B69A44 3C0180B8 */  lui     $at, %hi(D_80B7FEE8)       ## $at = 80B80000
/* 000A8 80B69A48 AC24FEE8 */  sw      $a0, %lo(D_80B7FEE8)($at)  
/* 000AC 80B69A4C 3C0180B8 */  lui     $at, %hi(D_80B7FEEC)       ## $at = 80B80000
/* 000B0 80B69A50 AC25FEEC */  sw      $a1, %lo(D_80B7FEEC)($at)  
/* 000B4 80B69A54 3C0180B8 */  lui     $at, %hi(D_80B7FEF0)       ## $at = 80B80000
/* 000B8 80B69A58 03E00008 */  jr      $ra                        
/* 000BC 80B69A5C AC26FEF0 */  sw      $a2, %lo(D_80B7FEF0)($at)  


