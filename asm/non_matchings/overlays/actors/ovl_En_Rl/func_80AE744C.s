glabel func_80AE744C
/* 0019C 80AE744C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 001A0 80AE7450 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 001A4 80AE7454 44810000 */  mtc1    $at, $f0                   ## $f0 = 30.00
/* 001A8 80AE7458 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 001AC 80AE745C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 001B0 80AE7460 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 001B4 80AE7464 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 001B8 80AE7468 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 001BC 80AE746C 44070000 */  mfc1    $a3, $f0                   
/* 001C0 80AE7470 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 001C4 80AE7474 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 001C8 80AE7478 3C064296 */  lui     $a2, 0x4296                ## $a2 = 42960000
/* 001CC 80AE747C 0C00B92D */  jal     func_8002E4B4              
/* 001D0 80AE7480 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 001D4 80AE7484 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 001D8 80AE7488 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 001DC 80AE748C 03E00008 */  jr      $ra                        
/* 001E0 80AE7490 00000000 */  nop


