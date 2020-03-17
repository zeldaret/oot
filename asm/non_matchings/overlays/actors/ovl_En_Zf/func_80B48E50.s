glabel func_80B48E50
/* 04E00 80B48E50 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04E04 80B48E54 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 04E08 80B48E58 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 04E0C 80B48E5C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 04E10 80B48E60 94820088 */  lhu     $v0, 0x0088($a0)           ## 00000088
/* 04E14 80B48E64 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04E18 80B48E68 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04E1C 80B48E6C 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 04E20 80B48E70 11C00004 */  beq     $t6, $zero, .L80B48E84     
/* 04E24 80B48E74 3C073E19 */  lui     $a3, 0x3E19                ## $a3 = 3E190000
/* 04E28 80B48E78 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 04E2C 80B48E7C 94820088 */  lhu     $v0, 0x0088($a0)           ## 00000088
/* 04E30 80B48E80 E4800068 */  swc1    $f0, 0x0068($a0)           ## 00000068
.L80B48E84:
/* 04E34 80B48E84 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 04E38 80B48E88 304F0001 */  andi    $t7, $v0, 0x0001           ## $t7 = 00000000
/* 04E3C 80B48E8C 11E00006 */  beq     $t7, $zero, .L80B48EA8     
/* 04E40 80B48E90 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 04E44 80B48E94 44050000 */  mfc1    $a1, $f0                   
/* 04E48 80B48E98 34E7999A */  ori     $a3, $a3, 0x999A           ## $a3 = 3E19999A
/* 04E4C 80B48E9C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 04E50 80B48EA0 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 04E54 80B48EA4 AE0003E4 */  sw      $zero, 0x03E4($s0)         ## 000003E4
.L80B48EA8:
/* 04E58 80B48EA8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 04E5C 80B48EAC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 04E60 80B48EB0 50400027 */  beql    $v0, $zero, .L80B48F50     
/* 04E64 80B48EB4 C6040164 */  lwc1    $f4, 0x0164($s0)           ## 00000164
/* 04E68 80B48EB8 92180002 */  lbu     $t8, 0x0002($s0)           ## 00000002
/* 04E6C 80B48EBC 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 04E70 80B48EC0 53010019 */  beql    $t8, $at, .L80B48F28       
/* 04E74 80B48EC4 92020404 */  lbu     $v0, 0x0404($s0)           ## 00000404
/* 04E78 80B48EC8 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 04E7C 80B48ECC 3C0880B5 */  lui     $t0, %hi(D_80B4A1B4)       ## $t0 = 80B50000
/* 04E80 80B48ED0 2409FFFF */  addiu   $t1, $zero, 0xFFFF         ## $t1 = FFFFFFFF
/* 04E84 80B48ED4 0720000C */  bltz    $t9, .L80B48F08            
/* 04E88 80B48ED8 00000000 */  nop
/* 04E8C 80B48EDC 8508A1B4 */  lh      $t0, %lo(D_80B4A1B4)($t0)  
/* 04E90 80B48EE0 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 04E94 80B48EE4 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 04E98 80B48EE8 15010007 */  bne     $t0, $at, .L80B48F08       
/* 04E9C 80B48EEC 00000000 */  nop
/* 04EA0 80B48EF0 0C00B2DD */  jal     Flags_SetSwitch
              
/* 04EA4 80B48EF4 860503FC */  lh      $a1, 0x03FC($s0)           ## 000003FC
/* 04EA8 80B48EF8 0C03D6D6 */  jal     func_800F5B58              
/* 04EAC 80B48EFC 00000000 */  nop
/* 04EB0 80B48F00 10000004 */  beq     $zero, $zero, .L80B48F14   
/* 04EB4 80B48F04 8FA4002C */  lw      $a0, 0x002C($sp)           
.L80B48F08:
/* 04EB8 80B48F08 3C0180B5 */  lui     $at, %hi(D_80B4A1B4)       ## $at = 80B50000
/* 04EBC 80B48F0C A429A1B4 */  sh      $t1, %lo(D_80B4A1B4)($at)  
/* 04EC0 80B48F10 8FA4002C */  lw      $a0, 0x002C($sp)           
.L80B48F14:
/* 04EC4 80B48F14 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 04EC8 80B48F18 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
/* 04ECC 80B48F1C 0C00CDD2 */  jal     Actor_ChangeType
              
/* 04ED0 80B48F20 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 04ED4 80B48F24 92020404 */  lbu     $v0, 0x0404($s0)           ## 00000404
.L80B48F28:
/* 04ED8 80B48F28 10400004 */  beq     $v0, $zero, .L80B48F3C     
/* 04EDC 80B48F2C 244CFFFB */  addiu   $t4, $v0, 0xFFFB           ## $t4 = FFFFFFFB
/* 04EE0 80B48F30 A20C0404 */  sb      $t4, 0x0404($s0)           ## 00000404
/* 04EE4 80B48F34 10000011 */  beq     $zero, $zero, .L80B48F7C   
/* 04EE8 80B48F38 A20C00C8 */  sb      $t4, 0x00C8($s0)           ## 000000C8
.L80B48F3C:
/* 04EEC 80B48F3C 0C00B55C */  jal     Actor_Kill
              
/* 04EF0 80B48F40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04EF4 80B48F44 1000000E */  beq     $zero, $zero, .L80B48F80   
/* 04EF8 80B48F48 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 04EFC 80B48F4C C6040164 */  lwc1    $f4, 0x0164($s0)           ## 00000164
.L80B48F50:
/* 04F00 80B48F50 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 04F04 80B48F54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04F08 80B48F58 4600218D */  trunc.w.s $f6, $f4                   
/* 04F0C 80B48F5C 44023000 */  mfc1    $v0, $f6                   
/* 04F10 80B48F60 00000000 */  nop
/* 04F14 80B48F64 10410003 */  beq     $v0, $at, .L80B48F74       
/* 04F18 80B48F68 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
/* 04F1C 80B48F6C 54410004 */  bnel    $v0, $at, .L80B48F80       
/* 04F20 80B48F70 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B48F74:
/* 04F24 80B48F74 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 04F28 80B48F78 2405387A */  addiu   $a1, $zero, 0x387A         ## $a1 = 0000387A
.L80B48F7C:
/* 04F2C 80B48F7C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B48F80:
/* 04F30 80B48F80 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 04F34 80B48F84 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 04F38 80B48F88 03E00008 */  jr      $ra                        
/* 04F3C 80B48F8C 00000000 */  nop


