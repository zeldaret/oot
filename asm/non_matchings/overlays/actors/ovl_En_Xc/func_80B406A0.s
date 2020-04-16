glabel func_80B406A0
/* 044C0 80B406A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 044C4 80B406A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 044C8 80B406A8 94AE1D74 */  lhu     $t6, 0x1D74($a1)           ## 00001D74
/* 044CC 80B406AC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 044D0 80B406B0 24010365 */  addiu   $at, $zero, 0x0365         ## $at = 00000365
/* 044D4 80B406B4 15C10005 */  bne     $t6, $at, .L80B406CC       
/* 044D8 80B406B8 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 044DC 80B406BC 0C01E245 */  jal     func_80078914              
/* 044E0 80B406C0 24056870 */  addiu   $a1, $zero, 0x6870         ## $a1 = 00006870
/* 044E4 80B406C4 10000009 */  beq     $zero, $zero, .L80B406EC   
/* 044E8 80B406C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B406CC:
/* 044EC 80B406CC 94AF1D74 */  lhu     $t7, 0x1D74($a1)           ## 00001D74
/* 044F0 80B406D0 240103AB */  addiu   $at, $zero, 0x03AB         ## $at = 000003AB
/* 044F4 80B406D4 24C400E4 */  addiu   $a0, $a2, 0x00E4           ## $a0 = 000000E4
/* 044F8 80B406D8 55E10004 */  bnel    $t7, $at, .L80B406EC       
/* 044FC 80B406DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04500 80B406E0 0C01E245 */  jal     func_80078914              
/* 04504 80B406E4 24056871 */  addiu   $a1, $zero, 0x6871         ## $a1 = 00006871
/* 04508 80B406E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B406EC:
/* 0450C 80B406EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04510 80B406F0 03E00008 */  jr      $ra                        
/* 04514 80B406F4 00000000 */  nop
