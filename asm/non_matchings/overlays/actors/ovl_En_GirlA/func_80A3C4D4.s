.late_rodata
glabel D_80A3D144
    .float 0.017453292

.text
glabel func_80A3C4D4
/* 01D84 80A3C4D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01D88 80A3C4D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01D8C 80A3C4DC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01D90 80A3C4E0 848E01B8 */  lh      $t6, 0x01B8($a0)           ## 000001B8
/* 01D94 80A3C4E4 3C0143B4 */  lui     $at, 0x43B4                ## $at = 43B40000
/* 01D98 80A3C4E8 44814000 */  mtc1    $at, $f8                   ## $f8 = 360.00
/* 01D9C 80A3C4EC 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 01DA0 80A3C4F0 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 01DA4 80A3C4F4 44818000 */  mtc1    $at, $f16                  ## $f16 = 65536.00
/* 01DA8 80A3C4F8 468021A0 */  cvt.s.w $f6, $f4                   
/* 01DAC 80A3C4FC 3C0180A4 */  lui     $at, %hi(D_80A3D144)       ## $at = 80A40000
/* 01DB0 80A3C500 C424D144 */  lwc1    $f4, %lo(D_80A3D144)($at)  
/* 01DB4 80A3C504 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01DB8 80A3C508 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01DBC 80A3C50C 46083282 */  mul.s   $f10, $f6, $f8             
/* 01DC0 80A3C510 46105483 */  div.s   $f18, $f10, $f16           
/* 01DC4 80A3C514 46049302 */  mul.s   $f12, $f18, $f4            
/* 01DC8 80A3C518 0C034348 */  jal     Matrix_RotateY              
/* 01DCC 80A3C51C 00000000 */  nop
/* 01DD0 80A3C520 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 01DD4 80A3C524 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01DD8 80A3C528 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01DDC 80A3C52C 8CE201D0 */  lw      $v0, 0x01D0($a3)           ## 000001D0
/* 01DE0 80A3C530 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01DE4 80A3C534 50400005 */  beql    $v0, $zero, .L80A3C54C     
/* 01DE8 80A3C538 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01DEC 80A3C53C 0040F809 */  jalr    $ra, $v0                   
/* 01DF0 80A3C540 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 01DF4 80A3C544 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 01DF8 80A3C548 8FA4001C */  lw      $a0, 0x001C($sp)           
.L80A3C54C:
/* 01DFC 80A3C54C 0C01A528 */  jal     func_800694A0              
/* 01E00 80A3C550 84E501CC */  lh      $a1, 0x01CC($a3)           ## 000001CC
/* 01E04 80A3C554 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E08 80A3C558 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01E0C 80A3C55C 03E00008 */  jr      $ra                        
/* 01E10 80A3C560 00000000 */  nop
/* 01E14 80A3C564 00000000 */  nop
/* 01E18 80A3C568 00000000 */  nop
/* 01E1C 80A3C56C 00000000 */  nop
