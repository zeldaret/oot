glabel EnReeba_Destroy
/* 001FC 80AE4ECC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00200 80AE4ED0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00204 80AE4ED4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00208 80AE4ED8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0020C 80AE4EDC 24C50290 */  addiu   $a1, $a2, 0x0290           ## $a1 = 00000290
/* 00210 80AE4EE0 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00214 80AE4EE4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00218 80AE4EE8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0021C 80AE4EEC 8CC30118 */  lw      $v1, 0x0118($a2)           ## 00000118
/* 00220 80AE4EF0 50600010 */  beql    $v1, $zero, .L80AE4F34     
/* 00224 80AE4EF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00228 80AE4EF8 8C6E0130 */  lw      $t6, 0x0130($v1)           ## 00000130
/* 0022C 80AE4EFC 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 00230 80AE4F00 51C0000C */  beql    $t6, $zero, .L80AE4F34     
/* 00234 80AE4F04 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00238 80AE4F08 84630152 */  lh      $v1, 0x0152($v1)           ## 00000152
/* 0023C 80AE4F0C 24190258 */  addiu   $t9, $zero, 0x0258         ## $t9 = 00000258
/* 00240 80AE4F10 18600002 */  blez    $v1, .L80AE4F1C            
/* 00244 80AE4F14 246FFFFF */  addiu   $t7, $v1, 0xFFFF           ## $t7 = FFFFFFFF
/* 00248 80AE4F18 A44F0152 */  sh      $t7, 0x0152($v0)           ## 00000152
.L80AE4F1C:
/* 0024C 80AE4F1C 84D8027A */  lh      $t8, 0x027A($a2)           ## 0000027A
/* 00250 80AE4F20 53000004 */  beql    $t8, $zero, .L80AE4F34     
/* 00254 80AE4F24 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00258 80AE4F28 AC40016C */  sw      $zero, 0x016C($v0)         ## 0000016C
/* 0025C 80AE4F2C A4590164 */  sh      $t9, 0x0164($v0)           ## 00000164
/* 00260 80AE4F30 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE4F34:
/* 00264 80AE4F34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00268 80AE4F38 03E00008 */  jr      $ra                        
/* 0026C 80AE4F3C 00000000 */  nop
