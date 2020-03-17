glabel func_80AA8378
/* 02328 80AA8378 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0232C 80AA837C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02330 80AA8380 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02334 80AA8384 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02338 80AA8388 2484018C */  addiu   $a0, $a0, 0x018C           ## $a0 = 0000018C
/* 0233C 80AA838C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02340 80AA8390 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02344 80AA8394 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 02348 80AA8398 10400017 */  beq     $v0, $zero, .L80AA83F8     
/* 0234C 80AA839C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02350 80AA83A0 860E032E */  lh      $t6, 0x032E($s0)           ## 0000032E
/* 02354 80AA83A4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02358 80AA83A8 11C00011 */  beq     $t6, $zero, .L80AA83F0     
/* 0235C 80AA83AC 00000000 */  nop
/* 02360 80AA83B0 0C02947A */  jal     func_800A51E8              
/* 02364 80AA83B4 24A5E18C */  addiu   $a1, $a1, 0xE18C           ## $a1 = 0600E18C
/* 02368 80AA83B8 A600032E */  sh      $zero, 0x032E($s0)         ## 0000032E
/* 0236C 80AA83BC C60C0090 */  lwc1    $f12, 0x0090($s0)          ## 00000090
/* 02370 80AA83C0 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 02374 80AA83C4 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 02378 80AA83C8 0C02A800 */  jal     func_800AA000              
/* 0237C 80AA83CC 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 02380 80AA83D0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 02384 80AA83D4 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 02388 80AA83D8 24060019 */  addiu   $a2, $zero, 0x0019         ## $a2 = 00000019
/* 0238C 80AA83DC 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 02390 80AA83E0 0C016A87 */  jal     func_8005AA1C              
/* 02394 80AA83E4 248401E0 */  addiu   $a0, $a0, 0x01E0           ## $a0 = 000001E0
/* 02398 80AA83E8 10000004 */  beq     $zero, $zero, .L80AA83FC   
/* 0239C 80AA83EC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AA83F0:
/* 023A0 80AA83F0 0C2A9A26 */  jal     func_80AA6898              
/* 023A4 80AA83F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AA83F8:
/* 023A8 80AA83F8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AA83FC:
/* 023AC 80AA83FC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 023B0 80AA8400 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 023B4 80AA8404 03E00008 */  jr      $ra                        
/* 023B8 80AA8408 00000000 */  nop


