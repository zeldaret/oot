glabel func_80B1A63C
/* 01BBC 80B1A63C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01BC0 80B1A640 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01BC4 80B1A644 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01BC8 80B1A648 3C0580B2 */  lui     $a1, %hi(func_80B1A670)    ## $a1 = 80B20000
/* 01BCC 80B1A64C A08002BC */  sb      $zero, 0x02BC($a0)         ## 000002BC
/* 01BD0 80B1A650 A0800114 */  sb      $zero, 0x0114($a0)         ## 00000114
/* 01BD4 80B1A654 24A5A670 */  addiu   $a1, $a1, %lo(func_80B1A670) ## $a1 = 80B1A670
/* 01BD8 80B1A658 0C2C62A0 */  jal     func_80B18A80              
/* 01BDC 80B1A65C E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 01BE0 80B1A660 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01BE4 80B1A664 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01BE8 80B1A668 03E00008 */  jr      $ra                        
/* 01BEC 80B1A66C 00000000 */  nop
