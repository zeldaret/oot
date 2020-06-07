.late_rodata
glabel D_809FF488
    .float 3.14159274101

glabel D_809FF48C
    .float 3.14159274101

glabel D_809FF490
    .float 3.14159274101

glabel D_809FF494
    .float 3.14159274101

.text
glabel func_809FEEA4
/* 01274 809FEEA4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01278 809FEEA8 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 0127C 809FEEAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01280 809FEEB0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01284 809FEEB4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01288 809FEEB8 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 0128C 809FEEBC 14A1002D */  bne     $a1, $at, .L809FEF74       
/* 01290 809FEEC0 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 01294 809FEEC4 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 01298 809FEEC8 3C014516 */  lui     $at, 0x4516                ## $at = 45160000
/* 0129C 809FEECC 44816000 */  mtc1    $at, $f12                  ## $f12 = 2400.00
/* 012A0 809FEED0 44067000 */  mfc1    $a2, $f14                  
/* 012A4 809FEED4 0C034261 */  jal     Matrix_Translate              
/* 012A8 809FEED8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 012AC 809FEEDC 8FB8003C */  lw      $t8, 0x003C($sp)           
/* 012B0 809FEEE0 27AF001C */  addiu   $t7, $sp, 0x001C           ## $t7 = FFFFFFF4
/* 012B4 809FEEE4 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 012B8 809FEEE8 8B0801FC */  lwl     $t0, 0x01FC($t8)           ## 000001FC
/* 012BC 809FEEEC 9B0801FF */  lwr     $t0, 0x01FF($t8)           ## 000001FF
/* 012C0 809FEEF0 44814000 */  mtc1    $at, $f8                   ## $f8 = 32768.00
/* 012C4 809FEEF4 3C0180A0 */  lui     $at, %hi(D_809FF488)       ## $at = 80A00000
/* 012C8 809FEEF8 ADE80000 */  sw      $t0, 0x0000($t7)           ## FFFFFFF4
/* 012CC 809FEEFC 97080200 */  lhu     $t0, 0x0200($t8)           ## 00000200
/* 012D0 809FEF00 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 012D4 809FEF04 A5E80004 */  sh      $t0, 0x0004($t7)           ## FFFFFFF8
/* 012D8 809FEF08 87A9001E */  lh      $t1, 0x001E($sp)           
/* 012DC 809FEF0C C430F488 */  lwc1    $f16, %lo(D_809FF488)($at) 
/* 012E0 809FEF10 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 012E4 809FEF14 00000000 */  nop
/* 012E8 809FEF18 468021A0 */  cvt.s.w $f6, $f4                   
/* 012EC 809FEF1C 46083283 */  div.s   $f10, $f6, $f8             
/* 012F0 809FEF20 46105302 */  mul.s   $f12, $f10, $f16           
/* 012F4 809FEF24 0C0342DC */  jal     Matrix_RotateX              
/* 012F8 809FEF28 00000000 */  nop
/* 012FC 809FEF2C 87AA001C */  lh      $t2, 0x001C($sp)           
/* 01300 809FEF30 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 01304 809FEF34 44813000 */  mtc1    $at, $f6                   ## $f6 = 32768.00
/* 01308 809FEF38 448A9000 */  mtc1    $t2, $f18                  ## $f18 = 0.00
/* 0130C 809FEF3C 3C0180A0 */  lui     $at, %hi(D_809FF48C)       ## $at = 80A00000
/* 01310 809FEF40 C42AF48C */  lwc1    $f10, %lo(D_809FF48C)($at) 
/* 01314 809FEF44 46809120 */  cvt.s.w $f4, $f18                  
/* 01318 809FEF48 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0131C 809FEF4C 46062203 */  div.s   $f8, $f4, $f6              
/* 01320 809FEF50 460A4302 */  mul.s   $f12, $f8, $f10            
/* 01324 809FEF54 0C0343B5 */  jal     Matrix_RotateZ              
/* 01328 809FEF58 00000000 */  nop
/* 0132C 809FEF5C 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 01330 809FEF60 3C01C516 */  lui     $at, 0xC516                ## $at = C5160000
/* 01334 809FEF64 44816000 */  mtc1    $at, $f12                  ## $f12 = -2400.00
/* 01338 809FEF68 44067000 */  mfc1    $a2, $f14                  
/* 0133C 809FEF6C 0C034261 */  jal     Matrix_Translate              
/* 01340 809FEF70 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
.L809FEF74:
/* 01344 809FEF74 8FAB002C */  lw      $t3, 0x002C($sp)           
/* 01348 809FEF78 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 0134C 809FEF7C 8FAD003C */  lw      $t5, 0x003C($sp)           
/* 01350 809FEF80 55610021 */  bnel    $t3, $at, .L809FF008       
/* 01354 809FEF84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01358 809FEF88 89AF0202 */  lwl     $t7, 0x0202($t5)           ## 00000202
/* 0135C 809FEF8C 99AF0205 */  lwr     $t7, 0x0205($t5)           ## 00000205
/* 01360 809FEF90 27AC001C */  addiu   $t4, $sp, 0x001C           ## $t4 = FFFFFFF4
/* 01364 809FEF94 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 01368 809FEF98 AD8F0000 */  sw      $t7, 0x0000($t4)           ## FFFFFFF4
/* 0136C 809FEF9C 95AF0206 */  lhu     $t7, 0x0206($t5)           ## 00000206
/* 01370 809FEFA0 44812000 */  mtc1    $at, $f4                   ## $f4 = 32768.00
/* 01374 809FEFA4 3C0180A0 */  lui     $at, %hi(D_809FF490)       ## $at = 80A00000
/* 01378 809FEFA8 A58F0004 */  sh      $t7, 0x0004($t4)           ## FFFFFFF8
/* 0137C 809FEFAC 87B8001E */  lh      $t8, 0x001E($sp)           
/* 01380 809FEFB0 C428F490 */  lwc1    $f8, %lo(D_809FF490)($at)  
/* 01384 809FEFB4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01388 809FEFB8 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 0138C 809FEFBC 00000000 */  nop
/* 01390 809FEFC0 468084A0 */  cvt.s.w $f18, $f16                 
/* 01394 809FEFC4 46049183 */  div.s   $f6, $f18, $f4             
/* 01398 809FEFC8 46083302 */  mul.s   $f12, $f6, $f8             
/* 0139C 809FEFCC 0C034348 */  jal     Matrix_RotateY              
/* 013A0 809FEFD0 00000000 */  nop
/* 013A4 809FEFD4 87B9001C */  lh      $t9, 0x001C($sp)           
/* 013A8 809FEFD8 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 013AC 809FEFDC 44819000 */  mtc1    $at, $f18                  ## $f18 = 32768.00
/* 013B0 809FEFE0 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 013B4 809FEFE4 3C0180A0 */  lui     $at, %hi(D_809FF494)       ## $at = 80A00000
/* 013B8 809FEFE8 C426F494 */  lwc1    $f6, %lo(D_809FF494)($at)  
/* 013BC 809FEFEC 46805420 */  cvt.s.w $f16, $f10                 
/* 013C0 809FEFF0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 013C4 809FEFF4 46128103 */  div.s   $f4, $f16, $f18            
/* 013C8 809FEFF8 46062302 */  mul.s   $f12, $f4, $f6             
/* 013CC 809FEFFC 0C0342DC */  jal     Matrix_RotateX              
/* 013D0 809FF000 00000000 */  nop
/* 013D4 809FF004 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809FF008:
/* 013D8 809FF008 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 013DC 809FF00C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 013E0 809FF010 03E00008 */  jr      $ra                        
/* 013E4 809FF014 00000000 */  nop
