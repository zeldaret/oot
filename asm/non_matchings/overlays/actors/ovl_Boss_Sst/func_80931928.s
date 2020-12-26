glabel func_80931928
/* 05358 80931928 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0535C 8093192C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 05360 80931930 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05364 80931934 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 05368 80931938 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0536C 8093193C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 05370 80931940 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 05374 80931944 860501A6 */  lh      $a1, 0x01A6($s0)           ## 000001A6
/* 05378 80931948 240E0100 */  addiu   $t6, $zero, 0x0100         ## $t6 = 00000100
/* 0537C 8093194C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 05380 80931950 260400B8 */  addiu   $a0, $s0, 0x00B8           ## $a0 = 000000B8
/* 05384 80931954 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 05388 80931958 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 0538C 8093195C 24070800 */  addiu   $a3, $zero, 0x0800         ## $a3 = 00000800
/* 05390 80931960 2C4F0001 */  sltiu   $t7, $v0, 0x0001           
/* 05394 80931964 AFAF002C */  sw      $t7, 0x002C($sp)           
/* 05398 80931968 861901A4 */  lh      $t9, 0x01A4($s0)           ## 000001A4
/* 0539C 8093196C 8618008A */  lh      $t8, 0x008A($s0)           ## 0000008A
/* 053A0 80931970 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 053A4 80931974 24060A00 */  addiu   $a2, $zero, 0x0A00         ## $a2 = 00000A00
/* 053A8 80931978 03192821 */  addu    $a1, $t8, $t9              
/* 053AC 8093197C 00052C00 */  sll     $a1, $a1, 16               
/* 053B0 80931980 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 053B4 80931984 00052C03 */  sra     $a1, $a1, 16               
/* 053B8 80931988 8FA8002C */  lw      $t0, 0x002C($sp)           
/* 053BC 8093198C 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 053C0 80931990 3C0542BE */  lui     $a1, 0x42BE                ## $a1 = 42BE0000
/* 053C4 80931994 01024824 */  and     $t1, $t0, $v0              
/* 053C8 80931998 AFA9002C */  sw      $t1, 0x002C($sp)           
/* 053CC 8093199C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 053D0 809319A0 0C01E107 */  jal     Math_ApproachF
              
/* 053D4 809319A4 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 053D8 809319A8 8FAA002C */  lw      $t2, 0x002C($sp)           
/* 053DC 809319AC 51400004 */  beql    $t2, $zero, .L809319C0     
/* 053E0 809319B0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 053E4 809319B4 0C24C674 */  jal     func_809319D0              
/* 053E8 809319B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 053EC 809319BC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809319C0:
/* 053F0 809319C0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 053F4 809319C4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 053F8 809319C8 03E00008 */  jr      $ra                        
/* 053FC 809319CC 00000000 */  nop
