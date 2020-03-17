glabel func_80ACA5C8
/* 006A8 80ACA5C8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 006AC 80ACA5CC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 006B0 80ACA5D0 3C0E0601 */  lui     $t6, 0x0601                ## $t6 = 06010000
/* 006B4 80ACA5D4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 006B8 80ACA5D8 25CEC684 */  addiu   $t6, $t6, 0xC684           ## $t6 = 0600C684
/* 006BC 80ACA5DC 3C0580AD */  lui     $a1, %hi(func_80ACBEA0)    ## $a1 = 80AD0000
/* 006C0 80ACA5E0 3C0680AD */  lui     $a2, %hi(func_80ACC540)    ## $a2 = 80AD0000
/* 006C4 80ACA5E4 24C6C540 */  addiu   $a2, $a2, %lo(func_80ACC540) ## $a2 = 80ACC540
/* 006C8 80ACA5E8 24A5BEA0 */  addiu   $a1, $a1, %lo(func_80ACBEA0) ## $a1 = 80ACBEA0
/* 006CC 80ACA5EC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 006D0 80ACA5F0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 006D4 80ACA5F4 24870198 */  addiu   $a3, $a0, 0x0198           ## $a3 = 00000198
/* 006D8 80ACA5F8 0C2B342E */  jal     func_80ACD0B8              
/* 006DC 80ACA5FC E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 006E0 80ACA600 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 006E4 80ACA604 2404003C */  addiu   $a0, $zero, 0x003C         ## $a0 = 0000003C
/* 006E8 80ACA608 2405003C */  addiu   $a1, $zero, 0x003C         ## $a1 = 0000003C
/* 006EC 80ACA60C 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 006F0 80ACA610 A5E003F4 */  sh      $zero, 0x03F4($t7)         ## 000003F4
/* 006F4 80ACA614 8FB80020 */  lw      $t8, 0x0020($sp)           
/* 006F8 80ACA618 A70203F6 */  sh      $v0, 0x03F6($t8)           ## 000003F6
/* 006FC 80ACA61C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00700 80ACA620 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00704 80ACA624 03E00008 */  jr      $ra                        
/* 00708 80ACA628 00000000 */  nop


