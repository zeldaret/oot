glabel func_80A77B0C
/* 037FC 80A77B0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03800 80A77B10 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03804 80A77B14 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03808 80A77B18 0C29DC0D */  jal     func_80A77034              
/* 0380C 80A77B1C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03810 80A77B20 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03814 80A77B24 0C29DE77 */  jal     func_80A779DC              
/* 03818 80A77B28 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0381C 80A77B2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03820 80A77B30 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03824 80A77B34 03E00008 */  jr      $ra                        
/* 03828 80A77B38 00000000 */  nop
