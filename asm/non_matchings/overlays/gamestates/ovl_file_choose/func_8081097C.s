glabel FileChoose_SelectModeUpdate
/* 0CC3C 8081097C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0CC40 80810980 3C0E0002 */  lui     $t6, 0x0002                ## $t6 = 00020000
/* 0CC44 80810984 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0CC48 80810988 01C47021 */  addu    $t6, $t6, $a0              
/* 0CC4C 8081098C 85CECA44 */  lh      $t6, -0x35BC($t6)          ## 0001CA44
/* 0CC50 80810990 3C198081 */  lui     $t9, %hi(gSelectModeUpdateFuncs)       ## $t9 = 80810000
/* 0CC54 80810994 000E7880 */  sll     $t7, $t6,  2               
/* 0CC58 80810998 032FC821 */  addu    $t9, $t9, $t7              
/* 0CC5C 8081099C 8F392A18 */  lw      $t9, %lo(gSelectModeUpdateFuncs)($t9)  
/* 0CC60 808109A0 0320F809 */  jalr    $ra, $t9                   
/* 0CC64 808109A4 00000000 */  nop
/* 0CC68 808109A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0CC6C 808109AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0CC70 808109B0 03E00008 */  jr      $ra                        
/* 0CC74 808109B4 00000000 */  nop
