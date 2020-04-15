glabel func_80A09D6C
/* 00ECC 80A09D6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00ED0 80A09D70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00ED4 80A09D74 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00ED8 80A09D78 8C82017C */  lw      $v0, 0x017C($a0)           ## 0000017C
/* 00EDC 80A09D7C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00EE0 80A09D80 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00EE4 80A09D84 50400005 */  beql    $v0, $zero, .L80A09D9C     
/* 00EE8 80A09D88 8CE20180 */  lw      $v0, 0x0180($a3)           ## 00000180
/* 00EEC 80A09D8C 0040F809 */  jalr    $ra, $v0                   
/* 00EF0 80A09D90 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00EF4 80A09D94 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00EF8 80A09D98 8CE20180 */  lw      $v0, 0x0180($a3)           ## 00000180
.L80A09D9C:
/* 00EFC 80A09D9C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00F00 80A09DA0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00F04 80A09DA4 10400004 */  beq     $v0, $zero, .L80A09DB8     
/* 00F08 80A09DA8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00F0C 80A09DAC 0040F809 */  jalr    $ra, $v0                   
/* 00F10 80A09DB0 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00F14 80A09DB4 8FA70018 */  lw      $a3, 0x0018($sp)           
.L80A09DB8:
/* 00F18 80A09DB8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00F1C 80A09DBC 0C01A528 */  jal     func_800694A0              
/* 00F20 80A09DC0 84E50156 */  lh      $a1, 0x0156($a3)           ## 00000156
/* 00F24 80A09DC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F28 80A09DC8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F2C 80A09DCC 03E00008 */  jr      $ra                        
/* 00F30 80A09DD0 00000000 */  nop
/* 00F34 80A09DD4 00000000 */  nop
/* 00F38 80A09DD8 00000000 */  nop
/* 00F3C 80A09DDC 00000000 */  nop
