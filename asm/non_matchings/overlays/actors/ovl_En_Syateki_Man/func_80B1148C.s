glabel func_80B1148C
/* 00C1C 80B1148C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00C20 80B11490 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 00C24 80B11494 14A10007 */  bne     $a1, $at, .L80B114B4       
/* 00C28 80B11498 AFA7000C */  sw      $a3, 0x000C($sp)           
/* 00C2C 80B1149C 8FA20014 */  lw      $v0, 0x0014($sp)           
/* 00C30 80B114A0 8FA30010 */  lw      $v1, 0x0010($sp)           
/* 00C34 80B114A4 844F0208 */  lh      $t7, 0x0208($v0)           ## 00000208
/* 00C38 80B114A8 846E0000 */  lh      $t6, 0x0000($v1)           ## 00000000
/* 00C3C 80B114AC 01CFC021 */  addu    $t8, $t6, $t7              
/* 00C40 80B114B0 A4780000 */  sh      $t8, 0x0000($v1)           ## 00000000
.L80B114B4:
/* 00C44 80B114B4 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00C48 80B114B8 8FA20014 */  lw      $v0, 0x0014($sp)           
/* 00C4C 80B114BC 14A10014 */  bne     $a1, $at, .L80B11510       
/* 00C50 80B114C0 8FA30010 */  lw      $v1, 0x0010($sp)           
/* 00C54 80B114C4 3C190600 */  lui     $t9, 0x0600                ## $t9 = 06000000
/* 00C58 80B114C8 27397E28 */  addiu   $t9, $t9, 0x7E28           ## $t9 = 06007E28
/* 00C5C 80B114CC ACD90000 */  sw      $t9, 0x0000($a2)           ## 00000000
/* 00C60 80B114D0 84480214 */  lh      $t0, 0x0214($v0)           ## 00000214
/* 00C64 80B114D4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00C68 80B114D8 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 00C6C 80B114DC 55010003 */  bnel    $t0, $at, .L80B114EC       
/* 00C70 80B114E0 844A0202 */  lh      $t2, 0x0202($v0)           ## 00000202
/* 00C74 80B114E4 2404FFFF */  addiu   $a0, $zero, 0xFFFF         ## $a0 = FFFFFFFF
/* 00C78 80B114E8 844A0202 */  lh      $t2, 0x0202($v0)           ## 00000202
.L80B114EC:
/* 00C7C 80B114EC 84690000 */  lh      $t1, 0x0000($v1)           ## 00000000
/* 00C80 80B114F0 846D0004 */  lh      $t5, 0x0004($v1)           ## 00000004
/* 00C84 80B114F4 01440019 */  multu   $t2, $a0                   
/* 00C88 80B114F8 00005812 */  mflo    $t3                        
/* 00C8C 80B114FC 012B6021 */  addu    $t4, $t1, $t3              
/* 00C90 80B11500 A46C0000 */  sh      $t4, 0x0000($v1)           ## 00000000
/* 00C94 80B11504 844E0204 */  lh      $t6, 0x0204($v0)           ## 00000204
/* 00C98 80B11508 01AE7821 */  addu    $t7, $t5, $t6              
/* 00C9C 80B1150C A46F0004 */  sh      $t7, 0x0004($v1)           ## 00000004
.L80B11510:
/* 00CA0 80B11510 03E00008 */  jr      $ra                        
/* 00CA4 80B11514 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
