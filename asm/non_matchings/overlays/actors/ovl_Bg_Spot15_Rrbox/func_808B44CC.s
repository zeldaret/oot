glabel func_808B44CC
/* 00B6C 808B44CC 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00B70 808B44D0 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 00B74 808B44D4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00B78 808B44D8 8C4E0680 */  lw      $t6, 0x0680($v0)           ## 00000680
/* 00B7C 808B44DC 01C17824 */  and     $t7, $t6, $at              
/* 00B80 808B44E0 AC4F0680 */  sw      $t7, 0x0680($v0)           ## 00000680
/* 00B84 808B44E4 03E00008 */  jr      $ra                        
/* 00B88 808B44E8 E4840150 */  swc1    $f4, 0x0150($a0)           ## 00000150
