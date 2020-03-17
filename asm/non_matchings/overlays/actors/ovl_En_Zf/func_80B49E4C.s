glabel func_80B49E4C
/* 05DFC 80B49E4C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 05E00 80B49E50 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 05E04 80B49E54 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 05E08 80B49E58 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 05E0C 80B49E5C A7A0001C */  sh      $zero, 0x001C($sp)         
/* 05E10 80B49E60 0C00CDE0 */  jal     func_80033780              
/* 05E14 80B49E64 3C064416 */  lui     $a2, 0x4416                ## $a2 = 44160000
/* 05E18 80B49E68 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 05E1C 80B49E6C 10400081 */  beq     $v0, $zero, .L80B4A074     
/* 05E20 80B49E70 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 05E24 80B49E74 0C00B69E */  jal     func_8002DA78              
/* 05E28 80B49E78 00000000 */  nop
/* 05E2C 80B49E7C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 05E30 80B49E80 3C06C28C */  lui     $a2, 0xC28C                ## $a2 = C28C0000
/* 05E34 80B49E84 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 05E38 80B49E88 004F3823 */  subu    $a3, $v0, $t7              
/* 05E3C 80B49E8C 25F83FFF */  addiu   $t8, $t7, 0x3FFF           ## $t8 = 00003FFF
/* 05E40 80B49E90 00073C00 */  sll     $a3, $a3, 16               
/* 05E44 80B49E94 A4980032 */  sh      $t8, 0x0032($a0)           ## 00000032
/* 05E48 80B49E98 00073C03 */  sra     $a3, $a3, 16               
/* 05E4C 80B49E9C A7A70022 */  sh      $a3, 0x0022($sp)           
/* 05E50 80B49EA0 A7A00020 */  sh      $zero, 0x0020($sp)         
/* 05E54 80B49EA4 0C2D1016 */  jal     func_80B44058              
/* 05E58 80B49EA8 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 05E5C 80B49EAC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 05E60 80B49EB0 87A70022 */  lh      $a3, 0x0022($sp)           
/* 05E64 80B49EB4 10400002 */  beq     $v0, $zero, .L80B49EC0     
/* 05E68 80B49EB8 87A80020 */  lh      $t0, 0x0020($sp)           
/* 05E6C 80B49EBC 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
.L80B49EC0:
/* 05E70 80B49EC0 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 05E74 80B49EC4 3C06428C */  lui     $a2, 0x428C                ## $a2 = 428C0000
/* 05E78 80B49EC8 A7A70022 */  sh      $a3, 0x0022($sp)           
/* 05E7C 80B49ECC 0C2D1016 */  jal     func_80B44058              
/* 05E80 80B49ED0 A7A80020 */  sh      $t0, 0x0020($sp)           
/* 05E84 80B49ED4 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 05E88 80B49ED8 87A70022 */  lh      $a3, 0x0022($sp)           
/* 05E8C 80B49EDC 10400004 */  beq     $v0, $zero, .L80B49EF0     
/* 05E90 80B49EE0 87A80020 */  lh      $t0, 0x0020($sp)           
/* 05E94 80B49EE4 35080002 */  ori     $t0, $t0, 0x0002           ## $t0 = 00000002
/* 05E98 80B49EE8 00084400 */  sll     $t0, $t0, 16               
/* 05E9C 80B49EEC 00084403 */  sra     $t0, $t0, 16               
.L80B49EF0:
/* 05EA0 80B49EF0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 05EA4 80B49EF4 00071023 */  subu    $v0, $zero, $a3            
/* 05EA8 80B49EF8 04E00003 */  bltz    $a3, .L80B49F08            
/* 05EAC 80B49EFC E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 05EB0 80B49F00 10000001 */  beq     $zero, $zero, .L80B49F08   
/* 05EB4 80B49F04 00E01025 */  or      $v0, $a3, $zero            ## $v0 = 00000000
.L80B49F08:
/* 05EB8 80B49F08 28412000 */  slti    $at, $v0, 0x2000           
/* 05EBC 80B49F0C 14200008 */  bne     $at, $zero, .L80B49F30     
/* 05EC0 80B49F10 00000000 */  nop
/* 05EC4 80B49F14 04E00003 */  bltz    $a3, .L80B49F24            
/* 05EC8 80B49F18 00071023 */  subu    $v0, $zero, $a3            
/* 05ECC 80B49F1C 10000001 */  beq     $zero, $zero, .L80B49F24   
/* 05ED0 80B49F20 00E01025 */  or      $v0, $a3, $zero            ## $v0 = 00000000
.L80B49F24:
/* 05ED4 80B49F24 28416000 */  slti    $at, $v0, 0x6000           
/* 05ED8 80B49F28 14200021 */  bne     $at, $zero, .L80B49FB0     
/* 05EDC 80B49F2C 00000000 */  nop
.L80B49F30:
/* 05EE0 80B49F30 1500000D */  bne     $t0, $zero, .L80B49F68     
/* 05EE4 80B49F34 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 05EE8 80B49F38 8FB90028 */  lw      $t9, 0x0028($sp)           
/* 05EEC 80B49F3C 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 05EF0 80B49F40 2403FFFA */  addiu   $v1, $zero, 0xFFFA         ## $v1 = FFFFFFFA
/* 05EF4 80B49F44 01394821 */  addu    $t1, $t1, $t9              
/* 05EF8 80B49F48 8D291DE4 */  lw      $t1, 0x1DE4($t1)           ## 00011DE4
/* 05EFC 80B49F4C 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 05F00 80B49F50 11400003 */  beq     $t2, $zero, .L80B49F60     
/* 05F04 80B49F54 00000000 */  nop
/* 05F08 80B49F58 10000001 */  beq     $zero, $zero, .L80B49F60   
/* 05F0C 80B49F5C 24030006 */  addiu   $v1, $zero, 0x0006         ## $v1 = 00000006
.L80B49F60:
/* 05F10 80B49F60 10000011 */  beq     $zero, $zero, .L80B49FA8   
/* 05F14 80B49F64 A7A3001E */  sh      $v1, 0x001E($sp)           
.L80B49F68:
/* 05F18 80B49F68 11010009 */  beq     $t0, $at, .L80B49F90       
/* 05F1C 80B49F6C 24030006 */  addiu   $v1, $zero, 0x0006         ## $v1 = 00000006
/* 05F20 80B49F70 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 05F24 80B49F74 11010008 */  beq     $t0, $at, .L80B49F98       
/* 05F28 80B49F78 2403FFFA */  addiu   $v1, $zero, 0xFFFA         ## $v1 = FFFFFFFA
/* 05F2C 80B49F7C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 05F30 80B49F80 11010007 */  beq     $t0, $at, .L80B49FA0       
/* 05F34 80B49F84 240B0005 */  addiu   $t3, $zero, 0x0005         ## $t3 = 00000005
/* 05F38 80B49F88 10000007 */  beq     $zero, $zero, .L80B49FA8   
/* 05F3C 80B49F8C 00000000 */  nop
.L80B49F90:
/* 05F40 80B49F90 10000005 */  beq     $zero, $zero, .L80B49FA8   
/* 05F44 80B49F94 A7A3001E */  sh      $v1, 0x001E($sp)           
.L80B49F98:
/* 05F48 80B49F98 10000003 */  beq     $zero, $zero, .L80B49FA8   
/* 05F4C 80B49F9C A7A3001E */  sh      $v1, 0x001E($sp)           
.L80B49FA0:
/* 05F50 80B49FA0 A7AB001C */  sh      $t3, 0x001C($sp)           
/* 05F54 80B49FA4 A7A0001E */  sh      $zero, 0x001E($sp)         
.L80B49FA8:
/* 05F58 80B49FA8 10000027 */  beq     $zero, $zero, .L80B4A048   
/* 05F5C 80B49FAC 87A3001E */  lh      $v1, 0x001E($sp)           
.L80B49FB0:
/* 05F60 80B49FB0 04E00003 */  bltz    $a3, .L80B49FC0            
/* 05F64 80B49FB4 00071023 */  subu    $v0, $zero, $a3            
/* 05F68 80B49FB8 10000001 */  beq     $zero, $zero, .L80B49FC0   
/* 05F6C 80B49FBC 00E01025 */  or      $v0, $a3, $zero            ## $v0 = 00000000
.L80B49FC0:
/* 05F70 80B49FC0 28415FFF */  slti    $at, $v0, 0x5FFF           
/* 05F74 80B49FC4 50200020 */  beql    $at, $zero, .L80B4A048     
/* 05F78 80B49FC8 87A3001E */  lh      $v1, 0x001E($sp)           
/* 05F7C 80B49FCC 1500000D */  bne     $t0, $zero, .L80B4A004     
/* 05F80 80B49FD0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 05F84 80B49FD4 8FAC0028 */  lw      $t4, 0x0028($sp)           
/* 05F88 80B49FD8 3C0D0001 */  lui     $t5, 0x0001                ## $t5 = 00010000
/* 05F8C 80B49FDC 2403FFFA */  addiu   $v1, $zero, 0xFFFA         ## $v1 = FFFFFFFA
/* 05F90 80B49FE0 01AC6821 */  addu    $t5, $t5, $t4              
/* 05F94 80B49FE4 8DAD1DE4 */  lw      $t5, 0x1DE4($t5)           ## 00011DE4
/* 05F98 80B49FE8 31AE0001 */  andi    $t6, $t5, 0x0001           ## $t6 = 00000000
/* 05F9C 80B49FEC 11C00003 */  beq     $t6, $zero, .L80B49FFC     
/* 05FA0 80B49FF0 00000000 */  nop
/* 05FA4 80B49FF4 10000001 */  beq     $zero, $zero, .L80B49FFC   
/* 05FA8 80B49FF8 24030006 */  addiu   $v1, $zero, 0x0006         ## $v1 = 00000006
.L80B49FFC:
/* 05FAC 80B49FFC 10000011 */  beq     $zero, $zero, .L80B4A044   
/* 05FB0 80B4A000 A7A3001E */  sh      $v1, 0x001E($sp)           
.L80B4A004:
/* 05FB4 80B4A004 11010009 */  beq     $t0, $at, .L80B4A02C       
/* 05FB8 80B4A008 24030006 */  addiu   $v1, $zero, 0x0006         ## $v1 = 00000006
/* 05FBC 80B4A00C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 05FC0 80B4A010 11010008 */  beq     $t0, $at, .L80B4A034       
/* 05FC4 80B4A014 2403FFFA */  addiu   $v1, $zero, 0xFFFA         ## $v1 = FFFFFFFA
/* 05FC8 80B4A018 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 05FCC 80B4A01C 11010007 */  beq     $t0, $at, .L80B4A03C       
/* 05FD0 80B4A020 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 05FD4 80B4A024 10000008 */  beq     $zero, $zero, .L80B4A048   
/* 05FD8 80B4A028 87A3001E */  lh      $v1, 0x001E($sp)           
.L80B4A02C:
/* 05FDC 80B4A02C 10000005 */  beq     $zero, $zero, .L80B4A044   
/* 05FE0 80B4A030 A7A3001E */  sh      $v1, 0x001E($sp)           
.L80B4A034:
/* 05FE4 80B4A034 10000003 */  beq     $zero, $zero, .L80B4A044   
/* 05FE8 80B4A038 A7A3001E */  sh      $v1, 0x001E($sp)           
.L80B4A03C:
/* 05FEC 80B4A03C A7AF001C */  sh      $t7, 0x001C($sp)           
/* 05FF0 80B4A040 A7A0001E */  sh      $zero, 0x001E($sp)         
.L80B4A044:
/* 05FF4 80B4A044 87A3001E */  lh      $v1, 0x001E($sp)           
.L80B4A048:
/* 05FF8 80B4A048 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 05FFC 80B4A04C 44833000 */  mtc1    $v1, $f6                   ## $f6 = NaN
/* 06000 80B4A050 00000000 */  nop
/* 06004 80B4A054 46803220 */  cvt.s.w $f8, $f6                   
/* 06008 80B4A058 E4880408 */  swc1    $f8, 0x0408($a0)           ## 00000408
/* 0600C 80B4A05C 87B8001C */  lh      $t8, 0x001C($sp)           
/* 06010 80B4A060 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 06014 80B4A064 00000000 */  nop
/* 06018 80B4A068 46805420 */  cvt.s.w $f16, $f10                 
/* 0601C 80B4A06C 10000002 */  beq     $zero, $zero, .L80B4A078   
/* 06020 80B4A070 E490040C */  swc1    $f16, 0x040C($a0)          ## 0000040C
.L80B4A074:
/* 06024 80B4A074 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B4A078:
/* 06028 80B4A078 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0602C 80B4A07C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 06030 80B4A080 03E00008 */  jr      $ra                        
/* 06034 80B4A084 00000000 */  nop
/* 06038 80B4A088 00000000 */  nop
/* 0603C 80B4A08C 00000000 */  nop

