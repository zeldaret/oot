glabel func_80A0CCB8
/* 015F8 80A0CCB8 8FAE0014 */  lw      $t6, 0x0014($sp)           
/* 015FC 80A0CCBC AFA40000 */  sw      $a0, 0x0000($sp)           
/* 01600 80A0CCC0 AFA7000C */  sw      $a3, 0x000C($sp)           
/* 01604 80A0CCC4 85CF04C2 */  lh      $t7, 0x04C2($t6)           ## 000004C2
/* 01608 80A0CCC8 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 0160C 80A0CCCC 11E00006 */  beq     $t7, $zero, .L80A0CCE8     
/* 01610 80A0CCD0 00000000 */  nop
/* 01614 80A0CCD4 10A10003 */  beq     $a1, $at, .L80A0CCE4       
/* 01618 80A0CCD8 24010015 */  addiu   $at, $zero, 0x0015         ## $at = 00000015
/* 0161C 80A0CCDC 14A10002 */  bne     $a1, $at, .L80A0CCE8       
/* 01620 80A0CCE0 00000000 */  nop
.L80A0CCE4:
/* 01624 80A0CCE4 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
.L80A0CCE8:
/* 01628 80A0CCE8 03E00008 */  jr      $ra                        
/* 0162C 80A0CCEC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000


