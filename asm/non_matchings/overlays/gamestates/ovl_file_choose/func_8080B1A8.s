glabel func_8080B1A8
/* 07468 8080B1A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0746C 8080B1AC 3C0E0002 */  lui     $t6, 0x0002                ## $t6 = 00020000
/* 07470 8080B1B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 07474 8080B1B4 01C47021 */  addu    $t6, $t6, $a0              
/* 07478 8080B1B8 85CECA3C */  lh      $t6, -0x35C4($t6)          ## 0001CA3C
/* 0747C 8080B1BC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 07480 8080B1C0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 07484 8080B1C4 15C00013 */  bne     $t6, $zero, .L8080B214     
/* 07488 8080B1C8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0748C 8080B1CC 00240821 */  addu    $at, $at, $a0              
/* 07490 8080B1D0 A422CA3C */  sh      $v0, -0x35C4($at)          ## 0001CA3C
/* 07494 8080B1D4 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 07498 8080B1D8 00240821 */  addu    $at, $at, $a0              
/* 0749C 8080B1DC A420CA3E */  sh      $zero, -0x35C2($at)        ## 0001CA3E
/* 074A0 8080B1E0 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 074A4 8080B1E4 00240821 */  addu    $at, $at, $a0              
/* 074A8 8080B1E8 A422CA66 */  sh      $v0, -0x359A($at)          ## 0001CA66
/* 074AC 8080B1EC 3C048081 */  lui     $a0, %hi(D_80812CF0)       ## $a0 = 80810000
/* 074B0 8080B1F0 24842CF0 */  addiu   $a0, $a0, %lo(D_80812CF0)  ## $a0 = 80812CF0
/* 074B4 8080B1F4 0C00084C */  jal     osSyncPrintf
              
/* 074B8 8080B1F8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 074BC 8080B1FC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 074C0 8080B200 0C02A288 */  jal     Sram_VerifyAndLoadAllSaves              
/* 074C4 8080B204 248501E0 */  addiu   $a1, $a0, 0x01E0           ## $a1 = 000001E0
/* 074C8 8080B208 3C048081 */  lui     $a0, %hi(D_80812D1C)       ## $a0 = 80810000
/* 074CC 8080B20C 0C00084C */  jal     osSyncPrintf
              
/* 074D0 8080B210 24842D1C */  addiu   $a0, $a0, %lo(D_80812D1C)  ## $a0 = 80812D1C
.L8080B214:
/* 074D4 8080B214 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 074D8 8080B218 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 074DC 8080B21C 03E00008 */  jr      $ra                        
/* 074E0 8080B220 00000000 */  nop
glabel L8080B224
/* 074E4 8080B224 03E00008 */  jr      $ra                        
/* 074E8 8080B228 AFA40000 */  sw      $a0, 0x0000($sp)           
