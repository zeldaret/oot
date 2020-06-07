glabel func_80B1156C
/* 00CFC 80B1156C 3C038016 */  lui     $v1, %hi(gGameInfo)
/* 00D00 80B11570 2463FA90 */  addiu   $v1, %lo(gGameInfo)
/* 00D04 80B11574 8C620000 */  lw      $v0, 0x0000($v1)           ## 8015FA90
/* 00D08 80B11578 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D0C 80B1157C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D10 80B11580 844E1374 */  lh      $t6, 0x1374($v0)           ## 00001374
/* 00D14 80B11584 51C0000A */  beql    $t6, $zero, .L80B115B0     
/* 00D18 80B11588 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D1C 80B1158C A4401374 */  sh      $zero, 0x1374($v0)         ## 00001374
/* 00D20 80B11590 8C6F0000 */  lw      $t7, 0x0000($v1)           ## 8015FA90
/* 00D24 80B11594 3C0480B1 */  lui     $a0, %hi(D_80B115E0)       ## $a0 = 80B10000
/* 00D28 80B11598 85F81376 */  lh      $t8, 0x1376($t7)           ## 00001376
/* 00D2C 80B1159C 0018C840 */  sll     $t9, $t8,  1               
/* 00D30 80B115A0 00992021 */  addu    $a0, $a0, $t9              
/* 00D34 80B115A4 0C03E803 */  jal     Audio_SetBGM
              
/* 00D38 80B115A8 948415E0 */  lhu     $a0, %lo(D_80B115E0)($a0)  
/* 00D3C 80B115AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B115B0:
/* 00D40 80B115B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D44 80B115B4 03E00008 */  jr      $ra                        
/* 00D48 80B115B8 00000000 */  nop
/* 00D4C 80B115BC 00000000 */  nop
