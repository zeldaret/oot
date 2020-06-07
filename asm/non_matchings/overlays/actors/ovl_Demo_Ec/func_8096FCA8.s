glabel func_8096FCA8
/* 027F8 8096FCA8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 027FC 8096FCAC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02800 8096FCB0 84820190 */  lh      $v0, 0x0190($a0)           ## 00000190
/* 02804 8096FCB4 3C068097 */  lui     $a2, %hi(D_80970480)       ## $a2 = 80970000
/* 02808 8096FCB8 3C0F8097 */  lui     $t7, %hi(func_8096FC28)    ## $t7 = 80970000
/* 0280C 8096FCBC 00027080 */  sll     $t6, $v0,  2               
/* 02810 8096FCC0 00CE3021 */  addu    $a2, $a2, $t6              
/* 02814 8096FCC4 25EFFC28 */  addiu   $t7, $t7, %lo(func_8096FC28) ## $t7 = 8096FC28
/* 02818 8096FCC8 8CC60480 */  lw      $a2, %lo(D_80970480)($a2)  
/* 0281C 8096FCCC AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 02820 8096FCD0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02824 8096FCD4 0C25B631 */  jal     func_8096D8C4              
/* 02828 8096FCD8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0282C 8096FCDC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02830 8096FCE0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02834 8096FCE4 03E00008 */  jr      $ra                        
/* 02838 8096FCE8 00000000 */  nop
