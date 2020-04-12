.late_rodata
glabel D_80B7B544
    .float 0.3

glabel D_80B7B548
    .float 6.28

glabel D_80B7B54C
    .float 0.02

glabel D_80B7B550
    .float 0.025

.text
glabel func_80B70CF0
/* 07350 80B70CF0 27BDFF58 */  addiu   $sp, $sp, 0xFF58           ## $sp = FFFFFF58
/* 07354 80B70CF4 AFBF006C */  sw      $ra, 0x006C($sp)           
/* 07358 80B70CF8 AFB60068 */  sw      $s6, 0x0068($sp)           
/* 0735C 80B70CFC AFB50064 */  sw      $s5, 0x0064($sp)           
/* 07360 80B70D00 AFB40060 */  sw      $s4, 0x0060($sp)           
/* 07364 80B70D04 AFB3005C */  sw      $s3, 0x005C($sp)           
/* 07368 80B70D08 AFB20058 */  sw      $s2, 0x0058($sp)           
/* 0736C 80B70D0C AFB10054 */  sw      $s1, 0x0054($sp)           
/* 07370 80B70D10 AFB00050 */  sw      $s0, 0x0050($sp)           
/* 07374 80B70D14 F7BE0048 */  sdc1    $f30, 0x0048($sp)          
/* 07378 80B70D18 F7BC0040 */  sdc1    $f28, 0x0040($sp)          
/* 0737C 80B70D1C F7BA0038 */  sdc1    $f26, 0x0038($sp)          
/* 07380 80B70D20 F7B80030 */  sdc1    $f24, 0x0030($sp)          
/* 07384 80B70D24 F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 07388 80B70D28 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 0738C 80B70D2C 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 07390 80B70D30 C48001AC */  lwc1    $f0, 0x01AC($a0)           ## 000001AC
/* 07394 80B70D34 44812000 */  mtc1    $at, $f4                   ## $f4 = 45.00
/* 07398 80B70D38 24160014 */  addiu   $s6, $zero, 0x0014         ## $s6 = 00000014
/* 0739C 80B70D3C 3C0180B8 */  lui     $at, %hi(D_80B7B544)       ## $at = 80B80000
/* 073A0 80B70D40 4600203E */  c.le.s  $f4, $f0                   
/* 073A4 80B70D44 24920024 */  addiu   $s2, $a0, 0x0024           ## $s2 = 00000024
/* 073A8 80B70D48 249300E4 */  addiu   $s3, $a0, 0x00E4           ## $s3 = 000000E4
/* 073AC 80B70D4C 27B50088 */  addiu   $s5, $sp, 0x0088           ## $s5 = FFFFFFE0
/* 073B0 80B70D50 45000005 */  bc1f    .L80B70D68                 
/* 073B4 80B70D54 00000000 */  nop
/* 073B8 80B70D58 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 073BC 80B70D5C 4481E000 */  mtc1    $at, $f28                  ## $f28 = 0.50
/* 073C0 80B70D60 10000002 */  beq     $zero, $zero, .L80B70D6C   
/* 073C4 80B70D64 2416001E */  addiu   $s6, $zero, 0x001E         ## $s6 = 0000001E
.L80B70D68:
/* 073C8 80B70D68 C43CB544 */  lwc1    $f28, %lo(D_80B7B544)($at) 
.L80B70D6C:
/* 073CC 80B70D6C 1AC00049 */  blez    $s6, .L80B70E94            
/* 073D0 80B70D70 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 073D4 80B70D74 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 073D8 80B70D78 00A1A021 */  addu    $s4, $a1, $at              
/* 073DC 80B70D7C 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 073E0 80B70D80 4481F000 */  mtc1    $at, $f30                  ## $f30 = 1.50
/* 073E4 80B70D84 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 073E8 80B70D88 4481D000 */  mtc1    $at, $f26                  ## $f26 = 2.00
/* 073EC 80B70D8C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 073F0 80B70D90 4481C000 */  mtc1    $at, $f24                  ## $f24 = 3.00
/* 073F4 80B70D94 27B10094 */  addiu   $s1, $sp, 0x0094           ## $s1 = FFFFFFEC
.L80B70D98:
/* 073F8 80B70D98 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 073FC 80B70D9C 4600F306 */  mov.s   $f12, $f30                 
/* 07400 80B70DA0 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 07404 80B70DA4 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 07408 80B70DA8 3C0180B8 */  lui     $at, %hi(D_80B7B548)       ## $at = 80B80000
/* 0740C 80B70DAC C42CB548 */  lwc1    $f12, %lo(D_80B7B548)($at) 
/* 07410 80B70DB0 46060200 */  add.s   $f8, $f0, $f6              
/* 07414 80B70DB4 461C4502 */  mul.s   $f20, $f8, $f28            
/* 07418 80B70DB8 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0741C 80B70DBC 00000000 */  nop
/* 07420 80B70DC0 46000586 */  mov.s   $f22, $f0                  
/* 07424 80B70DC4 0C0400A4 */  jal     sinf
              
/* 07428 80B70DC8 46000306 */  mov.s   $f12, $f0                  
/* 0742C 80B70DCC 46140282 */  mul.s   $f10, $f0, $f20            
/* 07430 80B70DD0 4600B306 */  mov.s   $f12, $f22                 
/* 07434 80B70DD4 0C041184 */  jal     cosf
              
/* 07438 80B70DD8 E7AA0088 */  swc1    $f10, 0x0088($sp)          
/* 0743C 80B70DDC 46140402 */  mul.s   $f16, $f0, $f20            
/* 07440 80B70DE0 4600D306 */  mov.s   $f12, $f26                 
/* 07444 80B70DE4 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 07448 80B70DE8 E7B00090 */  swc1    $f16, 0x0090($sp)          
/* 0744C 80B70DEC 461A0480 */  add.s   $f18, $f0, $f26            
/* 07450 80B70DF0 3C0180B8 */  lui     $at, %hi(D_80B7B54C)       ## $at = 80B80000
/* 07454 80B70DF4 E7B2008C */  swc1    $f18, 0x008C($sp)          
/* 07458 80B70DF8 8E4F0000 */  lw      $t7, 0x0000($s2)           ## 00000024
/* 0745C 80B70DFC AE2F0000 */  sw      $t7, 0x0000($s1)           ## FFFFFFEC
/* 07460 80B70E00 8E4E0004 */  lw      $t6, 0x0004($s2)           ## 00000028
/* 07464 80B70E04 AE2E0004 */  sw      $t6, 0x0004($s1)           ## FFFFFFF0
/* 07468 80B70E08 8E4F0008 */  lw      $t7, 0x0008($s2)           ## 0000002C
/* 0746C 80B70E0C AE2F0008 */  sw      $t7, 0x0008($s1)           ## FFFFFFF4
/* 07470 80B70E10 C7A60088 */  lwc1    $f6, 0x0088($sp)           
/* 07474 80B70E14 C7A40094 */  lwc1    $f4, 0x0094($sp)           
/* 07478 80B70E18 C7B2008C */  lwc1    $f18, 0x008C($sp)          
/* 0747C 80B70E1C 46183202 */  mul.s   $f8, $f6, $f24             
/* 07480 80B70E20 C7B00098 */  lwc1    $f16, 0x0098($sp)          
/* 07484 80B70E24 C42CB54C */  lwc1    $f12, %lo(D_80B7B54C)($at) 
/* 07488 80B70E28 46189182 */  mul.s   $f6, $f18, $f24            
/* 0748C 80B70E2C 46082280 */  add.s   $f10, $f4, $f8             
/* 07490 80B70E30 C7A8009C */  lwc1    $f8, 0x009C($sp)           
/* 07494 80B70E34 46068100 */  add.s   $f4, $f16, $f6             
/* 07498 80B70E38 E7AA0094 */  swc1    $f10, 0x0094($sp)          
/* 0749C 80B70E3C C7AA0090 */  lwc1    $f10, 0x0090($sp)          
/* 074A0 80B70E40 E7A40098 */  swc1    $f4, 0x0098($sp)           
/* 074A4 80B70E44 46185482 */  mul.s   $f18, $f10, $f24           
/* 074A8 80B70E48 46124400 */  add.s   $f16, $f8, $f18            
/* 074AC 80B70E4C 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 074B0 80B70E50 E7B0009C */  swc1    $f16, 0x009C($sp)          
/* 074B4 80B70E54 3C0180B8 */  lui     $at, %hi(D_80B7B550)       ## $at = 80B80000
/* 074B8 80B70E58 C426B550 */  lwc1    $f6, %lo(D_80B7B550)($at)  
/* 074BC 80B70E5C 8E851E10 */  lw      $a1, 0x1E10($s4)           ## 00001E10
/* 074C0 80B70E60 02602025 */  or      $a0, $s3, $zero            ## $a0 = 000000E4
/* 074C4 80B70E64 46060100 */  add.s   $f4, $f0, $f6              
/* 074C8 80B70E68 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFEC
/* 074CC 80B70E6C 02A03825 */  or      $a3, $s5, $zero            ## $a3 = FFFFFFE0
/* 074D0 80B70E70 461C2282 */  mul.s   $f10, $f4, $f28            
/* 074D4 80B70E74 0C2DA762 */  jal     func_80B69D88              
/* 074D8 80B70E78 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 074DC 80B70E7C 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 074E0 80B70E80 00108400 */  sll     $s0, $s0, 16               
/* 074E4 80B70E84 00108403 */  sra     $s0, $s0, 16               
/* 074E8 80B70E88 0216082A */  slt     $at, $s0, $s6              
/* 074EC 80B70E8C 1420FFC2 */  bne     $at, $zero, .L80B70D98     
/* 074F0 80B70E90 00000000 */  nop
.L80B70E94:
/* 074F4 80B70E94 8FBF006C */  lw      $ra, 0x006C($sp)           
/* 074F8 80B70E98 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 074FC 80B70E9C D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 07500 80B70EA0 D7B80030 */  ldc1    $f24, 0x0030($sp)          
/* 07504 80B70EA4 D7BA0038 */  ldc1    $f26, 0x0038($sp)          
/* 07508 80B70EA8 D7BC0040 */  ldc1    $f28, 0x0040($sp)          
/* 0750C 80B70EAC D7BE0048 */  ldc1    $f30, 0x0048($sp)          
/* 07510 80B70EB0 8FB00050 */  lw      $s0, 0x0050($sp)           
/* 07514 80B70EB4 8FB10054 */  lw      $s1, 0x0054($sp)           
/* 07518 80B70EB8 8FB20058 */  lw      $s2, 0x0058($sp)           
/* 0751C 80B70EBC 8FB3005C */  lw      $s3, 0x005C($sp)           
/* 07520 80B70EC0 8FB40060 */  lw      $s4, 0x0060($sp)           
/* 07524 80B70EC4 8FB50064 */  lw      $s5, 0x0064($sp)           
/* 07528 80B70EC8 8FB60068 */  lw      $s6, 0x0068($sp)           
/* 0752C 80B70ECC 03E00008 */  jr      $ra                        
/* 07530 80B70ED0 27BD00A8 */  addiu   $sp, $sp, 0x00A8           ## $sp = 00000000
