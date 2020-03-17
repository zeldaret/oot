glabel func_80851E28
/* 1FC18 80851E28 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1FC1C 80851E2C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1FC20 80851E30 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1FC24 80851E34 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1FC28 80851E38 0C028EF0 */  jal     func_800A3BC0              
/* 1FC2C 80851E3C 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 1FC30 80851E40 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 1FC34 80851E44 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 1FC38 80851E48 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 1FC3C 80851E4C 0C01DE5F */  jal     Math_ApproxS
              
/* 1FC40 80851E50 248400BA */  addiu   $a0, $a0, 0x00BA           ## $a0 = 000000BA
/* 1FC44 80851E54 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1FC48 80851E58 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1FC4C 80851E5C 03E00008 */  jr      $ra                        
/* 1FC50 80851E60 00000000 */  nop


