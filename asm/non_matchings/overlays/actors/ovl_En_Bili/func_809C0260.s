glabel func_809C0260
/* 009C0 809C0260 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009C4 809C0264 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 009C8 809C0268 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 009CC 809C026C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 009D0 809C0270 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 009D4 809C0274 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 009D8 809C0278 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 009DC 809C027C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 009E0 809C0280 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 009E4 809C0284 84A20196 */  lh      $v0, 0x0196($a1)           ## 00000196
/* 009E8 809C0288 10400003 */  beq     $v0, $zero, .L809C0298     
/* 009EC 809C028C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 009F0 809C0290 A4AE0196 */  sh      $t6, 0x0196($a1)           ## 00000196
/* 009F4 809C0294 84A20196 */  lh      $v0, 0x0196($a1)           ## 00000196
.L809C0298:
/* 009F8 809C0298 54400004 */  bnel    $v0, $zero, .L809C02AC     
/* 009FC 809C029C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A00 809C02A0 0C26FE6F */  jal     func_809BF9BC              
/* 00A04 809C02A4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00A08 809C02A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809C02AC:
/* 00A0C 809C02AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A10 809C02B0 03E00008 */  jr      $ra                        
/* 00A14 809C02B4 00000000 */  nop


