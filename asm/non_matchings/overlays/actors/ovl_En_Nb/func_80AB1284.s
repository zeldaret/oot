glabel func_80AB1284
/* 004F4 80AB1284 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 004F8 80AB1288 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 004FC 80AB128C 44810000 */  mtc1    $at, $f0                   ## $f0 = 30.00
/* 00500 80AB1290 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00504 80AB1294 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00508 80AB1298 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0050C 80AB129C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00510 80AB12A0 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 00514 80AB12A4 44070000 */  mfc1    $a3, $f0                   
/* 00518 80AB12A8 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 0051C 80AB12AC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00520 80AB12B0 3C064296 */  lui     $a2, 0x4296                ## $a2 = 42960000
/* 00524 80AB12B4 0C00B92D */  jal     func_8002E4B4              
/* 00528 80AB12B8 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 0052C 80AB12BC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00530 80AB12C0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00534 80AB12C4 03E00008 */  jr      $ra                        
/* 00538 80AB12C8 00000000 */  nop
