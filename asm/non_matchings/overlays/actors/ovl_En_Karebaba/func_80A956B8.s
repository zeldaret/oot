glabel func_80A956B8
/* 00368 80A956B8 3C0F80A9 */  lui     $t7, %hi(func_80A95BFC)    ## $t7 = 80A90000
/* 0036C 80A956BC 240E0028 */  addiu   $t6, $zero, 0x0028         ## $t6 = 00000028
/* 00370 80A956C0 25EF5BFC */  addiu   $t7, $t7, %lo(func_80A95BFC) ## $t7 = 80A95BFC
/* 00374 80A956C4 A48E001C */  sh      $t6, 0x001C($a0)           ## 0000001C
/* 00378 80A956C8 03E00008 */  jr      $ra                        
/* 0037C 80A956CC AC8F0190 */  sw      $t7, 0x0190($a0)           ## 00000190
