glabel EnHorseLinkChild_Draw
/* 01A98 80A6AE68 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01A9C 80A6AE6C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01AA0 80A6AE70 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01AA4 80A6AE74 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01AA8 80A6AE78 0C024F46 */  jal     func_80093D18              
/* 01AAC 80A6AE7C 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 01AB0 80A6AE80 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01AB4 80A6AE84 3C0F80A7 */  lui     $t7, %hi(func_80A6AD84)    ## $t7 = 80A70000
/* 01AB8 80A6AE88 25EFAD84 */  addiu   $t7, $t7, %lo(func_80A6AD84) ## $t7 = 80A6AD84
/* 01ABC 80A6AE8C 3C0780A7 */  lui     $a3, %hi(func_80A6ABF8)    ## $a3 = 80A70000
/* 01AC0 80A6AE90 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 01AC4 80A6AE94 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 01AC8 80A6AE98 24E7ABF8 */  addiu   $a3, $a3, %lo(func_80A6ABF8) ## $a3 = 80A6ABF8
/* 01ACC 80A6AE9C AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 01AD0 80A6AEA0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01AD4 80A6AEA4 0C0298D8 */  jal     func_800A6360              
/* 01AD8 80A6AEA8 24860154 */  addiu   $a2, $a0, 0x0154           ## $a2 = 00000154
/* 01ADC 80A6AEAC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01AE0 80A6AEB0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01AE4 80A6AEB4 03E00008 */  jr      $ra                        
/* 01AE8 80A6AEB8 00000000 */  nop
/* 01AEC 80A6AEBC 00000000 */  nop

