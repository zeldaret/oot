glabel func_80AED344
/* 02734 80AED344 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02738 80AED348 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0273C 80AED34C 0C2BB381 */  jal     func_80AECE04              
/* 02740 80AED350 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02744 80AED354 0C2BACC8 */  jal     func_80AEB320              
/* 02748 80AED358 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0274C 80AED35C 0C2BB444 */  jal     func_80AED110              
/* 02750 80AED360 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02754 80AED364 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02758 80AED368 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0275C 80AED36C 03E00008 */  jr      $ra                        
/* 02760 80AED370 00000000 */  nop


