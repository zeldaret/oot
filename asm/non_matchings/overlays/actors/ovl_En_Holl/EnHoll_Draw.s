glabel EnHoll_Draw
/* 00CB0 80A598C0 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00CB4 80A598C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CB8 80A598C8 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00CBC 80A598CC AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00CC0 80A598D0 848F014C */  lh      $t7, 0x014C($a0)           ## 0000014C
/* 00CC4 80A598D4 3C0680A6 */  lui     $a2, %hi(D_80A59AF0)       ## $a2 = 80A60000
/* 00CC8 80A598D8 24C69AF0 */  addiu   $a2, $a2, %lo(D_80A59AF0)  ## $a2 = 80A59AF0
/* 00CCC 80A598DC 11E0004C */  beq     $t7, $zero, .L80A59A10     
/* 00CD0 80A598E0 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFE0
/* 00CD4 80A598E4 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00CD8 80A598E8 24070325 */  addiu   $a3, $zero, 0x0325         ## $a3 = 00000325
/* 00CDC 80A598EC 0C031AB1 */  jal     Graph_OpenDisps              
/* 00CE0 80A598F0 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 00CE4 80A598F4 8FB90048 */  lw      $t9, 0x0048($sp)           
/* 00CE8 80A598F8 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00CEC 80A598FC 8FA90038 */  lw      $t1, 0x0038($sp)           
/* 00CF0 80A59900 8728014C */  lh      $t0, 0x014C($t9)           ## 0000014C
/* 00CF4 80A59904 8FAA0038 */  lw      $t2, 0x0038($sp)           
/* 00CF8 80A59908 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00CFC 80A5990C 55010005 */  bnel    $t0, $at, .L80A59924       
/* 00D00 80A59910 8D4702D0 */  lw      $a3, 0x02D0($t2)           ## 000002D0
/* 00D04 80A59914 8D2702C0 */  lw      $a3, 0x02C0($t1)           ## 000002C0
/* 00D08 80A59918 10000002 */  beq     $zero, $zero, .L80A59924   
/* 00D0C 80A5991C 24050025 */  addiu   $a1, $zero, 0x0025         ## $a1 = 00000025
/* 00D10 80A59920 8D4702D0 */  lw      $a3, 0x02D0($t2)           ## 000002D0
.L80A59924:
/* 00D14 80A59924 0C024DDD */  jal     Gfx_CallSetupDL              
/* 00D18 80A59928 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00D1C 80A5992C 8FAB0048 */  lw      $t3, 0x0048($sp)           
/* 00D20 80A59930 00403825 */  or      $a3, $v0, $zero            ## $a3 = 00000000
/* 00D24 80A59934 3C0180A6 */  lui     $at, %hi(D_80A59B2C)       ## $at = 80A60000
/* 00D28 80A59938 916C014E */  lbu     $t4, 0x014E($t3)           ## 0000014E
/* 00D2C 80A5993C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00D30 80A59940 55800006 */  bnel    $t4, $zero, .L80A5995C     
/* 00D34 80A59944 3C0DDA38 */  lui     $t5, 0xDA38                ## $t5 = DA380000
/* 00D38 80A59948 C42C9B2C */  lwc1    $f12, %lo(D_80A59B2C)($at) 
/* 00D3C 80A5994C 0C034348 */  jal     Matrix_RotateY              
/* 00D40 80A59950 AFA20040 */  sw      $v0, 0x0040($sp)           
/* 00D44 80A59954 8FA70040 */  lw      $a3, 0x0040($sp)           
/* 00D48 80A59958 3C0DDA38 */  lui     $t5, 0xDA38                ## $t5 = DA380000
.L80A5995C:
/* 00D4C 80A5995C 35AD0003 */  ori     $t5, $t5, 0x0003           ## $t5 = DA380003
/* 00D50 80A59960 00E01825 */  or      $v1, $a3, $zero            ## $v1 = 00000000
/* 00D54 80A59964 AC6D0000 */  sw      $t5, 0x0000($v1)           ## 00000000
/* 00D58 80A59968 8FAE004C */  lw      $t6, 0x004C($sp)           
/* 00D5C 80A5996C 24E70008 */  addiu   $a3, $a3, 0x0008           ## $a3 = 00000008
/* 00D60 80A59970 3C0580A6 */  lui     $a1, %hi(D_80A59B00)       ## $a1 = 80A60000
/* 00D64 80A59974 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 00D68 80A59978 AFA70040 */  sw      $a3, 0x0040($sp)           
/* 00D6C 80A5997C AFA30024 */  sw      $v1, 0x0024($sp)           
/* 00D70 80A59980 24A59B00 */  addiu   $a1, $a1, %lo(D_80A59B00)  ## $a1 = 80A59B00
/* 00D74 80A59984 0C0346A2 */  jal     Matrix_NewMtx              
/* 00D78 80A59988 24060338 */  addiu   $a2, $zero, 0x0338         ## $a2 = 00000338
/* 00D7C 80A5998C 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 00D80 80A59990 8FA70040 */  lw      $a3, 0x0040($sp)           
/* 00D84 80A59994 3C0FFA00 */  lui     $t7, 0xFA00                ## $t7 = FA000000
/* 00D88 80A59998 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00D8C 80A5999C 00E01025 */  or      $v0, $a3, $zero            ## $v0 = 00000000
/* 00D90 80A599A0 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00D94 80A599A4 8FB80048 */  lw      $t8, 0x0048($sp)           
/* 00D98 80A599A8 24E70008 */  addiu   $a3, $a3, 0x0008           ## $a3 = 00000008
/* 00D9C 80A599AC 3C0A80A6 */  lui     $t2, %hi(D_80A59AC8)       ## $t2 = 80A60000
/* 00DA0 80A599B0 9308014D */  lbu     $t0, 0x014D($t8)           ## 0000014D
/* 00DA4 80A599B4 254A9AC8 */  addiu   $t2, $t2, %lo(D_80A59AC8)  ## $t2 = 80A59AC8
/* 00DA8 80A599B8 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 00DAC 80A599BC AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 00DB0 80A599C0 00E01025 */  or      $v0, $a3, $zero            ## $v0 = 00000008
/* 00DB4 80A599C4 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000008
/* 00DB8 80A599C8 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 0000000C
/* 00DBC 80A599CC 8FAB0048 */  lw      $t3, 0x0048($sp)           
/* 00DC0 80A599D0 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00DC4 80A599D4 3C0680A6 */  lui     $a2, %hi(D_80A59B10)       ## $a2 = 80A60000
/* 00DC8 80A599D8 856C014C */  lh      $t4, 0x014C($t3)           ## 0000014C
/* 00DCC 80A599DC 24E70008 */  addiu   $a3, $a3, 0x0008           ## $a3 = 00000010
/* 00DD0 80A599E0 24C69B10 */  addiu   $a2, $a2, %lo(D_80A59B10)  ## $a2 = 80A59B10
/* 00DD4 80A599E4 15810004 */  bne     $t4, $at, .L80A599F8       
/* 00DD8 80A599E8 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFE0
/* 00DDC 80A599EC 8FAD0038 */  lw      $t5, 0x0038($sp)           
/* 00DE0 80A599F0 10000003 */  beq     $zero, $zero, .L80A59A00   
/* 00DE4 80A599F4 ADA702C0 */  sw      $a3, 0x02C0($t5)           ## 000002C0
.L80A599F8:
/* 00DE8 80A599F8 8FAE0038 */  lw      $t6, 0x0038($sp)           
/* 00DEC 80A599FC ADC702D0 */  sw      $a3, 0x02D0($t6)           ## 000002D0
.L80A59A00:
/* 00DF0 80A59A00 8FAF004C */  lw      $t7, 0x004C($sp)           
/* 00DF4 80A59A04 2407033F */  addiu   $a3, $zero, 0x033F         ## $a3 = 0000033F
/* 00DF8 80A59A08 0C031AD5 */  jal     Graph_CloseDisps              
/* 00DFC 80A59A0C 8DE50000 */  lw      $a1, 0x0000($t7)           ## FA000000
.L80A59A10:
/* 00E00 80A59A10 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E04 80A59A14 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00E08 80A59A18 03E00008 */  jr      $ra                        
/* 00E0C 80A59A1C 00000000 */  nop

