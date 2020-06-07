glabel func_80A4C134
/* 00494 80A4C134 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00498 80A4C138 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0049C 80A4C13C 848201CE */  lh      $v0, 0x01CE($a0)           ## 000001CE
/* 004A0 80A4C140 848E01D0 */  lh      $t6, 0x01D0($a0)           ## 000001D0
/* 004A4 80A4C144 A48201CC */  sh      $v0, 0x01CC($a0)           ## 000001CC
/* 004A8 80A4C148 004E7821 */  addu    $t7, $v0, $t6              
/* 004AC 80A4C14C 0C293020 */  jal     func_80A4C080              
/* 004B0 80A4C150 A48F01CE */  sh      $t7, 0x01CE($a0)           ## 000001CE
/* 004B4 80A4C154 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004B8 80A4C158 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004BC 80A4C15C 03E00008 */  jr      $ra                        
/* 004C0 80A4C160 00000000 */  nop
