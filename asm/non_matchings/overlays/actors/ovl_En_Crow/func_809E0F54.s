glabel func_809E0F54
/* 00D14 809E0F54 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00D18 809E0F58 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00D1C 809E0F5C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00D20 809E0F60 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00D24 809E0F64 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00D28 809E0F68 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D2C 809E0F6C 3C01809E */  lui     $at, %hi(D_809E170C)       ## $at = 809E0000
/* 00D30 809E0F70 11C00004 */  beq     $t6, $zero, .L809E0F84     
/* 00D34 809E0F74 26040050 */  addiu   $a0, $s0, 0x0050           ## $a0 = 00000050
/* 00D38 809E0F78 3C01809E */  lui     $at, %hi(D_809E1708)       ## $at = 809E0000
/* 00D3C 809E0F7C 10000002 */  beq     $zero, $zero, .L809E0F88   
/* 00D40 809E0F80 C4201708 */  lwc1    $f0, %lo(D_809E1708)($at)  
.L809E0F84:
/* 00D44 809E0F84 C420170C */  lwc1    $f0, %lo(D_809E170C)($at)  
.L809E0F88:
/* 00D48 809E0F88 44060000 */  mfc1    $a2, $f0                   
/* 00D4C 809E0F8C 0C01DE80 */  jal     Math_ApproxF
              
/* 00D50 809E0F90 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00D54 809E0F94 10400013 */  beq     $v0, $zero, .L809E0FE4     
/* 00D58 809E0F98 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00D5C 809E0F9C 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 00D60 809E0FA0 3C02809E */  lui     $v0, %hi(D_809E16C8)       ## $v0 = 809E0000
/* 00D64 809E0FA4 244216C8 */  addiu   $v0, $v0, %lo(D_809E16C8)  ## $v0 = 809E16C8
/* 00D68 809E0FA8 15E0000A */  bne     $t7, $zero, .L809E0FD4     
/* 00D6C 809E0FAC 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00D70 809E0FB0 8C580000 */  lw      $t8, 0x0000($v0)           ## 809E16C8
/* 00D74 809E0FB4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00D78 809E0FB8 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 00D7C 809E0FBC 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00D80 809E0FC0 AC590000 */  sw      $t9, 0x0000($v0)           ## 809E16C8
/* 00D84 809E0FC4 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00D88 809E0FC8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00D8C 809E0FCC 10000003 */  beq     $zero, $zero, .L809E0FDC   
/* 00D90 809E0FD0 00000000 */  nop
.L809E0FD4:
/* 00D94 809E0FD4 0C007D52 */  jal     Item_DropCollectible
              
/* 00D98 809E0FD8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
.L809E0FDC:
/* 00D9C 809E0FDC 0C2781DC */  jal     func_809E0770              
/* 00DA0 809E0FE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809E0FE4:
/* 00DA4 809E0FE4 C6000050 */  lwc1    $f0, 0x0050($s0)           ## 00000050
/* 00DA8 809E0FE8 E6000054 */  swc1    $f0, 0x0054($s0)           ## 00000054
/* 00DAC 809E0FEC E6000058 */  swc1    $f0, 0x0058($s0)           ## 00000058
/* 00DB0 809E0FF0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00DB4 809E0FF4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00DB8 809E0FF8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00DBC 809E0FFC 03E00008 */  jr      $ra                        
/* 00DC0 809E1000 00000000 */  nop


