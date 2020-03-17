glabel func_80AEDEF4
/* 032E4 80AEDEF4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 032E8 80AEDEF8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 032EC 80AEDEFC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 032F0 80AEDF00 24A407C0 */  addiu   $a0, $a1, 0x07C0           ## $a0 = 000007C0
/* 032F4 80AEDF04 90C5007D */  lbu     $a1, 0x007D($a2)           ## 0000007D
/* 032F8 80AEDF08 0C00FAE1 */  jal     DynaPolyInfo_GetActor
              ## DynaPolyInfo_getActor
/* 032FC 80AEDF0C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 03300 80AEDF10 10400015 */  beq     $v0, $zero, .L80AEDF68     
/* 03304 80AEDF14 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 03308 80AEDF18 844E0000 */  lh      $t6, 0x0000($v0)           ## 00000000
/* 0330C 80AEDF1C 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 03310 80AEDF20 24C20068 */  addiu   $v0, $a2, 0x0068           ## $v0 = 00000068
/* 03314 80AEDF24 15C10010 */  bne     $t6, $at, .L80AEDF68       
/* 03318 80AEDF28 00000000 */  nop
/* 0331C 80AEDF2C C4400000 */  lwc1    $f0, 0x0000($v0)           ## 00000068
/* 03320 80AEDF30 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 03324 80AEDF34 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 03328 80AEDF38 46002032 */  c.eq.s  $f4, $f0                   
/* 0332C 80AEDF3C 00000000 */  nop
/* 03330 80AEDF40 45030007 */  bc1tl   .L80AEDF60                 
/* 03334 80AEDF44 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 03338 80AEDF48 3C0180AF */  lui     $at, %hi(D_80AF1C20)       ## $at = 80AF0000
/* 0333C 80AEDF4C C4261C20 */  lwc1    $f6, %lo(D_80AF1C20)($at)  
/* 03340 80AEDF50 46060202 */  mul.s   $f8, $f0, $f6              
/* 03344 80AEDF54 10000004 */  beq     $zero, $zero, .L80AEDF68   
/* 03348 80AEDF58 E4480000 */  swc1    $f8, 0x0000($v0)           ## 00000068
/* 0334C 80AEDF5C 44815000 */  mtc1    $at, $f10                  ## $f10 = -0.00
.L80AEDF60:
/* 03350 80AEDF60 00000000 */  nop
/* 03354 80AEDF64 E44A0000 */  swc1    $f10, 0x0000($v0)          ## 00000068
.L80AEDF68:
/* 03358 80AEDF68 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 0335C 80AEDF6C 8C63FA90 */  lw      $v1, -0x0570($v1)          ## 8015FA90
/* 03360 80AEDF70 3C0180AF */  lui     $at, %hi(D_80AF1C24)       ## $at = 80AF0000
/* 03364 80AEDF74 C4221C24 */  lwc1    $f2, %lo(D_80AF1C24)($at)  
/* 03368 80AEDF78 846F148A */  lh      $t7, 0x148A($v1)           ## 8016148A
/* 0336C 80AEDF7C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 03370 80AEDF80 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 03374 80AEDF84 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 03378 80AEDF88 24C20068 */  addiu   $v0, $a2, 0x0068           ## $v0 = 00000068
/* 0337C 80AEDF8C C4400000 */  lwc1    $f0, 0x0000($v0)           ## 00000068
/* 03380 80AEDF90 468084A0 */  cvt.s.w $f18, $f16                 
/* 03384 80AEDF94 46029102 */  mul.s   $f4, $f18, $f2             
/* 03388 80AEDF98 46062200 */  add.s   $f8, $f4, $f6              
/* 0338C 80AEDF9C 4600403E */  c.le.s  $f8, $f0                   
/* 03390 80AEDFA0 00000000 */  nop
/* 03394 80AEDFA4 4502000D */  bc1fl   .L80AEDFDC                 
/* 03398 80AEDFA8 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 0339C 80AEDFAC 84781480 */  lh      $t8, 0x1480($v1)           ## 80161480
/* 033A0 80AEDFB0 3C0180AF */  lui     $at, %hi(D_80AF1C28)       ## $at = 80AF0000
/* 033A4 80AEDFB4 C4241C28 */  lwc1    $f4, %lo(D_80AF1C28)($at)  
/* 033A8 80AEDFB8 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 033AC 80AEDFBC 00000000 */  nop
/* 033B0 80AEDFC0 46805420 */  cvt.s.w $f16, $f10                 
/* 033B4 80AEDFC4 46028482 */  mul.s   $f18, $f16, $f2            
/* 033B8 80AEDFC8 46049180 */  add.s   $f6, $f18, $f4             
/* 033BC 80AEDFCC 46060202 */  mul.s   $f8, $f0, $f6              
/* 033C0 80AEDFD0 10000004 */  beq     $zero, $zero, .L80AEDFE4   
/* 033C4 80AEDFD4 E4480000 */  swc1    $f8, 0x0000($v0)           ## 00000068
/* 033C8 80AEDFD8 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
.L80AEDFDC:
/* 033CC 80AEDFDC 00000000 */  nop
/* 033D0 80AEDFE0 E44A0000 */  swc1    $f10, 0x0000($v0)          ## 00000068
.L80AEDFE4:
/* 033D4 80AEDFE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 033D8 80AEDFE8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 033DC 80AEDFEC 03E00008 */  jr      $ra                        
/* 033E0 80AEDFF0 00000000 */  nop


