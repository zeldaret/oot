glabel func_8096B4A8
/* 019D8 8096B4A8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 019DC 8096B4AC 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 019E0 8096B4B0 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 019E4 8096B4B4 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 019E8 8096B4B8 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 019EC 8096B4BC C4A40024 */  lwc1    $f4, 0x0024($a1)           ## 00000024
/* 019F0 8096B4C0 3C0E8016 */  lui     $t6, %hi(gGameInfo)
/* 019F4 8096B4C4 8DCEFA90 */  lw      $t6, %lo(gGameInfo)($t6)
/* 019F8 8096B4C8 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 019FC 8096B4CC 3C0141B0 */  lui     $at, 0x41B0                ## $at = 41B00000
/* 01A00 8096B4D0 85CF1474 */  lh      $t7, 0x1474($t6)           ## 80161474
/* 01A04 8096B4D4 44815000 */  mtc1    $at, $f10                  ## $f10 = 22.00
/* 01A08 8096B4D8 C4B20028 */  lwc1    $f18, 0x0028($a1)          ## 00000028
/* 01A0C 8096B4DC 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 01A10 8096B4E0 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 01A14 8096B4E4 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 01A18 8096B4E8 46803220 */  cvt.s.w $f8, $f6                   
/* 01A1C 8096B4EC 240700F5 */  addiu   $a3, $zero, 0x00F5         ## $a3 = 000000F5
/* 01A20 8096B4F0 460A4400 */  add.s   $f16, $f8, $f10            
/* 01A24 8096B4F4 46128100 */  add.s   $f4, $f16, $f18            
/* 01A28 8096B4F8 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 01A2C 8096B4FC C4A6002C */  lwc1    $f6, 0x002C($a1)           ## 0000002C
/* 01A30 8096B500 AFB80028 */  sw      $t8, 0x0028($sp)           
/* 01A34 8096B504 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 01A38 8096B508 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 01A3C 8096B50C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 01A40 8096B510 0C00C916 */  jal     Actor_SpawnAsChild
              
/* 01A44 8096B514 E7A60018 */  swc1    $f6, 0x0018($sp)           
/* 01A48 8096B518 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 01A4C 8096B51C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01A50 8096B520 03E00008 */  jr      $ra                        
/* 01A54 8096B524 00000000 */  nop
