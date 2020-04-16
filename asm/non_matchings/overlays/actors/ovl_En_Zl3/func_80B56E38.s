glabel func_80B56E38
/* 03A88 80B56E38 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 03A8C 80B56E3C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03A90 80B56E40 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03A94 80B56E44 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03A98 80B56E48 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 03A9C 80B56E4C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03AA0 80B56E50 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 03AA4 80B56E54 0C0295B2 */  jal     func_800A56C8              
/* 03AA8 80B56E58 3C0540C0 */  lui     $a1, 0x40C0                ## $a1 = 40C00000
/* 03AAC 80B56E5C 14400005 */  bne     $v0, $zero, .L80B56E74     
/* 03AB0 80B56E60 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 03AB4 80B56E64 0C0295B2 */  jal     func_800A56C8              
/* 03AB8 80B56E68 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 03ABC 80B56E6C 5040000E */  beql    $v0, $zero, .L80B56EA8     
/* 03AC0 80B56E70 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B56E74:
/* 03AC4 80B56E74 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
/* 03AC8 80B56E78 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 03ACC 80B56E7C 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 03AD0 80B56E80 11E00008 */  beq     $t7, $zero, .L80B56EA4     
/* 03AD4 80B56E84 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 03AD8 80B56E88 8E050078 */  lw      $a1, 0x0078($s0)           ## 00000078
/* 03ADC 80B56E8C 0C0107CD */  jal     func_80041F34              
/* 03AE0 80B56E90 9206007D */  lbu     $a2, 0x007D($s0)           ## 0000007D
/* 03AE4 80B56E94 24430800 */  addiu   $v1, $v0, 0x0800           ## $v1 = 00000800
/* 03AE8 80B56E98 3065FFFF */  andi    $a1, $v1, 0xFFFF           ## $a1 = 00000800
/* 03AEC 80B56E9C 0C01E245 */  jal     func_80078914              
/* 03AF0 80B56EA0 260400E4 */  addiu   $a0, $s0, 0x00E4           ## $a0 = 000000E4
.L80B56EA4:
/* 03AF4 80B56EA4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B56EA8:
/* 03AF8 80B56EA8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03AFC 80B56EAC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 03B00 80B56EB0 03E00008 */  jr      $ra                        
/* 03B04 80B56EB4 00000000 */  nop
