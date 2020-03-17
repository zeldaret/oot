glabel func_80A3D9D8
/* 002F8 80A3D9D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002FC 80A3D9DC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00300 80A3D9E0 848202C0 */  lh      $v0, 0x02C0($a0)           ## 000002C0
/* 00304 80A3D9E4 10400003 */  beq     $v0, $zero, .L80A3D9F4     
/* 00308 80A3D9E8 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 0030C 80A3D9EC 10000014 */  beq     $zero, $zero, .L80A3DA40   
/* 00310 80A3D9F0 A48E02C0 */  sh      $t6, 0x02C0($a0)           ## 000002C0
.L80A3D9F4:
/* 00314 80A3D9F4 908F02C2 */  lbu     $t7, 0x02C2($a0)           ## 000002C2
/* 00318 80A3D9F8 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 0031C 80A3D9FC 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 00000001
/* 00320 80A3DA00 2B210003 */  slti    $at, $t9, 0x0003           
/* 00324 80A3DA04 1420000E */  bne     $at, $zero, .L80A3DA40     
/* 00328 80A3DA08 A09802C2 */  sb      $t8, 0x02C2($a0)           ## 000002C2
/* 0032C 80A3DA0C 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00330 80A3DA10 A08002C2 */  sb      $zero, 0x02C2($a0)         ## 000002C2
/* 00334 80A3DA14 44816000 */  mtc1    $at, $f12                  ## $f12 = 60.00
/* 00338 80A3DA18 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0033C 80A3DA1C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00340 80A3DA20 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00344 80A3DA24 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 00348 80A3DA28 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0034C 80A3DA2C 46040180 */  add.s   $f6, $f0, $f4              
/* 00350 80A3DA30 4600320D */  trunc.w.s $f8, $f6                   
/* 00354 80A3DA34 44094000 */  mfc1    $t1, $f8                   
/* 00358 80A3DA38 00000000 */  nop
/* 0035C 80A3DA3C A48902C0 */  sh      $t1, 0x02C0($a0)           ## 000002C0
.L80A3DA40:
/* 00360 80A3DA40 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00364 80A3DA44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00368 80A3DA48 03E00008 */  jr      $ra                        
/* 0036C 80A3DA4C 00000000 */  nop


