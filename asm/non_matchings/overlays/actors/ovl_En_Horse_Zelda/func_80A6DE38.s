.late_rodata
glabel D_80A6E2C0
    .float 10430.378

.text
glabel func_80A6DE38
/* 00568 80A6DE38 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0056C 80A6DE3C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00570 80A6DE40 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00574 80A6DE44 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00578 80A6DE48 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 0057C 80A6DE4C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00580 80A6DE50 848400B6 */  lh      $a0, 0x00B6($a0)           ## 000000B6
/* 00584 80A6DE54 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00588 80A6DE58 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 0058C 80A6DE5C C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 00590 80A6DE60 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00594 80A6DE64 46040182 */  mul.s   $f6, $f0, $f4              
/* 00598 80A6DE68 44819000 */  mtc1    $at, $f18                  ## $f18 = 60.00
/* 0059C 80A6DE6C 46083280 */  add.s   $f10, $f6, $f8             
/* 005A0 80A6DE70 E7AA0028 */  swc1    $f10, 0x0028($sp)          
/* 005A4 80A6DE74 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 005A8 80A6DE78 46128100 */  add.s   $f4, $f16, $f18            
/* 005AC 80A6DE7C E7A4002C */  swc1    $f4, 0x002C($sp)           
/* 005B0 80A6DE80 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 005B4 80A6DE84 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 005B8 80A6DE88 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 005BC 80A6DE8C 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 005C0 80A6DE90 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 005C4 80A6DE94 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 005C8 80A6DE98 46060202 */  mul.s   $f8, $f0, $f6              
/* 005CC 80A6DE9C 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFF8
/* 005D0 80A6DEA0 27A60024 */  addiu   $a2, $sp, 0x0024           ## $a2 = FFFFFFE4
/* 005D4 80A6DEA4 27A70028 */  addiu   $a3, $sp, 0x0028           ## $a3 = FFFFFFE8
/* 005D8 80A6DEA8 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 005DC 80A6DEAC 460A4400 */  add.s   $f16, $f8, $f10            
/* 005E0 80A6DEB0 0C00F250 */  jal     func_8003C940              
/* 005E4 80A6DEB4 E7B00030 */  swc1    $f16, 0x0030($sp)          
/* 005E8 80A6DEB8 C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 005EC 80A6DEBC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 005F0 80A6DEC0 44817000 */  mtc1    $at, $f14                  ## $f14 = 30.00
/* 005F4 80A6DEC4 E60001F4 */  swc1    $f0, 0x01F4($s0)           ## 000001F4
/* 005F8 80A6DEC8 0C03F494 */  jal     Math_atan2f              
/* 005FC 80A6DECC 46009301 */  sub.s   $f12, $f18, $f0            
/* 00600 80A6DED0 3C0180A7 */  lui     $at, %hi(D_80A6E2C0)       ## $at = 80A70000
/* 00604 80A6DED4 C424E2C0 */  lwc1    $f4, %lo(D_80A6E2C0)($at)  
/* 00608 80A6DED8 46040182 */  mul.s   $f6, $f0, $f4              
/* 0060C 80A6DEDC 4600320D */  trunc.w.s $f8, $f6                   
/* 00610 80A6DEE0 440F4000 */  mfc1    $t7, $f8                   
/* 00614 80A6DEE4 00000000 */  nop
/* 00618 80A6DEE8 A60F00B4 */  sh      $t7, 0x00B4($s0)           ## 000000B4
/* 0061C 80A6DEEC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00620 80A6DEF0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00624 80A6DEF4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00628 80A6DEF8 03E00008 */  jr      $ra                        
/* 0062C 80A6DEFC 00000000 */  nop
