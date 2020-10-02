.late_rodata
glabel D_809E1704
    .float 10000.0

.text
glabel func_809E0E2C
/* 00BEC 809E0E2C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00BF0 809E0E30 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 00BF4 809E0E34 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BF8 809E0E38 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 00BFC 809E0E3C AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00C00 809E0E40 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00C04 809E0E44 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 00C08 809E0E48 0C01DE80 */  jal     Math_ApproxF
              
/* 00C0C 809E0E4C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00C10 809E0E50 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 00C14 809E0E54 240E0028 */  addiu   $t6, $zero, 0x0028         ## $t6 = 00000028
/* 00C18 809E0E58 A20E0114 */  sb      $t6, 0x0114($s0)           ## 00000114
/* 00C1C 809E0E5C 31F88000 */  andi    $t8, $t7, 0x8000           ## $t8 = 00000000
/* 00C20 809E0E60 57000038 */  bnel    $t8, $zero, .L809E0F44     
/* 00C24 809E0E64 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 00C28 809E0E68 96190112 */  lhu     $t9, 0x0112($s0)           ## 00000112
/* 00C2C 809E0E6C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00C30 809E0E70 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00C34 809E0E74 33284000 */  andi    $t0, $t9, 0x4000           ## $t0 = 00000000
/* 00C38 809E0E78 51000007 */  beql    $t0, $zero, .L809E0E98     
/* 00C3C 809E0E7C 960B0088 */  lhu     $t3, 0x0088($s0)           ## 00000088
/* 00C40 809E0E80 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00C44 809E0E84 24060200 */  addiu   $a2, $zero, 0x0200         ## $a2 = 00000200
/* 00C48 809E0E88 860900B8 */  lh      $t1, 0x00B8($s0)           ## 000000B8
/* 00C4C 809E0E8C 252A1780 */  addiu   $t2, $t1, 0x1780           ## $t2 = 00001780
/* 00C50 809E0E90 A60A00B8 */  sh      $t2, 0x00B8($s0)           ## 000000B8
/* 00C54 809E0E94 960B0088 */  lhu     $t3, 0x0088($s0)           ## 00000088
.L809E0E98:
/* 00C58 809E0E98 3C06809E */  lui     $a2, %hi(D_809E1640)       ## $a2 = 809E0000
/* 00C5C 809E0E9C 24C61640 */  addiu   $a2, $a2, %lo(D_809E1640)  ## $a2 = 809E1640
/* 00C60 809E0EA0 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 00C64 809E0EA4 15800006 */  bne     $t4, $zero, .L809E0EC0     
/* 00C68 809E0EA8 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 00C6C 809E0EAC 44812000 */  mtc1    $at, $f4                   ## $f4 = -32000.00
/* 00C70 809E0EB0 C6060080 */  lwc1    $f6, 0x0080($s0)           ## 00000080
/* 00C74 809E0EB4 46062032 */  c.eq.s  $f4, $f6                   
/* 00C78 809E0EB8 00000000 */  nop
/* 00C7C 809E0EBC 45000020 */  bc1f    .L809E0F40                 
.L809E0EC0:
/* 00C80 809E0EC0 3C01809E */  lui     $at, %hi(D_809E1704)       ## $at = 809E0000
/* 00C84 809E0EC4 C42A1704 */  lwc1    $f10, %lo(D_809E1704)($at) 
/* 00C88 809E0EC8 C6080050 */  lwc1    $f8, 0x0050($s0)           ## 00000050
/* 00C8C 809E0ECC 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00C90 809E0ED0 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 00C94 809E0ED4 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00C98 809E0ED8 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 00C9C 809E0EDC 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 00CA0 809E0EE0 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 00CA4 809E0EE4 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00CA8 809E0EE8 240B0009 */  addiu   $t3, $zero, 0x0009         ## $t3 = 00000009
/* 00CAC 809E0EEC 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00CB0 809E0EF0 4600848D */  trunc.w.s $f18, $f16                 
/* 00CB4 809E0EF4 AFAC003C */  sw      $t4, 0x003C($sp)           
/* 00CB8 809E0EF8 AFAB0038 */  sw      $t3, 0x0038($sp)           
/* 00CBC 809E0EFC AFAA0034 */  sw      $t2, 0x0034($sp)           
/* 00CC0 809E0F00 440E9000 */  mfc1    $t6, $f18                  
/* 00CC4 809E0F04 AFA90028 */  sw      $t1, 0x0028($sp)           
/* 00CC8 809E0F08 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 00CCC 809E0F0C AFB90020 */  sw      $t9, 0x0020($sp)           
/* 00CD0 809E0F10 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 00CD4 809E0F14 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 00CD8 809E0F18 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 00CDC 809E0F1C AFA0002C */  sw      $zero, 0x002C($sp)         
/* 00CE0 809E0F20 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00CE4 809E0F24 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00CE8 809E0F28 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00CEC 809E0F2C 00C03825 */  or      $a3, $a2, $zero            ## $a3 = 809E1640
/* 00CF0 809E0F30 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 00CF4 809E0F34 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00CF8 809E0F38 0C2781B5 */  jal     func_809E06D4              
/* 00CFC 809E0F3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809E0F40:
/* 00D00 809E0F40 8FBF004C */  lw      $ra, 0x004C($sp)           
.L809E0F44:
/* 00D04 809E0F44 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 00D08 809E0F48 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00D0C 809E0F4C 03E00008 */  jr      $ra                        
/* 00D10 809E0F50 00000000 */  nop
