glabel func_80972008
/* 010B8 80972008 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 010BC 8097200C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 010C0 80972010 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 010C4 80972014 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 010C8 80972018 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 010CC 8097201C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 010D0 80972020 0C01B129 */  jal     func_8006C4A4              
/* 010D4 80972024 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 010D8 80972028 1040001C */  beq     $v0, $zero, .L8097209C     
/* 010DC 8097202C 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 010E0 80972030 84CE018A */  lh      $t6, 0x018A($a2)           ## 0000018A
/* 010E4 80972034 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 010E8 80972038 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 010EC 8097203C 55E00008 */  bnel    $t7, $zero, .L80972060     
/* 010F0 80972040 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 010F4 80972044 0C03CFCF */  jal     func_800F3F3C              
/* 010F8 80972048 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 010FC 8097204C 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 01100 80972050 84D8018A */  lh      $t8, 0x018A($a2)           ## 0000018A
/* 01104 80972054 37190002 */  ori     $t9, $t8, 0x0002           ## $t9 = 00000002
/* 01108 80972058 A4D9018A */  sh      $t9, 0x018A($a2)           ## 0000018A
/* 0110C 8097205C 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
.L80972060:
/* 01110 80972060 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01114 80972064 0C01B231 */  jal     func_8006C8C4              
/* 01118 80972068 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0111C 8097206C 1040000B */  beq     $v0, $zero, .L8097209C     
/* 01120 80972070 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01124 80972074 3C01426C */  lui     $at, 0x426C                ## $at = 426C0000
/* 01128 80972078 44812000 */  mtc1    $at, $f4                   ## $f4 = 59.00
/* 0112C 8097207C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01130 80972080 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01134 80972084 24A50050 */  addiu   $a1, $a1, 0x0050           ## $a1 = 06000050
/* 01138 80972088 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0113C 8097208C 3C074270 */  lui     $a3, 0x4270                ## $a3 = 42700000
/* 01140 80972090 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01144 80972094 0C01B225 */  jal     func_8006C894              
/* 01148 80972098 E7A60014 */  swc1    $f6, 0x0014($sp)           
.L8097209C:
/* 0114C 8097209C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01150 809720A0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01154 809720A4 03E00008 */  jr      $ra                        
/* 01158 809720A8 00000000 */  nop
