glabel func_809E9E80
/* 00920 809E9E80 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00924 809E9E84 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00928 809E9E88 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0092C 809E9E8C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00930 809E9E90 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00934 809E9E94 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00938 809E9E98 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0093C 809E9E9C AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00940 809E9EA0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00944 809E9EA4 0C0295B2 */  jal     func_800A56C8              
/* 00948 809E9EA8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0094C 809E9EAC 10400005 */  beq     $v0, $zero, .L809E9EC4     
/* 00950 809E9EB0 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00954 809E9EB4 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
/* 00958 809E9EB8 10400002 */  beq     $v0, $zero, .L809E9EC4     
/* 0095C 809E9EBC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00960 809E9EC0 A60E0196 */  sh      $t6, 0x0196($s0)           ## 00000196
.L809E9EC4:
/* 00964 809E9EC4 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
/* 00968 809E9EC8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 0096C 809E9ECC 24070E38 */  addiu   $a3, $zero, 0x0E38         ## $a3 = 00000E38
/* 00970 809E9ED0 304F1000 */  andi    $t7, $v0, 0x1000           ## $t7 = 00000000
/* 00974 809E9ED4 55E00005 */  bnel    $t7, $zero, .L809E9EEC     
/* 00978 809E9ED8 24011000 */  addiu   $at, $zero, 0x1000         ## $at = 00001000
/* 0097C 809E9EDC 0C01E1EF */  jal     Math_ApproachS
              
/* 00980 809E9EE0 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00984 809E9EE4 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
/* 00988 809E9EE8 24011000 */  addiu   $at, $zero, 0x1000         ## $at = 00001000
.L809E9EEC:
/* 0098C 809E9EEC 14410016 */  bne     $v0, $at, .L809E9F48       
/* 00990 809E9EF0 3C0143F0 */  lui     $at, 0x43F0                ## $at = 43F00000
/* 00994 809E9EF4 44812000 */  mtc1    $at, $f4                   ## $f4 = 480.00
/* 00998 809E9EF8 C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 0099C 809E9EFC 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 009A0 809E9F00 4600203C */  c.lt.s  $f4, $f0                   
/* 009A4 809E9F04 00000000 */  nop
/* 009A8 809E9F08 45010007 */  bc1t    .L809E9F28                 
/* 009AC 809E9F0C 00000000 */  nop
/* 009B0 809E9F10 44813000 */  mtc1    $at, $f6                   ## $f6 = 120.00
/* 009B4 809E9F14 00000000 */  nop
/* 009B8 809E9F18 4606003C */  c.lt.s  $f0, $f6                   
/* 009BC 809E9F1C 00000000 */  nop
/* 009C0 809E9F20 45000005 */  bc1f    .L809E9F38                 
/* 009C4 809E9F24 00000000 */  nop
.L809E9F28:
/* 009C8 809E9F28 0C27A61A */  jal     func_809E9868              
/* 009CC 809E9F2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009D0 809E9F30 1000000A */  beq     $zero, $zero, .L809E9F5C   
/* 009D4 809E9F34 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809E9F38:
/* 009D8 809E9F38 0C27A5EE */  jal     func_809E97B8              
/* 009DC 809E9F3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009E0 809E9F40 10000006 */  beq     $zero, $zero, .L809E9F5C   
/* 009E4 809E9F44 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809E9F48:
/* 009E8 809E9F48 54400004 */  bnel    $v0, $zero, .L809E9F5C     
/* 009EC 809E9F4C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 009F0 809E9F50 0C27A5EE */  jal     func_809E97B8              
/* 009F4 809E9F54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009F8 809E9F58 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809E9F5C:
/* 009FC 809E9F5C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00A00 809E9F60 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00A04 809E9F64 03E00008 */  jr      $ra                        
/* 00A08 809E9F68 00000000 */  nop
