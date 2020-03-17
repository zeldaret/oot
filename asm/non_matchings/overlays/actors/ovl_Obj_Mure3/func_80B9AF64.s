glabel func_80B9AF64
/* 00594 80B9AF64 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00598 80B9AF68 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0059C 80B9AF6C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 005A0 80B9AF70 C48E00EC */  lwc1    $f14, 0x00EC($a0)          ## 000000EC
/* 005A4 80B9AF74 C48C00E4 */  lwc1    $f12, 0x00E4($a0)          ## 000000E4
/* 005A8 80B9AF78 0C032D57 */  jal     func_800CB55C              
/* 005AC 80B9AF7C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 005B0 80B9AF80 3C0180BA */  lui     $at, %hi(D_80B9B0E0)       ## $at = 80BA0000
/* 005B4 80B9AF84 C424B0E0 */  lwc1    $f4, %lo(D_80B9B0E0)($at)  
/* 005B8 80B9AF88 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 005BC 80B9AF8C 4604003C */  c.lt.s  $f0, $f4                   
/* 005C0 80B9AF90 00000000 */  nop
/* 005C4 80B9AF94 45020012 */  bc1fl   .L80B9AFE0                 
/* 005C8 80B9AF98 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005CC 80B9AF9C 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 005D0 80B9AFA0 35CF0010 */  ori     $t7, $t6, 0x0010           ## $t7 = 00000010
/* 005D4 80B9AFA4 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 005D8 80B9AFA8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 005DC 80B9AFAC 8498001C */  lh      $t8, 0x001C($a0)           ## 0000001C
/* 005E0 80B9AFB0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 005E4 80B9AFB4 0018CB43 */  sra     $t9, $t8, 13               
/* 005E8 80B9AFB8 33280007 */  andi    $t0, $t9, 0x0007           ## $t0 = 00000000
/* 005EC 80B9AFBC 00084880 */  sll     $t1, $t0,  2               
/* 005F0 80B9AFC0 3C1980BA */  lui     $t9, %hi(D_80B9B0D4)       ## $t9 = 80BA0000
/* 005F4 80B9AFC4 0329C821 */  addu    $t9, $t9, $t1              
/* 005F8 80B9AFC8 8F39B0D4 */  lw      $t9, %lo(D_80B9B0D4)($t9)  
/* 005FC 80B9AFCC 0320F809 */  jalr    $ra, $t9                   
/* 00600 80B9AFD0 00000000 */  nop
/* 00604 80B9AFD4 0C2E6BFB */  jal     func_80B9AFEC              
/* 00608 80B9AFD8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0060C 80B9AFDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9AFE0:
/* 00610 80B9AFE0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00614 80B9AFE4 03E00008 */  jr      $ra                        
/* 00618 80B9AFE8 00000000 */  nop


