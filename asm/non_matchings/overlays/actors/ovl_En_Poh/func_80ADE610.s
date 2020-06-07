.late_rodata
glabel D_80AE1C30
    .float 1500.0

.text
glabel func_80ADE610
/* 008C0 80ADE610 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008C4 80ADE614 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 008C8 80ADE618 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008CC 80ADE61C 3C0E80AE */  lui     $t6, %hi(func_80AE1600)    ## $t6 = 80AE0000
/* 008D0 80ADE620 3C0F80AE */  lui     $t7, %hi(func_80AE1654)    ## $t7 = 80AE0000
/* 008D4 80ADE624 25CE1600 */  addiu   $t6, $t6, %lo(func_80AE1600) ## $t6 = 80AE1600
/* 008D8 80ADE628 25EF1654 */  addiu   $t7, $t7, %lo(func_80AE1654) ## $t7 = 80AE1654
/* 008DC 80ADE62C AC8E0130 */  sw      $t6, 0x0130($a0)           ## 00000130
/* 008E0 80ADE630 AC8F0134 */  sw      $t7, 0x0134($a0)           ## 00000134
/* 008E4 80ADE634 AC8000C0 */  sw      $zero, 0x00C0($a0)         ## 000000C0
/* 008E8 80ADE638 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 008EC 80ADE63C 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 008F0 80ADE640 0C00B58B */  jal     Actor_SetScale
              
/* 008F4 80ADE644 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 008F8 80ADE648 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 008FC 80ADE64C 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00900 80ADE650 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 00904 80ADE654 8CD80004 */  lw      $t8, 0x0004($a2)           ## 00000004
/* 00908 80ADE658 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0090C 80ADE65C 3C0180AE */  lui     $at, %hi(D_80AE1C30)       ## $at = 80AE0000
/* 00910 80ADE660 37190010 */  ori     $t9, $t8, 0x0010           ## $t9 = 00000010
/* 00914 80ADE664 ACD90004 */  sw      $t9, 0x0004($a2)           ## 00000004
/* 00918 80ADE668 E4C4006C */  swc1    $f4, 0x006C($a2)           ## 0000006C
/* 0091C 80ADE66C C4261C30 */  lwc1    $f6, %lo(D_80AE1C30)($at)  
/* 00920 80ADE670 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00924 80ADE674 44815000 */  mtc1    $at, $f10                  ## $f10 = 15.00
/* 00928 80ADE678 C4C80028 */  lwc1    $f8, 0x0028($a2)           ## 00000028
/* 0092C 80ADE67C 90C80197 */  lbu     $t0, 0x0197($a2)           ## 00000197
/* 00930 80ADE680 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00934 80ADE684 460A4401 */  sub.s   $f16, $f8, $f10            
/* 00938 80ADE688 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 0093C 80ADE68C E4C600BC */  swc1    $f6, 0x00BC($a2)           ## 000000BC
/* 00940 80ADE690 11010003 */  beq     $t0, $at, .L80ADE6A0       
/* 00944 80ADE694 E4D00028 */  swc1    $f16, 0x0028($a2)          ## 00000028
/* 00948 80ADE698 24098000 */  addiu   $t1, $zero, 0x8000         ## $t1 = FFFF8000
/* 0094C 80ADE69C A4C900B4 */  sh      $t1, 0x00B4($a2)           ## 000000B4
.L80ADE6A0:
/* 00950 80ADE6A0 24070008 */  addiu   $a3, $zero, 0x0008         ## $a3 = 00000008
/* 00954 80ADE6A4 0C00CDD2 */  jal     Actor_ChangeType
              
/* 00958 80ADE6A8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0095C 80ADE6AC 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00960 80ADE6B0 3C0B80AE */  lui     $t3, %hi(func_80ADF994)    ## $t3 = 80AE0000
/* 00964 80ADE6B4 240A003C */  addiu   $t2, $zero, 0x003C         ## $t2 = 0000003C
/* 00968 80ADE6B8 256BF994 */  addiu   $t3, $t3, %lo(func_80ADF994) ## $t3 = 80ADF994
/* 0096C 80ADE6BC A4CA0198 */  sh      $t2, 0x0198($a2)           ## 00000198
/* 00970 80ADE6C0 ACCB0190 */  sw      $t3, 0x0190($a2)           ## 00000190
/* 00974 80ADE6C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00978 80ADE6C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0097C 80ADE6CC 03E00008 */  jr      $ra                        
/* 00980 80ADE6D0 00000000 */  nop
