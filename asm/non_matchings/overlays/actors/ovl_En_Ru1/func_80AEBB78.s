glabel func_80AEBB78
/* 00F68 80AEBB78 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00F6C 80AEBB7C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00F70 80AEBB80 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00F74 80AEBB84 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00F78 80AEBB88 2490014C */  addiu   $s0, $a0, 0x014C           ## $s0 = 0000014C
/* 00F7C 80AEBB8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 00F80 80AEBB90 0C0295B2 */  jal     func_800A56C8              
/* 00F84 80AEBB94 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 00F88 80AEBB98 1440000D */  bne     $v0, $zero, .L80AEBBD0     
/* 00F8C 80AEBB9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 00F90 80AEBBA0 0C0295B2 */  jal     func_800A56C8              
/* 00F94 80AEBBA4 3C054150 */  lui     $a1, 0x4150                ## $a1 = 41500000
/* 00F98 80AEBBA8 14400009 */  bne     $v0, $zero, .L80AEBBD0     
/* 00F9C 80AEBBAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 00FA0 80AEBBB0 0C0295B2 */  jal     func_800A56C8              
/* 00FA4 80AEBBB4 3C0541B0 */  lui     $a1, 0x41B0                ## $a1 = 41B00000
/* 00FA8 80AEBBB8 14400005 */  bne     $v0, $zero, .L80AEBBD0     
/* 00FAC 80AEBBBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 00FB0 80AEBBC0 0C0295B2 */  jal     func_800A56C8              
/* 00FB4 80AEBBC4 3C0541F8 */  lui     $a1, 0x41F8                ## $a1 = 41F80000
/* 00FB8 80AEBBC8 50400006 */  beql    $v0, $zero, .L80AEBBE4     
/* 00FBC 80AEBBCC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AEBBD0:
/* 00FC0 80AEBBD0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00FC4 80AEBBD4 24050839 */  addiu   $a1, $zero, 0x0839         ## $a1 = 00000839
/* 00FC8 80AEBBD8 0C01E245 */  jal     func_80078914              
/* 00FCC 80AEBBDC 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 00FD0 80AEBBE0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AEBBE4:
/* 00FD4 80AEBBE4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00FD8 80AEBBE8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00FDC 80AEBBEC 03E00008 */  jr      $ra                        
/* 00FE0 80AEBBF0 00000000 */  nop
