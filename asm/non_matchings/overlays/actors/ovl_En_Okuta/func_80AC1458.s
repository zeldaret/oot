glabel func_80AC1458
/* 00DF8 80AC1458 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00DFC 80AC145C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E00 80AC1460 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00E04 80AC1464 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00E08 80AC1468 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00E0C 80AC146C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00E10 80AC1470 50400004 */  beql    $v0, $zero, .L80AC1484     
/* 00E14 80AC1474 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00E18 80AC1478 0C2B034D */  jal     func_80AC0D34              
/* 00E1C 80AC147C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00E20 80AC1480 8FAE0018 */  lw      $t6, 0x0018($sp)           
.L80AC1484:
/* 00E24 80AC1484 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00E28 80AC1488 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 00E2C 80AC148C 25C40028 */  addiu   $a0, $t6, 0x0028           ## $a0 = 00000028
/* 00E30 80AC1490 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00E34 80AC1494 8DC5000C */  lw      $a1, 0x000C($t6)           ## 0000000C
/* 00E38 80AC1498 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E3C 80AC149C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E40 80AC14A0 03E00008 */  jr      $ra                        
/* 00E44 80AC14A4 00000000 */  nop
