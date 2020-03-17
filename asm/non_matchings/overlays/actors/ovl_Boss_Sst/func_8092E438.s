glabel func_8092E438
/* 01E68 8092E438 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01E6C 8092E43C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E70 8092E440 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01E74 8092E444 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01E78 8092E448 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01E7C 8092E44C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01E80 8092E450 50400004 */  beql    $v0, $zero, .L8092E464     
/* 01E84 8092E454 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E88 8092E458 0C24B69B */  jal     func_8092DA6C              
/* 01E8C 8092E45C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01E90 8092E460 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8092E464:
/* 01E94 8092E464 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01E98 8092E468 03E00008 */  jr      $ra                        
/* 01E9C 8092E46C 00000000 */  nop


