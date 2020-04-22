glabel func_80844CF8
/* 12AE8 80844CF8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 12AEC 80844CFC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 12AF0 80844D00 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 12AF4 80844D04 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 12AF8 80844D08 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 12AFC 80844D0C 3C068084 */  lui     $a2, %hi(func_80845000)    ## $a2 = 80840000
/* 12B00 80844D10 24C65000 */  addiu   $a2, $a2, %lo(func_80845000) ## $a2 = 80845000
/* 12B04 80844D14 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 12B08 80844D18 0C20D716 */  jal     func_80835C58              
/* 12B0C 80844D1C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 12B10 80844D20 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 12B14 80844D24 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 12B18 80844D28 03E00008 */  jr      $ra                        
/* 12B1C 80844D2C 00000000 */  nop
