glabel func_80062A28
/* AD9BC8 80062A28 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD9BCC 80062A2C AFBF001C */  sw    $ra, 0x1c($sp)
/* AD9BD0 80062A30 AFA5002C */  sw    $a1, 0x2c($sp)
/* AD9BD4 80062A34 C4A40000 */  lwc1  $f4, ($a1)
/* AD9BD8 80062A38 3C018016 */  lui   $at, %hi(D_8015CF14) # $at, 0x8016
/* AD9BDC 80062A3C 240F0005 */  li    $t7, 5
/* AD9BE0 80062A40 4600218D */  trunc.w.s $f6, $f4
/* AD9BE4 80062A44 3C028016 */  lui   $v0, %hi(D_8015CF10) # $v0, 0x8016
/* AD9BE8 80062A48 2442CF10 */  addiu $v0, %lo(D_8015CF10) # addiu $v0, $v0, -0x30f0
/* AD9BEC 80062A4C 24030080 */  li    $v1, 128
/* AD9BF0 80062A50 44183000 */  mfc1  $t8, $f6
/* AD9BF4 80062A54 24080040 */  li    $t0, 64
/* AD9BF8 80062A58 240900FF */  li    $t1, 255
/* AD9BFC 80062A5C A438CF10 */  sh    $t8, %lo(D_8015CF10)($at)
/* AD9C00 80062A60 C4A80004 */  lwc1  $f8, 4($a1)
/* AD9C04 80062A64 24180005 */  li    $t8, 5
/* AD9C08 80062A68 240A0020 */  li    $t2, 32
/* AD9C0C 80062A6C 4600428D */  trunc.w.s $f10, $f8
/* AD9C10 80062A70 24190010 */  li    $t9, 16
/* AD9C14 80062A74 00003025 */  move  $a2, $zero
/* AD9C18 80062A78 00003825 */  move  $a3, $zero
/* AD9C1C 80062A7C 440B5000 */  mfc1  $t3, $f10
/* AD9C20 80062A80 00000000 */  nop   
/* AD9C24 80062A84 A42BCF12 */  sh    $t3, %lo(D_8015CF12)($at)
/* AD9C28 80062A88 C4B00008 */  lwc1  $f16, 8($a1)
/* AD9C2C 80062A8C 240B0001 */  li    $t3, 1
/* AD9C30 80062A90 AFAB0010 */  sw    $t3, 0x10($sp)
/* AD9C34 80062A94 4600848D */  trunc.w.s $f18, $f16
/* AD9C38 80062A98 AFA20014 */  sw    $v0, 0x14($sp)
/* AD9C3C 80062A9C 27A50024 */  addiu $a1, $sp, 0x24
/* AD9C40 80062AA0 440D9000 */  mfc1  $t5, $f18
/* AD9C44 80062AA4 00000000 */  nop   
/* AD9C48 80062AA8 A42DCF14 */  sh    $t5, %lo(D_8015CF14)($at)
/* AD9C4C 80062AAC 3C018016 */  lui   $at, %hi(D_8015D3A4) # $at, 0x8016
/* AD9C50 80062AB0 AC2FD3A4 */  sw    $t7, %lo(D_8015D3A4)($at)
/* AD9C54 80062AB4 3C018016 */  lui   $at, %hi(D_8015D3A8) # $at, 0x8016
/* AD9C58 80062AB8 AC38D3A8 */  sw    $t8, %lo(D_8015D3A8)($at)
/* AD9C5C 80062ABC A043049C */  sb    $v1, 0x49c($v0)
/* AD9C60 80062AC0 A040049D */  sb    $zero, 0x49d($v0)
/* AD9C64 80062AC4 A048049E */  sb    $t0, 0x49e($v0)
/* AD9C68 80062AC8 A049049F */  sb    $t1, 0x49f($v0)
/* AD9C6C 80062ACC A04304A0 */  sb    $v1, 0x4a0($v0)
/* AD9C70 80062AD0 A04004A1 */  sb    $zero, 0x4a1($v0)
/* AD9C74 80062AD4 A04804A2 */  sb    $t0, 0x4a2($v0)
/* AD9C78 80062AD8 A04904A3 */  sb    $t1, 0x4a3($v0)
/* AD9C7C 80062ADC A04904A4 */  sb    $t1, 0x4a4($v0)
/* AD9C80 80062AE0 A04304A5 */  sb    $v1, 0x4a5($v0)
/* AD9C84 80062AE4 A04004A6 */  sb    $zero, 0x4a6($v0)
/* AD9C88 80062AE8 A04904A7 */  sb    $t1, 0x4a7($v0)
/* AD9C8C 80062AEC A04904A8 */  sb    $t1, 0x4a8($v0)
/* AD9C90 80062AF0 A04304A9 */  sb    $v1, 0x4a9($v0)
/* AD9C94 80062AF4 A04004AA */  sb    $zero, 0x4aa($v0)
/* AD9C98 80062AF8 A04904AB */  sb    $t1, 0x4ab($v0)
/* AD9C9C 80062AFC A04804AC */  sb    $t0, 0x4ac($v0)
/* AD9CA0 80062B00 A04004AD */  sb    $zero, 0x4ad($v0)
/* AD9CA4 80062B04 A04A04AE */  sb    $t2, 0x4ae($v0)
/* AD9CA8 80062B08 A04004AF */  sb    $zero, 0x4af($v0)
/* AD9CAC 80062B0C A04804B0 */  sb    $t0, 0x4b0($v0)
/* AD9CB0 80062B10 A04004B1 */  sb    $zero, 0x4b1($v0)
/* AD9CB4 80062B14 A04A04B2 */  sb    $t2, 0x4b2($v0)
/* AD9CB8 80062B18 A04004B3 */  sb    $zero, 0x4b3($v0)
/* AD9CBC 80062B1C A04304B4 */  sb    $v1, 0x4b4($v0)
/* AD9CC0 80062B20 A04004B5 */  sb    $zero, 0x4b5($v0)
/* AD9CC4 80062B24 A04804B6 */  sb    $t0, 0x4b6($v0)
/* AD9CC8 80062B28 A04004B7 */  sb    $zero, 0x4b7($v0)
/* AD9CCC 80062B2C A04304B8 */  sb    $v1, 0x4b8($v0)
/* AD9CD0 80062B30 A04004B9 */  sb    $zero, 0x4b9($v0)
/* AD9CD4 80062B34 A04804BA */  sb    $t0, 0x4ba($v0)
/* AD9CD8 80062B38 A04004BB */  sb    $zero, 0x4bb($v0)
/* AD9CDC 80062B3C 3C018016 */  lui   $at, %hi(D_8015D3CC) # $at, 0x8016
/* AD9CE0 80062B40 AC20D3CC */  sw    $zero, %lo(D_8015D3CC)($at)
/* AD9CE4 80062B44 3C018016 */  lui   $at, %hi(D_8015D3D0) # $at, 0x8016
/* AD9CE8 80062B48 AC39D3D0 */  sw    $t9, %lo(D_8015D3D0)($at)
/* AD9CEC 80062B4C 3C014100 */  li    $at, 0x41000000 # 0.000000
/* AD9CF0 80062B50 44812000 */  mtc1  $at, $f4
/* AD9CF4 80062B54 3C018016 */  lui   $at, %hi(D_8015D39C)
/* AD9CF8 80062B58 E424D39C */  swc1  $f4, %lo(D_8015D39C)($at)
/* AD9CFC 80062B5C 3C01BF80 */  li    $at, 0xBF800000 # 0.000000
/* AD9D00 80062B60 44813000 */  mtc1  $at, $f6
/* AD9D04 80062B64 3C018016 */  lui   $at, %hi(D_8015D3A0)
/* AD9D08 80062B68 0C009B35 */  jal   Effect_Add
/* AD9D0C 80062B6C E426D3A0 */   swc1  $f6, %lo(D_8015D3A0)($at)
/* AD9D10 80062B70 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD9D14 80062B74 27BD0028 */  addiu $sp, $sp, 0x28
/* AD9D18 80062B78 03E00008 */  jr    $ra
/* AD9D1C 80062B7C 00000000 */   nop   

