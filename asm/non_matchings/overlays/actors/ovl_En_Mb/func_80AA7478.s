glabel func_80AA7478
/* 01428 80AA7478 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0142C 80AA747C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01430 80AA7480 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01434 80AA7484 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01438 80AA7488 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 0143C 80AA748C A4800334 */  sh      $zero, 0x0334($a0)         ## 00000334
/* 01440 80AA7490 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 01444 80AA7494 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01448 80AA7498 2484018C */  addiu   $a0, $a0, 0x018C           ## $a0 = 0000018C
/* 0144C 80AA749C 10400003 */  beq     $v0, $zero, .L80AA74AC     
/* 01450 80AA74A0 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 01454 80AA74A4 0C2A9A26 */  jal     func_80AA6898              
/* 01458 80AA74A8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
.L80AA74AC:
/* 0145C 80AA74AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01460 80AA74B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01464 80AA74B4 03E00008 */  jr      $ra                        
/* 01468 80AA74B8 00000000 */  nop


