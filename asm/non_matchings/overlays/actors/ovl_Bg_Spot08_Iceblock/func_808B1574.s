glabel func_808B1574
/* 00C14 808B1574 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C18 808B1578 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C1C 808B157C 0C22C258 */  jal     func_808B0960              
/* 00C20 808B1580 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00C24 808B1584 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C28 808B1588 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C2C 808B158C 03E00008 */  jr      $ra                        
/* 00C30 808B1590 00000000 */  nop
