.late_rodata
glabel D_8090DAA4
    .float 6.28318548203
    .balign 4

glabel D_8090DAA8
    .float 6.28318548203
    .balign 4

glabel D_8090DAAC
    .float 6.28318548203
    .balign 4

.text
glabel func_808FD27C
/* 0033C 808FD27C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00340 808FD280 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00344 808FD284 3C100001 */  lui     $s0, 0x0001                ## $s0 = 00010000
/* 00348 808FD288 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0034C 808FD28C AFA7002C */  sw      $a3, 0x002C($sp)           
/* 00350 808FD290 02048021 */  addu    $s0, $s0, $a0              
/* 00354 808FD294 8E101E10 */  lw      $s0, 0x1E10($s0)           ## 00011E10
/* 00358 808FD298 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L808FD29C:
/* 0035C 808FD29C 920E0000 */  lbu     $t6, 0x0000($s0)           ## 00010000
/* 00360 808FD2A0 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 00364 808FD2A4 00021400 */  sll     $v0, $v0, 16               
/* 00368 808FD2A8 15C00024 */  bne     $t6, $zero, .L808FD33C     
/* 0036C 808FD2AC 00021403 */  sra     $v0, $v0, 16               
/* 00370 808FD2B0 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 00374 808FD2B4 A20F0000 */  sb      $t7, 0x0000($s0)           ## 00010000
/* 00378 808FD2B8 8CB90000 */  lw      $t9, 0x0000($a1)           ## 00000000
/* 0037C 808FD2BC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00380 808FD2C0 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00384 808FD2C4 AE190004 */  sw      $t9, 0x0004($s0)           ## 00010004
/* 00388 808FD2C8 8CB80004 */  lw      $t8, 0x0004($a1)           ## 00000004
/* 0038C 808FD2CC 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 00390 808FD2D0 3C018091 */  lui     $at, %hi(D_8090DAA4)       ## $at = 80910000
/* 00394 808FD2D4 AE180008 */  sw      $t8, 0x0008($s0)           ## 00010008
/* 00398 808FD2D8 8CB90008 */  lw      $t9, 0x0008($a1)           ## 00000008
/* 0039C 808FD2DC AE19000C */  sw      $t9, 0x000C($s0)           ## 0001000C
/* 003A0 808FD2E0 8CC90000 */  lw      $t1, 0x0000($a2)           ## 00000000
/* 003A4 808FD2E4 AE090010 */  sw      $t1, 0x0010($s0)           ## 00010010
/* 003A8 808FD2E8 8CC80004 */  lw      $t0, 0x0004($a2)           ## 00000004
/* 003AC 808FD2EC AE080014 */  sw      $t0, 0x0014($s0)           ## 00010014
/* 003B0 808FD2F0 8CC90008 */  lw      $t1, 0x0008($a2)           ## 00000008
/* 003B4 808FD2F4 E600001C */  swc1    $f0, 0x001C($s0)           ## 0001001C
/* 003B8 808FD2F8 E6000024 */  swc1    $f0, 0x0024($s0)           ## 00010024
/* 003BC 808FD2FC E6040020 */  swc1    $f4, 0x0020($s0)           ## 00010020
/* 003C0 808FD300 AE090018 */  sw      $t1, 0x0018($s0)           ## 00010018
/* 003C4 808FD304 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 003C8 808FD308 C42CDAA4 */  lwc1    $f12, %lo(D_8090DAA4)($at) 
/* 003CC 808FD30C E6000040 */  swc1    $f0, 0x0040($s0)           ## 00010040
/* 003D0 808FD310 3C018091 */  lui     $at, %hi(D_8090DAA8)       ## $at = 80910000
/* 003D4 808FD314 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 003D8 808FD318 C42CDAA8 */  lwc1    $f12, %lo(D_8090DAA8)($at) 
/* 003DC 808FD31C E600003C */  swc1    $f0, 0x003C($s0)           ## 0001003C
/* 003E0 808FD320 3C018091 */  lui     $at, %hi(D_8090DAAC)       ## $at = 80910000
/* 003E4 808FD324 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 003E8 808FD328 C42CDAAC */  lwc1    $f12, %lo(D_8090DAAC)($at) 
/* 003EC 808FD32C E6000038 */  swc1    $f0, 0x0038($s0)           ## 00010038
/* 003F0 808FD330 C7A6002C */  lwc1    $f6, 0x002C($sp)           
/* 003F4 808FD334 10000004 */  beq     $zero, $zero, .L808FD348   
/* 003F8 808FD338 E6060034 */  swc1    $f6, 0x0034($s0)           ## 00010034
.L808FD33C:
/* 003FC 808FD33C 28410064 */  slti    $at, $v0, 0x0064           
/* 00400 808FD340 1420FFD6 */  bne     $at, $zero, .L808FD29C     
/* 00404 808FD344 26100044 */  addiu   $s0, $s0, 0x0044           ## $s0 = 00010044
.L808FD348:
/* 00408 808FD348 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0040C 808FD34C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00410 808FD350 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00414 808FD354 03E00008 */  jr      $ra                        
/* 00418 808FD358 00000000 */  nop


