glabel func_80AB7204
/* 01A84 80AB7204 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01A88 80AB7208 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01A8C 80AB720C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01A90 80AB7210 0C2AD7E8 */  jal     func_80AB5FA0              
/* 01A94 80AB7214 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01A98 80AB7218 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01A9C 80AB721C 84820266 */  lh      $v0, 0x0266($a0)           ## 00000266
/* 01AA0 80AB7220 28410002 */  slti    $at, $v0, 0x0002           
/* 01AA4 80AB7224 10200016 */  beq     $at, $zero, .L80AB7280     
/* 01AA8 80AB7228 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01AAC 80AB722C 14410012 */  bne     $v0, $at, .L80AB7278       
/* 01AB0 80AB7230 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01AB4 80AB7234 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 01AB8 80AB7238 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 01ABC 80AB723C 3C0180AC */  lui     $at, %hi(D_80AB8AFC)       ## $at = 80AC0000
/* 01AC0 80AB7240 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 01AC4 80AB7244 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01AC8 80AB7248 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 01ACC 80AB724C C42C8AFC */  lwc1    $f12, %lo(D_80AB8AFC)($at) 
/* 01AD0 80AB7250 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01AD4 80AB7254 4600018D */  trunc.w.s $f6, $f0                   
/* 01AD8 80AB7258 A480025A */  sh      $zero, 0x025A($a0)         ## 0000025A
/* 01ADC 80AB725C 8482025A */  lh      $v0, 0x025A($a0)           ## 0000025A
/* 01AE0 80AB7260 440F3000 */  mfc1    $t7, $f6                   
/* 01AE4 80AB7264 A4820258 */  sh      $v0, 0x0258($a0)           ## 00000258
/* 01AE8 80AB7268 A4820256 */  sh      $v0, 0x0256($a0)           ## 00000256
/* 01AEC 80AB726C A4820254 */  sh      $v0, 0x0254($a0)           ## 00000254
/* 01AF0 80AB7270 10000003 */  beq     $zero, $zero, .L80AB7280   
/* 01AF4 80AB7274 A48F02A0 */  sh      $t7, 0x02A0($a0)           ## 000002A0
.L80AB7278:
/* 01AF8 80AB7278 0C2AD840 */  jal     func_80AB6100              
/* 01AFC 80AB727C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
.L80AB7280:
/* 01B00 80AB7280 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01B04 80AB7284 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01B08 80AB7288 03E00008 */  jr      $ra                        
/* 01B0C 80AB728C 00000000 */  nop


