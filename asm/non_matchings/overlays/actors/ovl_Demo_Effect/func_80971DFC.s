.rdata

glabel D_809768FC
    .asciz "0"
    .balign 4

glabel D_80976900
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976914
    .asciz "[36m 縮むバージョン \n[m"
    .balign 4

glabel D_80976930
    .asciz "[36m 通常 バージョン \n[m"
    .balign 4

.late_rodata
glabel D_80976CE4
    .float 1.7

.text
glabel func_80971DFC
/* 00EAC 80971DFC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00EB0 80971E00 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00EB4 80971E04 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00EB8 80971E08 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00EBC 80971E0C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00EC0 80971E10 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 00EC4 80971E14 00807025 */  or      $t6, $a0, $zero            ## $t6 = 00000000
/* 00EC8 80971E18 25D0014C */  addiu   $s0, $t6, 0x014C           ## $s0 = 0000014C
/* 00ECC 80971E1C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00ED0 80971E20 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00ED4 80971E24 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00ED8 80971E28 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000000
/* 00EDC 80971E2C AFB8002C */  sw      $t8, 0x002C($sp)           
/* 00EE0 80971E30 24E70050 */  addiu   $a3, $a3, 0x0050           ## $a3 = 06000050
/* 00EE4 80971E34 24C612E8 */  addiu   $a2, $a2, 0x12E8           ## $a2 = 060012E8
/* 00EE8 80971E38 0C01B1DE */  jal     func_8006C778              
/* 00EEC 80971E3C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0000014C
/* 00EF0 80971E40 14400006 */  bne     $v0, $zero, .L80971E5C     
/* 00EF4 80971E44 3C048097 */  lui     $a0, %hi(D_809768FC)       ## $a0 = 80970000
/* 00EF8 80971E48 3C058097 */  lui     $a1, %hi(D_80976900)       ## $a1 = 80970000
/* 00EFC 80971E4C 24A56900 */  addiu   $a1, $a1, %lo(D_80976900)  ## $a1 = 80976900
/* 00F00 80971E50 248468FC */  addiu   $a0, $a0, %lo(D_809768FC)  ## $a0 = 809768FC
/* 00F04 80971E54 0C0007FC */  jal     __assert
              
/* 00F08 80971E58 24060503 */  addiu   $a2, $zero, 0x0503         ## $a2 = 00000503
.L80971E5C:
/* 00F0C 80971E5C 8FA2002C */  lw      $v0, 0x002C($sp)           
/* 00F10 80971E60 24010018 */  addiu   $at, $zero, 0x0018         ## $at = 00000018
/* 00F14 80971E64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 00F18 80971E68 10410004 */  beq     $v0, $at, .L80971E7C       
/* 00F1C 80971E6C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00F20 80971E70 24010019 */  addiu   $at, $zero, 0x0019         ## $at = 00000019
/* 00F24 80971E74 14410022 */  bne     $v0, $at, .L80971F00       
/* 00F28 80971E78 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
.L80971E7C:
/* 00F2C 80971E7C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00F30 80971E80 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00F34 80971E84 3C01426C */  lui     $at, 0x426C                ## $at = 426C0000
/* 00F38 80971E88 44811000 */  mtc1    $at, $f2                   ## $f2 = 59.00
/* 00F3C 80971E8C 3C018097 */  lui     $at, %hi(D_80976CE4)       ## $at = 80970000
/* 00F40 80971E90 C4246CE4 */  lwc1    $f4, %lo(D_80976CE4)($at)  
/* 00F44 80971E94 44060000 */  mfc1    $a2, $f0                   
/* 00F48 80971E98 44071000 */  mfc1    $a3, $f2                   
/* 00F4C 80971E9C 24A50050 */  addiu   $a1, $a1, 0x0050           ## $a1 = 06000050
/* 00F50 80971EA0 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00F54 80971EA4 0C01B225 */  jal     func_8006C894              
/* 00F58 80971EA8 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 00F5C 80971EAC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00F60 80971EB0 0C01B231 */  jal     func_8006C8C4              
/* 00F64 80971EB4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0000014C
/* 00F68 80971EB8 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00F6C 80971EBC 3C198097 */  lui     $t9, %hi(func_80972344)    ## $t9 = 80970000
/* 00F70 80971EC0 27392344 */  addiu   $t9, $t9, %lo(func_80972344) ## $t9 = 80972344
/* 00F74 80971EC4 AC99019C */  sw      $t9, 0x019C($a0)           ## 0000019C
/* 00F78 80971EC8 8FA8002C */  lw      $t0, 0x002C($sp)           
/* 00F7C 80971ECC 24010018 */  addiu   $at, $zero, 0x0018         ## $at = 00000018
/* 00F80 80971ED0 3C053DAC */  lui     $a1, 0x3DAC                ## $a1 = 3DAC0000
/* 00F84 80971ED4 15010006 */  bne     $t0, $at, .L80971EF0       
/* 00F88 80971ED8 00000000 */  nop
/* 00F8C 80971EDC 3C053E0F */  lui     $a1, 0x3E0F                ## $a1 = 3E0F0000
/* 00F90 80971EE0 0C00B58B */  jal     Actor_SetScale
              
/* 00F94 80971EE4 34A55C29 */  ori     $a1, $a1, 0x5C29           ## $a1 = 3E0F5C29
/* 00F98 80971EE8 10000043 */  beq     $zero, $zero, .L80971FF8   
/* 00F9C 80971EEC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80971EF0:
/* 00FA0 80971EF0 0C00B58B */  jal     Actor_SetScale
              
/* 00FA4 80971EF4 34A50832 */  ori     $a1, $a1, 0x0832           ## $a1 = 00000832
/* 00FA8 80971EF8 1000003F */  beq     $zero, $zero, .L80971FF8   
/* 00FAC 80971EFC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80971F00:
/* 00FB0 80971F00 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = FFFFE660
/* 00FB4 80971F04 8C621360 */  lw      $v0, 0x1360($v1)           ## FFFFF9C0
/* 00FB8 80971F08 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00FBC 80971F0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 00FC0 80971F10 1041000B */  beq     $v0, $at, .L80971F40       
/* 00FC4 80971F14 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00FC8 80971F18 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00FCC 80971F1C 50410009 */  beql    $v0, $at, .L80971F44       
/* 00FD0 80971F20 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00FD4 80971F24 8C690000 */  lw      $t1, 0x0000($v1)           ## FFFFE660
/* 00FD8 80971F28 24010324 */  addiu   $at, $zero, 0x0324         ## $at = 00000324
/* 00FDC 80971F2C 5521001C */  bnel    $t1, $at, .L80971FA0       
/* 00FE0 80971F30 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00FE4 80971F34 946A0EEC */  lhu     $t2, 0x0EEC($v1)           ## FFFFF54C
/* 00FE8 80971F38 314B0200 */  andi    $t3, $t2, 0x0200           ## $t3 = 00000000
/* 00FEC 80971F3C 15600017 */  bne     $t3, $zero, .L80971F9C     
.L80971F40:
/* 00FF0 80971F40 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L80971F44:
/* 00FF4 80971F44 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00FF8 80971F48 3C01426C */  lui     $at, 0x426C                ## $at = 426C0000
/* 00FFC 80971F4C 44811000 */  mtc1    $at, $f2                   ## $f2 = 59.00
/* 01000 80971F50 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01004 80971F54 44060000 */  mfc1    $a2, $f0                   
/* 01008 80971F58 44071000 */  mfc1    $a3, $f2                   
/* 0100C 80971F5C 24A50050 */  addiu   $a1, $a1, 0x0050           ## $a1 = 06000050
/* 01010 80971F60 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 01014 80971F64 0C01B225 */  jal     func_8006C894              
/* 01018 80971F68 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 0101C 80971F6C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01020 80971F70 0C01B231 */  jal     func_8006C8C4              
/* 01024 80971F74 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0000014C
/* 01028 80971F78 8FAD0030 */  lw      $t5, 0x0030($sp)           
/* 0102C 80971F7C 3C0C8097 */  lui     $t4, %hi(func_809721D0)    ## $t4 = 80970000
/* 01030 80971F80 258C21D0 */  addiu   $t4, $t4, %lo(func_809721D0) ## $t4 = 809721D0
/* 01034 80971F84 3C048097 */  lui     $a0, %hi(D_80976914)       ## $a0 = 80970000
/* 01038 80971F88 24846914 */  addiu   $a0, $a0, %lo(D_80976914)  ## $a0 = 80976914
/* 0103C 80971F8C 0C00084C */  jal     osSyncPrintf
              
/* 01040 80971F90 ADAC019C */  sw      $t4, 0x019C($t5)           ## 0000019C
/* 01044 80971F94 10000018 */  beq     $zero, $zero, .L80971FF8   
/* 01048 80971F98 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80971F9C:
/* 0104C 80971F9C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L80971FA0:
/* 01050 80971FA0 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 01054 80971FA4 3C01426C */  lui     $at, 0x426C                ## $at = 426C0000
/* 01058 80971FA8 44811000 */  mtc1    $at, $f2                   ## $f2 = 59.00
/* 0105C 80971FAC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01060 80971FB0 44060000 */  mfc1    $a2, $f0                   
/* 01064 80971FB4 44071000 */  mfc1    $a3, $f2                   
/* 01068 80971FB8 24A50050 */  addiu   $a1, $a1, 0x0050           ## $a1 = 06000050
/* 0106C 80971FBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 01070 80971FC0 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 01074 80971FC4 0C01B225 */  jal     func_8006C894              
/* 01078 80971FC8 E7A00014 */  swc1    $f0, 0x0014($sp)           
/* 0107C 80971FCC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01080 80971FD0 0C01B231 */  jal     func_8006C8C4              
/* 01084 80971FD4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0000014C
/* 01088 80971FD8 8FB80030 */  lw      $t8, 0x0030($sp)           
/* 0108C 80971FDC 3C0F8097 */  lui     $t7, %hi(func_80972008)    ## $t7 = 80970000
/* 01090 80971FE0 25EF2008 */  addiu   $t7, $t7, %lo(func_80972008) ## $t7 = 80972008
/* 01094 80971FE4 3C048097 */  lui     $a0, %hi(D_80976930)       ## $a0 = 80970000
/* 01098 80971FE8 24846930 */  addiu   $a0, $a0, %lo(D_80976930)  ## $a0 = 80976930
/* 0109C 80971FEC 0C00084C */  jal     osSyncPrintf
              
/* 010A0 80971FF0 AF0F019C */  sw      $t7, 0x019C($t8)           ## 0000019C
/* 010A4 80971FF4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80971FF8:
/* 010A8 80971FF8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 010AC 80971FFC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 010B0 80972000 03E00008 */  jr      $ra                        
/* 010B4 80972004 00000000 */  nop


