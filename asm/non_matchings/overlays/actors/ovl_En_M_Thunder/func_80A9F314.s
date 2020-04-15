glabel func_80A9F314
/* 00334 80A9F314 44856000 */  mtc1    $a1, $f12                  ## $f12 = 0.00
/* 00338 80A9F318 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0033C 80A9F31C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00340 80A9F320 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00344 80A9F324 3C064454 */  lui     $a2, 0x4454                ## $a2 = 44540000
/* 00348 80A9F328 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 0034C 80A9F32C 44056000 */  mfc1    $a1, $f12                  
/* 00350 80A9F330 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3E4CCCCD
/* 00354 80A9F334 34C68000 */  ori     $a2, $a2, 0x8000           ## $a2 = 44548000
/* 00358 80A9F338 0C01DCEA */  jal     func_800773A8              
/* 0035C 80A9F33C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00360 80A9F340 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00364 80A9F344 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00368 80A9F348 03E00008 */  jr      $ra                        
/* 0036C 80A9F34C 00000000 */  nop
