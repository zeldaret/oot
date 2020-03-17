glabel func_80AA6F8C
/* 00F3C 80AA6F8C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00F40 80AA6F90 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00F44 80AA6F94 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00F48 80AA6F98 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00F4C 80AA6F9C 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00F50 80AA6FA0 AC8E0320 */  sw      $t6, 0x0320($a0)           ## 00000320
/* 00F54 80AA6FA4 240F0050 */  addiu   $t7, $zero, 0x0050         ## $t7 = 00000050
/* 00F58 80AA6FA8 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00F5C 80AA6FAC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F60 80AA6FB0 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00F64 80AA6FB4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00F68 80AA6FB8 24060078 */  addiu   $a2, $zero, 0x0078         ## $a2 = 00000078
/* 00F6C 80AA6FBC 0C00D09B */  jal     func_8003426C              
/* 00F70 80AA6FC0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00F74 80AA6FC4 92180188 */  lbu     $t8, 0x0188($s0)           ## 00000188
/* 00F78 80AA6FC8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00F7C 80AA6FCC 24190028 */  addiu   $t9, $zero, 0x0028         ## $t9 = 00000028
/* 00F80 80AA6FD0 57010004 */  bnel    $t8, $at, .L80AA6FE4       
/* 00F84 80AA6FD4 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 00F88 80AA6FD8 1000000B */  beq     $zero, $zero, .L80AA7008   
/* 00F8C 80AA6FDC A6190328 */  sh      $t9, 0x0328($s0)           ## 00000328
/* 00F90 80AA6FE0 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
.L80AA6FE4:
/* 00F94 80AA6FE4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00F98 80AA6FE8 24A51950 */  addiu   $a1, $a1, 0x1950           ## $a1 = 06001950
/* 00F9C 80AA6FEC 11000003 */  beq     $t0, $zero, .L80AA6FFC     
/* 00FA0 80AA6FF0 2604018C */  addiu   $a0, $s0, 0x018C           ## $a0 = 0000018C
/* 00FA4 80AA6FF4 0C0294A7 */  jal     func_800A529C              
/* 00FA8 80AA6FF8 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
.L80AA6FFC:
/* 00FAC 80AA6FFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FB0 80AA7000 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00FB4 80AA7004 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
.L80AA7008:
/* 00FB8 80AA7008 3C0580AA */  lui     $a1, %hi(func_80AA702C)    ## $a1 = 80AA0000
/* 00FBC 80AA700C 24A5702C */  addiu   $a1, $a1, %lo(func_80AA702C) ## $a1 = 80AA702C
/* 00FC0 80AA7010 0C2A9814 */  jal     func_80AA6050              
/* 00FC4 80AA7014 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FC8 80AA7018 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00FCC 80AA701C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00FD0 80AA7020 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00FD4 80AA7024 03E00008 */  jr      $ra                        
/* 00FD8 80AA7028 00000000 */  nop


