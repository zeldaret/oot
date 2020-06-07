glabel func_80A5F380
/* 04090 80A5F380 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 04094 80A5F384 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04098 80A5F388 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0409C 80A5F38C 44066000 */  mfc1    $a2, $f12                  
/* 040A0 80A5F390 0C297C6C */  jal     func_80A5F1B0              
/* 040A4 80A5F394 8C870214 */  lw      $a3, 0x0214($a0)           ## 00000214
/* 040A8 80A5F398 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 040AC 80A5F39C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 040B0 80A5F3A0 03E00008 */  jr      $ra                        
/* 040B4 80A5F3A4 00000000 */  nop
