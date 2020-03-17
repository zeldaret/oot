glabel func_80AAF330
/* 004E0 80AAF330 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004E4 80AAF334 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004E8 80AAF338 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 004EC 80AAF33C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 004F0 80AAF340 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 004F4 80AAF344 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 004F8 80AAF348 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 004FC 80AAF34C 10400018 */  beq     $v0, $zero, .L80AAF3B0     
/* 00500 80AAF350 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00504 80AAF354 3C0E80AB */  lui     $t6, %hi(func_80AAF2BC)    ## $t6 = 80AB0000
/* 00508 80AAF358 25CEF2BC */  addiu   $t6, $t6, %lo(func_80AAF2BC) ## $t6 = 80AAF2BC
/* 0050C 80AAF35C ACEE0190 */  sw      $t6, 0x0190($a3)           ## 00000190
/* 00510 80AAF360 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00514 80AAF364 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00518 80AAF368 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0051C 80AAF36C 0C2ABB94 */  jal     func_80AAEE50              
/* 00520 80AAF370 24E601F8 */  addiu   $a2, $a3, 0x01F8           ## $a2 = 000001F8
/* 00524 80AAF374 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00528 80AAF378 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0052C 80AAF37C 94F801F4 */  lhu     $t8, 0x01F4($a3)           ## 000001F4
/* 00530 80AAF380 ACEF01E0 */  sw      $t7, 0x01E0($a3)           ## 000001E0
/* 00534 80AAF384 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 00538 80AAF388 17200003 */  bne     $t9, $zero, .L80AAF398     
/* 0053C 80AAF38C 00000000 */  nop
/* 00540 80AAF390 0C041B33 */  jal     func_80106CCC              
/* 00544 80AAF394 8FA4001C */  lw      $a0, 0x001C($sp)           
.L80AAF398:
/* 00548 80AAF398 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0054C 80AAF39C 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00550 80AAF3A0 944813FC */  lhu     $t0, 0x13FC($v0)           ## 8015FA5C
/* 00554 80AAF3A4 A44013D2 */  sh      $zero, 0x13D2($v0)         ## 8015FA32
/* 00558 80AAF3A8 3109FFFE */  andi    $t1, $t0, 0xFFFE           ## $t1 = 00000000
/* 0055C 80AAF3AC A44913FC */  sh      $t1, 0x13FC($v0)           ## 8015FA5C
.L80AAF3B0:
/* 00560 80AAF3B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00564 80AAF3B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00568 80AAF3B8 03E00008 */  jr      $ra                        
/* 0056C 80AAF3BC 00000000 */  nop


