.late_rodata
glabel D_8094AEB4
    .float 1.57079637051

glabel D_8094AEB8
 .word 0x3F490FDB

.text
glabel func_80939338
/* 00668 80939338 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 0066C 8093933C AFBF005C */  sw      $ra, 0x005C($sp)           
/* 00670 80939340 AFB70058 */  sw      $s7, 0x0058($sp)           
/* 00674 80939344 AFB60054 */  sw      $s6, 0x0054($sp)           
/* 00678 80939348 AFB50050 */  sw      $s5, 0x0050($sp)           
/* 0067C 8093934C AFB4004C */  sw      $s4, 0x004C($sp)           
/* 00680 80939350 AFB30048 */  sw      $s3, 0x0048($sp)           
/* 00684 80939354 AFB20044 */  sw      $s2, 0x0044($sp)           
/* 00688 80939358 AFB10040 */  sw      $s1, 0x0040($sp)           
/* 0068C 8093935C AFB0003C */  sw      $s0, 0x003C($sp)           
/* 00690 80939360 F7BC0030 */  sdc1    $f28, 0x0030($sp)          
/* 00694 80939364 F7BA0028 */  sdc1    $f26, 0x0028($sp)          
/* 00698 80939368 F7B80020 */  sdc1    $f24, 0x0020($sp)          
/* 0069C 8093936C F7B60018 */  sdc1    $f22, 0x0018($sp)          
/* 006A0 80939370 F7B40010 */  sdc1    $f20, 0x0010($sp)          
/* 006A4 80939374 AFA60068 */  sw      $a2, 0x0068($sp)           
/* 006A8 80939378 8C821C44 */  lw      $v0, 0x1C44($a0)           ## 00001C44
/* 006AC 8093937C 3C158095 */  lui     $s5, %hi(D_8094C860)       ## $s5 = 80950000
/* 006B0 80939380 26B5C860 */  addiu   $s5, $s5, %lo(D_8094C860)  ## $s5 = 8094C860
/* 006B4 80939384 8C4F09BC */  lw      $t7, 0x09BC($v0)           ## 000009BC
/* 006B8 80939388 3C018095 */  lui     $at, %hi(D_8094C86C)       ## $at = 80950000
/* 006BC 8093938C 0006A400 */  sll     $s4, $a2, 16               
/* 006C0 80939390 AEAF0000 */  sw      $t7, 0x0000($s5)           ## 8094C860
/* 006C4 80939394 8C4E09C0 */  lw      $t6, 0x09C0($v0)           ## 000009C0
/* 006C8 80939398 3C128095 */  lui     $s2, %hi(D_8094A7DC)       ## $s2 = 80950000
/* 006CC 8093939C 4485B000 */  mtc1    $a1, $f22                  ## $f22 = 0.00
/* 006D0 809393A0 AEAE0004 */  sw      $t6, 0x0004($s5)           ## 8094C864
/* 006D4 809393A4 8C4F09C4 */  lw      $t7, 0x09C4($v0)           ## 000009C4
/* 006D8 809393A8 4480E000 */  mtc1    $zero, $f28                ## $f28 = 0.00
/* 006DC 809393AC 0014A403 */  sra     $s4, $s4, 16               
/* 006E0 809393B0 AEAF0008 */  sw      $t7, 0x0008($s5)           ## 8094C868
/* 006E4 809393B4 845800B6 */  lh      $t8, 0x00B6($v0)           ## 000000B6
/* 006E8 809393B8 2652A7DC */  addiu   $s2, $s2, %lo(D_8094A7DC)  ## $s2 = 8094A7DC
/* 006EC 809393BC 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 006F0 809393C0 A438C86C */  sh      $t8, %lo(D_8094C86C)($at)  
/* 006F4 809393C4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 006F8 809393C8 00819821 */  addu    $s3, $a0, $at              
/* 006FC 809393CC 3C018095 */  lui     $at, %hi(D_8094AEB4)       ## $at = 80950000
/* 00700 809393D0 C43AAEB4 */  lwc1    $f26, %lo(D_8094AEB4)($at) 
/* 00704 809393D4 3C018095 */  lui     $at, %hi(D_8094AEB8)       ## $at = 80950000
/* 00708 809393D8 C438AEB8 */  lwc1    $f24, %lo(D_8094AEB8)($at) 
/* 0070C 809393DC 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00710 809393E0 4481A000 */  mtc1    $at, $f20                  ## $f20 = 1000.00
/* 00714 809393E4 24160009 */  addiu   $s6, $zero, 0x0009         ## $s6 = 00000009
/* 00718 809393E8 241700FF */  addiu   $s7, $zero, 0x00FF         ## $s7 = 000000FF
/* 0071C 809393EC 8E701E10 */  lw      $s0, 0x1E10($s3)           ## 00001E10
.L809393F0:
/* 00720 809393F0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809393F4:
/* 00724 809393F4 92190000 */  lbu     $t9, 0x0000($s0)           ## 00000000
/* 00728 809393F8 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 0072C 809393FC 00021400 */  sll     $v0, $v0, 16               
/* 00730 80939400 17200025 */  bne     $t9, $zero, .L80939498     
/* 00734 80939404 00021403 */  sra     $v0, $v0, 16               
/* 00738 80939408 A2160000 */  sb      $s6, 0x0000($s0)           ## 00000000
/* 0073C 8093940C 8EA90000 */  lw      $t1, 0x0000($s5)           ## 8094C860
/* 00740 80939410 4614B283 */  div.s   $f10, $f22, $f20           
/* 00744 80939414 44912000 */  mtc1    $s1, $f4                   ## $f4 = 0.00
/* 00748 80939418 AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
/* 0074C 8093941C 8EA80004 */  lw      $t0, 0x0004($s5)           ## 8094C864
/* 00750 80939420 468021A0 */  cvt.s.w $f6, $f4                   
/* 00754 80939424 4600A306 */  mov.s   $f12, $f20                 
/* 00758 80939428 AE080008 */  sw      $t0, 0x0008($s0)           ## 00000008
/* 0075C 8093942C 8EA90008 */  lw      $t1, 0x0008($s5)           ## 8094C868
/* 00760 80939430 AE09000C */  sw      $t1, 0x000C($s0)           ## 0000000C
/* 00764 80939434 8E4B0000 */  lw      $t3, 0x0000($s2)           ## 8094A7DC
/* 00768 80939438 AE0B0010 */  sw      $t3, 0x0010($s0)           ## 00000010
/* 0076C 8093943C 8E4A0004 */  lw      $t2, 0x0004($s2)           ## 8094A7E0
/* 00770 80939440 AE0A0014 */  sw      $t2, 0x0014($s0)           ## 00000014
/* 00774 80939444 8E4B0008 */  lw      $t3, 0x0008($s2)           ## 8094A7E4
/* 00778 80939448 AE0B0018 */  sw      $t3, 0x0018($s0)           ## 00000018
/* 0077C 8093944C 8E4D0000 */  lw      $t5, 0x0000($s2)           ## 8094A7DC
/* 00780 80939450 46183202 */  mul.s   $f8, $f6, $f24             
/* 00784 80939454 AE0D001C */  sw      $t5, 0x001C($s0)           ## 0000001C
/* 00788 80939458 8E4C0004 */  lw      $t4, 0x0004($s2)           ## 8094A7E0
/* 0078C 8093945C AE0C0020 */  sw      $t4, 0x0020($s0)           ## 00000020
/* 00790 80939460 8E4D0008 */  lw      $t5, 0x0008($s2)           ## 8094A7E4
/* 00794 80939464 E608003C */  swc1    $f8, 0x003C($s0)           ## 0000003C
/* 00798 80939468 E61A0040 */  swc1    $f26, 0x0040($s0)          ## 00000040
/* 0079C 8093946C E61C0038 */  swc1    $f28, 0x0038($s0)          ## 00000038
/* 007A0 80939470 E60A0034 */  swc1    $f10, 0x0034($s0)          ## 00000034
/* 007A4 80939474 A614002E */  sh      $s4, 0x002E($s0)           ## 0000002E
/* 007A8 80939478 A6000030 */  sh      $zero, 0x0030($s0)         ## 00000030
/* 007AC 8093947C A617002C */  sh      $s7, 0x002C($s0)           ## 0000002C
/* 007B0 80939480 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 007B4 80939484 AE0D0024 */  sw      $t5, 0x0024($s0)           ## 00000024
/* 007B8 80939488 4600040D */  trunc.w.s $f16, $f0                  
/* 007BC 8093948C 44198000 */  mfc1    $t9, $f16                  
/* 007C0 80939490 10000004 */  beq     $zero, $zero, .L809394A4   
/* 007C4 80939494 A2190001 */  sb      $t9, 0x0001($s0)           ## 00000001
.L80939498:
/* 007C8 80939498 28410096 */  slti    $at, $v0, 0x0096           
/* 007CC 8093949C 1420FFD5 */  bne     $at, $zero, .L809393F4     
/* 007D0 809394A0 26100048 */  addiu   $s0, $s0, 0x0048           ## $s0 = 00000048
.L809394A4:
/* 007D4 809394A4 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 007D8 809394A8 00118C00 */  sll     $s1, $s1, 16               
/* 007DC 809394AC 00118C03 */  sra     $s1, $s1, 16               
/* 007E0 809394B0 2A210008 */  slti    $at, $s1, 0x0008           
/* 007E4 809394B4 5420FFCE */  bnel    $at, $zero, .L809393F0     
/* 007E8 809394B8 8E701E10 */  lw      $s0, 0x1E10($s3)           ## 00001E10
/* 007EC 809394BC 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 007F0 809394C0 D7B40010 */  ldc1    $f20, 0x0010($sp)          
/* 007F4 809394C4 D7B60018 */  ldc1    $f22, 0x0018($sp)          
/* 007F8 809394C8 D7B80020 */  ldc1    $f24, 0x0020($sp)          
/* 007FC 809394CC D7BA0028 */  ldc1    $f26, 0x0028($sp)          
/* 00800 809394D0 D7BC0030 */  ldc1    $f28, 0x0030($sp)          
/* 00804 809394D4 8FB0003C */  lw      $s0, 0x003C($sp)           
/* 00808 809394D8 8FB10040 */  lw      $s1, 0x0040($sp)           
/* 0080C 809394DC 8FB20044 */  lw      $s2, 0x0044($sp)           
/* 00810 809394E0 8FB30048 */  lw      $s3, 0x0048($sp)           
/* 00814 809394E4 8FB4004C */  lw      $s4, 0x004C($sp)           
/* 00818 809394E8 8FB50050 */  lw      $s5, 0x0050($sp)           
/* 0081C 809394EC 8FB60054 */  lw      $s6, 0x0054($sp)           
/* 00820 809394F0 8FB70058 */  lw      $s7, 0x0058($sp)           
/* 00824 809394F4 03E00008 */  jr      $ra                        
/* 00828 809394F8 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
