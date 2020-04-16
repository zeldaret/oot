glabel func_80851DEC
/* 1FBDC 80851DEC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1FBE0 80851DF0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1FBE4 80851DF4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1FBE8 80851DF8 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1FBEC 80851DFC 0C028EF0 */  jal     func_800A3BC0              
/* 1FBF0 80851E00 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 1FBF4 80851E04 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 1FBF8 80851E08 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1FBFC 80851E0C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 1FC00 80851E10 0C01DE5F */  jal     Math_ApproxS
              
/* 1FC04 80851E14 248400BA */  addiu   $a0, $a0, 0x00BA           ## $a0 = 000000BA
/* 1FC08 80851E18 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1FC0C 80851E1C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1FC10 80851E20 03E00008 */  jr      $ra                        
/* 1FC14 80851E24 00000000 */  nop
