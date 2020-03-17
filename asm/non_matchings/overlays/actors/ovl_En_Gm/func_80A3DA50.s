glabel func_80A3DA50
/* 00370 80A3DA50 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00374 80A3DA54 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00378 80A3DA58 0C28F5F2 */  jal     func_80A3D7C8              
/* 0037C 80A3DA5C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00380 80A3DA60 1040000C */  beq     $v0, $zero, .L80A3DA94     
/* 00384 80A3DA64 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00388 80A3DA68 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0038C 80A3DA6C 10410014 */  beq     $v0, $at, .L80A3DAC0       
/* 00390 80A3DA70 3C088016 */  lui     $t0, 0x8016                ## $t0 = 80160000
/* 00394 80A3DA74 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00398 80A3DA78 1041001B */  beq     $v0, $at, .L80A3DAE8       
/* 0039C 80A3DA7C 240C304E */  addiu   $t4, $zero, 0x304E         ## $t4 = 0000304E
/* 003A0 80A3DA80 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 003A4 80A3DA84 1041001A */  beq     $v0, $at, .L80A3DAF0       
/* 003A8 80A3DA88 240D304D */  addiu   $t5, $zero, 0x304D         ## $t5 = 0000304D
/* 003AC 80A3DA8C 1000001A */  beq     $zero, $zero, .L80A3DAF8   
/* 003B0 80A3DA90 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A3DA94:
/* 003B4 80A3DA94 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 003B8 80A3DA98 95CEF56E */  lhu     $t6, -0x0A92($t6)          ## 8015F56E
/* 003BC 80A3DA9C 2418304B */  addiu   $t8, $zero, 0x304B         ## $t8 = 0000304B
/* 003C0 80A3DAA0 2419304A */  addiu   $t9, $zero, 0x304A         ## $t9 = 0000304A
/* 003C4 80A3DAA4 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 003C8 80A3DAA8 11E00003 */  beq     $t7, $zero, .L80A3DAB8     
/* 003CC 80A3DAAC 00000000 */  nop
/* 003D0 80A3DAB0 10000010 */  beq     $zero, $zero, .L80A3DAF4   
/* 003D4 80A3DAB4 A498010E */  sh      $t8, 0x010E($a0)           ## 0000010E
.L80A3DAB8:
/* 003D8 80A3DAB8 1000000E */  beq     $zero, $zero, .L80A3DAF4   
/* 003DC 80A3DABC A499010E */  sh      $t9, 0x010E($a0)           ## 0000010E
.L80A3DAC0:
/* 003E0 80A3DAC0 9508F56E */  lhu     $t0, -0x0A92($t0)          ## 8015F56E
/* 003E4 80A3DAC4 240A304F */  addiu   $t2, $zero, 0x304F         ## $t2 = 0000304F
/* 003E8 80A3DAC8 240B304C */  addiu   $t3, $zero, 0x304C         ## $t3 = 0000304C
/* 003EC 80A3DACC 31090002 */  andi    $t1, $t0, 0x0002           ## $t1 = 00000000
/* 003F0 80A3DAD0 11200003 */  beq     $t1, $zero, .L80A3DAE0     
/* 003F4 80A3DAD4 00000000 */  nop
/* 003F8 80A3DAD8 10000006 */  beq     $zero, $zero, .L80A3DAF4   
/* 003FC 80A3DADC A48A010E */  sh      $t2, 0x010E($a0)           ## 0000010E
.L80A3DAE0:
/* 00400 80A3DAE0 10000004 */  beq     $zero, $zero, .L80A3DAF4   
/* 00404 80A3DAE4 A48B010E */  sh      $t3, 0x010E($a0)           ## 0000010E
.L80A3DAE8:
/* 00408 80A3DAE8 10000002 */  beq     $zero, $zero, .L80A3DAF4   
/* 0040C 80A3DAEC A48C010E */  sh      $t4, 0x010E($a0)           ## 0000010E
.L80A3DAF0:
/* 00410 80A3DAF0 A48D010E */  sh      $t5, 0x010E($a0)           ## 0000010E
.L80A3DAF4:
/* 00414 80A3DAF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A3DAF8:
/* 00418 80A3DAF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0041C 80A3DAFC 03E00008 */  jr      $ra                        
/* 00420 80A3DB00 00000000 */  nop


