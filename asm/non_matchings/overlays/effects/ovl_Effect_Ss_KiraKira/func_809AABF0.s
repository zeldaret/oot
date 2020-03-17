glabel func_809AABF0
/* 003E0 809AABF0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003E4 809AABF4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003E8 809AABF8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003EC 809AABFC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 003F0 809AAC00 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 003F4 809AAC04 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 003F8 809AAC08 3C01809B */  lui     $at, %hi(D_809AAE44)       ## $at = 809B0000
/* 003FC 809AAC0C C424AE44 */  lwc1    $f4, %lo(D_809AAE44)($at)  
/* 00400 809AAC10 3C01809B */  lui     $at, %hi(D_809AAE48)       ## $at = 809B0000
/* 00404 809AAC14 C428AE48 */  lwc1    $f8, %lo(D_809AAE48)($at)  
/* 00408 809AAC18 46040182 */  mul.s   $f6, $f0, $f4              
/* 0040C 809AAC1C 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00410 809AAC20 46083281 */  sub.s   $f10, $f6, $f8             
/* 00414 809AAC24 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00418 809AAC28 E4CA0018 */  swc1    $f10, 0x0018($a2)          ## 00000018
/* 0041C 809AAC2C 3C01809B */  lui     $at, %hi(D_809AAE4C)       ## $at = 809B0000
/* 00420 809AAC30 C430AE4C */  lwc1    $f16, %lo(D_809AAE4C)($at) 
/* 00424 809AAC34 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00428 809AAC38 3C01809B */  lui     $at, %hi(D_809AAE50)       ## $at = 809B0000
/* 0042C 809AAC3C 46100482 */  mul.s   $f18, $f0, $f16            
/* 00430 809AAC40 84C20054 */  lh      $v0, 0x0054($a2)           ## 00000054
/* 00434 809AAC44 84CE0052 */  lh      $t6, 0x0052($a2)           ## 00000052
/* 00438 809AAC48 C424AE50 */  lwc1    $f4, %lo(D_809AAE50)($at)  
/* 0043C 809AAC4C 0002C023 */  subu    $t8, $zero, $v0            
/* 00440 809AAC50 01C27821 */  addu    $t7, $t6, $v0              
/* 00444 809AAC54 A4CF0052 */  sh      $t7, 0x0052($a2)           ## 00000052
/* 00448 809AAC58 46049181 */  sub.s   $f6, $f18, $f4             
/* 0044C 809AAC5C 84C30052 */  lh      $v1, 0x0052($a2)           ## 00000052
/* 00450 809AAC60 04610004 */  bgez    $v1, .L809AAC74            
/* 00454 809AAC64 E4C60020 */  swc1    $f6, 0x0020($a2)           ## 00000020
/* 00458 809AAC68 A4C00052 */  sh      $zero, 0x0052($a2)         ## 00000052
/* 0045C 809AAC6C 10000007 */  beq     $zero, $zero, .L809AAC8C   
/* 00460 809AAC70 A4D80054 */  sh      $t8, 0x0054($a2)           ## 00000054
.L809AAC74:
/* 00464 809AAC74 28610100 */  slti    $at, $v1, 0x0100           
/* 00468 809AAC78 14200004 */  bne     $at, $zero, .L809AAC8C     
/* 0046C 809AAC7C 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 00470 809AAC80 00024023 */  subu    $t0, $zero, $v0            
/* 00474 809AAC84 A4D90052 */  sh      $t9, 0x0052($a2)           ## 00000052
/* 00478 809AAC88 A4C80054 */  sh      $t0, 0x0054($a2)           ## 00000054
.L809AAC8C:
/* 0047C 809AAC8C 84C90042 */  lh      $t1, 0x0042($a2)           ## 00000042
/* 00480 809AAC90 84CA0040 */  lh      $t2, 0x0040($a2)           ## 00000040
/* 00484 809AAC94 012A5821 */  addu    $t3, $t1, $t2              
/* 00488 809AAC98 A4CB0042 */  sh      $t3, 0x0042($a2)           ## 00000042
/* 0048C 809AAC9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00490 809AACA0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00494 809AACA4 03E00008 */  jr      $ra                        
/* 00498 809AACA8 00000000 */  nop


