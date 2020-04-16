glabel func_80AB23D8
/* 01648 80AB23D8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0164C 80AB23DC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01650 80AB23E0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01654 80AB23E4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01658 80AB23E8 0C2AC7FF */  jal     func_80AB1FFC              
/* 0165C 80AB23EC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01660 80AB23F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01664 80AB23F4 0C2AC80C */  jal     func_80AB2030              
/* 01668 80AB23F8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0166C 80AB23FC 0C2AC459 */  jal     func_80AB1164              
/* 01670 80AB2400 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01674 80AB2404 0C2AC4B3 */  jal     func_80AB12CC              
/* 01678 80AB2408 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0167C 80AB240C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01680 80AB2410 0C2AC8B3 */  jal     func_80AB22CC              
/* 01684 80AB2414 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01688 80AB2418 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0168C 80AB241C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01690 80AB2420 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01694 80AB2424 03E00008 */  jr      $ra                        
/* 01698 80AB2428 00000000 */  nop
