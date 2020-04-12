.late_rodata
glabel D_80B9EF6C
 .word 0x3D4AC083
glabel D_80B9EF70
 .word 0x3C872B02

.text
glabel func_80B9DBF0
/* 009E0 80B9DBF0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 009E4 80B9DBF4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 009E8 80B9DBF8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 009EC 80B9DBFC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 009F0 80B9DC00 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 009F4 80B9DC04 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 009F8 80B9DC08 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009FC 80B9DC0C 000E7903 */  sra     $t7, $t6,  4               
/* 00A00 80B9DC10 31F80007 */  andi    $t8, $t7, 0x0007           ## $t8 = 00000000
/* 00A04 80B9DC14 1301000B */  beq     $t8, $at, .L80B9DC44       
/* 00A08 80B9DC18 00000000 */  nop
/* 00A0C 80B9DC1C 9099016E */  lbu     $t9, 0x016E($a0)           ## 0000016E
/* 00A10 80B9DC20 13200008 */  beq     $t9, $zero, .L80B9DC44     
/* 00A14 80B9DC24 00000000 */  nop
/* 00A18 80B9DC28 0C016C66 */  jal     func_8005B198              
/* 00A1C 80B9DC2C 00000000 */  nop
/* 00A20 80B9DC30 92080002 */  lbu     $t0, 0x0002($s0)           ## 00000002
/* 00A24 80B9DC34 10480003 */  beq     $v0, $t0, .L80B9DC44       
/* 00A28 80B9DC38 00000000 */  nop
/* 00A2C 80B9DC3C 8609016C */  lh      $t1, 0x016C($s0)           ## 0000016C
/* 00A30 80B9DC40 1D200016 */  bgtz    $t1, .L80B9DC9C            
.L80B9DC44:
/* 00A34 80B9DC44 3C0180BA */  lui     $at, %hi(D_80B9EF6C)       ## $at = 80BA0000
/* 00A38 80B9DC48 C426EF6C */  lwc1    $f6, %lo(D_80B9EF6C)($at)  
/* 00A3C 80B9DC4C C6040054 */  lwc1    $f4, 0x0054($s0)           ## 00000054
/* 00A40 80B9DC50 3C0180BA */  lui     $at, %hi(D_80B9EF70)       ## $at = 80BA0000
/* 00A44 80B9DC54 46062201 */  sub.s   $f8, $f4, $f6              
/* 00A48 80B9DC58 E6080054 */  swc1    $f8, 0x0054($s0)           ## 00000054
/* 00A4C 80B9DC5C C6100054 */  lwc1    $f16, 0x0054($s0)          ## 00000054
/* 00A50 80B9DC60 C42AEF70 */  lwc1    $f10, %lo(D_80B9EF70)($at) 
/* 00A54 80B9DC64 460A803E */  c.le.s  $f16, $f10                 
/* 00A58 80B9DC68 00000000 */  nop
/* 00A5C 80B9DC6C 4502000C */  bc1fl   .L80B9DCA0                 
/* 00A60 80B9DC70 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A64 80B9DC74 0C2E772C */  jal     func_80B9DCB0              
/* 00A68 80B9DC78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A6C 80B9DC7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A70 80B9DC80 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00A74 80B9DC84 24052815 */  addiu   $a1, $zero, 0x2815         ## $a1 = 00002815
/* 00A78 80B9DC88 C60C008C */  lwc1    $f12, 0x008C($s0)          ## 0000008C
/* 00A7C 80B9DC8C 24050078 */  addiu   $a1, $zero, 0x0078         ## $a1 = 00000078
/* 00A80 80B9DC90 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00A84 80B9DC94 0C02A800 */  jal     func_800AA000              
/* 00A88 80B9DC98 2407000A */  addiu   $a3, $zero, 0x000A         ## $a3 = 0000000A
.L80B9DC9C:
/* 00A8C 80B9DC9C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9DCA0:
/* 00A90 80B9DCA0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00A94 80B9DCA4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00A98 80B9DCA8 03E00008 */  jr      $ra                        
/* 00A9C 80B9DCAC 00000000 */  nop
