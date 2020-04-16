glabel func_80A00E8C
/* 00EEC 80A00E8C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00EF0 80A00E90 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00EF4 80A00E94 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00EF8 80A00E98 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00EFC 80A00E9C 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 00F00 80A00EA0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F04 80A00EA4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00F08 80A00EA8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00F0C 80A00EAC AFA30034 */  sw      $v1, 0x0034($sp)           
/* 00F10 80A00EB0 860400B4 */  lh      $a0, 0x00B4($s0)           ## 000000B4
/* 00F14 80A00EB4 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00F18 80A00EB8 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 00F1C 80A00EBC 1880001A */  blez    $a0, .L80A00F28            
/* 00F20 80A00EC0 0081082A */  slt     $at, $a0, $at              
/* 00F24 80A00EC4 50200019 */  beql    $at, $zero, .L80A00F2C     
/* 00F28 80A00EC8 248FF000 */  addiu   $t7, $a0, 0xF000           ## $t7 = FFFFF000
/* 00F2C 80A00ECC C4640024 */  lwc1    $f4, 0x0024($v1)           ## 00000024
/* 00F30 80A00ED0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00F34 80A00ED4 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 00F38 80A00ED8 E7A40028 */  swc1    $f4, 0x0028($sp)           
/* 00F3C 80A00EDC C4660028 */  lwc1    $f6, 0x0028($v1)           ## 00000028
/* 00F40 80A00EE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F44 80A00EE4 27A50028 */  addiu   $a1, $sp, 0x0028           ## $a1 = FFFFFFF0
/* 00F48 80A00EE8 46083280 */  add.s   $f10, $f6, $f8             
/* 00F4C 80A00EEC E7AA002C */  swc1    $f10, 0x002C($sp)          
/* 00F50 80A00EF0 C470002C */  lwc1    $f16, 0x002C($v1)          ## 0000002C
/* 00F54 80A00EF4 0C00B6CA */  jal     func_8002DB28              
/* 00F58 80A00EF8 E7B00030 */  swc1    $f16, 0x0030($sp)          
/* 00F5C 80A00EFC 00022C00 */  sll     $a1, $v0, 16               
/* 00F60 80A00F00 00052C03 */  sra     $a1, $a1, 16               
/* 00F64 80A00F04 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00F68 80A00F08 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00F6C 80A00F0C 24061000 */  addiu   $a2, $zero, 0x1000         ## $a2 = 00001000
/* 00F70 80A00F10 10400007 */  beq     $v0, $zero, .L80A00F30     
/* 00F74 80A00F14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F78 80A00F18 0C280151 */  jal     func_80A00544              
/* 00F7C 80A00F1C 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00F80 80A00F20 10000004 */  beq     $zero, $zero, .L80A00F34   
/* 00F84 80A00F24 861800B4 */  lh      $t8, 0x00B4($s0)           ## 000000B4
.L80A00F28:
/* 00F88 80A00F28 248FF000 */  addiu   $t7, $a0, 0xF000           ## $t7 = FFFFF000
.L80A00F2C:
/* 00F8C 80A00F2C A60F00B4 */  sh      $t7, 0x00B4($s0)           ## 000000B4
.L80A00F30:
/* 00F90 80A00F30 861800B4 */  lh      $t8, 0x00B4($s0)           ## 000000B4
.L80A00F34:
/* 00F94 80A00F34 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 00F98 80A00F38 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 00F9C 80A00F3C 0018C823 */  subu    $t9, $zero, $t8            
/* 00FA0 80A00F40 A6190030 */  sh      $t9, 0x0030($s0)           ## 00000030
/* 00FA4 80A00F44 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00FA8 80A00F48 0C01DE80 */  jal     Math_ApproxF
              
/* 00FAC 80A00F4C 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 00FB0 80A00F50 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00FB4 80A00F54 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00FB8 80A00F58 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00FBC 80A00F5C 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 00FC0 80A00F60 2407071C */  addiu   $a3, $zero, 0x071C         ## $a3 = 0000071C
/* 00FC4 80A00F64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FC8 80A00F68 0C00BE5D */  jal     func_8002F974              
/* 00FCC 80A00F6C 2405314F */  addiu   $a1, $zero, 0x314F         ## $a1 = 0000314F
/* 00FD0 80A00F70 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00FD4 80A00F74 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00FD8 80A00F78 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00FDC 80A00F7C 03E00008 */  jr      $ra                        
/* 00FE0 80A00F80 00000000 */  nop
