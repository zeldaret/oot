.late_rodata
glabel D_80976D80
    .float 10430.378

glabel D_80976D84
    .float 10430.378

.text
glabel func_809764FC
/* 055AC 809764FC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 055B0 80976500 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 055B4 80976504 C7A6002C */  lwc1    $f6, 0x002C($sp)           
/* 055B8 80976508 C7A40038 */  lwc1    $f4, 0x0038($sp)           
/* 055BC 8097650C AFA70034 */  sw      $a3, 0x0034($sp)           
/* 055C0 80976510 C7AA0034 */  lwc1    $f10, 0x0034($sp)          
/* 055C4 80976514 46062301 */  sub.s   $f12, $f4, $f6             
/* 055C8 80976518 C7A80040 */  lwc1    $f8, 0x0040($sp)           
/* 055CC 8097651C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 055D0 80976520 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 055D4 80976524 460A4381 */  sub.s   $f14, $f8, $f10            
/* 055D8 80976528 460C6402 */  mul.s   $f16, $f12, $f12           
/* 055DC 8097652C AFA60030 */  sw      $a2, 0x0030($sp)           
/* 055E0 80976530 460E7482 */  mul.s   $f18, $f14, $f14           
/* 055E4 80976534 46128000 */  add.s   $f0, $f16, $f18            
/* 055E8 80976538 46000004 */  sqrt.s  $f0, $f0                   
/* 055EC 8097653C 0C03F494 */  jal     Math_atan2f              
/* 055F0 80976540 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 055F4 80976544 3C018097 */  lui     $at, %hi(D_80976D80)       ## $at = 80970000
/* 055F8 80976548 C4246D80 */  lwc1    $f4, %lo(D_80976D80)($at)  
/* 055FC 8097654C 8FB80028 */  lw      $t8, 0x0028($sp)           
/* 05600 80976550 46040182 */  mul.s   $f6, $f0, $f4              
/* 05604 80976554 4600320D */  trunc.w.s $f8, $f6                   
/* 05608 80976558 440F4000 */  mfc1    $t7, $f8                   
/* 0560C 8097655C 00000000 */  nop
/* 05610 80976560 A70F00B6 */  sh      $t7, 0x00B6($t8)           ## 000000B6
/* 05614 80976564 C7B00030 */  lwc1    $f16, 0x0030($sp)          
/* 05618 80976568 C7AA003C */  lwc1    $f10, 0x003C($sp)          
/* 0561C 8097656C C7AE0018 */  lwc1    $f14, 0x0018($sp)          
/* 05620 80976570 46105301 */  sub.s   $f12, $f10, $f16           
/* 05624 80976574 0C03F494 */  jal     Math_atan2f              
/* 05628 80976578 46006307 */  neg.s   $f12, $f12                 
/* 0562C 8097657C 3C018097 */  lui     $at, %hi(D_80976D84)       ## $at = 80970000
/* 05630 80976580 C4326D84 */  lwc1    $f18, %lo(D_80976D84)($at) 
/* 05634 80976584 8FA90028 */  lw      $t1, 0x0028($sp)           
/* 05638 80976588 46120102 */  mul.s   $f4, $f0, $f18             
/* 0563C 8097658C 4600218D */  trunc.w.s $f6, $f4                   
/* 05640 80976590 44083000 */  mfc1    $t0, $f6                   
/* 05644 80976594 00000000 */  nop
/* 05648 80976598 A52800B4 */  sh      $t0, 0x00B4($t1)           ## 000000B4
/* 0564C 8097659C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 05650 809765A0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 05654 809765A4 03E00008 */  jr      $ra                        
/* 05658 809765A8 00000000 */  nop


