glabel BgJyaHaheniron_Update
/* 005D0 80898690 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005D4 80898694 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005D8 80898698 848E01B0 */  lh      $t6, 0x01B0($a0)           ## 000001B0
/* 005DC 8089869C 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 005E0 808986A0 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 005E4 808986A4 0320F809 */  jalr    $ra, $t9                   
/* 005E8 808986A8 A48F01B0 */  sh      $t7, 0x01B0($a0)           ## 000001B0
/* 005EC 808986AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005F0 808986B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005F4 808986B4 03E00008 */  jr      $ra                        
/* 005F8 808986B8 00000000 */  nop
