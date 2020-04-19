.late_rodata
glabel D_80A3A2D0
 .word 0x4082C000, 0x00000000, 0x00000000, 0x00000000

.text
glabel func_80A39E2C
/* 04B1C 80A39E2C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04B20 80A39E30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04B24 80A39E34 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 04B28 80A39E38 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 04B2C 80A39E3C 0C00CDE0 */  jal     func_80033780              
/* 04B30 80A39E40 3C064448 */  lui     $a2, 0x4448                ## $a2 = 44480000
/* 04B34 80A39E44 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 04B38 80A39E48 10400055 */  beq     $v0, $zero, .L80A39FA0     
/* 04B3C 80A39E4C 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 04B40 80A39E50 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 04B44 80A39E54 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 04B48 80A39E58 0C00B69E */  jal     func_8002DA78              
/* 04B4C 80A39E5C AFA70024 */  sw      $a3, 0x0024($sp)           
/* 04B50 80A39E60 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 04B54 80A39E64 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 04B58 80A39E68 004F3023 */  subu    $a2, $v0, $t7              
/* 04B5C 80A39E6C A48F0032 */  sh      $t7, 0x0032($a0)           ## 00000032
/* 04B60 80A39E70 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 04B64 80A39E74 00063400 */  sll     $a2, $a2, 16               
/* 04B68 80A39E78 00063403 */  sra     $a2, $a2, 16               
/* 04B6C 80A39E7C A7A6001A */  sh      $a2, 0x001A($sp)           
/* 04B70 80A39E80 0C00B6DB */  jal     func_8002DB6C              
/* 04B74 80A39E84 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 04B78 80A39E88 87A6001A */  lh      $a2, 0x001A($sp)           
/* 04B7C 80A39E8C 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 04B80 80A39E90 46000086 */  mov.s   $f2, $f0                   
/* 04B84 80A39E94 04C00003 */  bltz    $a2, .L80A39EA4            
/* 04B88 80A39E98 00061023 */  subu    $v0, $zero, $a2            
/* 04B8C 80A39E9C 10000001 */  beq     $zero, $zero, .L80A39EA4   
/* 04B90 80A39EA0 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 00000000
.L80A39EA4:
/* 04B94 80A39EA4 28412EE0 */  slti    $at, $v0, 0x2EE0           
/* 04B98 80A39EA8 50200017 */  beql    $at, $zero, .L80A39F08     
/* 04B9C 80A39EAC 84E800B6 */  lh      $t0, 0x00B6($a3)           ## 000000B6
/* 04BA0 80A39EB0 46001021 */  cvt.d.s $f0, $f2                   
/* 04BA4 80A39EB4 3C0180A4 */  lui     $at, %hi(D_80A3A2D0)       ## $at = 80A40000
/* 04BA8 80A39EB8 46200004 */  sqrt.d  $f0, $f0                   
/* 04BAC 80A39EBC D424A2D0 */  ldc1    $f4, %lo(D_80A3A2D0)($at)  
/* 04BB0 80A39EC0 8FB8001C */  lw      $t8, 0x001C($sp)           
/* 04BB4 80A39EC4 4624003C */  c.lt.d  $f0, $f4                   
/* 04BB8 80A39EC8 00000000 */  nop
/* 04BBC 80A39ECC 4502000E */  bc1fl   .L80A39F08                 
/* 04BC0 80A39ED0 84E800B6 */  lh      $t0, 0x00B6($a3)           ## 000000B6
/* 04BC4 80A39ED4 87190000 */  lh      $t9, 0x0000($t8)           ## 00000000
/* 04BC8 80A39ED8 24010066 */  addiu   $at, $zero, 0x0066         ## $at = 00000066
/* 04BCC 80A39EDC 17210005 */  bne     $t9, $at, .L80A39EF4       
/* 04BD0 80A39EE0 00000000 */  nop
/* 04BD4 80A39EE4 0C28E0A4 */  jal     func_80A38290              
/* 04BD8 80A39EE8 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 04BDC 80A39EEC 1000002D */  beq     $zero, $zero, .L80A39FA4   
/* 04BE0 80A39EF0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A39EF4:
/* 04BE4 80A39EF4 0C28E10C */  jal     func_80A38430              
/* 04BE8 80A39EF8 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 04BEC 80A39EFC 10000029 */  beq     $zero, $zero, .L80A39FA4   
/* 04BF0 80A39F00 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 04BF4 80A39F04 84E800B6 */  lh      $t0, 0x00B6($a3)           ## 000000B6
.L80A39F08:
/* 04BF8 80A39F08 00061023 */  subu    $v0, $zero, $a2            
/* 04BFC 80A39F0C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 04C00 80A39F10 25093FFF */  addiu   $t1, $t0, 0x3FFF           ## $t1 = 00003FFF
/* 04C04 80A39F14 04C00003 */  bltz    $a2, .L80A39F24            
/* 04C08 80A39F18 A4E90032 */  sh      $t1, 0x0032($a3)           ## 00000032
/* 04C0C 80A39F1C 10000001 */  beq     $zero, $zero, .L80A39F24   
/* 04C10 80A39F20 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 00000000
.L80A39F24:
/* 04C14 80A39F24 28412000 */  slti    $at, $v0, 0x2000           
/* 04C18 80A39F28 14200008 */  bne     $at, $zero, .L80A39F4C     
/* 04C1C 80A39F2C 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 04C20 80A39F30 04C00003 */  bltz    $a2, .L80A39F40            
/* 04C24 80A39F34 00061023 */  subu    $v0, $zero, $a2            
/* 04C28 80A39F38 10000001 */  beq     $zero, $zero, .L80A39F40   
/* 04C2C 80A39F3C 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 00000000
.L80A39F40:
/* 04C30 80A39F40 28416000 */  slti    $at, $v0, 0x6000           
/* 04C34 80A39F44 1420000B */  bne     $at, $zero, .L80A39F74     
/* 04C38 80A39F48 00000000 */  nop
.L80A39F4C:
/* 04C3C 80A39F4C 0C28E1F4 */  jal     func_80A387D0              
/* 04C40 80A39F50 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 04C44 80A39F54 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 04C48 80A39F58 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 04C4C 80A39F5C 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
/* 04C50 80A39F60 C4E60068 */  lwc1    $f6, 0x0068($a3)           ## 00000068
/* 04C54 80A39F64 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 04C58 80A39F68 46083282 */  mul.s   $f10, $f6, $f8             
/* 04C5C 80A39F6C 1000000D */  beq     $zero, $zero, .L80A39FA4   
/* 04C60 80A39F70 E4EA0068 */  swc1    $f10, 0x0068($a3)          ## 00000068
.L80A39F74:
/* 04C64 80A39F74 04C00003 */  bltz    $a2, .L80A39F84            
/* 04C68 80A39F78 00061023 */  subu    $v0, $zero, $a2            
/* 04C6C 80A39F7C 10000001 */  beq     $zero, $zero, .L80A39F84   
/* 04C70 80A39F80 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 00000000
.L80A39F84:
/* 04C74 80A39F84 28415FFF */  slti    $at, $v0, 0x5FFF           
/* 04C78 80A39F88 10200003 */  beq     $at, $zero, .L80A39F98     
/* 04C7C 80A39F8C 00000000 */  nop
/* 04C80 80A39F90 0C28DF5C */  jal     func_80A37D70              
/* 04C84 80A39F94 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L80A39F98:
/* 04C88 80A39F98 10000002 */  beq     $zero, $zero, .L80A39FA4   
/* 04C8C 80A39F9C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A39FA0:
/* 04C90 80A39FA0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A39FA4:
/* 04C94 80A39FA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04C98 80A39FA8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04C9C 80A39FAC 03E00008 */  jr      $ra                        
/* 04CA0 80A39FB0 00000000 */  nop
/* 04CA4 80A39FB4 00000000 */  nop
/* 04CA8 80A39FB8 00000000 */  nop
/* 04CAC 80A39FBC 00000000 */  nop
