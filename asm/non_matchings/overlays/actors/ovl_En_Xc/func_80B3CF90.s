glabel func_80B3CF90
/* 00DB0 80B3CF90 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00DB4 80B3CF94 8DCEF9C0 */  lw      $t6, -0x0640($t6)          ## 8015F9C0
/* 00DB8 80B3CF98 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00DBC 80B3CF9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00DC0 80B3CFA0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00DC4 80B3CFA4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00DC8 80B3CFA8 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00DCC 80B3CFAC 15C10004 */  bne     $t6, $at, .L80B3CFC0       
/* 00DD0 80B3CFB0 84A200A4 */  lh      $v0, 0x00A4($a1)           ## 000000A4
/* 00DD4 80B3CFB4 2401005C */  addiu   $at, $zero, 0x005C         ## $at = 0000005C
/* 00DD8 80B3CFB8 50410013 */  beql    $v0, $at, .L80B3D008       
/* 00DDC 80B3CFBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B3CFC0:
/* 00DE0 80B3CFC0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00DE4 80B3CFC4 3C054130 */  lui     $a1, 0x4130                ## $a1 = 41300000
/* 00DE8 80B3CFC8 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00DEC 80B3CFCC 0C0295B2 */  jal     func_800A56C8              
/* 00DF0 80B3CFD0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00DF4 80B3CFD4 1040000B */  beq     $v0, $zero, .L80B3D004     
/* 00DF8 80B3CFD8 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 00DFC 80B3CFDC 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 00E00 80B3CFE0 24E407C0 */  addiu   $a0, $a3, 0x07C0           ## $a0 = 000007C0
/* 00E04 80B3CFE4 8C450078 */  lw      $a1, 0x0078($v0)           ## 00000078
/* 00E08 80B3CFE8 0C0107CD */  jal     func_80041F34              
/* 00E0C 80B3CFEC 9046007D */  lbu     $a2, 0x007D($v0)           ## 0000007D
/* 00E10 80B3CFF0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00E14 80B3CFF4 24430800 */  addiu   $v1, $v0, 0x0800           ## $v1 = 00000800
/* 00E18 80B3CFF8 3065FFFF */  andi    $a1, $v1, 0xFFFF           ## $a1 = 00000800
/* 00E1C 80B3CFFC 0C01E245 */  jal     func_80078914              
/* 00E20 80B3D000 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
.L80B3D004:
/* 00E24 80B3D004 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B3D008:
/* 00E28 80B3D008 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E2C 80B3D00C 03E00008 */  jr      $ra                        
/* 00E30 80B3D010 00000000 */  nop
