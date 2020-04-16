glabel func_808327C4
/* 005B4 808327C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005B8 808327C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005BC 808327CC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 005C0 808327D0 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00000000
/* 005C4 808327D4 0C20C9E9 */  jal     func_808327A4              
/* 005C8 808327D8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 005CC 808327DC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 005D0 808327E0 0C00BDF7 */  jal     func_8002F7DC              
/* 005D4 808327E4 3045FFFF */  andi    $a1, $v0, 0xFFFF           ## $a1 = 00000000
/* 005D8 808327E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005DC 808327EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005E0 808327F0 03E00008 */  jr      $ra                        
/* 005E4 808327F4 00000000 */  nop
