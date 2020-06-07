glabel func_809CBFD4
/* 003D4 809CBFD4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003D8 809CBFD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003DC 809CBFDC 8482020A */  lh      $v0, 0x020A($a0)           ## 0000020A
/* 003E0 809CBFE0 14400003 */  bne     $v0, $zero, .L809CBFF0     
/* 003E4 809CBFE4 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 003E8 809CBFE8 10000003 */  beq     $zero, $zero, .L809CBFF8   
/* 003EC 809CBFEC 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L809CBFF0:
/* 003F0 809CBFF0 A48E020A */  sh      $t6, 0x020A($a0)           ## 0000020A
/* 003F4 809CBFF4 8483020A */  lh      $v1, 0x020A($a0)           ## 0000020A
.L809CBFF8:
/* 003F8 809CBFF8 10600003 */  beq     $v1, $zero, .L809CC008     
/* 003FC 809CBFFC 00000000 */  nop
/* 00400 809CC000 10000003 */  beq     $zero, $zero, .L809CC010   
/* 00404 809CC004 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L809CC008:
/* 00408 809CC008 0C272F3B */  jal     func_809CBCEC              
/* 0040C 809CC00C 00000000 */  nop
.L809CC010:
/* 00410 809CC010 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00414 809CC014 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00418 809CC018 03E00008 */  jr      $ra                        
/* 0041C 809CC01C 00000000 */  nop
