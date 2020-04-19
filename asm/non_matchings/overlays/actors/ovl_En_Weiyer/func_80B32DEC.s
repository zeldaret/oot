glabel func_80B32DEC
/* 00B5C 80B32DEC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00B60 80B32DF0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B64 80B32DF4 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00B68 80B32DF8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00B6C 80B32DFC 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 00B70 80B32E00 C4440024 */  lwc1    $f4, 0x0024($v0)           ## 00000024
/* 00B74 80B32E04 27A50018 */  addiu   $a1, $sp, 0x0018           ## $a1 = FFFFFFF0
/* 00B78 80B32E08 E7A40018 */  swc1    $f4, 0x0018($sp)           
/* 00B7C 80B32E0C C4460028 */  lwc1    $f6, 0x0028($v0)           ## 00000028
/* 00B80 80B32E10 46083280 */  add.s   $f10, $f6, $f8             
/* 00B84 80B32E14 E7AA001C */  swc1    $f10, 0x001C($sp)          
/* 00B88 80B32E18 C450002C */  lwc1    $f16, 0x002C($v0)          ## 0000002C
/* 00B8C 80B32E1C 0C00B6CA */  jal     func_8002DB28              
/* 00B90 80B32E20 E7B00020 */  swc1    $f16, 0x0020($sp)          
/* 00B94 80B32E24 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B98 80B32E28 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00B9C 80B32E2C 03E00008 */  jr      $ra                        
/* 00BA0 80B32E30 00000000 */  nop
