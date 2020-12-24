.late_rodata
glabel D_809E91A0
    .float 0.01

glabel D_809E91A4
 .word 0x3D088889
glabel D_809E91A8
    .float 0.7

glabel D_809E91AC
 .word 0x3D072B02
glabel D_809E91B0
    .float 3.14159274101

.text
glabel func_809E6A04
/* 01234 809E6A04 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 01238 809E6A08 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 0123C 809E6A0C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 01240 809E6A10 AFA50064 */  sw      $a1, 0x0064($sp)           
/* 01244 809E6A14 848201C6 */  lh      $v0, 0x01C6($a0)           ## 000001C6
/* 01248 809E6A18 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0124C 809E6A1C 10400002 */  beq     $v0, $zero, .L809E6A28     
/* 01250 809E6A20 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01254 809E6A24 A48E01C6 */  sh      $t6, 0x01C6($a0)           ## 000001C6
.L809E6A28:
/* 01258 809E6A28 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0125C 809E6A2C 2604017C */  addiu   $a0, $s0, 0x017C           ## $a0 = 0000017C
/* 01260 809E6A30 860F01C6 */  lh      $t7, 0x01C6($s0)           ## 000001C6
/* 01264 809E6A34 3C01809F */  lui     $at, %hi(D_809E91A0)       ## $at = 809F0000
/* 01268 809E6A38 C42691A0 */  lwc1    $f6, %lo(D_809E91A0)($at)  
/* 0126C 809E6A3C 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 01270 809E6A40 C6040230 */  lwc1    $f4, 0x0230($s0)           ## 00000230
/* 01274 809E6A44 3C01809F */  lui     $at, %hi(D_809E91A4)       ## $at = 809F0000
/* 01278 809E6A48 468054A0 */  cvt.s.w $f18, $f10                 
/* 0127C 809E6A4C 46062202 */  mul.s   $f8, $f4, $f6              
/* 01280 809E6A50 C42491A4 */  lwc1    $f4, %lo(D_809E91A4)($at)  
/* 01284 809E6A54 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01288 809E6A58 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 0128C 809E6A5C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 01290 809E6A60 46049182 */  mul.s   $f6, $f18, $f4             
/* 01294 809E6A64 2405C000 */  addiu   $a1, $zero, 0xC000         ## $a1 = FFFFC000
/* 01298 809E6A68 24060300 */  addiu   $a2, $zero, 0x0300         ## $a2 = 00000300
/* 0129C 809E6A6C 46065480 */  add.s   $f18, $f10, $f6            
/* 012A0 809E6A70 46124082 */  mul.s   $f2, $f8, $f18             
/* 012A4 809E6A74 E6020058 */  swc1    $f2, 0x0058($s0)           ## 00000058
/* 012A8 809E6A78 E6020054 */  swc1    $f2, 0x0054($s0)           ## 00000054
/* 012AC 809E6A7C 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 012B0 809E6A80 E6020050 */  swc1    $f2, 0x0050($s0)           ## 00000050
/* 012B4 809E6A84 861801C6 */  lh      $t8, 0x01C6($s0)           ## 000001C6
/* 012B8 809E6A88 3C01809F */  lui     $at, %hi(D_809E91A8)       ## $at = 809F0000
/* 012BC 809E6A8C C42291A8 */  lwc1    $f2, %lo(D_809E91A8)($at)  
/* 012C0 809E6A90 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 012C4 809E6A94 3C01809F */  lui     $at, %hi(D_809E91AC)       ## $at = 809F0000
/* 012C8 809E6A98 C42691AC */  lwc1    $f6, %lo(D_809E91AC)($at)  
/* 012CC 809E6A9C 468022A0 */  cvt.s.w $f10, $f4                  
/* 012D0 809E6AA0 3C01809F */  lui     $at, %hi(D_809E91B0)       ## $at = 809F0000
/* 012D4 809E6AA4 46065002 */  mul.s   $f0, $f10, $f6             
/* 012D8 809E6AA8 4600103C */  c.lt.s  $f2, $f0                   
/* 012DC 809E6AAC 00000000 */  nop
/* 012E0 809E6AB0 45020004 */  bc1fl   .L809E6AC4                 
/* 012E4 809E6AB4 46000386 */  mov.s   $f14, $f0                  
/* 012E8 809E6AB8 10000002 */  beq     $zero, $zero, .L809E6AC4   
/* 012EC 809E6ABC 46001386 */  mov.s   $f14, $f2                  
/* 012F0 809E6AC0 46000386 */  mov.s   $f14, $f0                  
.L809E6AC4:
/* 012F4 809E6AC4 C42891B0 */  lwc1    $f8, %lo(D_809E91B0)($at)  
/* 012F8 809E6AC8 46087302 */  mul.s   $f12, $f14, $f8            
/* 012FC 809E6ACC 0C0400A4 */  jal     sinf
              
/* 01300 809E6AD0 00000000 */  nop
/* 01304 809E6AD4 3C014200 */  lui     $at, 0x4200                ## $at = 42000000
/* 01308 809E6AD8 44819000 */  mtc1    $at, $f18                  ## $f18 = 32.00
/* 0130C 809E6ADC 3C014160 */  lui     $at, 0x4160                ## $at = 41600000
/* 01310 809E6AE0 44815000 */  mtc1    $at, $f10                  ## $f10 = 14.00
/* 01314 809E6AE4 46120102 */  mul.s   $f4, $f0, $f18             
/* 01318 809E6AE8 460A2180 */  add.s   $f6, $f4, $f10             
/* 0131C 809E6AEC E7A60058 */  swc1    $f6, 0x0058($sp)           
/* 01320 809E6AF0 860200B4 */  lh      $v0, 0x00B4($s0)           ## 000000B4
/* 01324 809E6AF4 2841C71D */  slti    $at, $v0, 0xC71D           
/* 01328 809E6AF8 50200005 */  beql    $at, $zero, .L809E6B10     
/* 0132C 809E6AFC 2841DC72 */  slti    $at, $v0, 0xDC72           
/* 01330 809E6B00 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 01334 809E6B04 10000071 */  beq     $zero, $zero, .L809E6CCC   
/* 01338 809E6B08 C7A80058 */  lwc1    $f8, 0x0058($sp)           
/* 0133C 809E6B0C 2841DC72 */  slti    $at, $v0, 0xDC72           
.L809E6B10:
/* 01340 809E6B10 1020000C */  beq     $at, $zero, .L809E6B44     
/* 01344 809E6B14 260401CA */  addiu   $a0, $s0, 0x01CA           ## $a0 = 000001CA
/* 01348 809E6B18 2405C000 */  addiu   $a1, $zero, 0xC000         ## $a1 = FFFFC000
/* 0134C 809E6B1C 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 01350 809E6B20 24060555 */  addiu   $a2, $zero, 0x0555         ## $a2 = 00000555
/* 01354 809E6B24 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 01358 809E6B28 860401CA */  lh      $a0, 0x01CA($s0)           ## 000001CA
/* 0135C 809E6B2C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01360 809E6B30 44818000 */  mtc1    $at, $f16                  ## $f16 = 20.00
/* 01364 809E6B34 00000000 */  nop
/* 01368 809E6B38 46100302 */  mul.s   $f12, $f0, $f16            
/* 0136C 809E6B3C 10000063 */  beq     $zero, $zero, .L809E6CCC   
/* 01370 809E6B40 C7A80058 */  lwc1    $f8, 0x0058($sp)           
.L809E6B44:
/* 01374 809E6B44 2841F1C8 */  slti    $at, $v0, 0xF1C8           
/* 01378 809E6B48 10200031 */  beq     $at, $zero, .L809E6C10     
/* 0137C 809E6B4C 260401CA */  addiu   $a0, $s0, 0x01CA           ## $a0 = 000001CA
/* 01380 809E6B50 260401CA */  addiu   $a0, $s0, 0x01CA           ## $a0 = 000001CA
/* 01384 809E6B54 2405AAAB */  addiu   $a1, $zero, 0xAAAB         ## $a1 = FFFFAAAB
/* 01388 809E6B58 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 0138C 809E6B5C 24060555 */  addiu   $a2, $zero, 0x0555         ## $a2 = 00000555
/* 01390 809E6B60 260401CC */  addiu   $a0, $s0, 0x01CC           ## $a0 = 000001CC
/* 01394 809E6B64 2405C000 */  addiu   $a1, $zero, 0xC000         ## $a1 = FFFFC000
/* 01398 809E6B68 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 0139C 809E6B6C 24060555 */  addiu   $a2, $zero, 0x0555         ## $a2 = 00000555
/* 013A0 809E6B70 260401CE */  addiu   $a0, $s0, 0x01CE           ## $a0 = 000001CE
/* 013A4 809E6B74 2405C000 */  addiu   $a1, $zero, 0xC000         ## $a1 = FFFFC000
/* 013A8 809E6B78 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 013AC 809E6B7C 24060333 */  addiu   $a2, $zero, 0x0333         ## $a2 = 00000333
/* 013B0 809E6B80 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 013B4 809E6B84 860401CC */  lh      $a0, 0x01CC($s0)           ## 000001CC
/* 013B8 809E6B88 E7A0003C */  swc1    $f0, 0x003C($sp)           
/* 013BC 809E6B8C 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 013C0 809E6B90 860401CA */  lh      $a0, 0x01CA($s0)           ## 000001CA
/* 013C4 809E6B94 E7A00040 */  swc1    $f0, 0x0040($sp)           
/* 013C8 809E6B98 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 013CC 809E6B9C 860401CE */  lh      $a0, 0x01CE($s0)           ## 000001CE
/* 013D0 809E6BA0 E7A00044 */  swc1    $f0, 0x0044($sp)           
/* 013D4 809E6BA4 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 013D8 809E6BA8 860401CC */  lh      $a0, 0x01CC($s0)           ## 000001CC
/* 013DC 809E6BAC 860401CA */  lh      $a0, 0x01CA($s0)           ## 000001CA
/* 013E0 809E6BB0 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 013E4 809E6BB4 E7A00048 */  swc1    $f0, 0x0048($sp)           
/* 013E8 809E6BB8 860401CE */  lh      $a0, 0x01CE($s0)           ## 000001CE
/* 013EC 809E6BBC 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 013F0 809E6BC0 E7A0004C */  swc1    $f0, 0x004C($sp)           
/* 013F4 809E6BC4 C7AE004C */  lwc1    $f14, 0x004C($sp)          
/* 013F8 809E6BC8 C7A20048 */  lwc1    $f2, 0x0048($sp)           
/* 013FC 809E6BCC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01400 809E6BD0 46007487 */  neg.s   $f18, $f14                 
/* 01404 809E6BD4 44818000 */  mtc1    $at, $f16                  ## $f16 = 20.00
/* 01408 809E6BD8 46029101 */  sub.s   $f4, $f18, $f2             
/* 0140C 809E6BDC C7A80058 */  lwc1    $f8, 0x0058($sp)           
/* 01410 809E6BE0 C7B20044 */  lwc1    $f18, 0x0044($sp)          
/* 01414 809E6BE4 46048282 */  mul.s   $f10, $f16, $f4            
/* 01418 809E6BE8 460A4181 */  sub.s   $f6, $f8, $f10             
/* 0141C 809E6BEC 46000207 */  neg.s   $f8, $f0                   
/* 01420 809E6BF0 46123102 */  mul.s   $f4, $f6, $f18             
/* 01424 809E6BF4 C7B2003C */  lwc1    $f18, 0x003C($sp)          
/* 01428 809E6BF8 C7A60040 */  lwc1    $f6, 0x0040($sp)           
/* 0142C 809E6BFC 46082283 */  div.s   $f10, $f4, $f8             
/* 01430 809E6C00 46123100 */  add.s   $f4, $f6, $f18             
/* 01434 809E6C04 46048202 */  mul.s   $f8, $f16, $f4             
/* 01438 809E6C08 1000002F */  beq     $zero, $zero, .L809E6CC8   
/* 0143C 809E6C0C 46085300 */  add.s   $f12, $f10, $f8            
.L809E6C10:
/* 01440 809E6C10 2405AAAB */  addiu   $a1, $zero, 0xAAAB         ## $a1 = FFFFAAAB
/* 01444 809E6C14 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 01448 809E6C18 24060555 */  addiu   $a2, $zero, 0x0555         ## $a2 = 00000555
/* 0144C 809E6C1C 260401CC */  addiu   $a0, $s0, 0x01CC           ## $a0 = 000001CC
/* 01450 809E6C20 2405AAAB */  addiu   $a1, $zero, 0xAAAB         ## $a1 = FFFFAAAB
/* 01454 809E6C24 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 01458 809E6C28 24060333 */  addiu   $a2, $zero, 0x0333         ## $a2 = 00000333
/* 0145C 809E6C2C 260401CE */  addiu   $a0, $s0, 0x01CE           ## $a0 = 000001CE
/* 01460 809E6C30 2405C000 */  addiu   $a1, $zero, 0xC000         ## $a1 = FFFFC000
/* 01464 809E6C34 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 01468 809E6C38 24060333 */  addiu   $a2, $zero, 0x0333         ## $a2 = 00000333
/* 0146C 809E6C3C 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 01470 809E6C40 860401CC */  lh      $a0, 0x01CC($s0)           ## 000001CC
/* 01474 809E6C44 E7A0003C */  swc1    $f0, 0x003C($sp)           
/* 01478 809E6C48 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 0147C 809E6C4C 860401CA */  lh      $a0, 0x01CA($s0)           ## 000001CA
/* 01480 809E6C50 E7A00040 */  swc1    $f0, 0x0040($sp)           
/* 01484 809E6C54 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 01488 809E6C58 860401CE */  lh      $a0, 0x01CE($s0)           ## 000001CE
/* 0148C 809E6C5C E7A00044 */  swc1    $f0, 0x0044($sp)           
/* 01490 809E6C60 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 01494 809E6C64 860401CC */  lh      $a0, 0x01CC($s0)           ## 000001CC
/* 01498 809E6C68 860401CA */  lh      $a0, 0x01CA($s0)           ## 000001CA
/* 0149C 809E6C6C 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 014A0 809E6C70 E7A00048 */  swc1    $f0, 0x0048($sp)           
/* 014A4 809E6C74 860401CE */  lh      $a0, 0x01CE($s0)           ## 000001CE
/* 014A8 809E6C78 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 014AC 809E6C7C E7A0004C */  swc1    $f0, 0x004C($sp)           
/* 014B0 809E6C80 C7AE004C */  lwc1    $f14, 0x004C($sp)          
/* 014B4 809E6C84 C7A20048 */  lwc1    $f2, 0x0048($sp)           
/* 014B8 809E6C88 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 014BC 809E6C8C 46007487 */  neg.s   $f18, $f14                 
/* 014C0 809E6C90 44818000 */  mtc1    $at, $f16                  ## $f16 = 20.00
/* 014C4 809E6C94 46029101 */  sub.s   $f4, $f18, $f2             
/* 014C8 809E6C98 C7A60058 */  lwc1    $f6, 0x0058($sp)           
/* 014CC 809E6C9C C7B20044 */  lwc1    $f18, 0x0044($sp)          
/* 014D0 809E6CA0 46048282 */  mul.s   $f10, $f16, $f4            
/* 014D4 809E6CA4 460A3201 */  sub.s   $f8, $f6, $f10             
/* 014D8 809E6CA8 46000187 */  neg.s   $f6, $f0                   
/* 014DC 809E6CAC 46124102 */  mul.s   $f4, $f8, $f18             
/* 014E0 809E6CB0 C7B2003C */  lwc1    $f18, 0x003C($sp)          
/* 014E4 809E6CB4 C7A80040 */  lwc1    $f8, 0x0040($sp)           
/* 014E8 809E6CB8 46062283 */  div.s   $f10, $f4, $f6             
/* 014EC 809E6CBC 46124100 */  add.s   $f4, $f8, $f18             
/* 014F0 809E6CC0 46048182 */  mul.s   $f6, $f16, $f4             
/* 014F4 809E6CC4 46065300 */  add.s   $f12, $f10, $f6            
.L809E6CC8:
/* 014F8 809E6CC8 C7A80058 */  lwc1    $f8, 0x0058($sp)           
.L809E6CCC:
/* 014FC 809E6CCC C6120230 */  lwc1    $f18, 0x0230($s0)          ## 00000230
/* 01500 809E6CD0 C60A000C */  lwc1    $f10, 0x000C($s0)          ## 0000000C
/* 01504 809E6CD4 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 01508 809E6CD8 46124102 */  mul.s   $f4, $f8, $f18             
/* 0150C 809E6CDC 46045180 */  add.s   $f6, $f10, $f4             
/* 01510 809E6CE0 E6060028 */  swc1    $f6, 0x0028($s0)           ## 00000028
/* 01514 809E6CE4 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 01518 809E6CE8 E7AC005C */  swc1    $f12, 0x005C($sp)          
/* 0151C 809E6CEC C7AC005C */  lwc1    $f12, 0x005C($sp)          
/* 01520 809E6CF0 C6080230 */  lwc1    $f8, 0x0230($s0)           ## 00000230
/* 01524 809E6CF4 46086482 */  mul.s   $f18, $f12, $f8            
/* 01528 809E6CF8 00000000 */  nop
/* 0152C 809E6CFC 46120282 */  mul.s   $f10, $f0, $f18            
/* 01530 809E6D00 E7AA0054 */  swc1    $f10, 0x0054($sp)          
/* 01534 809E6D04 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 01538 809E6D08 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 0153C 809E6D0C C7B2005C */  lwc1    $f18, 0x005C($sp)          
/* 01540 809E6D10 C6100230 */  lwc1    $f16, 0x0230($s0)          ## 00000230
/* 01544 809E6D14 C60E0008 */  lwc1    $f14, 0x0008($s0)          ## 00000008
/* 01548 809E6D18 C7AC0054 */  lwc1    $f12, 0x0054($sp)          
/* 0154C 809E6D1C 46109482 */  mul.s   $f18, $f18, $f16           
/* 01550 809E6D20 C60A0010 */  lwc1    $f10, 0x0010($s0)          ## 00000010
/* 01554 809E6D24 460C7300 */  add.s   $f12, $f14, $f12           
/* 01558 809E6D28 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 0155C 809E6D2C 44817000 */  mtc1    $at, $f14                  ## $f14 = 3.00
/* 01560 809E6D30 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 01564 809E6D34 44814000 */  mtc1    $at, $f8                   ## $f8 = 12.00
/* 01568 809E6D38 46120482 */  mul.s   $f18, $f0, $f18            
/* 0156C 809E6D3C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01570 809E6D40 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 01574 809E6D44 460E8382 */  mul.s   $f14, $f16, $f14           
/* 01578 809E6D48 E60C0024 */  swc1    $f12, 0x0024($s0)          ## 00000024
/* 0157C 809E6D4C 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 01580 809E6D50 46088202 */  mul.s   $f8, $f16, $f8             
/* 01584 809E6D54 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 01588 809E6D58 46125480 */  add.s   $f18, $f10, $f18           
/* 0158C 809E6D5C 46068182 */  mul.s   $f6, $f16, $f6             
/* 01590 809E6D60 44067000 */  mfc1    $a2, $f14                  
/* 01594 809E6D64 240D000A */  addiu   $t5, $zero, 0x000A         ## $t5 = 0000000A
/* 01598 809E6D68 E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
/* 0159C 809E6D6C 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 015A0 809E6D70 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 015A4 809E6D74 4600420D */  trunc.w.s $f8, $f8                   
/* 015A8 809E6D78 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 015AC 809E6D7C AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 015B0 809E6D80 4600318D */  trunc.w.s $f6, $f6                   
/* 015B4 809E6D84 44084000 */  mfc1    $t0, $f8                   
/* 015B8 809E6D88 AFAC001C */  sw      $t4, 0x001C($sp)           
/* 015BC 809E6D8C AFAD0020 */  sw      $t5, 0x0020($sp)           
/* 015C0 809E6D90 440A3000 */  mfc1    $t2, $f6                   
/* 015C4 809E6D94 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 015C8 809E6D98 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 015CC 809E6D9C 0C00A5E9 */  jal     EffectSsHahen_SpawnBurst              
/* 015D0 809E6DA0 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 015D4 809E6DA4 860E01C6 */  lh      $t6, 0x01C6($s0)           ## 000001C6
/* 015D8 809E6DA8 55C00004 */  bnel    $t6, $zero, .L809E6DBC     
/* 015DC 809E6DAC 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 015E0 809E6DB0 0C2796AF */  jal     func_809E5ABC              
/* 015E4 809E6DB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015E8 809E6DB8 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809E6DBC:
/* 015EC 809E6DBC 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 015F0 809E6DC0 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 015F4 809E6DC4 03E00008 */  jr      $ra                        
/* 015F8 809E6DC8 00000000 */  nop
