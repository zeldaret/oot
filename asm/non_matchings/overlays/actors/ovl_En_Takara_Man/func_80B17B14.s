glabel func_80B17B14
/* 005B4 80B17B14 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005B8 80B17B18 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005BC 80B17B1C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 005C0 80B17B20 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 005C4 80B17B24 0C042F6F */  jal     func_8010BDBC              
/* 005C8 80B17B28 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 005CC 80B17B2C 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 005D0 80B17B30 85CF020C */  lh      $t7, 0x020C($t6)           ## 0000020C
/* 005D4 80B17B34 55E2000C */  bnel    $t7, $v0, .L80B17B68       
/* 005D8 80B17B38 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005DC 80B17B3C 0C041AF2 */  jal     func_80106BC8              
/* 005E0 80B17B40 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 005E4 80B17B44 50400008 */  beql    $v0, $zero, .L80B17B68     
/* 005E8 80B17B48 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005EC 80B17B4C 0C041B33 */  jal     func_80106CCC              
/* 005F0 80B17B50 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 005F4 80B17B54 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 005F8 80B17B58 3C1880B1 */  lui     $t8, %hi(func_80B176E0)    ## $t8 = 80B10000
/* 005FC 80B17B5C 271876E0 */  addiu   $t8, $t8, %lo(func_80B176E0) ## $t8 = 80B176E0
/* 00600 80B17B60 AF38014C */  sw      $t8, 0x014C($t9)           ## 0000014C
/* 00604 80B17B64 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B17B68:
/* 00608 80B17B68 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0060C 80B17B6C 03E00008 */  jr      $ra                        
/* 00610 80B17B70 00000000 */  nop


