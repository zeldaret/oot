glabel func_80A1CC04
/* 02264 80A1CC04 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 02268 80A1CC08 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 0226C 80A1CC0C 10A10004 */  beq     $a1, $at, .L80A1CC20       
/* 02270 80A1CC10 AFA7000C */  sw      $a3, 0x000C($sp)           
/* 02274 80A1CC14 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 02278 80A1CC18 14A10002 */  bne     $a1, $at, .L80A1CC24       
/* 0227C 80A1CC1C 00000000 */  nop
.L80A1CC20:
/* 02280 80A1CC20 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
.L80A1CC24:
/* 02284 80A1CC24 03E00008 */  jr      $ra                        
/* 02288 80A1CC28 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
