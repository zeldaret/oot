.late_rodata
glabel D_80976D2C
    .float 0.017453292

glabel D_80976D30
    .float 9.58738019108e-05

glabel D_80976D34
    .float 9.58738019108e-05

.text
glabel func_80973CFC
/* 02DAC 80973CFC 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 02DB0 80973D00 AFA60050 */  sw      $a2, 0x0050($sp)           
/* 02DB4 80973D04 C7A60050 */  lwc1    $f6, 0x0050($sp)           
/* 02DB8 80973D08 C7A4005C */  lwc1    $f4, 0x005C($sp)           
/* 02DBC 80973D0C AFA70054 */  sw      $a3, 0x0054($sp)           
/* 02DC0 80973D10 C7AA0054 */  lwc1    $f10, 0x0054($sp)          
/* 02DC4 80973D14 C7A80060 */  lwc1    $f8, 0x0060($sp)           
/* 02DC8 80973D18 46062081 */  sub.s   $f2, $f4, $f6              
/* 02DCC 80973D1C C7A60058 */  lwc1    $f6, 0x0058($sp)           
/* 02DD0 80973D20 C7A40064 */  lwc1    $f4, 0x0064($sp)           
/* 02DD4 80973D24 460A4401 */  sub.s   $f16, $f8, $f10            
/* 02DD8 80973D28 46021202 */  mul.s   $f8, $f2, $f2              
/* 02DDC 80973D2C F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 02DE0 80973D30 46062481 */  sub.s   $f18, $f4, $f6             
/* 02DE4 80973D34 46108282 */  mul.s   $f10, $f16, $f16           
/* 02DE8 80973D38 E7AC0048 */  swc1    $f12, 0x0048($sp)          
/* 02DEC 80973D3C 3C018097 */  lui     $at, %hi(D_80976D2C)       ## $at = 80970000
/* 02DF0 80973D40 46129182 */  mul.s   $f6, $f18, $f18            
/* 02DF4 80973D44 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 02DF8 80973D48 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 02DFC 80973D4C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 02E00 80973D50 460A4100 */  add.s   $f4, $f8, $f10             
/* 02E04 80973D54 C42A6D2C */  lwc1    $f10, %lo(D_80976D2C)($at) 
/* 02E08 80973D58 C7A80048 */  lwc1    $f8, 0x0048($sp)           
/* 02E0C 80973D5C 46062000 */  add.s   $f0, $f4, $f6              
/* 02E10 80973D60 46000004 */  sqrt.s  $f0, $f0                   
/* 02E14 80973D64 460E0582 */  mul.s   $f22, $f0, $f14            
/* 02E18 80973D68 00000000 */  nop
/* 02E1C 80973D6C 460A4502 */  mul.s   $f20, $f8, $f10            
/* 02E20 80973D70 0C041184 */  jal     cosf
              
/* 02E24 80973D74 4600A306 */  mov.s   $f12, $f20                 
/* 02E28 80973D78 C7A40068 */  lwc1    $f4, 0x0068($sp)           
/* 02E2C 80973D7C 8FB00074 */  lw      $s0, 0x0074($sp)           
/* 02E30 80973D80 4600A306 */  mov.s   $f12, $f20                 
/* 02E34 80973D84 46040182 */  mul.s   $f6, $f0, $f4              
/* 02E38 80973D88 E6160028 */  swc1    $f22, 0x0028($s0)          ## 00000028
/* 02E3C 80973D8C 0C0400A4 */  jal     sinf
              
/* 02E40 80973D90 E6060024 */  swc1    $f6, 0x0024($s0)           ## 00000024
/* 02E44 80973D94 C7A80068 */  lwc1    $f8, 0x0068($sp)           
/* 02E48 80973D98 3C018097 */  lui     $at, %hi(D_80976D30)       ## $at = 80970000
/* 02E4C 80973D9C C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 02E50 80973DA0 46080282 */  mul.s   $f10, $f0, $f8             
/* 02E54 80973DA4 E60A002C */  swc1    $f10, 0x002C($s0)          ## 0000002C
/* 02E58 80973DA8 87AE006C */  lh      $t6, 0x006C($sp)           
/* 02E5C 80973DAC C42A6D30 */  lwc1    $f10, %lo(D_80976D30)($at) 
/* 02E60 80973DB0 E7A40038 */  swc1    $f4, 0x0038($sp)           
/* 02E64 80973DB4 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 02E68 80973DB8 00000000 */  nop
/* 02E6C 80973DBC 46803220 */  cvt.s.w $f8, $f6                   
/* 02E70 80973DC0 460A4582 */  mul.s   $f22, $f8, $f10            
/* 02E74 80973DC4 0C041184 */  jal     cosf
              
/* 02E78 80973DC8 4600B306 */  mov.s   $f12, $f22                 
/* 02E7C 80973DCC 46000506 */  mov.s   $f20, $f0                  
/* 02E80 80973DD0 0C0400A4 */  jal     sinf
              
/* 02E84 80973DD4 4600B306 */  mov.s   $f12, $f22                 
/* 02E88 80973DD8 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 02E8C 80973DDC C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 02E90 80973DE0 4600B306 */  mov.s   $f12, $f22                 
/* 02E94 80973DE4 46142182 */  mul.s   $f6, $f4, $f20             
/* 02E98 80973DE8 00000000 */  nop
/* 02E9C 80973DEC 46080282 */  mul.s   $f10, $f0, $f8             
/* 02EA0 80973DF0 460A3101 */  sub.s   $f4, $f6, $f10             
/* 02EA4 80973DF4 0C041184 */  jal     cosf
              
/* 02EA8 80973DF8 E7A40034 */  swc1    $f4, 0x0034($sp)           
/* 02EAC 80973DFC 46000506 */  mov.s   $f20, $f0                  
/* 02EB0 80973E00 0C0400A4 */  jal     sinf
              
/* 02EB4 80973E04 4600B306 */  mov.s   $f12, $f22                 
/* 02EB8 80973E08 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 02EBC 80973E0C C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 02EC0 80973E10 87AF006E */  lh      $t7, 0x006E($sp)           
/* 02EC4 80973E14 46080182 */  mul.s   $f6, $f0, $f8              
/* 02EC8 80973E18 3C018097 */  lui     $at, %hi(D_80976D34)       ## $at = 80970000
/* 02ECC 80973E1C 46145102 */  mul.s   $f4, $f10, $f20            
/* 02ED0 80973E20 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 02ED4 80973E24 46043200 */  add.s   $f8, $f6, $f4              
/* 02ED8 80973E28 C4246D34 */  lwc1    $f4, %lo(D_80976D34)($at)  
/* 02EDC 80973E2C 468051A0 */  cvt.s.w $f6, $f10                  
/* 02EE0 80973E30 E7A80030 */  swc1    $f8, 0x0030($sp)           
/* 02EE4 80973E34 46043582 */  mul.s   $f22, $f6, $f4             
/* 02EE8 80973E38 0C041184 */  jal     cosf
              
/* 02EEC 80973E3C 4600B306 */  mov.s   $f12, $f22                 
/* 02EF0 80973E40 46000506 */  mov.s   $f20, $f0                  
/* 02EF4 80973E44 0C0400A4 */  jal     sinf
              
/* 02EF8 80973E48 4600B306 */  mov.s   $f12, $f22                 
/* 02EFC 80973E4C C7A80038 */  lwc1    $f8, 0x0038($sp)           
/* 02F00 80973E50 C7A60030 */  lwc1    $f6, 0x0030($sp)           
/* 02F04 80973E54 4600B306 */  mov.s   $f12, $f22                 
/* 02F08 80973E58 46144282 */  mul.s   $f10, $f8, $f20            
/* 02F0C 80973E5C 00000000 */  nop
/* 02F10 80973E60 46060102 */  mul.s   $f4, $f0, $f6              
/* 02F14 80973E64 46045201 */  sub.s   $f8, $f10, $f4             
/* 02F18 80973E68 E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 02F1C 80973E6C C7A60034 */  lwc1    $f6, 0x0034($sp)           
/* 02F20 80973E70 0C041184 */  jal     cosf
              
/* 02F24 80973E74 E6060028 */  swc1    $f6, 0x0028($s0)           ## 00000028
/* 02F28 80973E78 46000506 */  mov.s   $f20, $f0                  
/* 02F2C 80973E7C 0C0400A4 */  jal     sinf
              
/* 02F30 80973E80 4600B306 */  mov.s   $f12, $f22                 
/* 02F34 80973E84 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 02F38 80973E88 C7A40050 */  lwc1    $f4, 0x0050($sp)           
/* 02F3C 80973E8C C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 02F40 80973E90 46045200 */  add.s   $f8, $f10, $f4             
/* 02F44 80973E94 E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 02F48 80973E98 C7AA0054 */  lwc1    $f10, 0x0054($sp)          
/* 02F4C 80973E9C 460A3100 */  add.s   $f4, $f6, $f10             
/* 02F50 80973EA0 E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 02F54 80973EA4 C7A80038 */  lwc1    $f8, 0x0038($sp)           
/* 02F58 80973EA8 C7AA0030 */  lwc1    $f10, 0x0030($sp)          
/* 02F5C 80973EAC 46080182 */  mul.s   $f6, $f0, $f8              
/* 02F60 80973EB0 00000000 */  nop
/* 02F64 80973EB4 46145102 */  mul.s   $f4, $f10, $f20            
/* 02F68 80973EB8 C7AA0058 */  lwc1    $f10, 0x0058($sp)          
/* 02F6C 80973EBC 46043200 */  add.s   $f8, $f6, $f4              
/* 02F70 80973EC0 460A4180 */  add.s   $f6, $f8, $f10             
/* 02F74 80973EC4 E606002C */  swc1    $f6, 0x002C($s0)           ## 0000002C
/* 02F78 80973EC8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 02F7C 80973ECC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 02F80 80973ED0 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 02F84 80973ED4 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 02F88 80973ED8 03E00008 */  jr      $ra                        
/* 02F8C 80973EDC 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000


