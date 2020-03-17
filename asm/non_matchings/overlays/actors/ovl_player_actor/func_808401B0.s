glabel func_808401B0
/* 0DFA0 808401B0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0DFA4 808401B4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0DFA8 808401B8 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 0DFAC 808401BC AFA40038 */  sw      $a0, 0x0038($sp)           
/* 0DFB0 808401C0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0DFB4 808401C4 0C20CD39 */  jal     func_808334E4              
/* 0DFB8 808401C8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0DFBC 808401CC AFA20030 */  sw      $v0, 0x0030($sp)           
/* 0DFC0 808401D0 0C20CD4A */  jal     func_80833528              
/* 0DFC4 808401D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DFC8 808401D8 C6000868 */  lwc1    $f0, 0x0868($s0)           ## 00000868
/* 0DFCC 808401DC AFA20010 */  sw      $v0, 0x0010($sp)           
/* 0DFD0 808401E0 260E0318 */  addiu   $t6, $s0, 0x0318           ## $t6 = 00000318
/* 0DFD4 808401E4 E7A00014 */  swc1    $f0, 0x0014($sp)           
/* 0DFD8 808401E8 C6040870 */  lwc1    $f4, 0x0870($s0)           ## 00000870
/* 0DFDC 808401EC 44070000 */  mfc1    $a3, $f0                   
/* 0DFE0 808401F0 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 0DFE4 808401F4 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 0DFE8 808401F8 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 0DFEC 808401FC 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 0DFF0 80840200 0C0290C7 */  jal     func_800A431C              
/* 0DFF4 80840204 E7A40018 */  swc1    $f4, 0x0018($sp)           
/* 0DFF8 80840208 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0DFFC 8084020C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 0E000 80840210 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0E004 80840214 03E00008 */  jr      $ra                        
/* 0E008 80840218 00000000 */  nop


