glabel func_80B3C468
/* 00288 80B3C468 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0028C 80B3C46C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00290 80B3C470 44810000 */  mtc1    $at, $f0                   ## $f0 = 30.00
/* 00294 80B3C474 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00298 80B3C478 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 0029C 80B3C47C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 002A0 80B3C480 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 002A4 80B3C484 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 002A8 80B3C488 44070000 */  mfc1    $a3, $f0                   
/* 002AC 80B3C48C AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 002B0 80B3C490 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 002B4 80B3C494 3C064296 */  lui     $a2, 0x4296                ## $a2 = 42960000
/* 002B8 80B3C498 0C00B92D */  jal     Actor_UpdateBgCheckInfo              
/* 002BC 80B3C49C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 002C0 80B3C4A0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 002C4 80B3C4A4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 002C8 80B3C4A8 03E00008 */  jr      $ra                        
/* 002CC 80B3C4AC 00000000 */  nop
