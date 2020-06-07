glabel func_80ADC034
/* 030A4 80ADC034 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 030A8 80ADC038 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 030AC 80ADC03C 908E010C */  lbu     $t6, 0x010C($a0)           ## 0000010C
/* 030B0 80ADC040 3C0980AE */  lui     $t1, %hi(func_80ADA8C0)    ## $t1 = 80AE0000
/* 030B4 80ADC044 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 030B8 80ADC048 11C0000B */  beq     $t6, $zero, .L80ADC078     
/* 030BC 80ADC04C 2529A8C0 */  addiu   $t1, $t1, %lo(func_80ADA8C0) ## $t1 = 80ADA8C0
/* 030C0 80ADC050 90820231 */  lbu     $v0, 0x0231($a0)           ## 00000231
/* 030C4 80ADC054 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 030C8 80ADC058 54410008 */  bnel    $v0, $at, .L80ADC07C       
/* 030CC 80ADC05C A0980197 */  sb      $t8, 0x0197($a0)           ## 00000197
/* 030D0 80ADC060 90830197 */  lbu     $v1, 0x0197($a0)           ## 00000197
/* 030D4 80ADC064 10600006 */  beq     $v1, $zero, .L80ADC080     
/* 030D8 80ADC068 246FFFFF */  addiu   $t7, $v1, 0xFFFF           ## $t7 = FFFFFFFF
/* 030DC 80ADC06C A08F0197 */  sb      $t7, 0x0197($a0)           ## 00000197
/* 030E0 80ADC070 10000003 */  beq     $zero, $zero, .L80ADC080   
/* 030E4 80ADC074 90820231 */  lbu     $v0, 0x0231($a0)           ## 00000231
.L80ADC078:
/* 030E8 80ADC078 A0980197 */  sb      $t8, 0x0197($a0)           ## 00000197
.L80ADC07C:
/* 030EC 80ADC07C 90820231 */  lbu     $v0, 0x0231($a0)           ## 00000231
.L80ADC080:
/* 030F0 80ADC080 54400006 */  bnel    $v0, $zero, .L80ADC09C     
/* 030F4 80ADC084 8C820190 */  lw      $v0, 0x0190($a0)           ## 00000190
/* 030F8 80ADC088 8482019C */  lh      $v0, 0x019C($a0)           ## 0000019C
/* 030FC 80ADC08C 10400002 */  beq     $v0, $zero, .L80ADC098     
/* 03100 80ADC090 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 03104 80ADC094 A499019C */  sh      $t9, 0x019C($a0)           ## 0000019C
.L80ADC098:
/* 03108 80ADC098 8C820190 */  lw      $v0, 0x0190($a0)           ## 00000190
.L80ADC09C:
/* 0310C 80ADC09C 3C0880AE */  lui     $t0, %hi(func_80ADA7F0)    ## $t0 = 80AE0000
/* 03110 80ADC0A0 2508A7F0 */  addiu   $t0, $t0, %lo(func_80ADA7F0) ## $t0 = 80ADA7F0
/* 03114 80ADC0A4 51020016 */  beql    $t0, $v0, .L80ADC100       
/* 03118 80ADC0A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0311C 80ADC0AC 11220013 */  beq     $t1, $v0, .L80ADC0FC       
/* 03120 80ADC0B0 3C0A80AE */  lui     $t2, %hi(func_80ADAAA4)    ## $t2 = 80AE0000
/* 03124 80ADC0B4 254AAAA4 */  addiu   $t2, $t2, %lo(func_80ADAAA4) ## $t2 = 80ADAAA4
/* 03128 80ADC0B8 51420011 */  beql    $t2, $v0, .L80ADC100       
/* 0312C 80ADC0BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03130 80ADC0C0 908B0197 */  lbu     $t3, 0x0197($a0)           ## 00000197
/* 03134 80ADC0C4 55600006 */  bnel    $t3, $zero, .L80ADC0E0     
/* 03138 80ADC0C8 848C019C */  lh      $t4, 0x019C($a0)           ## 0000019C
/* 0313C 80ADC0CC 0C2B65C6 */  jal     func_80AD9718              
/* 03140 80ADC0D0 00000000 */  nop
/* 03144 80ADC0D4 1000000A */  beq     $zero, $zero, .L80ADC100   
/* 03148 80ADC0D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0314C 80ADC0DC 848C019C */  lh      $t4, 0x019C($a0)           ## 0000019C
.L80ADC0E0:
/* 03150 80ADC0E0 55800007 */  bnel    $t4, $zero, .L80ADC100     
/* 03154 80ADC0E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03158 80ADC0E8 908D0231 */  lbu     $t5, 0x0231($a0)           ## 00000231
/* 0315C 80ADC0EC 55A00004 */  bnel    $t5, $zero, .L80ADC100     
/* 03160 80ADC0F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03164 80ADC0F4 0C2B663D */  jal     func_80AD98F4              
/* 03168 80ADC0F8 00000000 */  nop
.L80ADC0FC:
/* 0316C 80ADC0FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADC100:
/* 03170 80ADC100 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03174 80ADC104 03E00008 */  jr      $ra                        
/* 03178 80ADC108 00000000 */  nop
