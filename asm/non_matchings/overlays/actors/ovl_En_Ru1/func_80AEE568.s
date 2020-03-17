glabel func_80AEE568
/* 03958 80AEE568 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0395C 80AEE56C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03960 80AEE570 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03964 80AEE574 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03968 80AEE578 0C2BB8E5 */  jal     func_80AEE394              
/* 0396C 80AEE57C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03970 80AEE580 54400025 */  bnel    $v0, $zero, .L80AEE618     
/* 03974 80AEE584 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03978 80AEE588 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
/* 0397C 80AEE58C 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 03980 80AEE590 51E00018 */  beql    $t7, $zero, .L80AEE5F4     
/* 03984 80AEE594 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 03988 80AEE598 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0398C 80AEE59C C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 03990 80AEE5A0 46040032 */  c.eq.s  $f0, $f4                   
/* 03994 80AEE5A4 00000000 */  nop
/* 03998 80AEE5A8 45020012 */  bc1fl   .L80AEE5F4                 
/* 0399C 80AEE5AC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 039A0 80AEE5B0 C6060070 */  lwc1    $f6, 0x0070($s0)           ## 00000070
/* 039A4 80AEE5B4 46060032 */  c.eq.s  $f0, $f6                   
/* 039A8 80AEE5B8 00000000 */  nop
/* 039AC 80AEE5BC 4502000D */  bc1fl   .L80AEE5F4                 
/* 039B0 80AEE5C0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 039B4 80AEE5C4 0C2BB80B */  jal     func_80AEE02C              
/* 039B8 80AEE5C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 039BC 80AEE5CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 039C0 80AEE5D0 0C00BD60 */  jal     func_8002F580              
/* 039C4 80AEE5D4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 039C8 80AEE5D8 2418001B */  addiu   $t8, $zero, 0x001B         ## $t8 = 0000001B
/* 039CC 80AEE5DC AE180264 */  sw      $t8, 0x0264($s0)           ## 00000264
/* 039D0 80AEE5E0 0C2BAB76 */  jal     func_80AEADD8              
/* 039D4 80AEE5E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 039D8 80AEE5E8 1000000B */  beq     $zero, $zero, .L80AEE618   
/* 039DC 80AEE5EC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 039E0 80AEE5F0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80AEE5F4:
/* 039E4 80AEE5F4 C6080084 */  lwc1    $f8, 0x0084($s0)           ## 00000084
/* 039E8 80AEE5F8 2419001D */  addiu   $t9, $zero, 0x001D         ## $t9 = 0000001D
/* 039EC 80AEE5FC 4608003C */  c.lt.s  $f0, $f8                   
/* 039F0 80AEE600 00000000 */  nop
/* 039F4 80AEE604 45020004 */  bc1fl   .L80AEE618                 
/* 039F8 80AEE608 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 039FC 80AEE60C AE190264 */  sw      $t9, 0x0264($s0)           ## 00000264
/* 03A00 80AEE610 AE000350 */  sw      $zero, 0x0350($s0)         ## 00000350
/* 03A04 80AEE614 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AEE618:
/* 03A08 80AEE618 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03A0C 80AEE61C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03A10 80AEE620 03E00008 */  jr      $ra                        
/* 03A14 80AEE624 00000000 */  nop


