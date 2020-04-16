glabel func_8084EED8
/* 1CCC8 8084EED8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1CCCC 8084EEDC AFB0001C */  sw      $s0, 0x001C($sp)           
/* 1CCD0 8084EEE0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1CCD4 8084EEE4 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 1CCD8 8084EEE8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 1CCDC 8084EEEC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 1CCE0 8084EEF0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 1CCE4 8084EEF4 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 1CCE8 8084EEF8 0C028EF0 */  jal     func_800A3BC0              
/* 1CCEC 8084EEFC AFA50028 */  sw      $a1, 0x0028($sp)           
/* 1CCF0 8084EF00 1040000B */  beq     $v0, $zero, .L8084EF30     
/* 1CCF4 8084EF04 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 1CCF8 8084EF08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1CCFC 8084EF0C 0C20F03A */  jal     func_8083C0E8              
/* 1CD00 8084EF10 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 1CD04 8084EF14 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1CD08 8084EF18 0C030129 */  jal     Gameplay_GetCamera              
/* 1CD0C 8084EF1C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1CD10 8084EF20 0C016C69 */  jal     func_8005B1A4              
/* 1CD14 8084EF24 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 1CD18 8084EF28 10000021 */  beq     $zero, $zero, .L8084EFB0   
/* 1CD1C 8084EF2C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L8084EF30:
/* 1CD20 8084EF30 0C02914C */  jal     func_800A4530              
/* 1CD24 8084EF34 3C054214 */  lui     $a1, 0x4214                ## $a1 = 42140000
/* 1CD28 8084EF38 10400016 */  beq     $v0, $zero, .L8084EF94     
/* 1CD2C 8084EF3C 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 1CD30 8084EF40 3C078085 */  lui     $a3, %hi(D_80854A1C)       ## $a3 = 80850000
/* 1CD34 8084EF44 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 1CD38 8084EF48 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 1CD3C 8084EF4C 24E74A1C */  addiu   $a3, $a3, %lo(D_80854A1C)  ## $a3 = 80854A1C
/* 1CD40 8084EF50 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1CD44 8084EF54 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1CD48 8084EF58 0C20E5A0 */  jal     func_80839680              
/* 1CD4C 8084EF5C 260603B0 */  addiu   $a2, $s0, 0x03B0           ## $a2 = 000003B0
/* 1CD50 8084EF60 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1CD54 8084EF64 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1CD58 8084EF68 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 1CD5C 8084EF6C 0C023B67 */  jal     func_8008ED9C              
/* 1CD60 8084EF70 2407001E */  addiu   $a3, $zero, 0x001E         ## $a3 = 0000001E
/* 1CD64 8084EF74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1CD68 8084EF78 0C00BDF7 */  jal     func_8002F7DC              
/* 1CD6C 8084EF7C 2405286C */  addiu   $a1, $zero, 0x286C         ## $a1 = 0000286C
/* 1CD70 8084EF80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1CD74 8084EF84 0C00BDF7 */  jal     func_8002F7DC              
/* 1CD78 8084EF88 240520A8 */  addiu   $a1, $zero, 0x20A8         ## $a1 = 000020A8
/* 1CD7C 8084EF8C 10000008 */  beq     $zero, $zero, .L8084EFB0   
/* 1CD80 8084EF90 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L8084EF94:
/* 1CD84 8084EF94 0C02914C */  jal     func_800A4530              
/* 1CD88 8084EF98 3C05423C */  lui     $a1, 0x423C                ## $a1 = 423C0000
/* 1CD8C 8084EF9C 10400003 */  beq     $v0, $zero, .L8084EFAC     
/* 1CD90 8084EFA0 240F0140 */  addiu   $t7, $zero, 0x0140         ## $t7 = 00000140
/* 1CD94 8084EFA4 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 1CD98 8084EFA8 A42FFA84 */  sh      $t7, -0x057C($at)          ## 8015FA84
.L8084EFAC:
/* 1CD9C 8084EFAC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L8084EFB0:
/* 1CDA0 8084EFB0 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 1CDA4 8084EFB4 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 1CDA8 8084EFB8 03E00008 */  jr      $ra                        
/* 1CDAC 8084EFBC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
