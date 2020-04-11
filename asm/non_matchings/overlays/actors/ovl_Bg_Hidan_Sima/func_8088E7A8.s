.late_rodata
glabel D_8088F298
 .word 0x3F9111F0, 0xC34C1A8B
glabel D_8088F2A0
 .word 0x400921FB, 0x60000000
glabel D_8088F2A8
 .word 0x3F9111F0, 0xC34C1A8B
glabel D_8088F2B0
 .word 0x400921FB, 0x60000000

.text
glabel func_8088E7A8
/* 003D8 8088E7A8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 003DC 8088E7AC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 003E0 8088E7B0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 003E4 8088E7B4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 003E8 8088E7B8 84820168 */  lh      $v0, 0x0168($a0)           ## 00000168
/* 003EC 8088E7BC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003F0 8088E7C0 2419003C */  addiu   $t9, $zero, 0x003C         ## $t9 = 0000003C
/* 003F4 8088E7C4 10400003 */  beq     $v0, $zero, .L8088E7D4     
/* 003F8 8088E7C8 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 003FC 8088E7CC A48E0168 */  sh      $t6, 0x0168($a0)           ## 00000168
/* 00400 8088E7D0 84820168 */  lh      $v0, 0x0168($a0)           ## 00000168
.L8088E7D4:
/* 00404 8088E7D4 860F0016 */  lh      $t7, 0x0016($s0)           ## 00000016
/* 00408 8088E7D8 86180032 */  lh      $t8, 0x0032($s0)           ## 00000032
/* 0040C 8088E7DC 03224023 */  subu    $t0, $t9, $v0              
/* 00410 8088E7E0 51F80018 */  beql    $t7, $t8, .L8088E844       
/* 00414 8088E7E4 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 00418 8088E7E8 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 0041C 8088E7EC 3C018089 */  lui     $at, %hi(D_8088F298)       ## $at = 80890000
/* 00420 8088E7F0 D428F298 */  ldc1    $f8, %lo(D_8088F298)($at)  
/* 00424 8088E7F4 468021A1 */  cvt.d.w $f6, $f4                   
/* 00428 8088E7F8 3C013FE0 */  lui     $at, 0x3FE0                ## $at = 3FE00000
/* 0042C 8088E7FC 44818800 */  mtc1    $at, $f17                  ## $f17 = 1.75
/* 00430 8088E800 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00434 8088E804 3C018089 */  lui     $at, %hi(D_8088F2A0)       ## $at = 80890000
/* 00438 8088E808 46283282 */  mul.d   $f10, $f6, $f8             
/* 0043C 8088E80C D424F2A0 */  ldc1    $f4, %lo(D_8088F2A0)($at)  
/* 00440 8088E810 46305481 */  sub.d   $f18, $f10, $f16           
/* 00444 8088E814 46249182 */  mul.d   $f6, $f18, $f4             
/* 00448 8088E818 0C0400A4 */  jal     sinf
              
/* 0044C 8088E81C 46203320 */  cvt.s.d $f12, $f6                  
/* 00450 8088E820 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00454 8088E824 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 00458 8088E828 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 0045C 8088E82C 44818000 */  mtc1    $at, $f16                  ## $f16 = 200.00
/* 00460 8088E830 46080280 */  add.s   $f10, $f0, $f8             
/* 00464 8088E834 46105082 */  mul.s   $f2, $f10, $f16            
/* 00468 8088E838 10000017 */  beq     $zero, $zero, .L8088E898   
/* 0046C 8088E83C 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 00470 8088E840 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
.L8088E844:
/* 00474 8088E844 3C018089 */  lui     $at, %hi(D_8088F2A8)       ## $at = 80890000
/* 00478 8088E848 D426F2A8 */  ldc1    $f6, %lo(D_8088F2A8)($at)  
/* 0047C 8088E84C 46809121 */  cvt.d.w $f4, $f18                  
/* 00480 8088E850 3C013FE0 */  lui     $at, 0x3FE0                ## $at = 3FE00000
/* 00484 8088E854 44815800 */  mtc1    $at, $f11                  ## $f11 = 1.75
/* 00488 8088E858 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 0048C 8088E85C 3C018089 */  lui     $at, %hi(D_8088F2B0)       ## $at = 80890000
/* 00490 8088E860 46262202 */  mul.d   $f8, $f4, $f6              
/* 00494 8088E864 D432F2B0 */  ldc1    $f18, %lo(D_8088F2B0)($at) 
/* 00498 8088E868 462A4401 */  sub.d   $f16, $f8, $f10            
/* 0049C 8088E86C 46328102 */  mul.d   $f4, $f16, $f18            
/* 004A0 8088E870 0C0400A4 */  jal     sinf
              
/* 004A4 8088E874 46202320 */  cvt.s.d $f12, $f4                  
/* 004A8 8088E878 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 004AC 8088E87C 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 004B0 8088E880 3C01C348 */  lui     $at, 0xC348                ## $at = C3480000
/* 004B4 8088E884 44815000 */  mtc1    $at, $f10                  ## $f10 = -200.00
/* 004B8 8088E888 46060200 */  add.s   $f8, $f0, $f6              
/* 004BC 8088E88C 460A4082 */  mul.s   $f2, $f8, $f10             
/* 004C0 8088E890 00000000 */  nop
/* 004C4 8088E894 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
.L8088E898:
/* 004C8 8088E898 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 004CC 8088E89C E7A20024 */  swc1    $f2, 0x0024($sp)           
/* 004D0 8088E8A0 C7A20024 */  lwc1    $f2, 0x0024($sp)           
/* 004D4 8088E8A4 C6120008 */  lwc1    $f18, 0x0008($s0)          ## 00000008
/* 004D8 8088E8A8 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 004DC 8088E8AC 46020402 */  mul.s   $f16, $f0, $f2             
/* 004E0 8088E8B0 46128100 */  add.s   $f4, $f16, $f18            
/* 004E4 8088E8B4 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 004E8 8088E8B8 E6040024 */  swc1    $f4, 0x0024($s0)           ## 00000024
/* 004EC 8088E8BC C7A20024 */  lwc1    $f2, 0x0024($sp)           
/* 004F0 8088E8C0 C6080010 */  lwc1    $f8, 0x0010($s0)           ## 00000010
/* 004F4 8088E8C4 86090168 */  lh      $t1, 0x0168($s0)           ## 00000168
/* 004F8 8088E8C8 46020182 */  mul.s   $f6, $f0, $f2              
/* 004FC 8088E8CC 3C0B8089 */  lui     $t3, %hi(func_8088E760)    ## $t3 = 80890000
/* 00500 8088E8D0 240A0014 */  addiu   $t2, $zero, 0x0014         ## $t2 = 00000014
/* 00504 8088E8D4 256BE760 */  addiu   $t3, $t3, %lo(func_8088E760) ## $t3 = 8088E760
/* 00508 8088E8D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0050C 8088E8DC 46083280 */  add.s   $f10, $f6, $f8             
/* 00510 8088E8E0 15200003 */  bne     $t1, $zero, .L8088E8F0     
/* 00514 8088E8E4 E60A002C */  swc1    $f10, 0x002C($s0)          ## 0000002C
/* 00518 8088E8E8 A60A0168 */  sh      $t2, 0x0168($s0)           ## 00000168
/* 0051C 8088E8EC AE0B0164 */  sw      $t3, 0x0164($s0)           ## 00000164
.L8088E8F0:
/* 00520 8088E8F0 0C00BE5D */  jal     func_8002F974              
/* 00524 8088E8F4 24052033 */  addiu   $a1, $zero, 0x2033         ## $a1 = 00002033
/* 00528 8088E8F8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0052C 8088E8FC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00530 8088E900 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00534 8088E904 03E00008 */  jr      $ra                        
/* 00538 8088E908 00000000 */  nop


