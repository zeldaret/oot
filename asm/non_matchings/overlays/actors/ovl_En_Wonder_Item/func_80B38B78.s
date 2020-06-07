glabel func_80B38B78
/* 00B18 80B38B78 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B1C 80B38B7C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B20 80B38B80 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00B24 80B38B84 44813000 */  mtc1    $at, $f6                   ## $f6 = 50.00
/* 00B28 80B38B88 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00B2C 80B38B8C 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00B30 80B38B90 4606203C */  c.lt.s  $f4, $f6                   
/* 00B34 80B38B94 00000000 */  nop
/* 00B38 80B38B98 45020011 */  bc1fl   .L80B38BE0                 
/* 00B3C 80B38B9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B40 80B38BA0 804E0A78 */  lb      $t6, 0x0A78($v0)           ## 00000A78
/* 00B44 80B38BA4 05C3000E */  bgezl   $t6, .L80B38BE0            
/* 00B48 80B38BA8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B4C 80B38BAC C4880028 */  lwc1    $f8, 0x0028($a0)           ## 00000028
/* 00B50 80B38BB0 C44A0028 */  lwc1    $f10, 0x0028($v0)          ## 00000028
/* 00B54 80B38BB4 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00B58 80B38BB8 44818000 */  mtc1    $at, $f16                  ## $f16 = 30.00
/* 00B5C 80B38BBC 460A4001 */  sub.s   $f0, $f8, $f10             
/* 00B60 80B38BC0 46000005 */  abs.s   $f0, $f0                   
/* 00B64 80B38BC4 4610003C */  c.lt.s  $f0, $f16                  
/* 00B68 80B38BC8 00000000 */  nop
/* 00B6C 80B38BCC 45020004 */  bc1fl   .L80B38BE0                 
/* 00B70 80B38BD0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B74 80B38BD4 0C2CE028 */  jal     func_80B380A0              
/* 00B78 80B38BD8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00B7C 80B38BDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B38BE0:
/* 00B80 80B38BE0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B84 80B38BE4 03E00008 */  jr      $ra                        
/* 00B88 80B38BE8 00000000 */  nop
