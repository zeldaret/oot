glabel func_8092F6F0
/* 03120 8092F6F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03124 8092F6F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03128 8092F6F8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0312C 8092F6FC 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 03130 8092F700 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.50
/* 03134 8092F704 C4840068 */  lwc1    $f4, 0x0068($a0)           ## 00000068
/* 03138 8092F708 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0313C 8092F70C 3C014366 */  lui     $at, 0x4366                ## $at = 43660000
/* 03140 8092F710 46062202 */  mul.s   $f8, $f4, $f6              
/* 03144 8092F714 44818000 */  mtc1    $at, $f16                  ## $f16 = 230.00
/* 03148 8092F718 24840028 */  addiu   $a0, $a0, 0x0028           ## $a0 = 00000028
/* 0314C 8092F71C E4880040 */  swc1    $f8, 0x0040($a0)           ## 00000068
/* 03150 8092F720 C4EA000C */  lwc1    $f10, 0x000C($a3)          ## 0000000C
/* 03154 8092F724 8CE60068 */  lw      $a2, 0x0068($a3)           ## 00000068
/* 03158 8092F728 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 0315C 8092F72C 46105481 */  sub.s   $f18, $f10, $f16           
/* 03160 8092F730 44059000 */  mfc1    $a1, $f18                  
/* 03164 8092F734 0C01DE80 */  jal     Math_StepToF
              
/* 03168 8092F738 00000000 */  nop
/* 0316C 8092F73C 10400005 */  beq     $v0, $zero, .L8092F754     
/* 03170 8092F740 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 03174 8092F744 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 03178 8092F748 0C24BDE4 */  jal     func_8092F790              
/* 0317C 8092F74C AFA70018 */  sw      $a3, 0x0018($sp)           
/* 03180 8092F750 8FA70018 */  lw      $a3, 0x0018($sp)           
.L8092F754:
/* 03184 8092F754 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 03188 8092F758 44812000 */  mtc1    $at, $f4                   ## $f4 = 200.00
/* 0318C 8092F75C 3C018093 */  lui     $at, %hi(D_80937350)       ## $at = 80930000
/* 03190 8092F760 C4267350 */  lwc1    $f6, %lo(D_80937350)($at)  
/* 03194 8092F764 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 03198 8092F768 4606203C */  c.lt.s  $f4, $f6                   
/* 0319C 8092F76C 00000000 */  nop
/* 031A0 8092F770 45020004 */  bc1fl   .L8092F784                 
/* 031A4 8092F774 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 031A8 8092F778 0C24BB67 */  jal     func_8092ED9C              
/* 031AC 8092F77C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 031B0 8092F780 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8092F784:
/* 031B4 8092F784 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 031B8 8092F788 03E00008 */  jr      $ra                        
/* 031BC 8092F78C 00000000 */  nop
