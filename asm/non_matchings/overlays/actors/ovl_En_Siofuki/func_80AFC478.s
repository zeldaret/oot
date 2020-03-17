glabel func_80AFC478
/* 008F8 80AFC478 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 008FC 80AFC47C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00900 80AFC480 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00904 80AFC484 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00908 80AFC488 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0090C 80AFC48C 0C2BEF72 */  jal     func_80AFBDC8              
/* 00910 80AFC490 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00914 80AFC494 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00918 80AFC498 0C2BEFA3 */  jal     func_80AFBE8C              
/* 0091C 80AFC49C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00920 80AFC4A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00924 80AFC4A4 0C2BF074 */  jal     func_80AFC1D0              
/* 00928 80AFC4A8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0092C 80AFC4AC 9602001C */  lhu     $v0, 0x001C($s0)           ## 0000001C
/* 00930 80AFC4B0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00934 80AFC4B4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00938 80AFC4B8 00027303 */  sra     $t6, $v0, 12               
/* 0093C 80AFC4BC 31CF000F */  andi    $t7, $t6, 0x000F           ## $t7 = 00000000
/* 00940 80AFC4C0 15E1001B */  bne     $t7, $at, .L80AFC530       
/* 00944 80AFC4C4 00022983 */  sra     $a1, $v0,  6               
/* 00948 80AFC4C8 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 0094C 80AFC4CC 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00950 80AFC4D0 1040000B */  beq     $v0, $zero, .L80AFC500     
/* 00954 80AFC4D4 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 00958 80AFC4D8 3C1980B0 */  lui     $t9, %hi(func_80AFC3C8)    ## $t9 = 80B00000
/* 0095C 80AFC4DC 2739C3C8 */  addiu   $t9, $t9, %lo(func_80AFC3C8) ## $t9 = 80AFC3C8
/* 00960 80AFC4E0 AE180168 */  sw      $t8, 0x0168($s0)           ## 00000168
/* 00964 80AFC4E4 AE190164 */  sw      $t9, 0x0164($s0)           ## 00000164
/* 00968 80AFC4E8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0096C 80AFC4EC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00970 80AFC4F0 24051392 */  addiu   $a1, $zero, 0x1392         ## $a1 = 00001392
/* 00974 80AFC4F4 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 00978 80AFC4F8 0C02003E */  jal     func_800800F8              
/* 0097C 80AFC4FC 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
.L80AFC500:
/* 00980 80AFC500 9605001C */  lhu     $a1, 0x001C($s0)           ## 0000001C
/* 00984 80AFC504 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00988 80AFC508 0C00B32C */  jal     Flags_GetTreasure
              
/* 0098C 80AFC50C 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00990 80AFC510 10400007 */  beq     $v0, $zero, .L80AFC530     
/* 00994 80AFC514 3C01C234 */  lui     $at, 0xC234                ## $at = C2340000
/* 00998 80AFC518 44810000 */  mtc1    $at, $f0                   ## $f0 = -45.00
/* 0099C 80AFC51C 3C0880B0 */  lui     $t0, %hi(func_80AFC544)    ## $t0 = 80B00000
/* 009A0 80AFC520 2508C544 */  addiu   $t0, $t0, %lo(func_80AFC544) ## $t0 = 80AFC544
/* 009A4 80AFC524 AE080164 */  sw      $t0, 0x0164($s0)           ## 00000164
/* 009A8 80AFC528 E6000180 */  swc1    $f0, 0x0180($s0)           ## 00000180
/* 009AC 80AFC52C E600017C */  swc1    $f0, 0x017C($s0)           ## 0000017C
.L80AFC530:
/* 009B0 80AFC530 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 009B4 80AFC534 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 009B8 80AFC538 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 009BC 80AFC53C 03E00008 */  jr      $ra                        
/* 009C0 80AFC540 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


