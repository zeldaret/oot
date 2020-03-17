glabel func_809DEE9C
/* 0009C 809DEE9C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 000A0 809DEEA0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 000A4 809DEEA4 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 000A8 809DEEA8 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 000AC 809DEEAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000B0 809DEEB0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000B4 809DEEB4 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 000B8 809DEEB8 E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 000BC 809DEEBC E7A40024 */  swc1    $f4, 0x0024($sp)           
/* 000C0 809DEEC0 84C500B6 */  lh      $a1, 0x00B6($a2)           ## 000000B6
/* 000C4 809DEEC4 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 000C8 809DEEC8 0C277B80 */  jal     func_809DEE00              
/* 000CC 809DEECC 27A4001C */  addiu   $a0, $sp, 0x001C           ## $a0 = FFFFFFF4
/* 000D0 809DEED0 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 000D4 809DEED4 C7A8001C */  lwc1    $f8, 0x001C($sp)           
/* 000D8 809DEED8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 000DC 809DEEDC C4C60024 */  lwc1    $f6, 0x0024($a2)           ## 00000024
/* 000E0 809DEEE0 C4D20028 */  lwc1    $f18, 0x0028($a2)          ## 00000028
/* 000E4 809DEEE4 3C01C1A0 */  lui     $at, 0xC1A0                ## $at = C1A00000
/* 000E8 809DEEE8 46083280 */  add.s   $f10, $f6, $f8             
/* 000EC 809DEEEC C4C6002C */  lwc1    $f6, 0x002C($a2)           ## 0000002C
/* 000F0 809DEEF0 27A4001C */  addiu   $a0, $sp, 0x001C           ## $a0 = FFFFFFF4
/* 000F4 809DEEF4 4600910D */  trunc.w.s $f4, $f18                  
/* 000F8 809DEEF8 44819000 */  mtc1    $at, $f18                  ## $f18 = -20.00
/* 000FC 809DEEFC 4600540D */  trunc.w.s $f16, $f10                 
/* 00100 809DEF00 44192000 */  mfc1    $t9, $f4                   
/* 00104 809DEF04 440F8000 */  mfc1    $t7, $f16                  
/* 00108 809DEF08 A4D90194 */  sh      $t9, 0x0194($a2)           ## 00000194
/* 0010C 809DEF0C A4CF0192 */  sh      $t7, 0x0192($a2)           ## 00000192
/* 00110 809DEF10 C7A80024 */  lwc1    $f8, 0x0024($sp)           
/* 00114 809DEF14 46083280 */  add.s   $f10, $f6, $f8             
/* 00118 809DEF18 4600540D */  trunc.w.s $f16, $f10                 
/* 0011C 809DEF1C 44098000 */  mfc1    $t1, $f16                  
/* 00120 809DEF20 00000000 */  nop
/* 00124 809DEF24 A4C90196 */  sh      $t1, 0x0196($a2)           ## 00000196
/* 00128 809DEF28 E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 0012C 809DEF2C E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 00130 809DEF30 E7B20024 */  swc1    $f18, 0x0024($sp)          
/* 00134 809DEF34 0C277B80 */  jal     func_809DEE00              
/* 00138 809DEF38 84C500B6 */  lh      $a1, 0x00B6($a2)           ## 000000B6
/* 0013C 809DEF3C 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00140 809DEF40 C7A6001C */  lwc1    $f6, 0x001C($sp)           
/* 00144 809DEF44 C4C40024 */  lwc1    $f4, 0x0024($a2)           ## 00000024
/* 00148 809DEF48 C4D00028 */  lwc1    $f16, 0x0028($a2)          ## 00000028
/* 0014C 809DEF4C 46062200 */  add.s   $f8, $f4, $f6              
/* 00150 809DEF50 C4C4002C */  lwc1    $f4, 0x002C($a2)           ## 0000002C
/* 00154 809DEF54 4600848D */  trunc.w.s $f18, $f16                 
/* 00158 809DEF58 4600428D */  trunc.w.s $f10, $f8                  
/* 0015C 809DEF5C 440D9000 */  mfc1    $t5, $f18                  
/* 00160 809DEF60 440B5000 */  mfc1    $t3, $f10                  
/* 00164 809DEF64 A4CD01E0 */  sh      $t5, 0x01E0($a2)           ## 000001E0
/* 00168 809DEF68 A4CB01DE */  sh      $t3, 0x01DE($a2)           ## 000001DE
/* 0016C 809DEF6C C7A60024 */  lwc1    $f6, 0x0024($sp)           
/* 00170 809DEF70 46062200 */  add.s   $f8, $f4, $f6              
/* 00174 809DEF74 4600428D */  trunc.w.s $f10, $f8                  
/* 00178 809DEF78 440F5000 */  mfc1    $t7, $f10                  
/* 0017C 809DEF7C 00000000 */  nop
/* 00180 809DEF80 A4CF01E2 */  sh      $t7, 0x01E2($a2)           ## 000001E2
/* 00184 809DEF84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00188 809DEF88 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0018C 809DEF8C 03E00008 */  jr      $ra                        
/* 00190 809DEF90 00000000 */  nop


