glabel func_8086CB8C
/* 00EEC 8086CB8C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00EF0 8086CB90 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00EF4 8086CB94 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00EF8 8086CB98 8482016A */  lh      $v0, 0x016A($a0)           ## 0000016A
/* 00EFC 8086CB9C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00F00 8086CBA0 10400003 */  beq     $v0, $zero, .L8086CBB0     
/* 00F04 8086CBA4 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00F08 8086CBA8 A48E016A */  sh      $t6, 0x016A($a0)           ## 0000016A
/* 00F0C 8086CBAC 8482016A */  lh      $v0, 0x016A($a0)           ## 0000016A
.L8086CBB0:
/* 00F10 8086CBB0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00F14 8086CBB4 3C018087 */  lui     $at, %hi(D_8086CE6C)       ## $at = 80870000
/* 00F18 8086CBB8 C428CE6C */  lwc1    $f8, %lo(D_8086CE6C)($at)  
/* 00F1C 8086CBBC 468021A0 */  cvt.s.w $f6, $f4                   
/* 00F20 8086CBC0 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00F24 8086CBC4 46083302 */  mul.s   $f12, $f6, $f8             
/* 00F28 8086CBC8 0C041184 */  jal     cosf
              
/* 00F2C 8086CBCC 00000000 */  nop
/* 00F30 8086CBD0 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00F34 8086CBD4 44818000 */  mtc1    $at, $f16                  ## $f16 = 200.00
/* 00F38 8086CBD8 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00F3C 8086CBDC 2405289F */  addiu   $a1, $zero, 0x289F         ## $a1 = 0000289F
/* 00F40 8086CBE0 46100482 */  mul.s   $f18, $f0, $f16            
/* 00F44 8086CBE4 C4EA000C */  lwc1    $f10, 0x000C($a3)          ## 0000000C
/* 00F48 8086CBE8 84EF016A */  lh      $t7, 0x016A($a3)           ## 0000016A
/* 00F4C 8086CBEC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00F50 8086CBF0 46125101 */  sub.s   $f4, $f10, $f18            
/* 00F54 8086CBF4 15E0000E */  bne     $t7, $zero, .L8086CC30     
/* 00F58 8086CBF8 E4E40028 */  swc1    $f4, 0x0028($a3)           ## 00000028
/* 00F5C 8086CBFC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00F60 8086CC00 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00F64 8086CC04 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00F68 8086CC08 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00F6C 8086CC0C 3C188087 */  lui     $t8, %hi(func_8086C868)    ## $t8 = 80870000
/* 00F70 8086CC10 2718C868 */  addiu   $t8, $t8, %lo(func_8086C868) ## $t8 = 8086C868
/* 00F74 8086CC14 ACF80164 */  sw      $t8, 0x0164($a3)           ## 00000164
/* 00F78 8086CC18 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00F7C 8086CC1C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00F80 8086CC20 0C0301E3 */  jal     func_800C078C              
/* 00F84 8086CC24 2406FFFF */  addiu   $a2, $zero, 0xFFFF         ## $a2 = FFFFFFFF
/* 00F88 8086CC28 10000004 */  beq     $zero, $zero, .L8086CC3C   
/* 00F8C 8086CC2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086CC30:
/* 00F90 8086CC30 0C00BE5D */  jal     func_8002F974              
/* 00F94 8086CC34 24052090 */  addiu   $a1, $zero, 0x2090         ## $a1 = 00002090
/* 00F98 8086CC38 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086CC3C:
/* 00F9C 8086CC3C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00FA0 8086CC40 03E00008 */  jr      $ra                        
/* 00FA4 8086CC44 00000000 */  nop


