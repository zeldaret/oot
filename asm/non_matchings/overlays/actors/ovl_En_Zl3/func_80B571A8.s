glabel func_80B571A8
/* 03DF8 80B571A8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03DFC 80B571AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03E00 80B571B0 8C870314 */  lw      $a3, 0x0314($a0)           ## 00000314
/* 03E04 80B571B4 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 03E08 80B571B8 24E60001 */  addiu   $a2, $a3, 0x0001           ## $a2 = 00000001
/* 03E0C 80B571BC 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000001
/* 03E10 80B571C0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 03E14 80B571C4 0C2D5BE3 */  jal     func_80B56F8C              
/* 03E18 80B571C8 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 03E1C 80B571CC 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 03E20 80B571D0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 03E24 80B571D4 14400003 */  bne     $v0, $zero, .L80B571E4     
/* 03E28 80B571D8 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 03E2C 80B571DC 10000003 */  beq     $zero, $zero, .L80B571EC   
/* 03E30 80B571E0 848200B6 */  lh      $v0, 0x00B6($a0)           ## 000000B6
.L80B571E4:
/* 03E34 80B571E4 0C2D5C0D */  jal     func_80B57034              
/* 03E38 80B571E8 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
.L80B571EC:
/* 03E3C 80B571EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03E40 80B571F0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03E44 80B571F4 03E00008 */  jr      $ra                        
/* 03E48 80B571F8 00000000 */  nop
