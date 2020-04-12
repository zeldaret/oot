.late_rodata
glabel D_80AF1C3C
    .float 0.01

glabel D_80AF1C40
    .float 6.8
glabel D_80AF1C44
    .float 1.3

.text
glabel func_80AEE488
/* 03878 80AEE488 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0387C 80AEE48C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03880 80AEE490 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03884 80AEE494 0C00BD04 */  jal     func_8002F410              
/* 03888 80AEE498 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0388C 80AEE49C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03890 80AEE4A0 1040000A */  beq     $v0, $zero, .L80AEE4CC     
/* 03894 80AEE4A4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03898 80AEE4A8 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 0389C 80AEE4AC 00451021 */  addu    $v0, $v0, $a1              
/* 038A0 80AEE4B0 80421CBC */  lb      $v0, 0x1CBC($v0)           ## 00011CBC
/* 038A4 80AEE4B4 240E001F */  addiu   $t6, $zero, 0x001F         ## $t6 = 0000001F
/* 038A8 80AEE4B8 AC8E0264 */  sw      $t6, 0x0264($a0)           ## 00000264
/* 038AC 80AEE4BC 0C2BB548 */  jal     func_80AED520              
/* 038B0 80AEE4C0 A0820286 */  sb      $v0, 0x0286($a0)           ## 00000286
/* 038B4 80AEE4C4 10000025 */  beq     $zero, $zero, .L80AEE55C   
/* 038B8 80AEE4C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AEE4CC:
/* 038BC 80AEE4CC 0C2BB8E5 */  jal     func_80AEE394              
/* 038C0 80AEE4D0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 038C4 80AEE4D4 14400020 */  bne     $v0, $zero, .L80AEE558     
/* 038C8 80AEE4D8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 038CC 80AEE4DC 948F0088 */  lhu     $t7, 0x0088($a0)           ## 00000088
/* 038D0 80AEE4E0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 038D4 80AEE4E4 2442FA90 */  addiu   $v0, $v0, 0xFA90           ## $v0 = 8015FA90
/* 038D8 80AEE4E8 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 038DC 80AEE4EC 5700001B */  bnel    $t8, $zero, .L80AEE55C     
/* 038E0 80AEE4F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 038E4 80AEE4F4 8C590000 */  lw      $t9, 0x0000($v0)           ## 8015FA90
/* 038E8 80AEE4F8 3C0180AF */  lui     $at, %hi(D_80AF1C3C)       ## $at = 80AF0000
/* 038EC 80AEE4FC C4201C3C */  lwc1    $f0, %lo(D_80AF1C3C)($at)  
/* 038F0 80AEE500 87281484 */  lh      $t0, 0x1484($t9)           ## 00001484
/* 038F4 80AEE504 3C0180AF */  lui     $at, %hi(D_80AF1C40)       ## $at = 80AF0000
/* 038F8 80AEE508 C42A1C40 */  lwc1    $f10, %lo(D_80AF1C40)($at) 
/* 038FC 80AEE50C 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 03900 80AEE510 3C0180AF */  lui     $at, %hi(D_80AF1C44)       ## $at = 80AF0000
/* 03904 80AEE514 240B001C */  addiu   $t3, $zero, 0x001C         ## $t3 = 0000001C
/* 03908 80AEE518 468021A0 */  cvt.s.w $f6, $f4                   
/* 0390C 80AEE51C 46003202 */  mul.s   $f8, $f6, $f0              
/* 03910 80AEE520 460A4400 */  add.s   $f16, $f8, $f10            
/* 03914 80AEE524 46008487 */  neg.s   $f18, $f16                 
/* 03918 80AEE528 E4920070 */  swc1    $f18, 0x0070($a0)          ## 00000070
/* 0391C 80AEE52C 8C490000 */  lw      $t1, 0x0000($v0)           ## 8015FA90
/* 03920 80AEE530 C42A1C44 */  lwc1    $f10, %lo(D_80AF1C44)($at) 
/* 03924 80AEE534 852A1482 */  lh      $t2, 0x1482($t1)           ## 00001482
/* 03928 80AEE538 AC8B0264 */  sw      $t3, 0x0264($a0)           ## 00000264
/* 0392C 80AEE53C 448A2000 */  mtc1    $t2, $f4                   ## $f4 = 0.00
/* 03930 80AEE540 00000000 */  nop
/* 03934 80AEE544 468021A0 */  cvt.s.w $f6, $f4                   
/* 03938 80AEE548 46003202 */  mul.s   $f8, $f6, $f0              
/* 0393C 80AEE54C 460A4400 */  add.s   $f16, $f8, $f10            
/* 03940 80AEE550 46008487 */  neg.s   $f18, $f16                 
/* 03944 80AEE554 E492006C */  swc1    $f18, 0x006C($a0)          ## 0000006C
.L80AEE558:
/* 03948 80AEE558 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AEE55C:
/* 0394C 80AEE55C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03950 80AEE560 03E00008 */  jr      $ra                        
/* 03954 80AEE564 00000000 */  nop
