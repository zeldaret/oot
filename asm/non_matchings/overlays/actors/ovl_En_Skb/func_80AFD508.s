glabel func_80AFD508
/* 00B68 80AFD508 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B6C 80AFD50C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B70 80AFD510 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B74 80AFD514 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00B78 80AFD518 0C02927F */  jal     SkelAnime_Update
              
/* 00B7C 80AFD51C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00B80 80AFD520 50400004 */  beql    $v0, $zero, .L80AFD534     
/* 00B84 80AFD524 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B88 80AFD528 0C2BF358 */  jal     func_80AFCD60              
/* 00B8C 80AFD52C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B90 80AFD530 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFD534:
/* 00B94 80AFD534 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B98 80AFD538 03E00008 */  jr      $ra                        
/* 00B9C 80AFD53C 00000000 */  nop
