glabel func_808A6BC8
/* 009B8 808A6BC8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 009BC 808A6BCC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 009C0 808A6BD0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 009C4 808A6BD4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 009C8 808A6BD8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 009CC 808A6BDC 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 009D0 808A6BE0 C4840060 */  lwc1    $f4, 0x0060($a0)           ## 00000060
/* 009D4 808A6BE4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009D8 808A6BE8 3C0543D8 */  lui     $a1, 0x43D8                ## $a1 = 43D80000
/* 009DC 808A6BEC 46062200 */  add.s   $f8, $f4, $f6              
/* 009E0 808A6BF0 34A58000 */  ori     $a1, $a1, 0x8000           ## $a1 = 43D88000
/* 009E4 808A6BF4 24840028 */  addiu   $a0, $a0, 0x0028           ## $a0 = 00000028
/* 009E8 808A6BF8 E4880038 */  swc1    $f8, 0x0038($a0)           ## 00000060
/* 009EC 808A6BFC 0C01DE80 */  jal     Math_ApproxF
              
/* 009F0 808A6C00 8E060060 */  lw      $a2, 0x0060($s0)           ## 00000060
/* 009F4 808A6C04 1040002C */  beq     $v0, $zero, .L808A6CB8     
/* 009F8 808A6C08 2401FFDF */  addiu   $at, $zero, 0xFFDF         ## $at = FFFFFFDF
/* 009FC 808A6C0C 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00A00 808A6C10 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00A04 808A6C14 3C02808A */  lui     $v0, %hi(D_808A7D58)       ## $v0 = 808A0000
/* 00A08 808A6C18 01C17824 */  and     $t7, $t6, $at              
/* 00A0C 808A6C1C 24427D58 */  addiu   $v0, $v0, %lo(D_808A7D58)  ## $v0 = 808A7D58
/* 00A10 808A6C20 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 00A14 808A6C24 E60A0060 */  swc1    $f10, 0x0060($s0)          ## 00000060
/* 00A18 808A6C28 90580000 */  lbu     $t8, 0x0000($v0)           ## 808A7D58
/* 00A1C 808A6C2C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00A20 808A6C30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A24 808A6C34 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00A28 808A6C38 A0590000 */  sb      $t9, 0x0000($v0)           ## 808A7D58
/* 00A2C 808A6C3C 92080168 */  lbu     $t0, 0x0168($s0)           ## 00000168
/* 00A30 808A6C40 11010005 */  beq     $t0, $at, .L808A6C58       
/* 00A34 808A6C44 00000000 */  nop
/* 00A38 808A6C48 0C229AA5 */  jal     func_808A6A94              
/* 00A3C 808A6C4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A40 808A6C50 10000015 */  beq     $zero, $zero, .L808A6CA8   
/* 00A44 808A6C54 00000000 */  nop
.L808A6C58:
/* 00A48 808A6C58 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00A4C 808A6C5C 2405281D */  addiu   $a1, $zero, 0x281D         ## $a1 = 0000281D
/* 00A50 808A6C60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A54 808A6C64 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00A58 808A6C68 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00A5C 808A6C6C 0C00CFA2 */  jal     func_80033E88              
/* 00A60 808A6C70 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 00A64 808A6C74 0C0222CD */  jal     func_80088B34              
/* 00A68 808A6C78 8604016C */  lh      $a0, 0x016C($s0)           ## 0000016C
/* 00A6C 808A6C7C 3C09808A */  lui     $t1, %hi(D_808A7D8C)       ## $t1 = 808A0000
/* 00A70 808A6C80 8D297D8C */  lw      $t1, %lo(D_808A7D8C)($t1)  
/* 00A74 808A6C84 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00A78 808A6C88 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00A7C 808A6C8C 15200004 */  bne     $t1, $zero, .L808A6CA0     
/* 00A80 808A6C90 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00A84 808A6C94 3C01808A */  lui     $at, %hi(D_808A7D8C)       ## $at = 808A0000
/* 00A88 808A6C98 10000003 */  beq     $zero, $zero, .L808A6CA8   
/* 00A8C 808A6C9C AC2A7D8C */  sw      $t2, %lo(D_808A7D8C)($at)  
.L808A6CA0:
/* 00A90 808A6CA0 0C00B7D5 */  jal     func_8002DF54              
/* 00A94 808A6CA4 8C851C44 */  lw      $a1, 0x1C44($a0)           ## 00001C44
.L808A6CA8:
/* 00A98 808A6CA8 3C0C808A */  lui     $t4, %hi(func_808A6CCC)    ## $t4 = 808A0000
/* 00A9C 808A6CAC 258C6CCC */  addiu   $t4, $t4, %lo(func_808A6CCC) ## $t4 = 808A6CCC
/* 00AA0 808A6CB0 A200016A */  sb      $zero, 0x016A($s0)         ## 0000016A
/* 00AA4 808A6CB4 AE0C0164 */  sw      $t4, 0x0164($s0)           ## 00000164
.L808A6CB8:
/* 00AA8 808A6CB8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00AAC 808A6CBC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00AB0 808A6CC0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00AB4 808A6CC4 03E00008 */  jr      $ra                        
/* 00AB8 808A6CC8 00000000 */  nop
