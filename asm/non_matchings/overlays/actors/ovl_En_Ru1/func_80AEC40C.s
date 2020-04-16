.late_rodata
glabel D_80AF1BCC
    .float 0.01

glabel D_80AF1BD0
    .float 2.7

glabel D_80AF1BD4
    .float 0.01

glabel D_80AF1BD8
    .float 2.7

.text
glabel func_80AEC40C
/* 017FC 80AEC40C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01800 80AEC410 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01804 80AEC414 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 01808 80AEC418 C480026C */  lwc1    $f0, 0x026C($a0)           ## 0000026C
/* 0180C 80AEC41C 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 01810 80AEC420 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 01814 80AEC424 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 01818 80AEC428 4604003C */  c.lt.s  $f0, $f4                   
/* 0181C 80AEC42C 00000000 */  nop
/* 01820 80AEC430 45000012 */  bc1f    .L80AEC47C                 
/* 01824 80AEC434 00000000 */  nop
/* 01828 80AEC438 8DCEFA90 */  lw      $t6, -0x0570($t6)          ## 8015FA90
/* 0182C 80AEC43C 3C0180AF */  lui     $at, %hi(D_80AF1BCC)       ## $at = 80AF0000
/* 01830 80AEC440 C42A1BCC */  lwc1    $f10, %lo(D_80AF1BCC)($at) 
/* 01834 80AEC444 85CF145A */  lh      $t7, 0x145A($t6)           ## 8016145A
/* 01838 80AEC448 3C0180AF */  lui     $at, %hi(D_80AF1BD0)       ## $at = 80AF0000
/* 0183C 80AEC44C C4321BD0 */  lwc1    $f18, %lo(D_80AF1BD0)($at) 
/* 01840 80AEC450 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 01844 80AEC454 3C013E00 */  lui     $at, 0x3E00                ## $at = 3E000000
/* 01848 80AEC458 46803220 */  cvt.s.w $f8, $f6                   
/* 0184C 80AEC45C 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.12
/* 01850 80AEC460 460A4402 */  mul.s   $f16, $f8, $f10            
/* 01854 80AEC464 46128100 */  add.s   $f4, $f16, $f18            
/* 01858 80AEC468 46062202 */  mul.s   $f8, $f4, $f6              
/* 0185C 80AEC46C 00000000 */  nop
/* 01860 80AEC470 46004282 */  mul.s   $f10, $f8, $f0             
/* 01864 80AEC474 1000000D */  beq     $zero, $zero, .L80AEC4AC   
/* 01868 80AEC478 E48A0068 */  swc1    $f10, 0x0068($a0)          ## 00000068
.L80AEC47C:
/* 0186C 80AEC47C 8F18FA90 */  lw      $t8, -0x0570($t8)          ## 8015FA90
/* 01870 80AEC480 3C0180AF */  lui     $at, %hi(D_80AF1BD4)       ## $at = 80AF0000
/* 01874 80AEC484 C4241BD4 */  lwc1    $f4, %lo(D_80AF1BD4)($at)  
/* 01878 80AEC488 8719145A */  lh      $t9, 0x145A($t8)           ## 8016145A
/* 0187C 80AEC48C 3C0180AF */  lui     $at, %hi(D_80AF1BD8)       ## $at = 80AF0000
/* 01880 80AEC490 C4281BD8 */  lwc1    $f8, %lo(D_80AF1BD8)($at)  
/* 01884 80AEC494 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 01888 80AEC498 00000000 */  nop
/* 0188C 80AEC49C 468084A0 */  cvt.s.w $f18, $f16                 
/* 01890 80AEC4A0 46049182 */  mul.s   $f6, $f18, $f4             
/* 01894 80AEC4A4 46083280 */  add.s   $f10, $f6, $f8             
/* 01898 80AEC4A8 E48A0068 */  swc1    $f10, 0x0068($a0)          ## 00000068
.L80AEC4AC:
/* 0189C 80AEC4AC 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 018A0 80AEC4B0 44818000 */  mtc1    $at, $f16                  ## $f16 = -1.00
/* 018A4 80AEC4B4 0C00B638 */  jal     Actor_MoveForward
              
/* 018A8 80AEC4B8 E4900060 */  swc1    $f16, 0x0060($a0)          ## 00000060
/* 018AC 80AEC4BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 018B0 80AEC4C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018B4 80AEC4C4 03E00008 */  jr      $ra                        
/* 018B8 80AEC4C8 00000000 */  nop
