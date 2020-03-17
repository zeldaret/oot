glabel func_8089DC30
/* 00000 8089DC30 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 8089DC34 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00008 8089DC38 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0000C 8089DC3C 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00010 8089DC40 2405001C */  addiu   $a1, $zero, 0x001C         ## $a1 = 0000001C
/* 00014 8089DC44 10400003 */  beq     $v0, $zero, .L8089DC54     
/* 00018 8089DC48 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0001C 8089DC4C 1000000D */  beq     $zero, $zero, .L8089DC84   
/* 00020 8089DC50 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L8089DC54:
/* 00024 8089DC54 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00028 8089DC58 2405001D */  addiu   $a1, $zero, 0x001D         ## $a1 = 0000001D
/* 0002C 8089DC5C 10400003 */  beq     $v0, $zero, .L8089DC6C     
/* 00030 8089DC60 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00034 8089DC64 10000007 */  beq     $zero, $zero, .L8089DC84   
/* 00038 8089DC68 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
.L8089DC6C:
/* 0003C 8089DC6C 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00040 8089DC70 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 00044 8089DC74 10400003 */  beq     $v0, $zero, .L8089DC84     
/* 00048 8089DC78 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 0004C 8089DC7C 10000001 */  beq     $zero, $zero, .L8089DC84   
/* 00050 8089DC80 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
.L8089DC84:
/* 00054 8089DC84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00058 8089DC88 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0005C 8089DC8C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000003
/* 00060 8089DC90 03E00008 */  jr      $ra                        
/* 00064 8089DC94 00000000 */  nop


