glabel func_80AC3F38
/* 01298 80AC3F38 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0129C 80AC3F3C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 012A0 80AC3F40 908E01EB */  lbu     $t6, 0x01EB($a0)           ## 000001EB
/* 012A4 80AC3F44 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 012A8 80AC3F48 3C0280AD */  lui     $v0, %hi(D_80AC88EC)       ## $v0 = 80AD0000
/* 012AC 80AC3F4C 000E7840 */  sll     $t7, $t6,  1               
/* 012B0 80AC3F50 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 012B4 80AC3F54 004F1021 */  addu    $v0, $v0, $t7              
/* 012B8 80AC3F58 844288EC */  lh      $v0, %lo(D_80AC88EC)($v0)  
/* 012BC 80AC3F5C 84780034 */  lh      $t8, 0x0034($v1)           ## 8015E694
/* 012C0 80AC3F60 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 012C4 80AC3F64 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 012C8 80AC3F68 0302082A */  slt     $at, $t8, $v0              
/* 012CC 80AC3F6C 1020000B */  beq     $at, $zero, .L80AC3F9C     
/* 012D0 80AC3F70 00022023 */  subu    $a0, $zero, $v0            
/* 012D4 80AC3F74 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 012D8 80AC3F78 240570A8 */  addiu   $a1, $zero, 0x70A8         ## $a1 = 000070A8
/* 012DC 80AC3F7C 0C042DC8 */  jal     func_8010B720              
/* 012E0 80AC3F80 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 012E4 80AC3F84 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 012E8 80AC3F88 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 012EC 80AC3F8C 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 012F0 80AC3F90 A0D901EC */  sb      $t9, 0x01EC($a2)           ## 000001EC
/* 012F4 80AC3F94 10000031 */  beq     $zero, $zero, .L80AC405C   
/* 012F8 80AC3F98 A0C801EB */  sb      $t0, 0x01EB($a2)           ## 000001EB
.L80AC3F9C:
/* 012FC 80AC3F9C 00042400 */  sll     $a0, $a0, 16               
/* 01300 80AC3FA0 00042403 */  sra     $a0, $a0, 16               
/* 01304 80AC3FA4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01308 80AC3FA8 0C021CC3 */  jal     Rupees_ChangeBy              
/* 0130C 80AC3FAC AFA7001C */  sw      $a3, 0x001C($sp)           
/* 01310 80AC3FB0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01314 80AC3FB4 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 01318 80AC3FB8 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 0131C 80AC3FBC 90C201EB */  lbu     $v0, 0x01EB($a2)           ## 000001EB
/* 01320 80AC3FC0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01324 80AC3FC4 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 01328 80AC3FC8 1441000C */  bne     $v0, $at, .L80AC3FFC       
/* 0132C 80AC3FCC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01330 80AC3FD0 94690EE4 */  lhu     $t1, 0x0EE4($v1)           ## 8015F544
/* 01334 80AC3FD4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01338 80AC3FD8 240570A9 */  addiu   $a1, $zero, 0x70A9         ## $a1 = 000070A9
/* 0133C 80AC3FDC 352A8000 */  ori     $t2, $t1, 0x8000           ## $t2 = 00008000
/* 01340 80AC3FE0 A46A0EE4 */  sh      $t2, 0x0EE4($v1)           ## 8015F544
/* 01344 80AC3FE4 0C042DC8 */  jal     func_8010B720              
/* 01348 80AC3FE8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0134C 80AC3FEC 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01350 80AC3FF0 240B0006 */  addiu   $t3, $zero, 0x0006         ## $t3 = 00000006
/* 01354 80AC3FF4 1000001B */  beq     $zero, $zero, .L80AC4064   
/* 01358 80AC3FF8 A0CB01EB */  sb      $t3, 0x01EB($a2)           ## 000001EB
.L80AC3FFC:
/* 0135C 80AC3FFC 14400005 */  bne     $v0, $zero, .L80AC4014     
/* 01360 80AC4000 240570A7 */  addiu   $a1, $zero, 0x70A7         ## $a1 = 000070A7
/* 01364 80AC4004 946C0EE4 */  lhu     $t4, 0x0EE4($v1)           ## 00000EE4
/* 01368 80AC4008 358D1000 */  ori     $t5, $t4, 0x1000           ## $t5 = 00001000
/* 0136C 80AC400C 1000000E */  beq     $zero, $zero, .L80AC4048   
/* 01370 80AC4010 A46D0EE4 */  sh      $t5, 0x0EE4($v1)           ## 00000EE4
.L80AC4014:
/* 01374 80AC4014 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01378 80AC4018 54410006 */  bnel    $v0, $at, .L80AC4034       
/* 0137C 80AC401C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01380 80AC4020 946E0EE4 */  lhu     $t6, 0x0EE4($v1)           ## 00000EE4
/* 01384 80AC4024 35CF4000 */  ori     $t7, $t6, 0x4000           ## $t7 = 00004000
/* 01388 80AC4028 10000007 */  beq     $zero, $zero, .L80AC4048   
/* 0138C 80AC402C A46F0EE4 */  sh      $t7, 0x0EE4($v1)           ## 00000EE4
/* 01390 80AC4030 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L80AC4034:
/* 01394 80AC4034 14410004 */  bne     $v0, $at, .L80AC4048       
/* 01398 80AC4038 00000000 */  nop
/* 0139C 80AC403C 94780EE4 */  lhu     $t8, 0x0EE4($v1)           ## 00000EE4
/* 013A0 80AC4040 37192000 */  ori     $t9, $t8, 0x2000           ## $t9 = 00002000
/* 013A4 80AC4044 A4790EE4 */  sh      $t9, 0x0EE4($v1)           ## 00000EE4
.L80AC4048:
/* 013A8 80AC4048 0C042DC8 */  jal     func_8010B720              
/* 013AC 80AC404C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 013B0 80AC4050 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 013B4 80AC4054 24080008 */  addiu   $t0, $zero, 0x0008         ## $t0 = 00000008
/* 013B8 80AC4058 A0C801EB */  sb      $t0, 0x01EB($a2)           ## 000001EB
.L80AC405C:
/* 013BC 80AC405C 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 013C0 80AC4060 A4C901FC */  sh      $t1, 0x01FC($a2)           ## 000001FC
.L80AC4064:
/* 013C4 80AC4064 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 013C8 80AC4068 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 013CC 80AC406C 03E00008 */  jr      $ra                        
/* 013D0 80AC4070 00000000 */  nop
