glabel BgJyaZurerukabe_Destroy
/* 0032C 8089B76C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00330 8089B770 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00334 8089B774 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00338 8089B778 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0033C 8089B77C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00340 8089B780 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00344 8089B784 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00348 8089B788 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 0034C 8089B78C 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00350 8089B790 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00354 8089B794 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00358 8089B798 85F80168 */  lh      $t8, 0x0168($t7)           ## 00000168
/* 0035C 8089B79C 3C01808A */  lui     $at, %hi(D_8089B9C0)       ## $at = 808A0000
/* 00360 8089B7A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00364 8089B7A4 0018C880 */  sll     $t9, $t8,  2               
/* 00368 8089B7A8 00390821 */  addu    $at, $at, $t9              
/* 0036C 8089B7AC 03E00008 */  jr      $ra                        
/* 00370 8089B7B0 E424B9C0 */  swc1    $f4, %lo(D_8089B9C0)($at)  
