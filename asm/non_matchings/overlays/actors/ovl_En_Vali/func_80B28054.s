.late_rodata
glabel D_80B28AD4
    .float 0.05
    .balign 4

glabel D_80B28AD8
    .float 0.05
    .balign 4

glabel D_80B28ADC
 .word 0x3EA0D97C
glabel D_80B28AE0
 .word 0x3EB33333
glabel D_80B28AE4
 .word 0x3D80ADFD
glabel D_80B28AE8
 .word 0x3EB33333

.text
glabel func_80B28054
/* 019A4 80B28054 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 019A8 80B28058 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 019AC 80B2805C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 019B0 80B28060 8C820190 */  lw      $v0, 0x0190($a0)           ## 00000190
/* 019B4 80B28064 3C0F80B2 */  lui     $t7, %hi(func_80B2716C)    ## $t7 = 80B20000
/* 019B8 80B28068 44857000 */  mtc1    $a1, $f14                  ## $f14 = 0.00
/* 019BC 80B2806C 25EF716C */  addiu   $t7, $t7, %lo(func_80B2716C) ## $t7 = 80B2716C
/* 019C0 80B28070 15E20022 */  bne     $t7, $v0, .L80B280FC       
/* 019C4 80B28074 3C1880B2 */  lui     $t8, %hi(func_80B273D0)    ## $t8 = 80B20000
/* 019C8 80B28078 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 019CC 80B2807C 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 019D0 80B28080 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 019D4 80B28084 4604703E */  c.le.s  $f14, $f4                  
/* 019D8 80B28088 00000000 */  nop
/* 019DC 80B2808C 45020009 */  bc1fl   .L80B280B4                 
/* 019E0 80B28090 44818000 */  mtc1    $at, $f16                  ## $f16 = 70.00
/* 019E4 80B28094 3C0180B3 */  lui     $at, %hi(D_80B28AD4)       ## $at = 80B30000
/* 019E8 80B28098 C4268AD4 */  lwc1    $f6, %lo(D_80B28AD4)($at)  
/* 019EC 80B2809C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 019F0 80B280A0 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 019F4 80B280A4 46067202 */  mul.s   $f8, $f14, $f6             
/* 019F8 80B280A8 1000003D */  beq     $zero, $zero, .L80B281A0   
/* 019FC 80B280AC 460A4080 */  add.s   $f2, $f8, $f10             
/* 01A00 80B280B0 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
.L80B280B4:
/* 01A04 80B280B4 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 01A08 80B280B8 460E803C */  c.lt.s  $f16, $f14                 
/* 01A0C 80B280BC 00000000 */  nop
/* 01A10 80B280C0 4502000C */  bc1fl   .L80B280F4                 
/* 01A14 80B280C4 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.50
/* 01A18 80B280C8 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 01A1C 80B280CC 44819000 */  mtc1    $at, $f18                  ## $f18 = 80.00
/* 01A20 80B280D0 3C0180B3 */  lui     $at, %hi(D_80B28AD8)       ## $at = 80B30000
/* 01A24 80B280D4 C4268AD8 */  lwc1    $f6, %lo(D_80B28AD8)($at)  
/* 01A28 80B280D8 460E9101 */  sub.s   $f4, $f18, $f14            
/* 01A2C 80B280DC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01A30 80B280E0 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 01A34 80B280E4 46062202 */  mul.s   $f8, $f4, $f6              
/* 01A38 80B280E8 1000002D */  beq     $zero, $zero, .L80B281A0   
/* 01A3C 80B280EC 460A4080 */  add.s   $f2, $f8, $f10             
/* 01A40 80B280F0 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
.L80B280F4:
/* 01A44 80B280F4 1000002B */  beq     $zero, $zero, .L80B281A4   
/* 01A48 80B280F8 8FA40018 */  lw      $a0, 0x0018($sp)           
.L80B280FC:
/* 01A4C 80B280FC 271873D0 */  addiu   $t8, $t8, %lo(func_80B273D0) ## $t8 = 80B273D0
/* 01A50 80B28100 1702000D */  bne     $t8, $v0, .L80B28138       
/* 01A54 80B28104 3C1980B2 */  lui     $t9, %hi(func_80B2742C)    ## $t9 = 80B20000
/* 01A58 80B28108 3C0180B3 */  lui     $at, %hi(D_80B28ADC)       ## $at = 80B30000
/* 01A5C 80B2810C C4308ADC */  lwc1    $f16, %lo(D_80B28ADC)($at) 
/* 01A60 80B28110 460E8302 */  mul.s   $f12, $f16, $f14           
/* 01A64 80B28114 0C0400A4 */  jal     sinf
              
/* 01A68 80B28118 00000000 */  nop
/* 01A6C 80B2811C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01A70 80B28120 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 01A74 80B28124 3C0180B3 */  lui     $at, %hi(D_80B28AE0)       ## $at = 80B30000
/* 01A78 80B28128 C4248AE0 */  lwc1    $f4, %lo(D_80B28AE0)($at)  
/* 01A7C 80B2812C 46040182 */  mul.s   $f6, $f0, $f4              
/* 01A80 80B28130 1000001B */  beq     $zero, $zero, .L80B281A0   
/* 01A84 80B28134 46069081 */  sub.s   $f2, $f18, $f6             
.L80B28138:
/* 01A88 80B28138 2739742C */  addiu   $t9, $t9, %lo(func_80B2742C) ## $t9 = 0000742C
/* 01A8C 80B2813C 1722000D */  bne     $t9, $v0, .L80B28174       
/* 01A90 80B28140 3C0880B2 */  lui     $t0, %hi(func_80B27318)    ## $t0 = 80B20000
/* 01A94 80B28144 3C0180B3 */  lui     $at, %hi(D_80B28AE4)       ## $at = 80B30000
/* 01A98 80B28148 C4288AE4 */  lwc1    $f8, %lo(D_80B28AE4)($at)  
/* 01A9C 80B2814C 460E4302 */  mul.s   $f12, $f8, $f14            
/* 01AA0 80B28150 0C041184 */  jal     cosf
              
/* 01AA4 80B28154 00000000 */  nop
/* 01AA8 80B28158 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01AAC 80B2815C 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 01AB0 80B28160 3C0180B3 */  lui     $at, %hi(D_80B28AE8)       ## $at = 80B30000
/* 01AB4 80B28164 C4308AE8 */  lwc1    $f16, %lo(D_80B28AE8)($at) 
/* 01AB8 80B28168 46100102 */  mul.s   $f4, $f0, $f16             
/* 01ABC 80B2816C 1000000C */  beq     $zero, $zero, .L80B281A0   
/* 01AC0 80B28170 46045081 */  sub.s   $f2, $f10, $f4             
.L80B28174:
/* 01AC4 80B28174 25087318 */  addiu   $t0, $t0, %lo(func_80B27318) ## $t0 = 00007318
/* 01AC8 80B28178 11020004 */  beq     $t0, $v0, .L80B2818C       
/* 01ACC 80B2817C 3C0980B2 */  lui     $t1, %hi(func_80B27710)    ## $t1 = 80B20000
/* 01AD0 80B28180 25297710 */  addiu   $t1, $t1, %lo(func_80B27710) ## $t1 = 80B27710
/* 01AD4 80B28184 15220004 */  bne     $t1, $v0, .L80B28198       
/* 01AD8 80B28188 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L80B2818C:
/* 01ADC 80B2818C 8FAA0018 */  lw      $t2, 0x0018($sp)           
/* 01AE0 80B28190 10000003 */  beq     $zero, $zero, .L80B281A0   
/* 01AE4 80B28194 C54202F4 */  lwc1    $f2, 0x02F4($t2)           ## 000002F4
.L80B28198:
/* 01AE8 80B28198 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 01AEC 80B2819C 00000000 */  nop
.L80B281A0:
/* 01AF0 80B281A0 8FA40018 */  lw      $a0, 0x0018($sp)           
.L80B281A4:
/* 01AF4 80B281A4 44051000 */  mfc1    $a1, $f2                   
/* 01AF8 80B281A8 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01AFC 80B281AC 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01B00 80B281B0 0C01DE80 */  jal     Math_ApproxF
              
/* 01B04 80B281B4 248402F4 */  addiu   $a0, $a0, 0x02F4           ## $a0 = 000002F4
/* 01B08 80B281B8 8FAB0018 */  lw      $t3, 0x0018($sp)           
/* 01B0C 80B281BC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01B10 80B281C0 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 01B14 80B281C4 C56602F4 */  lwc1    $f6, 0x02F4($t3)           ## 000002F4
/* 01B18 80B281C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01B1C 80B281CC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 01B20 80B281D0 46069032 */  c.eq.s  $f18, $f6                  
/* 01B24 80B281D4 00000000 */  nop
/* 01B28 80B281D8 45000003 */  bc1f    .L80B281E8                 
/* 01B2C 80B281DC 00000000 */  nop
/* 01B30 80B281E0 10000001 */  beq     $zero, $zero, .L80B281E8   
/* 01B34 80B281E4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B281E8:
/* 01B38 80B281E8 03E00008 */  jr      $ra                        
/* 01B3C 80B281EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


