.late_rodata
glabel D_8097C22C
    .float 0.8

.text
glabel func_8097B6C4
/* 02D94 8097B6C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02D98 8097B6C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02D9C 8097B6CC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02DA0 8097B6D0 0C25E60F */  jal     func_8097983C              
/* 02DA4 8097B6D4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02DA8 8097B6D8 10400019 */  beq     $v0, $zero, .L8097B740     
/* 02DAC 8097B6DC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02DB0 8097B6E0 3C060600 */  lui     $a2, %hi(gGanonsCastleRubble3Col)                ## $a2 = 06000000
/* 02DB4 8097B6E4 24C62448 */  addiu   $a2, $a2, %lo(gGanonsCastleRubble3Col)           ## $a2 = 06002448
/* 02DB8 8097B6E8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02DBC 8097B6EC 0C25E3D8 */  jal     func_80978F60              
/* 02DC0 8097B6F0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02DC4 8097B6F4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02DC8 8097B6F8 3C018098 */  lui     $at, %hi(D_8097C22C)       ## $at = 80980000
/* 02DCC 8097B6FC C420C22C */  lwc1    $f0, %lo(D_8097C22C)($at)  
/* 02DD0 8097B700 240E0013 */  addiu   $t6, $zero, 0x0013         ## $t6 = 00000013
/* 02DD4 8097B704 240F0011 */  addiu   $t7, $zero, 0x0011         ## $t7 = 00000011
/* 02DD8 8097B708 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 02DDC 8097B70C AC8F0168 */  sw      $t7, 0x0168($a0)           ## 00000168
/* 02DE0 8097B710 24820050 */  addiu   $v0, $a0, 0x0050           ## $v0 = 00000050
/* 02DE4 8097B714 C4440000 */  lwc1    $f4, 0x0000($v0)           ## 00000050
/* 02DE8 8097B718 C4480004 */  lwc1    $f8, 0x0004($v0)           ## 00000054
/* 02DEC 8097B71C C4500008 */  lwc1    $f16, 0x0008($v0)          ## 00000058
/* 02DF0 8097B720 46002182 */  mul.s   $f6, $f4, $f0              
/* 02DF4 8097B724 00000000 */  nop
/* 02DF8 8097B728 46004282 */  mul.s   $f10, $f8, $f0             
/* 02DFC 8097B72C 00000000 */  nop
/* 02E00 8097B730 46008482 */  mul.s   $f18, $f16, $f0            
/* 02E04 8097B734 E4460000 */  swc1    $f6, 0x0000($v0)           ## 00000050
/* 02E08 8097B738 E44A0004 */  swc1    $f10, 0x0004($v0)          ## 00000054
/* 02E0C 8097B73C E4520008 */  swc1    $f18, 0x0008($v0)          ## 00000058
.L8097B740:
/* 02E10 8097B740 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02E14 8097B744 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02E18 8097B748 03E00008 */  jr      $ra                        
/* 02E1C 8097B74C 00000000 */  nop
