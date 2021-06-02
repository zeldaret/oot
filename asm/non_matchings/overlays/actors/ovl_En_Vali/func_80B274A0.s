.late_rodata
glabel D_80B28A60
    .float 0.7

.text
glabel func_80B274A0
/* 00DF0 80B274A0 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 00DF4 80B274A4 AFBF0064 */  sw      $ra, 0x0064($sp)           
/* 00DF8 80B274A8 AFB70060 */  sw      $s7, 0x0060($sp)           
/* 00DFC 80B274AC AFB6005C */  sw      $s6, 0x005C($sp)           
/* 00E00 80B274B0 AFB50058 */  sw      $s5, 0x0058($sp)           
/* 00E04 80B274B4 AFB40054 */  sw      $s4, 0x0054($sp)           
/* 00E08 80B274B8 AFB30050 */  sw      $s3, 0x0050($sp)           
/* 00E0C 80B274BC AFB2004C */  sw      $s2, 0x004C($sp)           
/* 00E10 80B274C0 AFB10048 */  sw      $s1, 0x0048($sp)           
/* 00E14 80B274C4 AFB00044 */  sw      $s0, 0x0044($sp)           
/* 00E18 80B274C8 F7BA0038 */  sdc1    $f26, 0x0038($sp)          
/* 00E1C 80B274CC F7B80030 */  sdc1    $f24, 0x0030($sp)          
/* 00E20 80B274D0 F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 00E24 80B274D4 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 00E28 80B274D8 84820196 */  lh      $v0, 0x0196($a0)           ## 00000196
/* 00E2C 80B274DC 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00E30 80B274E0 00A0B025 */  or      $s6, $a1, $zero            ## $s6 = 00000000
/* 00E34 80B274E4 10400003 */  beq     $v0, $zero, .L80B274F4     
/* 00E38 80B274E8 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00E3C 80B274EC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00E40 80B274F0 A48E0196 */  sh      $t6, 0x0196($a0)           ## 00000196
.L80B274F4:
/* 00E44 80B274F4 3C0180B3 */  lui     $at, %hi(D_80B28A60)       ## $at = 80B30000
/* 00E48 80B274F8 C43A8A60 */  lwc1    $f26, %lo(D_80B28A60)($at) 
/* 00E4C 80B274FC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00E50 80B27500 4481C000 */  mtc1    $at, $f24                  ## $f24 = 1.00
/* 00E54 80B27504 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00E58 80B27508 4481B000 */  mtc1    $at, $f22                  ## $f22 = 8.00
/* 00E5C 80B2750C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00E60 80B27510 3C1580B3 */  lui     $s5, %hi(D_80B28964)       ## $s5 = 80B30000
/* 00E64 80B27514 3C1480B3 */  lui     $s4, %hi(D_80B28958)       ## $s4 = 80B30000
/* 00E68 80B27518 4481A000 */  mtc1    $at, $f20                  ## $f20 = 20.00
/* 00E6C 80B2751C 26948958 */  addiu   $s4, $s4, %lo(D_80B28958)  ## $s4 = 80B28958
/* 00E70 80B27520 26B58964 */  addiu   $s5, $s5, %lo(D_80B28964)  ## $s5 = 80B28964
/* 00E74 80B27524 24170002 */  addiu   $s7, $zero, 0x0002         ## $s7 = 00000002
/* 00E78 80B27528 27B30070 */  addiu   $s3, $sp, 0x0070           ## $s3 = FFFFFFF0
.L80B2752C:
/* 00E7C 80B2752C 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 00E80 80B27530 4600A306 */  mov.s   $f12, $f20                 
/* 00E84 80B27534 C6440024 */  lwc1    $f4, 0x0024($s2)           ## 00000024
/* 00E88 80B27538 4600B306 */  mov.s   $f12, $f22                 
/* 00E8C 80B2753C 46040180 */  add.s   $f6, $f0, $f4              
/* 00E90 80B27540 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 00E94 80B27544 E7A60070 */  swc1    $f6, 0x0070($sp)           
/* 00E98 80B27548 C6480028 */  lwc1    $f8, 0x0028($s2)           ## 00000028
/* 00E9C 80B2754C 4600A306 */  mov.s   $f12, $f20                 
/* 00EA0 80B27550 46080280 */  add.s   $f10, $f0, $f8             
/* 00EA4 80B27554 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 00EA8 80B27558 E7AA0074 */  swc1    $f10, 0x0074($sp)          
/* 00EAC 80B2755C C650002C */  lwc1    $f16, 0x002C($s2)          ## 0000002C
/* 00EB0 80B27560 46100480 */  add.s   $f18, $f0, $f16            
/* 00EB4 80B27564 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00EB8 80B27568 E7B20078 */  swc1    $f18, 0x0078($sp)          
/* 00EBC 80B2756C 46180100 */  add.s   $f4, $f0, $f24             
/* 00EC0 80B27570 3C0180B3 */  lui     $at, %hi(D_80B2895C)       ## $at = 80B30000
/* 00EC4 80B27574 24040028 */  addiu   $a0, $zero, 0x0028         ## $a0 = 00000028
/* 00EC8 80B27578 24050028 */  addiu   $a1, $zero, 0x0028         ## $a1 = 00000028
/* 00ECC 80B2757C 0C01DF64 */  jal     Rand_S16Offset
              
/* 00ED0 80B27580 E424895C */  swc1    $f4, %lo(D_80B2895C)($at)  
/* 00ED4 80B27584 00028400 */  sll     $s0, $v0, 16               
/* 00ED8 80B27588 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00EDC 80B2758C 00108403 */  sra     $s0, $s0, 16               
/* 00EE0 80B27590 461A003C */  c.lt.s  $f0, $f26                  
/* 00EE4 80B27594 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 00EE8 80B27598 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFF0
/* 00EEC 80B2759C 02803025 */  or      $a2, $s4, $zero            ## $a2 = 80B28958
/* 00EF0 80B275A0 4500000E */  bc1f    .L80B275DC                 
/* 00EF4 80B275A4 02A03825 */  or      $a3, $s5, $zero            ## $a3 = 80B28964
/* 00EF8 80B275A8 240F0019 */  addiu   $t7, $zero, 0x0019         ## $t7 = 00000019
/* 00EFC 80B275AC 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00F00 80B275B0 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 00F04 80B275B4 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00F08 80B275B8 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 00F0C 80B275BC 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFF0
/* 00F10 80B275C0 02803025 */  or      $a2, $s4, $zero            ## $a2 = 80B28958
/* 00F14 80B275C4 02A03825 */  or      $a3, $s5, $zero            ## $a3 = 80B28964
/* 00F18 80B275C8 AFB00010 */  sw      $s0, 0x0010($sp)           
/* 00F1C 80B275CC 0C00A586 */  jal     EffectSsDtBubble_SpawnColorProfile              
/* 00F20 80B275D0 AFB70018 */  sw      $s7, 0x0018($sp)           
/* 00F24 80B275D4 10000009 */  beq     $zero, $zero, .L80B275FC   
/* 00F28 80B275D8 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
.L80B275DC:
/* 00F2C 80B275DC 24190019 */  addiu   $t9, $zero, 0x0019         ## $t9 = 00000019
/* 00F30 80B275E0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00F34 80B275E4 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 00F38 80B275E8 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00F3C 80B275EC AFB00010 */  sw      $s0, 0x0010($sp)           
/* 00F40 80B275F0 0C00A586 */  jal     EffectSsDtBubble_SpawnColorProfile              
/* 00F44 80B275F4 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00F48 80B275F8 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000002
.L80B275FC:
/* 00F4C 80B275FC 1637FFCB */  bne     $s1, $s7, .L80B2752C       
/* 00F50 80B27600 00000000 */  nop
/* 00F54 80B27604 86490196 */  lh      $t1, 0x0196($s2)           ## 00000196
/* 00F58 80B27608 55200004 */  bnel    $t1, $zero, .L80B2761C     
/* 00F5C 80B2760C 8FBF0064 */  lw      $ra, 0x0064($sp)           
/* 00F60 80B27610 0C00B55C */  jal     Actor_Kill
              
/* 00F64 80B27614 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00F68 80B27618 8FBF0064 */  lw      $ra, 0x0064($sp)           
.L80B2761C:
/* 00F6C 80B2761C D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 00F70 80B27620 D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 00F74 80B27624 D7B80030 */  ldc1    $f24, 0x0030($sp)          
/* 00F78 80B27628 D7BA0038 */  ldc1    $f26, 0x0038($sp)          
/* 00F7C 80B2762C 8FB00044 */  lw      $s0, 0x0044($sp)           
/* 00F80 80B27630 8FB10048 */  lw      $s1, 0x0048($sp)           
/* 00F84 80B27634 8FB2004C */  lw      $s2, 0x004C($sp)           
/* 00F88 80B27638 8FB30050 */  lw      $s3, 0x0050($sp)           
/* 00F8C 80B2763C 8FB40054 */  lw      $s4, 0x0054($sp)           
/* 00F90 80B27640 8FB50058 */  lw      $s5, 0x0058($sp)           
/* 00F94 80B27644 8FB6005C */  lw      $s6, 0x005C($sp)           
/* 00F98 80B27648 8FB70060 */  lw      $s7, 0x0060($sp)           
/* 00F9C 80B2764C 03E00008 */  jr      $ra                        
/* 00FA0 80B27650 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
