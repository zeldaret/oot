glabel func_80ADE7C0
/* 00A70 80ADE7C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A74 80ADE7C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A78 80ADE7C8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00A7C 80ADE7CC C4840028 */  lwc1    $f4, 0x0028($a0)           ## 00000028
/* 00A80 80ADE7D0 3C05C120 */  lui     $a1, 0xC120                ## $a1 = C1200000
/* 00A84 80ADE7D4 E484000C */  swc1    $f4, 0x000C($a0)           ## 0000000C
/* 00A88 80ADE7D8 0C00B56E */  jal     Actor_SetHeight
              
/* 00A8C 80ADE7DC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00A90 80ADE7E0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00A94 80ADE7E4 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00A98 80ADE7E8 44818000 */  mtc1    $at, $f16                  ## $f16 = 20.00
/* 00A9C 80ADE7EC C4C60024 */  lwc1    $f6, 0x0024($a2)           ## 00000024
/* 00AA0 80ADE7F0 C4CA0028 */  lwc1    $f10, 0x0028($a2)          ## 00000028
/* 00AA4 80ADE7F4 84C2001C */  lh      $v0, 0x001C($a2)           ## 0000001C
/* 00AA8 80ADE7F8 4600320D */  trunc.w.s $f8, $f6                   
/* 00AAC 80ADE7FC C4C6002C */  lwc1    $f6, 0x002C($a2)           ## 0000002C
/* 00AB0 80ADE800 240E000D */  addiu   $t6, $zero, 0x000D         ## $t6 = 0000000D
/* 00AB4 80ADE804 46105481 */  sub.s   $f18, $f10, $f16           
/* 00AB8 80ADE808 44194000 */  mfc1    $t9, $f8                   
/* 00ABC 80ADE80C 240F001E */  addiu   $t7, $zero, 0x001E         ## $t7 = 0000001E
/* 00AC0 80ADE810 4600320D */  trunc.w.s $f8, $f6                   
/* 00AC4 80ADE814 240C0009 */  addiu   $t4, $zero, 0x0009         ## $t4 = 00000009
/* 00AC8 80ADE818 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00ACC 80ADE81C 4600910D */  trunc.w.s $f4, $f18                  
/* 00AD0 80ADE820 440B4000 */  mfc1    $t3, $f8                   
/* 00AD4 80ADE824 A4CE02FC */  sh      $t6, 0x02FC($a2)           ## 000002FC
/* 00AD8 80ADE828 A4CF02FE */  sh      $t7, 0x02FE($a2)           ## 000002FE
/* 00ADC 80ADE82C 44092000 */  mfc1    $t1, $f4                   
/* 00AE0 80ADE830 A4C00300 */  sh      $zero, 0x0300($a2)         ## 00000300
/* 00AE4 80ADE834 A0CC02CE */  sb      $t4, 0x02CE($a2)           ## 000002CE
/* 00AE8 80ADE838 A4D90302 */  sh      $t9, 0x0302($a2)           ## 00000302
/* 00AEC 80ADE83C A4CB0306 */  sh      $t3, 0x0306($a2)           ## 00000306
/* 00AF0 80ADE840 10410004 */  beq     $v0, $at, .L80ADE854       
/* 00AF4 80ADE844 A4C90304 */  sh      $t1, 0x0304($a2)           ## 00000304
/* 00AF8 80ADE848 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00AFC 80ADE84C 14410031 */  bne     $v0, $at, .L80ADE914       
/* 00B00 80ADE850 240A5005 */  addiu   $t2, $zero, 0x5005         ## $t2 = 00005005
.L80ADE854:
/* 00B04 80ADE854 3C0D8012 */  lui     $t5, %hi(gBitFlags+0x3c)
/* 00B08 80ADE858 3C0E8016 */  lui     $t6, %hi(gSaveContext+0xa4)
/* 00B0C 80ADE85C 8DCEE704 */  lw      $t6, %lo(gSaveContext+0xa4)($t6)
/* 00B10 80ADE860 8DAD715C */  lw      $t5, %lo(gBitFlags+0x3c)($t5)
/* 00B14 80ADE864 24185000 */  addiu   $t8, $zero, 0x5000         ## $t8 = 00005000
/* 00B18 80ADE868 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00B1C 80ADE86C 01AE7824 */  and     $t7, $t5, $t6              
/* 00B20 80ADE870 11E00003 */  beq     $t7, $zero, .L80ADE880     
/* 00B24 80ADE874 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 00B28 80ADE878 10000027 */  beq     $zero, $zero, .L80ADE918   
/* 00B2C 80ADE87C A4D8010E */  sh      $t8, 0x010E($a2)           ## 0000010E
.L80ADE880:
/* 00B30 80ADE880 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00B34 80ADE884 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00B38 80ADE888 1440000A */  bne     $v0, $zero, .L80ADE8B4     
/* 00B3C 80ADE88C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00B40 80ADE890 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00B44 80ADE894 2405000B */  addiu   $a1, $zero, 0x000B         ## $a1 = 0000000B
/* 00B48 80ADE898 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00B4C 80ADE89C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00B50 80ADE8A0 14400004 */  bne     $v0, $zero, .L80ADE8B4     
/* 00B54 80ADE8A4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00B58 80ADE8A8 2419500F */  addiu   $t9, $zero, 0x500F         ## $t9 = 0000500F
/* 00B5C 80ADE8AC 1000001A */  beq     $zero, $zero, .L80ADE918   
/* 00B60 80ADE8B0 A4D9010E */  sh      $t9, 0x010E($a2)           ## 0000010E
.L80ADE8B4:
/* 00B64 80ADE8B4 84C2001C */  lh      $v0, 0x001C($a2)           ## 0000001C
/* 00B68 80ADE8B8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00B6C 80ADE8BC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00B70 80ADE8C0 14410006 */  bne     $v0, $at, .L80ADE8DC       
/* 00B74 80ADE8C4 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 00B78 80ADE8C8 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00B7C 80ADE8CC AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00B80 80ADE8D0 1440000A */  bne     $v0, $zero, .L80ADE8FC     
/* 00B84 80ADE8D4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00B88 80ADE8D8 84C2001C */  lh      $v0, 0x001C($a2)           ## 0000001C
.L80ADE8DC:
/* 00B8C 80ADE8DC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00B90 80ADE8E0 14410009 */  bne     $v0, $at, .L80ADE908       
/* 00B94 80ADE8E4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00B98 80ADE8E8 2405000B */  addiu   $a1, $zero, 0x000B         ## $a1 = 0000000B
/* 00B9C 80ADE8EC 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00BA0 80ADE8F0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00BA4 80ADE8F4 10400004 */  beq     $v0, $zero, .L80ADE908     
/* 00BA8 80ADE8F8 8FA60018 */  lw      $a2, 0x0018($sp)           
.L80ADE8FC:
/* 00BAC 80ADE8FC 24085013 */  addiu   $t0, $zero, 0x5013         ## $t0 = 00005013
/* 00BB0 80ADE900 10000005 */  beq     $zero, $zero, .L80ADE918   
/* 00BB4 80ADE904 A4C8010E */  sh      $t0, 0x010E($a2)           ## 0000010E
.L80ADE908:
/* 00BB8 80ADE908 24095012 */  addiu   $t1, $zero, 0x5012         ## $t1 = 00005012
/* 00BBC 80ADE90C 10000002 */  beq     $zero, $zero, .L80ADE918   
/* 00BC0 80ADE910 A4C9010E */  sh      $t1, 0x010E($a2)           ## 0000010E
.L80ADE914:
/* 00BC4 80ADE914 A4CA010E */  sh      $t2, 0x010E($a2)           ## 0000010E
.L80ADE918:
/* 00BC8 80ADE918 8CCD0004 */  lw      $t5, 0x0004($a2)           ## 00000004
/* 00BCC 80ADE91C 3C0F80AE */  lui     $t7, %hi(func_80ADFE80)    ## $t7 = 80AE0000
/* 00BD0 80ADE920 240B00C8 */  addiu   $t3, $zero, 0x00C8         ## $t3 = 000000C8
/* 00BD4 80ADE924 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 00BD8 80ADE928 25EFFE80 */  addiu   $t7, $t7, %lo(func_80ADFE80) ## $t7 = 80ADFE80
/* 00BDC 80ADE92C 35AE0001 */  ori     $t6, $t5, 0x0001           ## $t6 = 00000001
/* 00BE0 80ADE930 A4CB0198 */  sh      $t3, 0x0198($a2)           ## 00000198
/* 00BE4 80ADE934 A0CC0195 */  sb      $t4, 0x0195($a2)           ## 00000195
/* 00BE8 80ADE938 ACCE0004 */  sw      $t6, 0x0004($a2)           ## 00000004
/* 00BEC 80ADE93C ACCF0190 */  sw      $t7, 0x0190($a2)           ## 00000190
/* 00BF0 80ADE940 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BF4 80ADE944 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BF8 80ADE948 03E00008 */  jr      $ra                        
/* 00BFC 80ADE94C 00000000 */  nop
