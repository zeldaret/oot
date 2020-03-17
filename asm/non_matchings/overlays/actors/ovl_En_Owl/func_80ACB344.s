glabel func_80ACB344
/* 01424 80ACB344 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01428 80ACB348 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0142C 80ACB34C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01430 80ACB350 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 01434 80ACB354 0C042F6F */  jal     func_8010BDBC              
/* 01438 80ACB358 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0143C 80ACB35C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01440 80ACB360 1441001B */  bne     $v0, $at, .L80ACB3D0       
/* 01444 80ACB364 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 01448 80ACB368 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0144C 80ACB36C 0C041AF2 */  jal     func_80106BC8              
/* 01450 80ACB370 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 01454 80ACB374 10400016 */  beq     $v0, $zero, .L80ACB3D0     
/* 01458 80ACB378 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 0145C 80ACB37C 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 01460 80ACB380 00461021 */  addu    $v0, $v0, $a2              
/* 01464 80ACB384 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 01468 80ACB388 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0146C 80ACB38C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01470 80ACB390 10400005 */  beq     $v0, $zero, .L80ACB3A8     
/* 01474 80ACB394 00000000 */  nop
/* 01478 80ACB398 10410007 */  beq     $v0, $at, .L80ACB3B8       
/* 0147C 80ACB39C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01480 80ACB3A0 1000000C */  beq     $zero, $zero, .L80ACB3D4   
/* 01484 80ACB3A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ACB3A8:
/* 01488 80ACB3A8 0C042DC8 */  jal     func_8010B720              
/* 0148C 80ACB3AC 2405607A */  addiu   $a1, $zero, 0x607A         ## $a1 = 0000607A
/* 01490 80ACB3B0 10000008 */  beq     $zero, $zero, .L80ACB3D4   
/* 01494 80ACB3B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ACB3B8:
/* 01498 80ACB3B8 0C042DC8 */  jal     func_8010B720              
/* 0149C 80ACB3BC 2405607C */  addiu   $a1, $zero, 0x607C         ## $a1 = 0000607C
/* 014A0 80ACB3C0 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 014A4 80ACB3C4 3C0E80AD */  lui     $t6, %hi(func_80ACA7E0)    ## $t6 = 80AD0000
/* 014A8 80ACB3C8 25CEA7E0 */  addiu   $t6, $t6, %lo(func_80ACA7E0) ## $t6 = 80ACA7E0
/* 014AC 80ACB3CC ADEE040C */  sw      $t6, 0x040C($t7)           ## 0000040C
.L80ACB3D0:
/* 014B0 80ACB3D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ACB3D4:
/* 014B4 80ACB3D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 014B8 80ACB3D8 03E00008 */  jr      $ra                        
/* 014BC 80ACB3DC 00000000 */  nop


