.late_rodata
glabel D_80982B24
    .float 0.001

glabel D_80982B28
    .float 0.048

.text
glabel func_809815FC
/* 03F8C 809815FC 3C038016 */  lui     $v1, %hi(gGameInfo)
/* 03F90 80981600 8C63FA90 */  lw      $v1, %lo(gGameInfo)($v1)
/* 03F94 80981604 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 03F98 80981608 84820172 */  lh      $v0, 0x0172($a0)           ## 00000172
/* 03F9C 8098160C 846E14DA */  lh      $t6, 0x14DA($v1)           ## 801614DA
/* 03FA0 80981610 846F14D8 */  lh      $t7, 0x14D8($v1)           ## 801614D8
/* 03FA4 80981614 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 03FA8 80981618 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 03FAC 8098161C 448F9000 */  mtc1    $t7, $f18                  ## $f18 = 0.00
/* 03FB0 80981620 46802020 */  cvt.s.w $f0, $f4                   
/* 03FB4 80981624 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 03FB8 80981628 44815000 */  mtc1    $at, $f10                  ## $f10 = 50.00
/* 03FBC 8098162C 3C018098 */  lui     $at, %hi(D_80982B24)       ## $at = 80980000
/* 03FC0 80981630 240B4000 */  addiu   $t3, $zero, 0x4000         ## $t3 = 00004000
/* 03FC4 80981634 46803220 */  cvt.s.w $f8, $f6                   
/* 03FC8 80981638 C4262B24 */  lwc1    $f6, %lo(D_80982B24)($at)  
/* 03FCC 8098163C 3C018098 */  lui     $at, %hi(D_80982B28)       ## $at = 80980000
/* 03FD0 80981640 46809120 */  cvt.s.w $f4, $f18                  
/* 03FD4 80981644 460A4400 */  add.s   $f16, $f8, $f10            
/* 03FD8 80981648 46062202 */  mul.s   $f8, $f4, $f6              
/* 03FDC 8098164C C42A2B28 */  lwc1    $f10, %lo(D_80982B28)($at) 
/* 03FE0 80981650 460A4480 */  add.s   $f18, $f8, $f10            
/* 03FE4 80981654 46120102 */  mul.s   $f4, $f0, $f18             
/* 03FE8 80981658 46048180 */  add.s   $f6, $f16, $f4             
/* 03FEC 8098165C 4600320D */  trunc.w.s $f8, $f6                   
/* 03FF0 80981660 44194000 */  mfc1    $t9, $f8                   
/* 03FF4 80981664 00000000 */  nop
/* 03FF8 80981668 A4990174 */  sh      $t9, 0x0174($a0)           ## 00000174
/* 03FFC 8098166C 84880174 */  lh      $t0, 0x0174($a0)           ## 00000174
/* 04000 80981670 00484821 */  addu    $t1, $v0, $t0              
/* 04004 80981674 A4890172 */  sh      $t1, 0x0172($a0)           ## 00000172
/* 04008 80981678 848A0172 */  lh      $t2, 0x0172($a0)           ## 00000172
/* 0400C 8098167C 29414001 */  slti    $at, $t2, 0x4001           
/* 04010 80981680 14200002 */  bne     $at, $zero, .L8098168C     
/* 04014 80981684 00000000 */  nop
/* 04018 80981688 A48B0172 */  sh      $t3, 0x0172($a0)           ## 00000172
.L8098168C:
/* 0401C 8098168C 03E00008 */  jr      $ra                        
/* 04020 80981690 00000000 */  nop
