glabel func_80AEAE1C
/* 0020C 80AEAE1C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00210 80AEAE20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00214 80AEAE24 848E025E */  lh      $t6, 0x025E($a0)           ## 0000025E
/* 00218 80AEAE28 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0021C 80AEAE2C 24C3025E */  addiu   $v1, $a2, 0x025E           ## $v1 = 0000025E
/* 00220 80AEAE30 15C00003 */  bne     $t6, $zero, .L80AEAE40     
/* 00224 80AEAE34 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00228 80AEAE38 10000005 */  beq     $zero, $zero, .L80AEAE50   
/* 0022C 80AEAE3C 2483025E */  addiu   $v1, $a0, 0x025E           ## $v1 = 0000025E
.L80AEAE40:
/* 00230 80AEAE40 846F0000 */  lh      $t7, 0x0000($v1)           ## 0000025E
/* 00234 80AEAE44 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 00238 80AEAE48 A4780000 */  sh      $t8, 0x0000($v1)           ## 0000025E
/* 0023C 80AEAE4C 84620000 */  lh      $v0, 0x0000($v1)           ## 0000025E
.L80AEAE50:
/* 00240 80AEAE50 14400008 */  bne     $v0, $zero, .L80AEAE74     
/* 00244 80AEAE54 2404003C */  addiu   $a0, $zero, 0x003C         ## $a0 = 0000003C
/* 00248 80AEAE58 2405003C */  addiu   $a1, $zero, 0x003C         ## $a1 = 0000003C
/* 0024C 80AEAE5C AFA3001C */  sw      $v1, 0x001C($sp)           
/* 00250 80AEAE60 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00254 80AEAE64 AFA60038 */  sw      $a2, 0x0038($sp)           
/* 00258 80AEAE68 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 0025C 80AEAE6C 8FA60038 */  lw      $a2, 0x0038($sp)           
/* 00260 80AEAE70 A4620000 */  sh      $v0, 0x0000($v1)           ## 00000000
.L80AEAE74:
/* 00264 80AEAE74 84790000 */  lh      $t9, 0x0000($v1)           ## 00000000
/* 00268 80AEAE78 24C2025C */  addiu   $v0, $a2, 0x025C           ## $v0 = 0000025C
/* 0026C 80AEAE7C A4590000 */  sh      $t9, 0x0000($v0)           ## 0000025C
/* 00270 80AEAE80 84480000 */  lh      $t0, 0x0000($v0)           ## 0000025C
/* 00274 80AEAE84 29010003 */  slti    $at, $t0, 0x0003           
/* 00278 80AEAE88 54200003 */  bnel    $at, $zero, .L80AEAE98     
/* 0027C 80AEAE8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00280 80AEAE90 A4400000 */  sh      $zero, 0x0000($v0)         ## 0000025C
/* 00284 80AEAE94 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AEAE98:
/* 00288 80AEAE98 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0028C 80AEAE9C 03E00008 */  jr      $ra                        
/* 00290 80AEAEA0 00000000 */  nop


