glabel func_80B1F7A8
/* 01E28 80B1F7A8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01E2C 80B1F7AC 8FAE0030 */  lw      $t6, 0x0030($sp)           
/* 01E30 80B1F7B0 8FAF0034 */  lw      $t7, 0x0034($sp)           
/* 01E34 80B1F7B4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01E38 80B1F7B8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01E3C 80B1F7BC 0C023F32 */  jal     func_8008FCC8              
/* 01E40 80B1F7C0 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 01E44 80B1F7C4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01E48 80B1F7C8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01E4C 80B1F7CC 03E00008 */  jr      $ra                        
/* 01E50 80B1F7D0 00000000 */  nop


