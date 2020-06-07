glabel func_8083973C
/* 0752C 8083973C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 07530 80839740 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 07534 80839744 27AE0024 */  addiu   $t6, $sp, 0x0024           ## $t6 = FFFFFFFC
/* 07538 80839748 27AF0020 */  addiu   $t7, $sp, 0x0020           ## $t7 = FFFFFFF8
/* 0753C 8083974C AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 07540 80839750 0C20E5BD */  jal     func_808396F4              
/* 07544 80839754 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 07548 80839758 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0754C 8083975C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 07550 80839760 03E00008 */  jr      $ra                        
/* 07554 80839764 00000000 */  nop
