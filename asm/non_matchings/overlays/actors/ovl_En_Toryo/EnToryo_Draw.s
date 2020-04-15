glabel EnToryo_Draw
/* 00938 80B20AA8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0093C 80B20AAC AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00940 80B20AB0 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00944 80B20AB4 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00948 80B20AB8 0C024F46 */  jal     func_80093D18
/* 0094C 80B20ABC 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 00950 80B20AC0 8FA20028 */  lw      $v0, 0x0028($sp)
/* 00954 80B20AC4 3C0F80B2 */  lui     $t7, %hi(func_80B20B04)    ## $t7 = 80B20000
/* 00958 80B20AC8 3C1880B2 */  lui     $t8, %hi(func_80B20B94)    ## $t8 = 80B20000
/* 0095C 80B20ACC 8C450150 */  lw      $a1, 0x0150($v0)           ## 00000150
/* 00960 80B20AD0 8C46016C */  lw      $a2, 0x016C($v0)           ## 0000016C
/* 00964 80B20AD4 9047014E */  lbu     $a3, 0x014E($v0)           ## 0000014E
/* 00968 80B20AD8 27180B94 */  addiu   $t8, $t8, %lo(func_80B20B94) ## $t8 = 80B20B94
/* 0096C 80B20ADC 25EF0B04 */  addiu   $t7, $t7, %lo(func_80B20B04) ## $t7 = 80B20B04
/* 00970 80B20AE0 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 00974 80B20AE4 AFB80014 */  sw      $t8, 0x0014($sp)
/* 00978 80B20AE8 8FA4002C */  lw      $a0, 0x002C($sp)
/* 0097C 80B20AEC 0C0286B2 */  jal     SkelAnime_DrawSV
/* 00980 80B20AF0 AFA20018 */  sw      $v0, 0x0018($sp)
/* 00984 80B20AF4 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00988 80B20AF8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0098C 80B20AFC 03E00008 */  jr      $ra
/* 00990 80B20B00 00000000 */  nop
