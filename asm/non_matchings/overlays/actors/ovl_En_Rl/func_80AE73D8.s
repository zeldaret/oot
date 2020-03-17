glabel func_80AE73D8
/* 00128 80AE73D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0012C 80AE73DC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00130 80AE73E0 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00134 80AE73E4 3C0F80AF */  lui     $t7, %hi(D_80AE81AC)       ## $t7 = 80AF0000
/* 00138 80AE73E8 3C1980AF */  lui     $t9, %hi(D_80AE81AC)       ## $t9 = 80AF0000
/* 0013C 80AE73EC 15C0000D */  bne     $t6, $zero, .L80AE7424     
/* 00140 80AE73F0 00000000 */  nop
/* 00144 80AE73F4 8DEF81AC */  lw      $t7, %lo(D_80AE81AC)($t7)  
/* 00148 80AE73F8 51E00011 */  beql    $t7, $zero, .L80AE7440     
/* 0014C 80AE73FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00150 80AE7400 8498001C */  lh      $t8, 0x001C($a0)           ## 0000001C
/* 00154 80AE7404 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00158 80AE7408 17010003 */  bne     $t8, $at, .L80AE7418       
/* 0015C 80AE740C 00000000 */  nop
/* 00160 80AE7410 0C2B9CD6 */  jal     func_80AE7358              
/* 00164 80AE7414 00000000 */  nop
.L80AE7418:
/* 00168 80AE7418 3C0180AF */  lui     $at, %hi(D_80AE81AC)       ## $at = 80AF0000
/* 0016C 80AE741C 10000007 */  beq     $zero, $zero, .L80AE743C   
/* 00170 80AE7420 AC2081AC */  sw      $zero, %lo(D_80AE81AC)($at) 
.L80AE7424:
/* 00174 80AE7424 8F3981AC */  lw      $t9, %lo(D_80AE81AC)($t9)  
/* 00178 80AE7428 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0017C 80AE742C 3C0180AF */  lui     $at, %hi(D_80AE81AC)       ## $at = 80AF0000
/* 00180 80AE7430 57200003 */  bnel    $t9, $zero, .L80AE7440     
/* 00184 80AE7434 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00188 80AE7438 AC2881AC */  sw      $t0, %lo(D_80AE81AC)($at)  
.L80AE743C:
/* 0018C 80AE743C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE7440:
/* 00190 80AE7440 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00194 80AE7444 03E00008 */  jr      $ra                        
/* 00198 80AE7448 00000000 */  nop


