glabel func_80AA1A38
/* 00098 80AA1A38 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0009C 80AA1A3C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000A0 80AA1A40 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 000A4 80AA1A44 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 000A8 80AA1A48 A7A3001E */  sh      $v1, 0x001E($sp)           
/* 000AC 80AA1A4C 0C042F6F */  jal     func_8010BDBC              
/* 000B0 80AA1A50 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 000B4 80AA1A54 2C41000A */  sltiu   $at, $v0, 0x000A           
/* 000B8 80AA1A58 1020001D */  beq     $at, $zero, .L80AA1AD0     
/* 000BC 80AA1A5C 87A3001E */  lh      $v1, 0x001E($sp)           
/* 000C0 80AA1A60 00027080 */  sll     $t6, $v0,  2               
/* 000C4 80AA1A64 3C0180AA */  lui     $at, %hi(jtbl_80AA2910)       ## $at = 80AA0000
/* 000C8 80AA1A68 002E0821 */  addu    $at, $at, $t6              
/* 000CC 80AA1A6C 8C2E2910 */  lw      $t6, %lo(jtbl_80AA2910)($at)  
/* 000D0 80AA1A70 01C00008 */  jr      $t6                        
/* 000D4 80AA1A74 00000000 */  nop
glabel L80AA1A78
/* 000D8 80AA1A78 8FAF0024 */  lw      $t7, 0x0024($sp)           
/* 000DC 80AA1A7C 24012051 */  addiu   $at, $zero, 0x2051         ## $at = 00002051
/* 000E0 80AA1A80 95E2010E */  lhu     $v0, 0x010E($t7)           ## 0000010E
/* 000E4 80AA1A84 10410005 */  beq     $v0, $at, .L80AA1A9C       
/* 000E8 80AA1A88 24012053 */  addiu   $at, $zero, 0x2053         ## $at = 00002053
/* 000EC 80AA1A8C 1041000A */  beq     $v0, $at, .L80AA1AB8       
/* 000F0 80AA1A90 00000000 */  nop
/* 000F4 80AA1A94 1000000E */  beq     $zero, $zero, .L80AA1AD0   
/* 000F8 80AA1A98 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80AA1A9C:
/* 000FC 80AA1A9C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00100 80AA1AA0 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00104 80AA1AA4 94580F08 */  lhu     $t8, 0x0F08($v0)           ## 8015F568
/* 00108 80AA1AA8 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
/* 0010C 80AA1AAC 37191000 */  ori     $t9, $t8, 0x1000           ## $t9 = 00001000
/* 00110 80AA1AB0 10000007 */  beq     $zero, $zero, .L80AA1AD0   
/* 00114 80AA1AB4 A4590F08 */  sh      $t9, 0x0F08($v0)           ## 8015F568
.L80AA1AB8:
/* 00118 80AA1AB8 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0011C 80AA1ABC 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00120 80AA1AC0 94480F08 */  lhu     $t0, 0x0F08($v0)           ## 8015F568
/* 00124 80AA1AC4 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00128 80AA1AC8 35092000 */  ori     $t1, $t0, 0x2000           ## $t1 = 00002000
/* 0012C 80AA1ACC A4490F08 */  sh      $t1, 0x0F08($v0)           ## 8015F568
glabel L80AA1AD0
.L80AA1AD0:
/* 00130 80AA1AD0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00134 80AA1AD4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00138 80AA1AD8 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 0013C 80AA1ADC 03E00008 */  jr      $ra                        
/* 00140 80AA1AE0 00000000 */  nop


