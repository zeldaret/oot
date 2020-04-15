glabel func_809CD0F8
/* 00088 809CD0F8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0008C 809CD0FC 3C01809D */  lui     $at, %hi(D_809CE3BC)       ## $at = 809D0000
/* 00090 809CD100 E424E3BC */  swc1    $f4, %lo(D_809CE3BC)($at)  
/* 00094 809CD104 3C01809D */  lui     $at, %hi(D_809CE3C0)       ## $at = 809D0000
/* 00098 809CD108 03E00008 */  jr      $ra                        
/* 0009C 809CD10C A420E3C0 */  sh      $zero, %lo(D_809CE3C0)($at) 
