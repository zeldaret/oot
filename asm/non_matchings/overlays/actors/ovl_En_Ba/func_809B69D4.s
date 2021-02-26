.late_rodata
glabel D_809B8180
    .float 65535.0

.text
glabel func_809B69D4
/* 00684 809B69D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00688 809B69D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0068C 809B69DC 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00690 809B69E0 AC80014C */  sw      $zero, 0x014C($a0)         ## 0000014C
/* 00694 809B69E4 44816000 */  mtc1    $at, $f12                  ## $f12 = 8.00
/* 00698 809B69E8 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 0069C 809B69EC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 006A0 809B69F0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 006A4 809B69F4 3C01809C */  lui     $at, %hi(D_809B8180)       ## $at = 809C0000
/* 006A8 809B69F8 E4800068 */  swc1    $f0, 0x0068($a0)           ## 00000068
/* 006AC 809B69FC 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 006B0 809B6A00 C42C8180 */  lwc1    $f12, %lo(D_809B8180)($at) 
/* 006B4 809B6A04 4600010D */  trunc.w.s $f4, $f0                   
/* 006B8 809B6A08 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 006BC 809B6A0C 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 006C0 809B6A10 44813000 */  mtc1    $at, $f6                   ## $f6 = -2.00
/* 006C4 809B6A14 440F2000 */  mfc1    $t7, $f4                   
/* 006C8 809B6A18 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 006CC 809B6A1C 3C05809B */  lui     $a1, %hi(func_809B6A44)    ## $a1 = 809B0000
/* 006D0 809B6A20 24A56A44 */  addiu   $a1, $a1, %lo(func_809B6A44) ## $a1 = 809B6A44
/* 006D4 809B6A24 A4980318 */  sh      $t8, 0x0318($a0)           ## 00000318
/* 006D8 809B6A28 E486006C */  swc1    $f6, 0x006C($a0)           ## 0000006C
/* 006DC 809B6A2C 0C26D8D4 */  jal     func_809B6350              
/* 006E0 809B6A30 A48F0032 */  sh      $t7, 0x0032($a0)           ## 00000032
/* 006E4 809B6A34 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006E8 809B6A38 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006EC 809B6A3C 03E00008 */  jr      $ra                        
/* 006F0 809B6A40 00000000 */  nop
