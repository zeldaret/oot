glabel func_80ADE6D4
/* 00984 80ADE6D4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00988 80ADE6D8 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 0098C 80ADE6DC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00990 80ADE6E0 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00994 80ADE6E4 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00998 80ADE6E8 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 0099C 80ADE6EC C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 009A0 80ADE6F0 4600848D */  trunc.w.s $f18, $f16                 
/* 009A4 80ADE6F4 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 009A8 80ADE6F8 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 009AC 80ADE6FC 4600428D */  trunc.w.s $f10, $f8                  
/* 009B0 80ADE700 44079000 */  mfc1    $a3, $f18                  
/* 009B4 80ADE704 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 009B8 80ADE708 4600218D */  trunc.w.s $f6, $f4                   
/* 009BC 80ADE70C 44065000 */  mfc1    $a2, $f10                  
/* 009C0 80ADE710 00073C00 */  sll     $a3, $a3, 16               
/* 009C4 80ADE714 00073C03 */  sra     $a3, $a3, 16               
/* 009C8 80ADE718 44053000 */  mfc1    $a1, $f6                   
/* 009CC 80ADE71C 00063400 */  sll     $a2, $a2, 16               
/* 009D0 80ADE720 00063403 */  sra     $a2, $a2, 16               
/* 009D4 80ADE724 00052C00 */  sll     $a1, $a1, 16               
/* 009D8 80ADE728 00052C03 */  sra     $a1, $a1, 16               
/* 009DC 80ADE72C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 009E0 80ADE730 0C01E763 */  jal     Lights_InitType0PositionalLight
              
/* 009E4 80ADE734 248402AC */  addiu   $a0, $a0, 0x02AC           ## $a0 = 000002AC
/* 009E8 80ADE738 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 009EC 80ADE73C 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 009F0 80ADE740 A600019A */  sh      $zero, 0x019A($s0)         ## 0000019A
/* 009F4 80ADE744 A60000B6 */  sh      $zero, 0x00B6($s0)         ## 000000B6
/* 009F8 80ADE748 2B210002 */  slti    $at, $t9, 0x0002           
/* 009FC 80ADE74C A200029A */  sb      $zero, 0x029A($s0)         ## 0000029A
/* 00A00 80ADE750 A200029D */  sb      $zero, 0x029D($s0)         ## 0000029D
/* 00A04 80ADE754 E60000BC */  swc1    $f0, 0x00BC($s0)           ## 000000BC
/* 00A08 80ADE758 E600006C */  swc1    $f0, 0x006C($s0)           ## 0000006C
/* 00A0C 80ADE75C 14200005 */  bne     $at, $zero, .L80ADE774     
/* 00A10 80ADE760 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 00A14 80ADE764 240800C8 */  addiu   $t0, $zero, 0x00C8         ## $t0 = 000000C8
/* 00A18 80ADE768 A208029B */  sb      $t0, 0x029B($s0)           ## 0000029B
/* 00A1C 80ADE76C 10000004 */  beq     $zero, $zero, .L80ADE780   
/* 00A20 80ADE770 A200029C */  sb      $zero, 0x029C($s0)         ## 0000029C
.L80ADE774:
/* 00A24 80ADE774 240900C8 */  addiu   $t1, $zero, 0x00C8         ## $t1 = 000000C8
/* 00A28 80ADE778 A200029B */  sb      $zero, 0x029B($s0)         ## 0000029B
/* 00A2C 80ADE77C A209029C */  sb      $t1, 0x029C($s0)           ## 0000029C
.L80ADE780:
/* 00A30 80ADE780 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00A34 80ADE784 E6000050 */  swc1    $f0, 0x0050($s0)           ## 00000050
/* 00A38 80ADE788 E6000054 */  swc1    $f0, 0x0054($s0)           ## 00000054
/* 00A3C 80ADE78C A60000B4 */  sh      $zero, 0x00B4($s0)         ## 000000B4
/* 00A40 80ADE790 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A44 80ADE794 240528E0 */  addiu   $a1, $zero, 0x28E0         ## $a1 = 000028E0
/* 00A48 80ADE798 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00A4C 80ADE79C E604000C */  swc1    $f4, 0x000C($s0)           ## 0000000C
/* 00A50 80ADE7A0 3C0A80AE */  lui     $t2, %hi(func_80ADFE28)    ## $t2 = 80AE0000
/* 00A54 80ADE7A4 254AFE28 */  addiu   $t2, $t2, %lo(func_80ADFE28) ## $t2 = 80ADFE28
/* 00A58 80ADE7A8 AE0A0190 */  sw      $t2, 0x0190($s0)           ## 00000190
/* 00A5C 80ADE7AC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00A60 80ADE7B0 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00A64 80ADE7B4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00A68 80ADE7B8 03E00008 */  jr      $ra                        
/* 00A6C 80ADE7BC 00000000 */  nop


