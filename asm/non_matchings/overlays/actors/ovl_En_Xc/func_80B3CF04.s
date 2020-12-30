glabel func_80B3CF04
/* 00D24 80B3CF04 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00D28 80B3CF08 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00D2C 80B3CF0C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D30 80B3CF10 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00D34 80B3CF14 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00D38 80B3CF18 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00D3C 80B3CF1C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00D40 80B3CF20 0C0295B2 */  jal     Animation_OnFrame              
/* 00D44 80B3CF24 3C0540E0 */  lui     $a1, 0x40E0                ## $a1 = 40E00000
/* 00D48 80B3CF28 5040000E */  beql    $v0, $zero, .L80B3CF64     
/* 00D4C 80B3CF2C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00D50 80B3CF30 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
/* 00D54 80B3CF34 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00D58 80B3CF38 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00D5C 80B3CF3C 11E00008 */  beq     $t7, $zero, .L80B3CF60     
/* 00D60 80B3CF40 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 00D64 80B3CF44 8E050078 */  lw      $a1, 0x0078($s0)           ## 00000078
/* 00D68 80B3CF48 0C0107CD */  jal     func_80041F34              
/* 00D6C 80B3CF4C 9206007D */  lbu     $a2, 0x007D($s0)           ## 0000007D
/* 00D70 80B3CF50 24430800 */  addiu   $v1, $v0, 0x0800           ## $v1 = 00000800
/* 00D74 80B3CF54 3065FFFF */  andi    $a1, $v1, 0xFFFF           ## $a1 = 00000800
/* 00D78 80B3CF58 0C01E245 */  jal     func_80078914              
/* 00D7C 80B3CF5C 260400E4 */  addiu   $a0, $s0, 0x00E4           ## $a0 = 000000E4
.L80B3CF60:
/* 00D80 80B3CF60 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80B3CF64:
/* 00D84 80B3CF64 0C0295B2 */  jal     Animation_OnFrame              
/* 00D88 80B3CF68 3C0541A0 */  lui     $a1, 0x41A0                ## $a1 = 41A00000
/* 00D8C 80B3CF6C 10400003 */  beq     $v0, $zero, .L80B3CF7C     
/* 00D90 80B3CF70 260400E4 */  addiu   $a0, $s0, 0x00E4           ## $a0 = 000000E4
/* 00D94 80B3CF74 0C01E245 */  jal     func_80078914              
/* 00D98 80B3CF78 24056874 */  addiu   $a1, $zero, 0x6874         ## $a1 = 00006874
.L80B3CF7C:
/* 00D9C 80B3CF7C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00DA0 80B3CF80 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00DA4 80B3CF84 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00DA8 80B3CF88 03E00008 */  jr      $ra                        
/* 00DAC 80B3CF8C 00000000 */  nop
