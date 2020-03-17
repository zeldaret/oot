glabel func_808AED48
/* 005C8 808AED48 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 005CC 808AED4C 8482016A */  lh      $v0, 0x016A($a0)           ## 0000016A
/* 005D0 808AED50 3C0F808B */  lui     $t7, %hi(func_808AED7C)    ## $t7 = 808B0000
/* 005D4 808AED54 25EFED7C */  addiu   $t7, $t7, %lo(func_808AED7C) ## $t7 = 808AED7C
/* 005D8 808AED58 10400003 */  beq     $v0, $zero, .L808AED68     
/* 005DC 808AED5C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 005E0 808AED60 A48E016A */  sh      $t6, 0x016A($a0)           ## 0000016A
/* 005E4 808AED64 8482016A */  lh      $v0, 0x016A($a0)           ## 0000016A
.L808AED68:
/* 005E8 808AED68 14400002 */  bne     $v0, $zero, .L808AED74     
/* 005EC 808AED6C 00000000 */  nop
/* 005F0 808AED70 AC8F0164 */  sw      $t7, 0x0164($a0)           ## 00000164
.L808AED74:
/* 005F4 808AED74 03E00008 */  jr      $ra                        
/* 005F8 808AED78 00000000 */  nop


