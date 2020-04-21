glabel EnFirefly_Destroy
/* 0025C 80A132CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00260 80A132D0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00264 80A132D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00268 80A132D8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0026C 80A132DC 0C016F32 */  jal     func_8005BCC8              
/* 00270 80A132E0 24C50314 */  addiu   $a1, $a2, 0x0314           ## $a1 = 00000314
/* 00274 80A132E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00278 80A132E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0027C 80A132EC 03E00008 */  jr      $ra                        
/* 00280 80A132F0 00000000 */  nop
