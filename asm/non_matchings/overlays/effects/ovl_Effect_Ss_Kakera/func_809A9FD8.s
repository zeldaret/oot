glabel func_809A9FD8
/* 00958 809A9FD8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0095C 809A9FDC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00960 809A9FE0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00964 809A9FE4 84850040 */  lh      $a1, 0x0040($a0)           ## 00000040
/* 00968 809A9FE8 3C19809B */  lui     $t9, %hi(D_809AA588)       ## $t9 = 809B0000
/* 0096C 809A9FEC 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 00970 809A9FF0 000529C3 */  sra     $a1, $a1,  7               
/* 00974 809A9FF4 30A5000F */  andi    $a1, $a1, 0x000F           ## $a1 = 00000000
/* 00978 809A9FF8 00057080 */  sll     $t6, $a1,  2               
/* 0097C 809A9FFC 032EC821 */  addu    $t9, $t9, $t6              
/* 00980 809AA000 8F39A588 */  lw      $t9, %lo(D_809AA588)($t9)  
/* 00984 809AA004 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00988 809AA008 0320F809 */  jalr    $ra, $t9                   
/* 0098C 809AA00C 00000000 */  nop
/* 00990 809AA010 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00994 809AA014 3C013A80 */  lui     $at, 0x3A80                ## $at = 3A800000
/* 00998 809AA018 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.00
/* 0099C 809AA01C 848F0052 */  lh      $t7, 0x0052($a0)           ## 00000052
/* 009A0 809AA020 46000306 */  mov.s   $f12, $f0                  
/* 009A4 809AA024 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 009A8 809AA028 00000000 */  nop
/* 009AC 809AA02C 468021A0 */  cvt.s.w $f6, $f4                   
/* 009B0 809AA030 46003202 */  mul.s   $f8, $f6, $f0              
/* 009B4 809AA034 00000000 */  nop
/* 009B8 809AA038 460A4382 */  mul.s   $f14, $f8, $f10            
/* 009BC 809AA03C 0C26A606 */  jal     func_809A9818              
/* 009C0 809AA040 00000000 */  nop
/* 009C4 809AA044 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 009C8 809AA048 3C01809B */  lui     $at, %hi(D_809AA678)       ## $at = 809B0000
/* 009CC 809AA04C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 009D0 809AA050 C4900018 */  lwc1    $f16, 0x0018($a0)          ## 00000018
/* 009D4 809AA054 C484001C */  lwc1    $f4, 0x001C($a0)           ## 0000001C
/* 009D8 809AA058 C4880020 */  lwc1    $f8, 0x0020($a0)           ## 00000020
/* 009DC 809AA05C 46008482 */  mul.s   $f18, $f16, $f0            
/* 009E0 809AA060 00000000 */  nop
/* 009E4 809AA064 46002182 */  mul.s   $f6, $f4, $f0              
/* 009E8 809AA068 00000000 */  nop
/* 009EC 809AA06C 46004282 */  mul.s   $f10, $f8, $f0             
/* 009F0 809AA070 E4920018 */  swc1    $f18, 0x0018($a0)          ## 00000018
/* 009F4 809AA074 C4920018 */  lwc1    $f18, 0x0018($a0)          ## 00000018
/* 009F8 809AA078 E486001C */  swc1    $f6, 0x001C($a0)           ## 0000001C
/* 009FC 809AA07C C486001C */  lwc1    $f6, 0x001C($a0)           ## 0000001C
/* 00A00 809AA080 E48A0020 */  swc1    $f10, 0x0020($a0)          ## 00000020
/* 00A04 809AA084 C430A678 */  lwc1    $f16, %lo(D_809AA678)($at) 
/* 00A08 809AA088 C48A0020 */  lwc1    $f10, 0x0020($a0)          ## 00000020
/* 00A0C 809AA08C 46100082 */  mul.s   $f2, $f0, $f16             
/* 00A10 809AA090 46029100 */  add.s   $f4, $f18, $f2             
/* 00A14 809AA094 46023200 */  add.s   $f8, $f6, $f2              
/* 00A18 809AA098 E4840018 */  swc1    $f4, 0x0018($a0)           ## 00000018
/* 00A1C 809AA09C 46025400 */  add.s   $f16, $f10, $f2            
/* 00A20 809AA0A0 E488001C */  swc1    $f8, 0x001C($a0)           ## 0000001C
/* 00A24 809AA0A4 E4900020 */  swc1    $f16, 0x0020($a0)          ## 00000020
/* 00A28 809AA0A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A2C 809AA0AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A30 809AA0B0 03E00008 */  jr      $ra                        
/* 00A34 809AA0B4 00000000 */  nop
