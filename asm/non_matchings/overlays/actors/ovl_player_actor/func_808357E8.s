glabel func_808357E8
/* 035D8 808357E8 3C0E8016 */  lui     $t6, %hi(gSaveContext+4)
/* 035DC 808357EC 8DCEE664 */  lw      $t6, %lo(gSaveContext+4)($t6)
/* 035E0 808357F0 000E7880 */  sll     $t7, $t6,  2               
/* 035E4 808357F4 01E5C021 */  addu    $t8, $t7, $a1              
/* 035E8 808357F8 03E00008 */  jr      $ra                        
/* 035EC 808357FC AC980164 */  sw      $t8, 0x0164($a0)           ## 00000164
