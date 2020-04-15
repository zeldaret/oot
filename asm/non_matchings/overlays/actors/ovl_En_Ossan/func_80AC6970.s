glabel func_80AC6970
/* 03CD0 80AC6970 848201F4 */  lh      $v0, 0x01F4($a0)           ## 000001F4
/* 03CD4 80AC6974 3C0E80AC */  lui     $t6, %hi(func_80AC69A4)    ## $t6 = 80AC0000
/* 03CD8 80AC6978 25CE69A4 */  addiu   $t6, $t6, %lo(func_80AC69A4) ## $t6 = 80AC69A4
/* 03CDC 80AC697C 2442FFFF */  addiu   $v0, $v0, 0xFFFF           ## $v0 = FFFFFFFF
/* 03CE0 80AC6980 00021400 */  sll     $v0, $v0, 16               
/* 03CE4 80AC6984 00021403 */  sra     $v0, $v0, 16               
/* 03CE8 80AC6988 50400004 */  beql    $v0, $zero, .L80AC699C     
/* 03CEC 80AC698C AC8E01F8 */  sw      $t6, 0x01F8($a0)           ## 000001F8
/* 03CF0 80AC6990 03E00008 */  jr      $ra                        
/* 03CF4 80AC6994 A48201F4 */  sh      $v0, 0x01F4($a0)           ## 000001F4
.L80AC6998:
/* 03CF8 80AC6998 AC8E01F8 */  sw      $t6, 0x01F8($a0)           ## 000001F8
.L80AC699C:
/* 03CFC 80AC699C 03E00008 */  jr      $ra                        
/* 03D00 80AC69A0 00000000 */  nop
