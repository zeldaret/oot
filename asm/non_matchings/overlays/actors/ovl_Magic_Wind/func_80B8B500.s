glabel func_80B8B500
/* 00400 80B8B500 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00404 80B8B504 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00408 80B8B508 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0040C 80B8B50C 8482016C */  lh      $v0, 0x016C($a0)           ## 0000016C
/* 00410 80B8B510 1840000E */  blez    $v0, .L80B8B54C            
/* 00414 80B8B514 00000000 */  nop
/* 00418 80B8B518 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0041C 80B8B51C 3C0180B9 */  lui     $at, %hi(D_80B8CEC0)       ## $at = 80B90000
/* 00420 80B8B520 C428CEC0 */  lwc1    $f8, %lo(D_80B8CEC0)($at)  
/* 00424 80B8B524 468021A0 */  cvt.s.w $f6, $f4                   
/* 00428 80B8B528 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0042C 80B8B52C 46083302 */  mul.s   $f12, $f6, $f8             
/* 00430 80B8B530 0C2E2CAA */  jal     func_80B8B2A8              
/* 00434 80B8B534 00000000 */  nop
/* 00438 80B8B538 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0043C 80B8B53C 848E016C */  lh      $t6, 0x016C($a0)           ## 0000016C
/* 00440 80B8B540 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 00444 80B8B544 10000003 */  beq     $zero, $zero, .L80B8B554   
/* 00448 80B8B548 A48F016C */  sh      $t7, 0x016C($a0)           ## 0000016C
.L80B8B54C:
/* 0044C 80B8B54C 0C00B55C */  jal     Actor_Kill
              
/* 00450 80B8B550 00000000 */  nop
.L80B8B554:
/* 00454 80B8B554 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00458 80B8B558 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0045C 80B8B55C 03E00008 */  jr      $ra                        
/* 00460 80B8B560 00000000 */  nop


