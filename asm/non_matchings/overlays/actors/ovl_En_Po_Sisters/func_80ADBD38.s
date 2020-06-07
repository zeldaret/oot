glabel func_80ADBD38
/* 02DA8 80ADBD38 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02DAC 80ADBD3C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02DB0 80ADBD40 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02DB4 80ADBD44 848E019A */  lh      $t6, 0x019A($a0)           ## 0000019A
/* 02DB8 80ADBD48 24860008 */  addiu   $a2, $a0, 0x0008           ## $a2 = 00000008
/* 02DBC 80ADBD4C 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 02DC0 80ADBD50 A48F019A */  sh      $t7, 0x019A($a0)           ## 0000019A
/* 02DC4 80ADBD54 8485019A */  lh      $a1, 0x019A($a0)           ## 0000019A
/* 02DC8 80ADBD58 0C2B6490 */  jal     func_80AD9240              
/* 02DCC 80ADBD5C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02DD0 80ADBD60 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02DD4 80ADBD64 24010020 */  addiu   $at, $zero, 0x0020         ## $at = 00000020
/* 02DD8 80ADBD68 8498019A */  lh      $t8, 0x019A($a0)           ## 0000019A
/* 02DDC 80ADBD6C 57010004 */  bnel    $t8, $at, .L80ADBD80       
/* 02DE0 80ADBD70 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02DE4 80ADBD74 0C2B686E */  jal     func_80ADA1B8              
/* 02DE8 80ADBD78 00000000 */  nop
/* 02DEC 80ADBD7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADBD80:
/* 02DF0 80ADBD80 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02DF4 80ADBD84 03E00008 */  jr      $ra                        
/* 02DF8 80ADBD88 00000000 */  nop
