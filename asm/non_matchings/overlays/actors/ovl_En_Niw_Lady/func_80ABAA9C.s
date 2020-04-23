glabel func_80ABAA9C
/* 00E5C 80ABAA9C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E60 80ABAAA0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E64 80ABAAA4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00E68 80ABAAA8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00E6C 80ABAAAC 240E000B */  addiu   $t6, $zero, 0x000B         ## $t6 = 0000000B
/* 00E70 80ABAAB0 A48E026E */  sh      $t6, 0x026E($a0)           ## 0000026E
/* 00E74 80ABAAB4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00E78 80ABAAB8 0C042F6F */  jal     func_8010BDBC              
/* 00E7C 80ABAABC 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00E80 80ABAAC0 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 00E84 80ABAAC4 87190262 */  lh      $t9, 0x0262($t8)           ## 00000262
/* 00E88 80ABAAC8 5722000C */  bnel    $t9, $v0, .L80ABAAFC       
/* 00E8C 80ABAACC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E90 80ABAAD0 0C041AF2 */  jal     func_80106BC8              
/* 00E94 80ABAAD4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00E98 80ABAAD8 50400008 */  beql    $v0, $zero, .L80ABAAFC     
/* 00E9C 80ABAADC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00EA0 80ABAAE0 0C041B33 */  jal     func_80106CCC              
/* 00EA4 80ABAAE4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00EA8 80ABAAE8 8FA90018 */  lw      $t1, 0x0018($sp)           
/* 00EAC 80ABAAEC 3C0880AC */  lui     $t0, %hi(func_80ABA778)    ## $t0 = 80AC0000
/* 00EB0 80ABAAF0 2508A778 */  addiu   $t0, $t0, %lo(func_80ABA778) ## $t0 = 80ABA778
/* 00EB4 80ABAAF4 AD280250 */  sw      $t0, 0x0250($t1)           ## 00000250
/* 00EB8 80ABAAF8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ABAAFC:
/* 00EBC 80ABAAFC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00EC0 80ABAB00 03E00008 */  jr      $ra                        
/* 00EC4 80ABAB04 00000000 */  nop
