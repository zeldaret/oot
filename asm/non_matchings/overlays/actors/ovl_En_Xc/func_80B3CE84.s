glabel func_80B3CE84
/* 00CA4 80B3CE84 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00CA8 80B3CE88 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00CAC 80B3CE8C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00CB0 80B3CE90 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00CB4 80B3CE94 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00CB8 80B3CE98 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00CBC 80B3CE9C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00CC0 80B3CEA0 0C0295B2 */  jal     Animation_OnFrame              
/* 00CC4 80B3CEA4 3C054130 */  lui     $a1, 0x4130                ## $a1 = 41300000
/* 00CC8 80B3CEA8 14400005 */  bne     $v0, $zero, .L80B3CEC0     
/* 00CCC 80B3CEAC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00CD0 80B3CEB0 0C0295B2 */  jal     Animation_OnFrame              
/* 00CD4 80B3CEB4 3C0541B8 */  lui     $a1, 0x41B8                ## $a1 = 41B80000
/* 00CD8 80B3CEB8 5040000E */  beql    $v0, $zero, .L80B3CEF4     
/* 00CDC 80B3CEBC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B3CEC0:
/* 00CE0 80B3CEC0 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
/* 00CE4 80B3CEC4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00CE8 80B3CEC8 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00CEC 80B3CECC 11E00008 */  beq     $t7, $zero, .L80B3CEF0     
/* 00CF0 80B3CED0 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 00CF4 80B3CED4 8E050078 */  lw      $a1, 0x0078($s0)           ## 00000078
/* 00CF8 80B3CED8 0C0107CD */  jal     func_80041F34              
/* 00CFC 80B3CEDC 9206007D */  lbu     $a2, 0x007D($s0)           ## 0000007D
/* 00D00 80B3CEE0 24430800 */  addiu   $v1, $v0, 0x0800           ## $v1 = 00000800
/* 00D04 80B3CEE4 3065FFFF */  andi    $a1, $v1, 0xFFFF           ## $a1 = 00000800
/* 00D08 80B3CEE8 0C01E245 */  jal     func_80078914              
/* 00D0C 80B3CEEC 260400E4 */  addiu   $a0, $s0, 0x00E4           ## $a0 = 000000E4
.L80B3CEF0:
/* 00D10 80B3CEF0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B3CEF4:
/* 00D14 80B3CEF4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00D18 80B3CEF8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00D1C 80B3CEFC 03E00008 */  jr      $ra                        
/* 00D20 80B3CF00 00000000 */  nop
