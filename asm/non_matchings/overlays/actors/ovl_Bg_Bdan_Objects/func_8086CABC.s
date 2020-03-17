glabel func_8086CABC
/* 00E1C 8086CABC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E20 8086CAC0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E24 8086CAC4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00E28 8086CAC8 8485016A */  lh      $a1, 0x016A($a0)           ## 0000016A
/* 00E2C 8086CACC 10A00003 */  beq     $a1, $zero, .L8086CADC     
/* 00E30 8086CAD0 24AEFFFF */  addiu   $t6, $a1, 0xFFFF           ## $t6 = FFFFFFFF
/* 00E34 8086CAD4 A48E016A */  sh      $t6, 0x016A($a0)           ## 0000016A
/* 00E38 8086CAD8 8485016A */  lh      $a1, 0x016A($a0)           ## 0000016A
.L8086CADC:
/* 00E3C 8086CADC 0C00BE65 */  jal     func_8002F994              
/* 00E40 8086CAE0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00E44 8086CAE4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00E48 8086CAE8 3C188087 */  lui     $t8, %hi(func_8086C9F0)    ## $t8 = 80870000
/* 00E4C 8086CAEC 2718C9F0 */  addiu   $t8, $t8, %lo(func_8086C9F0) ## $t8 = 8086C9F0
/* 00E50 8086CAF0 848F016A */  lh      $t7, 0x016A($a0)           ## 0000016A
/* 00E54 8086CAF4 55E00003 */  bnel    $t7, $zero, .L8086CB04     
/* 00E58 8086CAF8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E5C 8086CAFC AC980164 */  sw      $t8, 0x0164($a0)           ## 00000164
/* 00E60 8086CB00 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086CB04:
/* 00E64 8086CB04 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E68 8086CB08 03E00008 */  jr      $ra                        
/* 00E6C 8086CB0C 00000000 */  nop


