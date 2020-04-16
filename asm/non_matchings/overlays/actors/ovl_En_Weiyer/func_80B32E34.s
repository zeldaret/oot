glabel func_80B32E34
/* 00BA4 80B32E34 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00BA8 80B32E38 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00BAC 80B32E3C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00BB0 80B32E40 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00BB4 80B32E44 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00BB8 80B32E48 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BBC 80B32E4C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00BC0 80B32E50 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00BC4 80B32E54 AFAF002C */  sw      $t7, 0x002C($sp)           
/* 00BC8 80B32E58 86030194 */  lh      $v1, 0x0194($s0)           ## 00000194
/* 00BCC 80B32E5C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00BD0 80B32E60 10600003 */  beq     $v1, $zero, .L80B32E70     
/* 00BD4 80B32E64 2478FFFF */  addiu   $t8, $v1, 0xFFFF           ## $t8 = FFFFFFFF
/* 00BD8 80B32E68 A6180194 */  sh      $t8, 0x0194($s0)           ## 00000194
/* 00BDC 80B32E6C 86030194 */  lh      $v1, 0x0194($s0)           ## 00000194
.L80B32E70:
/* 00BE0 80B32E70 1060000F */  beq     $v1, $zero, .L80B32EB0     
/* 00BE4 80B32E74 00000000 */  nop
/* 00BE8 80B32E78 C606000C */  lwc1    $f6, 0x000C($s0)           ## 0000000C
/* 00BEC 80B32E7C 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 00BF0 80B32E80 8FB9002C */  lw      $t9, 0x002C($sp)           
/* 00BF4 80B32E84 46083280 */  add.s   $f10, $f6, $f8             
/* 00BF8 80B32E88 C7240028 */  lwc1    $f4, 0x0028($t9)           ## 00000028
/* 00BFC 80B32E8C 4604503E */  c.le.s  $f10, $f4                  
/* 00C00 80B32E90 00000000 */  nop
/* 00C04 80B32E94 45010006 */  bc1t    .L80B32EB0                 
/* 00C08 80B32E98 00000000 */  nop
/* 00C0C 80B32E9C 92080294 */  lbu     $t0, 0x0294($s0)           ## 00000294
/* 00C10 80B32EA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C14 80B32EA4 31090002 */  andi    $t1, $t0, 0x0002           ## $t1 = 00000000
/* 00C18 80B32EA8 11200005 */  beq     $t1, $zero, .L80B32EC0     
/* 00C1C 80B32EAC 00000000 */  nop
.L80B32EB0:
/* 00C20 80B32EB0 0C2CC94E */  jal     func_80B32538              
/* 00C24 80B32EB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C28 80B32EB8 10000053 */  beq     $zero, $zero, .L80B33008   
/* 00C2C 80B32EBC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B32EC0:
/* 00C30 80B32EC0 0C00B821 */  jal     func_8002E084              
/* 00C34 80B32EC4 24052800 */  addiu   $a1, $zero, 0x2800         ## $a1 = 00002800
/* 00C38 80B32EC8 10400008 */  beq     $v0, $zero, .L80B32EEC     
/* 00C3C 80B32ECC 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00C40 80B32ED0 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 00C44 80B32ED4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 00C48 80B32ED8 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00C4C 80B32EDC 0C01DE80 */  jal     Math_ApproxF
              
/* 00C50 80B32EE0 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 00C54 80B32EE4 10000007 */  beq     $zero, $zero, .L80B32F04   
/* 00C58 80B32EE8 C600000C */  lwc1    $f0, 0x000C($s0)           ## 0000000C
.L80B32EEC:
/* 00C5C 80B32EEC 3C053FA6 */  lui     $a1, 0x3FA6                ## $a1 = 3FA60000
/* 00C60 80B32EF0 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 00C64 80B32EF4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 00C68 80B32EF8 0C01DE80 */  jal     Math_ApproxF
              
/* 00C6C 80B32EFC 34A56666 */  ori     $a1, $a1, 0x6666           ## $a1 = 3FA66666
/* 00C70 80B32F00 C600000C */  lwc1    $f0, 0x000C($s0)           ## 0000000C
.L80B32F04:
/* 00C74 80B32F04 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 00C78 80B32F08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C7C 80B32F0C 4610003C */  c.lt.s  $f0, $f16                  
/* 00C80 80B32F10 00000000 */  nop
/* 00C84 80B32F14 45000014 */  bc1f    .L80B32F68                 
/* 00C88 80B32F18 00000000 */  nop
/* 00C8C 80B32F1C C6120080 */  lwc1    $f18, 0x0080($s0)          ## 00000080
/* 00C90 80B32F20 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00C94 80B32F24 24051000 */  addiu   $a1, $zero, 0x1000         ## $a1 = 00001000
/* 00C98 80B32F28 4612003C */  c.lt.s  $f0, $f18                  
/* 00C9C 80B32F2C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00CA0 80B32F30 24070100 */  addiu   $a3, $zero, 0x0100         ## $a3 = 00000100
/* 00CA4 80B32F34 240A0040 */  addiu   $t2, $zero, 0x0040         ## $t2 = 00000040
/* 00CA8 80B32F38 45020007 */  bc1fl   .L80B32F58                 
/* 00CAC 80B32F3C E6000028 */  swc1    $f0, 0x0028($s0)           ## 00000028
/* 00CB0 80B32F40 A60000B4 */  sh      $zero, 0x00B4($s0)         ## 000000B4
/* 00CB4 80B32F44 0C2CC90D */  jal     func_80B32434              
/* 00CB8 80B32F48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CBC 80B32F4C 1000002E */  beq     $zero, $zero, .L80B33008   
/* 00CC0 80B32F50 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00CC4 80B32F54 E6000028 */  swc1    $f0, 0x0028($s0)           ## 00000028
.L80B32F58:
/* 00CC8 80B32F58 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00CCC 80B32F5C AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00CD0 80B32F60 1000000C */  beq     $zero, $zero, .L80B32F94   
/* 00CD4 80B32F64 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
.L80B32F68:
/* 00CD8 80B32F68 0C2CCB7B */  jal     func_80B32DEC              
/* 00CDC 80B32F6C 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00CE0 80B32F70 00022C00 */  sll     $a1, $v0, 16               
/* 00CE4 80B32F74 240B0040 */  addiu   $t3, $zero, 0x0040         ## $t3 = 00000040
/* 00CE8 80B32F78 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 00CEC 80B32F7C 00052C03 */  sra     $a1, $a1, 16               
/* 00CF0 80B32F80 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00CF4 80B32F84 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00CF8 80B32F88 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00CFC 80B32F8C 24070100 */  addiu   $a3, $zero, 0x0100         ## $a3 = 00000100
/* 00D00 80B32F90 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
.L80B32F94:
/* 00D04 80B32F94 240C0080 */  addiu   $t4, $zero, 0x0080         ## $t4 = 00000080
/* 00D08 80B32F98 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00D0C 80B32F9C 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00D10 80B32FA0 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00D14 80B32FA4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00D18 80B32FA8 24070200 */  addiu   $a3, $zero, 0x0200         ## $a3 = 00000200
/* 00D1C 80B32FAC 8FAD002C */  lw      $t5, 0x002C($sp)           
/* 00D20 80B32FB0 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00D24 80B32FB4 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 00D28 80B32FB8 C5A60084 */  lwc1    $f6, 0x0084($t5)           ## 00000084
/* 00D2C 80B32FBC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00D30 80B32FC0 4608303C */  c.lt.s  $f6, $f8                   
/* 00D34 80B32FC4 00000000 */  nop
/* 00D38 80B32FC8 4502000F */  bc1fl   .L80B33008                 
/* 00D3C 80B32FCC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00D40 80B32FD0 C6040084 */  lwc1    $f4, 0x0084($s0)           ## 00000084
/* 00D44 80B32FD4 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 00D48 80B32FD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D4C 80B32FDC 460A203C */  c.lt.s  $f4, $f10                  
/* 00D50 80B32FE0 00000000 */  nop
/* 00D54 80B32FE4 45020008 */  bc1fl   .L80B33008                 
/* 00D58 80B32FE8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00D5C 80B32FEC 0C00B821 */  jal     func_8002E084              
/* 00D60 80B32FF0 24052000 */  addiu   $a1, $zero, 0x2000         ## $a1 = 00002000
/* 00D64 80B32FF4 50400004 */  beql    $v0, $zero, .L80B33008     
/* 00D68 80B32FF8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00D6C 80B32FFC 0C2CC9F6 */  jal     func_80B327D8              
/* 00D70 80B33000 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D74 80B33004 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B33008:
/* 00D78 80B33008 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00D7C 80B3300C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00D80 80B33010 03E00008 */  jr      $ra                        
/* 00D84 80B33014 00000000 */  nop
