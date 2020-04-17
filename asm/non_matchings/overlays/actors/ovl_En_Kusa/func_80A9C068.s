glabel func_80A9C068
/* 010C8 80A9C068 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 010CC 80A9C06C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 010D0 80A9C070 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 010D4 80A9C074 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 010D8 80A9C078 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 010DC 80A9C07C 3C053ECC */  lui     $a1, 0x3ECC                ## $a1 = 3ECC0000
/* 010E0 80A9C080 3C063C65 */  lui     $a2, 0x3C65                ## $a2 = 3C650000
/* 010E4 80A9C084 34C66042 */  ori     $a2, $a2, 0x6042           ## $a2 = 3C656042
/* 010E8 80A9C088 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3ECCCCCD
/* 010EC 80A9C08C 0C01DE80 */  jal     Math_ApproxF
              
/* 010F0 80A9C090 24840054 */  addiu   $a0, $a0, 0x0054           ## $a0 = 00000054
/* 010F4 80A9C094 30430001 */  andi    $v1, $v0, 0x0001           ## $v1 = 00000000
/* 010F8 80A9C098 3C053ECC */  lui     $a1, 0x3ECC                ## $a1 = 3ECC0000
/* 010FC 80A9C09C 3C063C34 */  lui     $a2, 0x3C34                ## $a2 = 3C340000
/* 01100 80A9C0A0 34C63958 */  ori     $a2, $a2, 0x3958           ## $a2 = 3C343958
/* 01104 80A9C0A4 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3ECCCCCD
/* 01108 80A9C0A8 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 0110C 80A9C0AC 0C01DE80 */  jal     Math_ApproxF
              
/* 01110 80A9C0B0 26040050 */  addiu   $a0, $s0, 0x0050           ## $a0 = 00000050
/* 01114 80A9C0B4 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 01118 80A9C0B8 C6040050 */  lwc1    $f4, 0x0050($s0)           ## 00000050
/* 0111C 80A9C0BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01120 80A9C0C0 00621824 */  and     $v1, $v1, $v0              
/* 01124 80A9C0C4 10600009 */  beq     $v1, $zero, .L80A9C0EC     
/* 01128 80A9C0C8 E6040058 */  swc1    $f4, 0x0058($s0)           ## 00000058
/* 0112C 80A9C0CC 3C053ECC */  lui     $a1, 0x3ECC                ## $a1 = 3ECC0000
/* 01130 80A9C0D0 0C00B58B */  jal     Actor_SetScale
              
/* 01134 80A9C0D4 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3ECCCCCD
/* 01138 80A9C0D8 0C2A6E27 */  jal     func_80A9B89C              
/* 0113C 80A9C0DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01140 80A9C0E0 920E0162 */  lbu     $t6, 0x0162($s0)           ## 00000162
/* 01144 80A9C0E4 31CFFFF7 */  andi    $t7, $t6, 0xFFF7           ## $t7 = 00000000
/* 01148 80A9C0E8 A20F0162 */  sb      $t7, 0x0162($s0)           ## 00000162
.L80A9C0EC:
/* 0114C 80A9C0EC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01150 80A9C0F0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01154 80A9C0F4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01158 80A9C0F8 03E00008 */  jr      $ra                        
/* 0115C 80A9C0FC 00000000 */  nop
