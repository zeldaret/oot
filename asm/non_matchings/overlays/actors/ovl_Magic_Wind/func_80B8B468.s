glabel func_80B8B468
/* 00368 80B8B468 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0036C 80B8B46C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00370 80B8B470 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00374 80B8B474 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00378 80B8B478 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0037C 80B8B47C 0C01B231 */  jal     func_8006C8C4              
/* 00380 80B8B480 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 00384 80B8B484 10400007 */  beq     $v0, $zero, .L80B8B4A4     
/* 00388 80B8B488 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0038C 80B8B48C 3C0580B9 */  lui     $a1, %hi(func_80B8B4B4)    ## $a1 = 80B90000
/* 00390 80B8B490 0C2E2C40 */  jal     func_80B8B100              
/* 00394 80B8B494 24A5B4B4 */  addiu   $a1, $a1, %lo(func_80B8B4B4) ## $a1 = 80B8B4B4
/* 00398 80B8B498 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 0039C 80B8B49C 240E0032 */  addiu   $t6, $zero, 0x0032         ## $t6 = 00000032
/* 003A0 80B8B4A0 A5EE016C */  sh      $t6, 0x016C($t7)           ## 0000016C
.L80B8B4A4:
/* 003A4 80B8B4A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003A8 80B8B4A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003AC 80B8B4AC 03E00008 */  jr      $ra                        
/* 003B0 80B8B4B0 00000000 */  nop


