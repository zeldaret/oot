.late_rodata
glabel D_80AFE11C
    .float 0.01

glabel D_80AFE120
 .word 0x3C75C28F

.text
glabel func_80AFD880
/* 00EE0 80AFD880 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00EE4 80AFD884 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00EE8 80AFD888 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00EEC 80AFD88C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00EF0 80AFD890 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00EF4 80AFD894 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00EF8 80AFD898 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 00EFC 80AFD89C 2605028C */  addiu   $a1, $s0, 0x028C           ## $a1 = 0000028C
/* 00F00 80AFD8A0 0C00CC17 */  jal     func_8003305C              
/* 00F04 80AFD8A4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00F08 80AFD8A8 1040002A */  beq     $v0, $zero, .L80AFD954     
/* 00F0C 80AFD8AC 3C0180B0 */  lui     $at, %hi(D_80AFE11C)       ## $at = 80B00000
/* 00F10 80AFD8B0 C6000050 */  lwc1    $f0, 0x0050($s0)           ## 00000050
/* 00F14 80AFD8B4 C424E11C */  lwc1    $f4, %lo(D_80AFE11C)($at)  
/* 00F18 80AFD8B8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00F1C 80AFD8BC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00F20 80AFD8C0 46002032 */  c.eq.s  $f4, $f0                   
/* 00F24 80AFD8C4 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 00F28 80AFD8C8 3C0180B0 */  lui     $at, %hi(D_80AFE120)       ## $at = 80B00000
/* 00F2C 80AFD8CC 45000005 */  bc1f    .L80AFD8E4                 
/* 00F30 80AFD8D0 00000000 */  nop
/* 00F34 80AFD8D4 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00F38 80AFD8D8 24070010 */  addiu   $a3, $zero, 0x0010         ## $a3 = 00000010
/* 00F3C 80AFD8DC 10000019 */  beq     $zero, $zero, .L80AFD944   
/* 00F40 80AFD8E0 920E0283 */  lbu     $t6, 0x0283($s0)           ## 00000283
.L80AFD8E4:
/* 00F44 80AFD8E4 C426E120 */  lwc1    $f6, %lo(D_80AFE120)($at)  
/* 00F48 80AFD8E8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00F4C 80AFD8EC 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00F50 80AFD8F0 4606003E */  c.le.s  $f0, $f6                   
/* 00F54 80AFD8F4 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00F58 80AFD8F8 45000007 */  bc1f    .L80AFD918                 
/* 00F5C 80AFD8FC 00000000 */  nop
/* 00F60 80AFD900 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00F64 80AFD904 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00F68 80AFD908 0C007D52 */  jal     Item_DropCollectible
              
/* 00F6C 80AFD90C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00F70 80AFD910 1000000C */  beq     $zero, $zero, .L80AFD944   
/* 00F74 80AFD914 920E0283 */  lbu     $t6, 0x0283($s0)           ## 00000283
.L80AFD918:
/* 00F78 80AFD918 0C007D52 */  jal     Item_DropCollectible
              
/* 00F7C 80AFD91C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00F80 80AFD920 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00F84 80AFD924 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00F88 80AFD928 0C007D52 */  jal     Item_DropCollectible
              
/* 00F8C 80AFD92C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00F90 80AFD930 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00F94 80AFD934 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00F98 80AFD938 0C007D52 */  jal     Item_DropCollectible
              
/* 00F9C 80AFD93C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00FA0 80AFD940 920E0283 */  lbu     $t6, 0x0283($s0)           ## 00000283
.L80AFD944:
/* 00FA4 80AFD944 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FA8 80AFD948 35CF0008 */  ori     $t7, $t6, 0x0008           ## $t7 = 00000008
/* 00FAC 80AFD94C 0C00B55C */  jal     Actor_Kill
              
/* 00FB0 80AFD950 A20F0283 */  sb      $t7, 0x0283($s0)           ## 00000283
.L80AFD954:
/* 00FB4 80AFD954 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00FB8 80AFD958 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00FBC 80AFD95C 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00FC0 80AFD960 03E00008 */  jr      $ra                        
/* 00FC4 80AFD964 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
