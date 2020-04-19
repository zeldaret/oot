.late_rodata
glabel jtbl_80AAC55C
.word L80AAAF40
.word L80AAAF40
.word L80AAAF48
.word L80AAAF40
.word L80AAAF40
.word L80AAB010
.word L80AAAF40
.word L80AAAF40
.word L80AAAF40
.word L80AAAF40

.text
glabel func_80AAAF04
/* 00CB4 80AAAF04 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CB8 80AAAF08 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00CBC 80AAAF0C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CC0 80AAAF10 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00CC4 80AAAF14 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00CC8 80AAAF18 0C2AAB1E */  jal     func_80AAAC78              
/* 00CCC 80AAAF1C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00CD0 80AAAF20 2C41000A */  sltiu   $at, $v0, 0x000A           
/* 00CD4 80AAAF24 10200040 */  beq     $at, $zero, .L80AAB028     
/* 00CD8 80AAAF28 00027080 */  sll     $t6, $v0,  2               
/* 00CDC 80AAAF2C 3C0180AB */  lui     $at, %hi(jtbl_80AAC55C)       ## $at = 80AB0000
/* 00CE0 80AAAF30 002E0821 */  addu    $at, $at, $t6              
/* 00CE4 80AAAF34 8C2EC55C */  lw      $t6, %lo(jtbl_80AAC55C)($at)  
/* 00CE8 80AAAF38 01C00008 */  jr      $t6                        
/* 00CEC 80AAAF3C 00000000 */  nop
glabel L80AAAF40
/* 00CF0 80AAAF40 1000003A */  beq     $zero, $zero, .L80AAB02C   
/* 00CF4 80AAAF44 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
glabel L80AAAF48
/* 00CF8 80AAAF48 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 00CFC 80AAAF4C 24011028 */  addiu   $at, $zero, 0x1028         ## $at = 00001028
/* 00D00 80AAAF50 95E2010E */  lhu     $v0, 0x010E($t7)           ## 0000010E
/* 00D04 80AAAF54 1041000D */  beq     $v0, $at, .L80AAAF8C       
/* 00D08 80AAAF58 2401102F */  addiu   $at, $zero, 0x102F         ## $at = 0000102F
/* 00D0C 80AAAF5C 10410012 */  beq     $v0, $at, .L80AAAFA8       
/* 00D10 80AAAF60 24011033 */  addiu   $at, $zero, 0x1033         ## $at = 00001033
/* 00D14 80AAAF64 10410028 */  beq     $v0, $at, .L80AAB008       
/* 00D18 80AAAF68 24011060 */  addiu   $at, $zero, 0x1060         ## $at = 00001060
/* 00D1C 80AAAF6C 10410018 */  beq     $v0, $at, .L80AAAFD0       
/* 00D20 80AAAF70 24011067 */  addiu   $at, $zero, 0x1067         ## $at = 00001067
/* 00D24 80AAAF74 10410024 */  beq     $v0, $at, .L80AAB008       
/* 00D28 80AAAF78 24011070 */  addiu   $at, $zero, 0x1070         ## $at = 00001070
/* 00D2C 80AAAF7C 1041001B */  beq     $v0, $at, .L80AAAFEC       
/* 00D30 80AAAF80 00000000 */  nop
/* 00D34 80AAAF84 10000029 */  beq     $zero, $zero, .L80AAB02C   
/* 00D38 80AAAF88 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AAAF8C:
/* 00D3C 80AAAF8C 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00D40 80AAAF90 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00D44 80AAAF94 94580ED4 */  lhu     $t8, 0x0ED4($v0)           ## 8015F534
/* 00D48 80AAAF98 37198000 */  ori     $t9, $t8, 0x8000           ## $t9 = 00008000
/* 00D4C 80AAAF9C A4590ED4 */  sh      $t9, 0x0ED4($v0)           ## 8015F534
/* 00D50 80AAAFA0 10000022 */  beq     $zero, $zero, .L80AAB02C   
/* 00D54 80AAAFA4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AAAFA8:
/* 00D58 80AAAFA8 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00D5C 80AAAFAC 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00D60 80AAAFB0 94480ED4 */  lhu     $t0, 0x0ED4($v0)           ## 8015F534
/* 00D64 80AAAFB4 944A0EF8 */  lhu     $t2, 0x0EF8($v0)           ## 8015F558
/* 00D68 80AAAFB8 35090004 */  ori     $t1, $t0, 0x0004           ## $t1 = 00000004
/* 00D6C 80AAAFBC 354B1000 */  ori     $t3, $t2, 0x1000           ## $t3 = 00001000
/* 00D70 80AAAFC0 A4490ED4 */  sh      $t1, 0x0ED4($v0)           ## 8015F534
/* 00D74 80AAAFC4 A44B0EF8 */  sh      $t3, 0x0EF8($v0)           ## 8015F558
/* 00D78 80AAAFC8 10000018 */  beq     $zero, $zero, .L80AAB02C   
/* 00D7C 80AAAFCC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AAAFD0:
/* 00D80 80AAAFD0 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00D84 80AAAFD4 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00D88 80AAAFD8 944C0EFA */  lhu     $t4, 0x0EFA($v0)           ## 8015F55A
/* 00D8C 80AAAFDC 358D0020 */  ori     $t5, $t4, 0x0020           ## $t5 = 00000020
/* 00D90 80AAAFE0 A44D0EFA */  sh      $t5, 0x0EFA($v0)           ## 8015F55A
/* 00D94 80AAAFE4 10000011 */  beq     $zero, $zero, .L80AAB02C   
/* 00D98 80AAAFE8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AAAFEC:
/* 00D9C 80AAAFEC 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00DA0 80AAAFF0 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00DA4 80AAAFF4 944E0EFA */  lhu     $t6, 0x0EFA($v0)           ## 8015F55A
/* 00DA8 80AAAFF8 35CF0200 */  ori     $t7, $t6, 0x0200           ## $t7 = 00000200
/* 00DAC 80AAAFFC A44F0EFA */  sh      $t7, 0x0EFA($v0)           ## 8015F55A
/* 00DB0 80AAB000 1000000A */  beq     $zero, $zero, .L80AAB02C   
/* 00DB4 80AAB004 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AAB008:
/* 00DB8 80AAB008 10000008 */  beq     $zero, $zero, .L80AAB02C   
/* 00DBC 80AAB00C 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
glabel L80AAB010
/* 00DC0 80AAB010 0C041AF2 */  jal     func_80106BC8              
/* 00DC4 80AAB014 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00DC8 80AAB018 50400004 */  beql    $v0, $zero, .L80AAB02C     
/* 00DCC 80AAB01C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00DD0 80AAB020 10000002 */  beq     $zero, $zero, .L80AAB02C   
/* 00DD4 80AAB024 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L80AAB028:
/* 00DD8 80AAB028 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AAB02C:
/* 00DDC 80AAB02C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DE0 80AAB030 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00DE4 80AAB034 03E00008 */  jr      $ra                        
/* 00DE8 80AAB038 00000000 */  nop
