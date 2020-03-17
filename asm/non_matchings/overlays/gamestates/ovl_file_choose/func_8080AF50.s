glabel func_8080AF50
/* 07210 8080AF50 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 07214 8080AF54 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 07218 8080AF58 AFA7004C */  sw      $a3, 0x004C($sp)           
/* 0721C 8080AF5C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 07220 8080AF60 44856000 */  mtc1    $a1, $f12                  ## $f12 = 0.00
/* 07224 8080AF64 44867000 */  mtc1    $a2, $f14                  ## $f14 = 0.00
/* 07228 8080AF68 C7A4004C */  lwc1    $f4, 0x004C($sp)           
/* 0722C 8080AF6C 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 07230 8080AF70 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 07234 8080AF74 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 07238 8080AF78 248400B8 */  addiu   $a0, $a0, 0x00B8           ## $a0 = 000000B8
/* 0723C 8080AF7C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 07240 8080AF80 27A60028 */  addiu   $a2, $sp, 0x0028           ## $a2 = FFFFFFE8
/* 07244 8080AF84 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFF4
/* 07248 8080AF88 27A7001C */  addiu   $a3, $sp, 0x001C           ## $a3 = FFFFFFDC
/* 0724C 8080AF8C E7A00030 */  swc1    $f0, 0x0030($sp)           
/* 07250 8080AF90 E7A0002C */  swc1    $f0, 0x002C($sp)           
/* 07254 8080AF94 E7A00028 */  swc1    $f0, 0x0028($sp)           
/* 07258 8080AF98 E7A00024 */  swc1    $f0, 0x0024($sp)           
/* 0725C 8080AF9C E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 07260 8080AFA0 E7AC0034 */  swc1    $f12, 0x0034($sp)          
/* 07264 8080AFA4 E7AE0038 */  swc1    $f14, 0x0038($sp)          
/* 07268 8080AFA8 E7A4003C */  swc1    $f4, 0x003C($sp)           
/* 0726C 8080AFAC 0C02A8D6 */  jal     func_800AA358              
/* 07270 8080AFB0 E7A60020 */  swc1    $f6, 0x0020($sp)           
/* 07274 8080AFB4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 07278 8080AFB8 0C02AA94 */  jal     func_800AAA50              
/* 0727C 8080AFBC 2405007F */  addiu   $a1, $zero, 0x007F         ## $a1 = 0000007F
/* 07280 8080AFC0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 07284 8080AFC4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 07288 8080AFC8 03E00008 */  jr      $ra                        
/* 0728C 8080AFCC 00000000 */  nop


