glabel func_80AEF5B8
/* 049A8 80AEF5B8 3C0E80AF */  lui     $t6, %hi(D_80AF1938)       ## $t6 = 80AF0000
/* 049AC 80AEF5BC 8DCE1938 */  lw      $t6, %lo(D_80AF1938)($t6)  
/* 049B0 80AEF5C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 049B4 80AEF5C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 049B8 80AEF5C8 15C00012 */  bne     $t6, $zero, .L80AEF614     
/* 049BC 80AEF5CC 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 049C0 80AEF5D0 C4800164 */  lwc1    $f0, 0x0164($a0)           ## 00000164
/* 049C4 80AEF5D4 44812000 */  mtc1    $at, $f4                   ## $f4 = 60.00
/* 049C8 80AEF5D8 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 049CC 80AEF5DC 4600203E */  c.le.s  $f4, $f0                   
/* 049D0 80AEF5E0 00000000 */  nop
/* 049D4 80AEF5E4 4502000C */  bc1fl   .L80AEF618                 
/* 049D8 80AEF5E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 049DC 80AEF5EC 0C2BABA9 */  jal     func_80AEAEA4              
/* 049E0 80AEF5F0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 049E4 80AEF5F4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 049E8 80AEF5F8 0C2BABAE */  jal     func_80AEAEB8              
/* 049EC 80AEF5FC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 049F0 80AEF600 0C2BB55F */  jal     func_80AED57C              
/* 049F4 80AEF604 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 049F8 80AEF608 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 049FC 80AEF60C 3C0180AF */  lui     $at, %hi(D_80AF1938)       ## $at = 80AF0000
/* 04A00 80AEF610 AC2F1938 */  sw      $t7, %lo(D_80AF1938)($at)  
.L80AEF614:
/* 04A04 80AEF614 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AEF618:
/* 04A08 80AEF618 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04A0C 80AEF61C 03E00008 */  jr      $ra                        
/* 04A10 80AEF620 00000000 */  nop


