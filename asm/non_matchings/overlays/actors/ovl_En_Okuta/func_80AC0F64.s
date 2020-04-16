.late_rodata
glabel D_80AC2900
    .float 0.01

.text
glabel func_80AC0F64
/* 00904 80AC0F64 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00908 80AC0F68 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0090C 80AC0F6C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00910 80AC0F70 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00914 80AC0F74 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00918 80AC0F78 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0091C 80AC0F7C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00920 80AC0F80 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00924 80AC0F84 10400010 */  beq     $v0, $zero, .L80AC0FC8     
/* 00928 80AC0F88 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 0092C 80AC0F8C 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 00930 80AC0F90 44813000 */  mtc1    $at, $f6                   ## $f6 = 160.00
/* 00934 80AC0F94 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 00938 80AC0F98 4606203C */  c.lt.s  $f4, $f6                   
/* 0093C 80AC0F9C 00000000 */  nop
/* 00940 80AC0FA0 45000005 */  bc1f    .L80AC0FB8                 
/* 00944 80AC0FA4 00000000 */  nop
/* 00948 80AC0FA8 0C2B02C9 */  jal     func_80AC0B24              
/* 0094C 80AC0FAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00950 80AC0FB0 10000020 */  beq     $zero, $zero, .L80AC1034   
/* 00954 80AC0FB4 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80AC0FB8:
/* 00958 80AC0FB8 0C2B02D8 */  jal     func_80AC0B60              
/* 0095C 80AC0FBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00960 80AC0FC0 1000001C */  beq     $zero, $zero, .L80AC1034   
/* 00964 80AC0FC4 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80AC0FC8:
/* 00968 80AC0FC8 C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 0096C 80AC0FCC 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.00
/* 00970 80AC0FD0 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 00974 80AC0FD4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00978 80AC0FD8 4608003E */  c.le.s  $f0, $f8                   
/* 0097C 80AC0FDC 00000000 */  nop
/* 00980 80AC0FE0 4500000C */  bc1f    .L80AC1014                 
/* 00984 80AC0FE4 00000000 */  nop
/* 00988 80AC0FE8 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.25
/* 0098C 80AC0FEC 3C0180AC */  lui     $at, %hi(D_80AC2900)       ## $at = 80AC0000
/* 00990 80AC0FF0 C4322900 */  lwc1    $f18, %lo(D_80AC2900)($at) 
/* 00994 80AC0FF4 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00998 80AC0FF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0099C 80AC0FFC 46128102 */  mul.s   $f4, $f16, $f18            
/* 009A0 80AC1000 44052000 */  mfc1    $a1, $f4                   
/* 009A4 80AC1004 0C00B58B */  jal     Actor_SetScale
              
/* 009A8 80AC1008 00000000 */  nop
/* 009AC 80AC100C 10000009 */  beq     $zero, $zero, .L80AC1034   
/* 009B0 80AC1010 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80AC1014:
/* 009B4 80AC1014 0C0295B2 */  jal     func_800A56C8              
/* 009B8 80AC1018 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 009BC 80AC101C 10400004 */  beq     $v0, $zero, .L80AC1030     
/* 009C0 80AC1020 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009C4 80AC1024 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 009C8 80AC1028 0C00B58B */  jal     Actor_SetScale
              
/* 009CC 80AC102C 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
.L80AC1030:
/* 009D0 80AC1030 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80AC1034:
/* 009D4 80AC1034 0C0295B2 */  jal     func_800A56C8              
/* 009D8 80AC1038 3C054000 */  lui     $a1, 0x4000                ## $a1 = 40000000
/* 009DC 80AC103C 10400003 */  beq     $v0, $zero, .L80AC104C     
/* 009E0 80AC1040 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009E4 80AC1044 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 009E8 80AC1048 240538C2 */  addiu   $a1, $zero, 0x38C2         ## $a1 = 000038C2
.L80AC104C:
/* 009EC 80AC104C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 009F0 80AC1050 0C0295B2 */  jal     func_800A56C8              
/* 009F4 80AC1054 3C054140 */  lui     $a1, 0x4140                ## $a1 = 41400000
/* 009F8 80AC1058 10400003 */  beq     $v0, $zero, .L80AC1068     
/* 009FC 80AC105C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A00 80AC1060 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00A04 80AC1064 240538C3 */  addiu   $a1, $zero, 0x38C3         ## $a1 = 000038C3
.L80AC1068:
/* 00A08 80AC1068 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00A0C 80AC106C 0C0295B2 */  jal     func_800A56C8              
/* 00A10 80AC1070 3C054040 */  lui     $a1, 0x4040                ## $a1 = 40400000
/* 00A14 80AC1074 14400004 */  bne     $v0, $zero, .L80AC1088     
/* 00A18 80AC1078 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00A1C 80AC107C 0C0295B2 */  jal     func_800A56C8              
/* 00A20 80AC1080 3C054170 */  lui     $a1, 0x4170                ## $a1 = 41700000
/* 00A24 80AC1084 10400003 */  beq     $v0, $zero, .L80AC1094     
.L80AC1088:
/* 00A28 80AC1088 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A2C 80AC108C 0C2B0269 */  jal     func_80AC09A4              
/* 00A30 80AC1090 8FA5002C */  lw      $a1, 0x002C($sp)           
.L80AC1094:
/* 00A34 80AC1094 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A38 80AC1098 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00A3C 80AC109C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00A40 80AC10A0 03E00008 */  jr      $ra                        
/* 00A44 80AC10A4 00000000 */  nop
