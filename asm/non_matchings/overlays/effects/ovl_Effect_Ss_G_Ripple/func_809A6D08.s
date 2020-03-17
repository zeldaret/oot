glabel func_809A6D08
/* 003A8 809A6D08 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003AC 809A6D0C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003B0 809A6D10 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 003B4 809A6D14 84CE0056 */  lh      $t6, 0x0056($a2)           ## 00000056
/* 003B8 809A6D18 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 003BC 809A6D1C 3C060402 */  lui     $a2, 0x0402                ## $a2 = 04020000
/* 003C0 809A6D20 55C00004 */  bnel    $t6, $zero, .L809A6D34     
/* 003C4 809A6D24 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003C8 809A6D28 0C269AB6 */  jal     func_809A6AD8              
/* 003CC 809A6D2C 24C644B0 */  addiu   $a2, $a2, 0x44B0           ## $a2 = 040244B0
/* 003D0 809A6D30 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809A6D34:
/* 003D4 809A6D34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003D8 809A6D38 03E00008 */  jr      $ra                        
/* 003DC 809A6D3C 00000000 */  nop


