glabel func_80AD4208
/* 00708 80AD4208 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0070C 80AD420C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00710 80AD4210 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00714 80AD4214 3C0E80AD */  lui     $t6, %hi(func_80AD6BF4)    ## $t6 = 80AD0000
/* 00718 80AD4218 3C0F80AD */  lui     $t7, %hi(func_80AD6C4C)    ## $t7 = 80AD0000
/* 0071C 80AD421C 25CE6BF4 */  addiu   $t6, $t6, %lo(func_80AD6BF4) ## $t6 = 80AD6BF4
/* 00720 80AD4220 25EF6C4C */  addiu   $t7, $t7, %lo(func_80AD6C4C) ## $t7 = 80AD6C4C
/* 00724 80AD4224 AC8E0130 */  sw      $t6, 0x0130($a0)           ## 00000130
/* 00728 80AD4228 AC8F0134 */  sw      $t7, 0x0134($a0)           ## 00000134
/* 0072C 80AD422C AC8000C0 */  sw      $zero, 0x00C0($a0)         ## 000000C0
/* 00730 80AD4230 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00734 80AD4234 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00738 80AD4238 0C00B58B */  jal     Actor_SetScale
              
/* 0073C 80AD423C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00740 80AD4240 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00744 80AD4244 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00748 80AD4248 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 0074C 80AD424C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00750 80AD4250 3C0180AD */  lui     $at, %hi(D_80AD7244)       ## $at = 80AD0000
/* 00754 80AD4254 E4C4006C */  swc1    $f4, 0x006C($a2)           ## 0000006C
/* 00758 80AD4258 C4267244 */  lwc1    $f6, %lo(D_80AD7244)($at)  
/* 0075C 80AD425C 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00760 80AD4260 44815000 */  mtc1    $at, $f10                  ## $f10 = 15.00
/* 00764 80AD4264 C4C80028 */  lwc1    $f8, 0x0028($a2)           ## 00000028
/* 00768 80AD4268 24188000 */  addiu   $t8, $zero, 0x8000         ## $t8 = FFFF8000
/* 0076C 80AD426C 2419003C */  addiu   $t9, $zero, 0x003C         ## $t9 = 0000003C
/* 00770 80AD4270 460A4401 */  sub.s   $f16, $f8, $f10            
/* 00774 80AD4274 24070008 */  addiu   $a3, $zero, 0x0008         ## $a3 = 00000008
/* 00778 80AD4278 A4D800B4 */  sh      $t8, 0x00B4($a2)           ## 000000B4
/* 0077C 80AD427C A4D90196 */  sh      $t9, 0x0196($a2)           ## 00000196
/* 00780 80AD4280 E4D00028 */  swc1    $f16, 0x0028($a2)          ## 00000028
/* 00784 80AD4284 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 00788 80AD4288 0C00CDD2 */  jal     Actor_ChangeType
              
/* 0078C 80AD428C E4C600BC */  swc1    $f6, 0x00BC($a2)           ## 000000BC
/* 00790 80AD4290 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00794 80AD4294 3C0880AD */  lui     $t0, %hi(func_80AD53F0)    ## $t0 = 80AD0000
/* 00798 80AD4298 250853F0 */  addiu   $t0, $t0, %lo(func_80AD53F0) ## $t0 = 80AD53F0
/* 0079C 80AD429C ACC80190 */  sw      $t0, 0x0190($a2)           ## 00000190
/* 007A0 80AD42A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007A4 80AD42A4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007A8 80AD42A8 03E00008 */  jr      $ra                        
/* 007AC 80AD42AC 00000000 */  nop


