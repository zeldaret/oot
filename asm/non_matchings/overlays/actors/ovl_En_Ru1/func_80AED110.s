glabel func_80AED110
/* 02500 80AED110 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02504 80AED114 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02508 80AED118 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0250C 80AED11C C48400BC */  lwc1    $f4, 0x00BC($a0)           ## 000000BC
/* 02510 80AED120 240E0012 */  addiu   $t6, $zero, 0x0012         ## $t6 = 00000012
/* 02514 80AED124 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02518 80AED128 4604003E */  c.le.s  $f0, $f4                   
/* 0251C 80AED12C 00000000 */  nop
/* 02520 80AED130 45020005 */  bc1fl   .L80AED148                 
/* 02524 80AED134 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02528 80AED138 AC8E0264 */  sw      $t6, 0x0264($a0)           ## 00000264
/* 0252C 80AED13C 0C2BB42C */  jal     func_80AED0B0              
/* 02530 80AED140 E48000BC */  swc1    $f0, 0x00BC($a0)           ## 000000BC
/* 02534 80AED144 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AED148:
/* 02538 80AED148 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0253C 80AED14C 03E00008 */  jr      $ra                        
/* 02540 80AED150 00000000 */  nop
