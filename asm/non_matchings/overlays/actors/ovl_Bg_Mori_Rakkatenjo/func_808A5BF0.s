.late_rodata
glabel D_808A6084
 .word 0x442AC000, 0x00000000, 0x00000000

.text
glabel func_808A5BF0
/* 00680 808A5BF0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00684 808A5BF4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00688 808A5BF8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0068C 808A5BFC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00690 808A5C00 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00694 808A5C04 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00698 808A5C08 3C063D75 */  lui     $a2, 0x3D75                ## $a2 = 3D750000
/* 0069C 808A5C0C 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 006A0 808A5C10 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 006A4 808A5C14 34C6C28F */  ori     $a2, $a2, 0xC28F           ## $a2 = 3D75C28F
/* 006A8 808A5C18 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 006AC 808A5C1C 24840060 */  addiu   $a0, $a0, 0x0060           ## $a0 = 00000060
/* 006B0 808A5C20 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 006B4 808A5C24 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 006B8 808A5C28 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 006BC 808A5C2C C6080060 */  lwc1    $f8, 0x0060($s0)           ## 00000060
/* 006C0 808A5C30 3C01808A */  lui     $at, %hi(D_808A6084)       ## $at = 808A0000
/* 006C4 808A5C34 46083280 */  add.s   $f10, $f6, $f8             
/* 006C8 808A5C38 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 006CC 808A5C3C C4326084 */  lwc1    $f18, %lo(D_808A6084)($at) 
/* 006D0 808A5C40 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 006D4 808A5C44 4610903E */  c.le.s  $f18, $f16                 
/* 006D8 808A5C48 00000000 */  nop
/* 006DC 808A5C4C 45020004 */  bc1fl   .L808A5C60                 
/* 006E0 808A5C50 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 006E4 808A5C54 0C22963A */  jal     func_808A58E8              
/* 006E8 808A5C58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006EC 808A5C5C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808A5C60:
/* 006F0 808A5C60 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 006F4 808A5C64 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 006F8 808A5C68 03E00008 */  jr      $ra                        
/* 006FC 808A5C6C 00000000 */  nop
