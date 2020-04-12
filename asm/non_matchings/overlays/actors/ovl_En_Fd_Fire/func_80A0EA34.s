.late_rodata
glabel D_80A0F134
    .float 0.01

.text
glabel func_80A0EA34
/* 00584 80A0EA34 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00588 80A0EA38 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0058C 80A0EA3C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00590 80A0EA40 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00594 80A0EA44 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00598 80A0EA48 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0059C 80A0EA4C 3C063F19 */  lui     $a2, 0x3F19                ## $a2 = 3F190000
/* 005A0 80A0EA50 44050000 */  mfc1    $a1, $f0                   
/* 005A4 80A0EA54 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3F19999A
/* 005A8 80A0EA58 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 005AC 80A0EA5C 3C074110 */  lui     $a3, 0x4110                ## $a3 = 41100000
/* 005B0 80A0EA60 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 005B4 80A0EA64 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 005B8 80A0EA68 0C00B61A */  jal     func_8002D868              
/* 005BC 80A0EA6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005C0 80A0EA70 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 005C4 80A0EA74 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 005C8 80A0EA78 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 005CC 80A0EA7C 44050000 */  mfc1    $a1, $f0                   
/* 005D0 80A0EA80 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 005D4 80A0EA84 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 005D8 80A0EA88 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 005DC 80A0EA8C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 005E0 80A0EA90 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 005E4 80A0EA94 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 005E8 80A0EA98 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 005EC 80A0EA9C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 005F0 80A0EAA0 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 005F4 80A0EAA4 C60001A0 */  lwc1    $f0, 0x01A0($s0)           ## 000001A0
/* 005F8 80A0EAA8 3C0180A1 */  lui     $at, %hi(D_80A0F134)       ## $at = 80A10000
/* 005FC 80A0EAAC 46060203 */  div.s   $f8, $f0, $f6              
/* 00600 80A0EAB0 46082282 */  mul.s   $f10, $f4, $f8             
/* 00604 80A0EAB4 E60A00C4 */  swc1    $f10, 0x00C4($s0)          ## 000000C4
/* 00608 80A0EAB8 C430F134 */  lwc1    $f16, %lo(D_80A0F134)($at) 
/* 0060C 80A0EABC 4600803C */  c.lt.s  $f16, $f0                  
/* 00610 80A0EAC0 00000000 */  nop
/* 00614 80A0EAC4 45030004 */  bc1tl   .L80A0EAD8                 
/* 00618 80A0EAC8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0061C 80A0EACC 0C00B55C */  jal     Actor_Kill
              
/* 00620 80A0EAD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00624 80A0EAD4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A0EAD8:
/* 00628 80A0EAD8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0062C 80A0EADC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00630 80A0EAE0 03E00008 */  jr      $ra                        
/* 00634 80A0EAE4 00000000 */  nop
