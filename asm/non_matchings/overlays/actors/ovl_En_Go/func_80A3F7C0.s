glabel func_80A3F7C0
/* 01250 80A3F7C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01254 80A3F7C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01258 80A3F7C8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0125C 80A3F7CC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01260 80A3F7D0 948E0088 */  lhu     $t6, 0x0088($a0)           ## 00000088
/* 01264 80A3F7D4 00052C00 */  sll     $a1, $a1, 16               
/* 01268 80A3F7D8 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 0126C 80A3F7DC 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 01270 80A3F7E0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01274 80A3F7E4 11E00007 */  beq     $t7, $zero, .L80A3F804     
/* 01278 80A3F7E8 00052C03 */  sra     $a1, $a1, 16               
/* 0127C 80A3F7EC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01280 80A3F7F0 C4860060 */  lwc1    $f6, 0x0060($a0)           ## 00000060
/* 01284 80A3F7F4 4606203C */  c.lt.s  $f4, $f6                   
/* 01288 80A3F7F8 00000000 */  nop
/* 0128C 80A3F7FC 45020004 */  bc1fl   .L80A3F810                 
/* 01290 80A3F800 84D801E0 */  lh      $t8, 0x01E0($a2)           ## 000001E0
.L80A3F804:
/* 01294 80A3F804 1000003C */  beq     $zero, $zero, .L80A3F8F8   
/* 01298 80A3F808 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0129C 80A3F80C 84D801E0 */  lh      $t8, 0x01E0($a2)           ## 000001E0
.L80A3F810:
/* 012A0 80A3F810 53000004 */  beql    $t8, $zero, .L80A3F824     
/* 012A4 80A3F814 84C2021C */  lh      $v0, 0x021C($a2)           ## 0000021C
/* 012A8 80A3F818 10000037 */  beq     $zero, $zero, .L80A3F8F8   
/* 012AC 80A3F81C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 012B0 80A3F820 84C2021C */  lh      $v0, 0x021C($a2)           ## 0000021C
.L80A3F824:
/* 012B4 80A3F824 14400003 */  bne     $v0, $zero, .L80A3F834     
/* 012B8 80A3F828 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = 00000000
/* 012BC 80A3F82C 10000004 */  beq     $zero, $zero, .L80A3F840   
/* 012C0 80A3F830 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80A3F834:
/* 012C4 80A3F834 A4D9021C */  sh      $t9, 0x021C($a2)           ## 0000021C
/* 012C8 80A3F838 84C2021C */  lh      $v0, 0x021C($a2)           ## 0000021C
/* 012CC 80A3F83C 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000001
.L80A3F840:
/* 012D0 80A3F840 10600011 */  beq     $v1, $zero, .L80A3F888     
/* 012D4 80A3F844 30480001 */  andi    $t0, $v0, 0x0001           ## $t0 = 00000001
/* 012D8 80A3F848 11000008 */  beq     $t0, $zero, .L80A3F86C     
/* 012DC 80A3F84C 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 012E0 80A3F850 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 012E4 80A3F854 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.50
/* 012E8 80A3F858 C4C80028 */  lwc1    $f8, 0x0028($a2)           ## 00000028
/* 012EC 80A3F85C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 012F0 80A3F860 460A4400 */  add.s   $f16, $f8, $f10            
/* 012F4 80A3F864 10000024 */  beq     $zero, $zero, .L80A3F8F8   
/* 012F8 80A3F868 E4D00028 */  swc1    $f16, 0x0028($a2)          ## 00000028
.L80A3F86C:
/* 012FC 80A3F86C C4D20028 */  lwc1    $f18, 0x0028($a2)          ## 00000028
/* 01300 80A3F870 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.50
/* 01304 80A3F874 00000000 */  nop
/* 01308 80A3F878 46049181 */  sub.s   $f6, $f18, $f4             
/* 0130C 80A3F87C E4C60028 */  swc1    $f6, 0x0028($a2)           ## 00000028
/* 01310 80A3F880 1000001D */  beq     $zero, $zero, .L80A3F8F8   
/* 01314 80A3F884 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3F888:
/* 01318 80A3F888 84C9021A */  lh      $t1, 0x021A($a2)           ## 0000021A
/* 0131C 80A3F88C 252AFFFF */  addiu   $t2, $t1, 0xFFFF           ## $t2 = FFFFFFFF
/* 01320 80A3F890 A4CA021A */  sh      $t2, 0x021A($a2)           ## 0000021A
/* 01324 80A3F894 84C3021A */  lh      $v1, 0x021A($a2)           ## 0000021A
/* 01328 80A3F898 5C600010 */  bgtzl   $v1, .L80A3F8DC            
/* 0132C 80A3F89C 44835000 */  mtc1    $v1, $f10                  ## $f10 = 0.00
/* 01330 80A3F8A0 1460000B */  bne     $v1, $zero, .L80A3F8D0     
/* 01334 80A3F8A4 2404003C */  addiu   $a0, $zero, 0x003C         ## $a0 = 0000003C
/* 01338 80A3F8A8 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 0133C 80A3F8AC 0C01DF64 */  jal     Rand_S16Offset
              
/* 01340 80A3F8B0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01344 80A3F8B4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01348 80A3F8B8 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0134C 80A3F8BC A4C2021C */  sh      $v0, 0x021C($a2)           ## 0000021C
/* 01350 80A3F8C0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 01354 80A3F8C4 A4C0021A */  sh      $zero, 0x021A($a2)         ## 0000021A
/* 01358 80A3F8C8 1000000B */  beq     $zero, $zero, .L80A3F8F8   
/* 0135C 80A3F8CC E4C80060 */  swc1    $f8, 0x0060($a2)           ## 00000060
.L80A3F8D0:
/* 01360 80A3F8D0 A4C5021A */  sh      $a1, 0x021A($a2)           ## 0000021A
/* 01364 80A3F8D4 84C3021A */  lh      $v1, 0x021A($a2)           ## 0000021A
/* 01368 80A3F8D8 44835000 */  mtc1    $v1, $f10                  ## $f10 = 0.00
.L80A3F8DC:
/* 0136C 80A3F8DC 44859000 */  mtc1    $a1, $f18                  ## $f18 = 0.00
/* 01370 80A3F8E0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 01374 80A3F8E4 46805420 */  cvt.s.w $f16, $f10                 
/* 01378 80A3F8E8 46809120 */  cvt.s.w $f4, $f18                  
/* 0137C 80A3F8EC 46048183 */  div.s   $f6, $f16, $f4             
/* 01380 80A3F8F0 460C3202 */  mul.s   $f8, $f6, $f12             
/* 01384 80A3F8F4 E4C80060 */  swc1    $f8, 0x0060($a2)           ## 00000060
.L80A3F8F8:
/* 01388 80A3F8F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0138C 80A3F8FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01390 80A3F900 03E00008 */  jr      $ra                        
/* 01394 80A3F904 00000000 */  nop
