.late_rodata
glabel D_80B91050
    .float 6372.0
glabel D_80B91054
    .float 0.17434467
glabel D_80B91058
    .float 0.12207746

.text
glabel func_80B90050
/* 015D0 80B90050 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 015D4 80B90054 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 015D8 80B90058 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 015DC 80B9005C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 015E0 80B90060 848E01B6 */  lh      $t6, 0x01B6($a0)           ## 000001B6
/* 015E4 80B90064 849801B8 */  lh      $t8, 0x01B8($a0)           ## 000001B8
/* 015E8 80B90068 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 015EC 80B9006C 25CF3E80 */  addiu   $t7, $t6, 0x3E80           ## $t7 = 00003E80
/* 015F0 80B90070 2719FF38 */  addiu   $t9, $t8, 0xFF38           ## $t9 = FFFFFF38
/* 015F4 80B90074 A48F01B6 */  sh      $t7, 0x01B6($a0)           ## 000001B6
/* 015F8 80B90078 A49901B8 */  sh      $t9, 0x01B8($a0)           ## 000001B8
/* 015FC 80B9007C 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 01600 80B90080 848401B6 */  lh      $a0, 0x01B6($a0)           ## 000001B6
/* 01604 80B90084 860801B8 */  lh      $t0, 0x01B8($s0)           ## 000001B8
/* 01608 80B90088 3C0180B9 */  lui     $at, %hi(D_80B91050)       ## $at = 80B90000
/* 0160C 80B9008C C4241050 */  lwc1    $f4, %lo(D_80B91050)($at)  
/* 01610 80B90090 44883000 */  mtc1    $t0, $f6                   ## $f6 = 0.00
/* 01614 80B90094 00000000 */  nop
/* 01618 80B90098 46803220 */  cvt.s.w $f8, $f6                   
/* 0161C 80B9009C 46080282 */  mul.s   $f10, $f0, $f8             
/* 01620 80B900A0 460A2401 */  sub.s   $f16, $f4, $f10            
/* 01624 80B900A4 4600848D */  trunc.w.s $f18, $f16                 
/* 01628 80B900A8 44049000 */  mfc1    $a0, $f18                  
/* 0162C 80B900AC 00000000 */  nop
/* 01630 80B900B0 00042400 */  sll     $a0, $a0, 16               
/* 01634 80B900B4 00042403 */  sra     $a0, $a0, 16               
/* 01638 80B900B8 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 0163C 80B900BC A7A40026 */  sh      $a0, 0x0026($sp)           
/* 01640 80B900C0 3C0180B9 */  lui     $at, %hi(D_80B91054)       ## $at = 80B90000
/* 01644 80B900C4 C4261054 */  lwc1    $f6, %lo(D_80B91054)($at)  
/* 01648 80B900C8 87A40026 */  lh      $a0, 0x0026($sp)           
/* 0164C 80B900CC 46060202 */  mul.s   $f8, $f0, $f6              
/* 01650 80B900D0 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 01654 80B900D4 E6080054 */  swc1    $f8, 0x0054($s0)           ## 00000054
/* 01658 80B900D8 3C0180B9 */  lui     $at, %hi(D_80B91058)       ## $at = 80B90000
/* 0165C 80B900DC C4241058 */  lwc1    $f4, %lo(D_80B91058)($at)  
/* 01660 80B900E0 860A01B8 */  lh      $t2, 0x01B8($s0)           ## 000001B8
/* 01664 80B900E4 46040082 */  mul.s   $f2, $f0, $f4              
/* 01668 80B900E8 E6020058 */  swc1    $f2, 0x0058($s0)           ## 00000058
/* 0166C 80B900EC 05410003 */  bgez    $t2, .L80B900FC            
/* 01670 80B900F0 E6020050 */  swc1    $f2, 0x0050($s0)           ## 00000050
/* 01674 80B900F4 0C2E4044 */  jal     func_80B90110              
/* 01678 80B900F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B900FC:
/* 0167C 80B900FC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01680 80B90100 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01684 80B90104 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01688 80B90108 03E00008 */  jr      $ra                        
/* 0168C 80B9010C 00000000 */  nop
