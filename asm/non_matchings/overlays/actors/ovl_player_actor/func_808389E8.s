glabel func_808389E8
/* 067D8 808389E8 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 067DC 808389EC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 067E0 808389F0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 067E4 808389F4 240E6800 */  addiu   $t6, $zero, 0x6800         ## $t6 = 00006800
/* 067E8 808389F8 44066000 */  mfc1    $a2, $f12                  
/* 067EC 808389FC 0C20E250 */  jal     func_80838940              
/* 067F0 80838A00 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 067F4 80838A04 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 067F8 80838A08 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 067FC 80838A0C 03E00008 */  jr      $ra                        
/* 06800 80838A10 00000000 */  nop


