.late_rodata
glabel D_80A4B924
    .float 0.03

glabel D_80A4B928
    .float 9.99999974738e-06

glabel D_80A4B92C
    .float 0.001

.text
glabel func_80A49D0C
/* 00E4C 80A49D0C 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00E50 80A49D10 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00E54 80A49D14 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E58 80A49D18 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00E5C 80A49D1C AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00E60 80A49D20 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00E64 80A49D24 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00E68 80A49D28 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00E6C 80A49D2C 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00E70 80A49D30 0C01E123 */  jal     Math_ApproachZeroF
              
/* 00E74 80A49D34 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 00E78 80A49D38 860202CC */  lh      $v0, 0x02CC($s0)           ## 000002CC
/* 00E7C 80A49D3C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00E80 80A49D40 14410020 */  bne     $v0, $at, .L80A49DC4       
/* 00E84 80A49D44 00000000 */  nop
/* 00E88 80A49D48 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00E8C 80A49D4C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00E90 80A49D50 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 00E94 80A49D54 E7A40030 */  swc1    $f4, 0x0030($sp)           
/* 00E98 80A49D58 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00E9C 80A49D5C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00EA0 80A49D60 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 00EA4 80A49D64 46083280 */  add.s   $f10, $f6, $f8             
/* 00EA8 80A49D68 3C0680A5 */  lui     $a2, %hi(D_80A4B7FC)       ## $a2 = 80A50000
/* 00EAC 80A49D6C 24C6B7FC */  addiu   $a2, $a2, %lo(D_80A4B7FC)  ## $a2 = 80A4B7FC
/* 00EB0 80A49D70 8CCF0000 */  lw      $t7, 0x0000($a2)           ## 80A4B7FC
/* 00EB4 80A49D74 46105481 */  sub.s   $f18, $f10, $f16           
/* 00EB8 80A49D78 27A7003C */  addiu   $a3, $sp, 0x003C           ## $a3 = FFFFFFF4
/* 00EBC 80A49D7C 8CCE0004 */  lw      $t6, 0x0004($a2)           ## 80A4B800
/* 00EC0 80A49D80 3C0180A5 */  lui     $at, %hi(D_80A4B924)       ## $at = 80A50000
/* 00EC4 80A49D84 E7B20034 */  swc1    $f18, 0x0034($sp)          
/* 00EC8 80A49D88 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 00ECC 80A49D8C 24180028 */  addiu   $t8, $zero, 0x0028         ## $t8 = 00000028
/* 00ED0 80A49D90 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFE8
/* 00ED4 80A49D94 E7A40038 */  swc1    $f4, 0x0038($sp)           
/* 00ED8 80A49D98 ACEF0000 */  sw      $t7, 0x0000($a3)           ## FFFFFFF4
/* 00EDC 80A49D9C 8CCF0008 */  lw      $t7, 0x0008($a2)           ## 80A4B804
/* 00EE0 80A49DA0 ACEE0004 */  sw      $t6, 0x0004($a3)           ## FFFFFFF8
/* 00EE4 80A49DA4 ACEF0008 */  sw      $t7, 0x0008($a3)           ## FFFFFFFC
/* 00EE8 80A49DA8 C426B924 */  lwc1    $f6, %lo(D_80A4B924)($at)  
/* 00EEC 80A49DAC AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00EF0 80A49DB0 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00EF4 80A49DB4 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00EF8 80A49DB8 0C00A76F */  jal     EffectSsKFire_Spawn              
/* 00EFC 80A49DBC E7A60040 */  swc1    $f6, 0x0040($sp)           
/* 00F00 80A49DC0 860202CC */  lh      $v0, 0x02CC($s0)           ## 000002CC
.L80A49DC4:
/* 00F04 80A49DC4 14400027 */  bne     $v0, $zero, .L80A49E64     
/* 00F08 80A49DC8 26040054 */  addiu   $a0, $s0, 0x0054           ## $a0 = 00000054
/* 00F0C 80A49DCC 3C0180A5 */  lui     $at, %hi(D_80A4B928)       ## $at = 80A50000
/* 00F10 80A49DD0 C428B928 */  lwc1    $f8, %lo(D_80A4B928)($at)  
/* 00F14 80A49DD4 3C073B13 */  lui     $a3, 0x3B13                ## $a3 = 3B130000
/* 00F18 80A49DD8 34E774BC */  ori     $a3, $a3, 0x74BC           ## $a3 = 3B1374BC
/* 00F1C 80A49DDC 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00F20 80A49DE0 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00F24 80A49DE4 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 00F28 80A49DE8 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00F2C 80A49DEC 3C0180A5 */  lui     $at, %hi(D_80A4B92C)       ## $at = 80A50000
/* 00F30 80A49DF0 C42AB92C */  lwc1    $f10, %lo(D_80A4B92C)($at) 
/* 00F34 80A49DF4 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 00F38 80A49DF8 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 00F3C 80A49DFC 460A003E */  c.le.s  $f0, $f10                  
/* 00F40 80A49E00 24043878 */  addiu   $a0, $zero, 0x3878         ## $a0 = 00003878
/* 00F44 80A49E04 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 00F48 80A49E08 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00F4C 80A49E0C 45000015 */  bc1f    .L80A49E64                 
/* 00F50 80A49E10 3C0A8013 */  lui     $t2, %hi(D_801333E8)
/* 00F54 80A49E14 8603001C */  lh      $v1, 0x001C($s0)           ## 0000001C
/* 00F58 80A49E18 254A33E8 */  addiu   $t2, %lo(D_801333E8)
/* 00F5C 80A49E1C 28610006 */  slti    $at, $v1, 0x0006           
/* 00F60 80A49E20 50200007 */  beql    $at, $zero, .L80A49E40     
/* 00F64 80A49E24 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00F68 80A49E28 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
/* 00F6C 80A49E2C 00034040 */  sll     $t0, $v1,  1               
/* 00F70 80A49E30 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 00F74 80A49E34 00484821 */  addu    $t1, $v0, $t0              
/* 00F78 80A49E38 A53901A4 */  sh      $t9, 0x01A4($t1)           ## 000001A4
/* 00F7C 80A49E3C AFA70010 */  sw      $a3, 0x0010($sp)           
.L80A49E40:
/* 00F80 80A49E40 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00F84 80A49E44 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 00F88 80A49E48 0C00B55C */  jal     Actor_Kill
              
/* 00F8C 80A49E4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F90 80A49E50 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00F94 80A49E54 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00F98 80A49E58 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 00F9C 80A49E5C 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00FA0 80A49E60 24070030 */  addiu   $a3, $zero, 0x0030         ## $a3 = 00000030
.L80A49E64:
/* 00FA4 80A49E64 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 00FA8 80A49E68 A60B02C4 */  sh      $t3, 0x02C4($s0)           ## 000002C4
/* 00FAC 80A49E6C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00FB0 80A49E70 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00FB4 80A49E74 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00FB8 80A49E78 03E00008 */  jr      $ra                        
/* 00FBC 80A49E7C 00000000 */  nop
