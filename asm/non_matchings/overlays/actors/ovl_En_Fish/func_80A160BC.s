.late_rodata
glabel D_80A171B8
    .float 0.1

glabel D_80A171BC
    .float 0.2

glabel D_80A171C0
    .float 1.2

glabel D_80A171C4
    .float 0.2

glabel D_80A171C8
    .float 0.2

.text
glabel func_80A160BC
/* 00E3C 80A160BC 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00E40 80A160C0 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 00E44 80A160C4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00E48 80A160C8 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00E4C 80A160CC 44813000 */  mtc1    $at, $f6                   ## $f6 = -10.00
/* 00E50 80A160D0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E54 80A160D4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00E58 80A160D8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E5C 80A160DC E484006C */  swc1    $f4, 0x006C($a0)           ## 0000006C
/* 00E60 80A160E0 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00E64 80A160E4 E4860070 */  swc1    $f6, 0x0070($a0)           ## 00000070
/* 00E68 80A160E8 3C0180A1 */  lui     $at, %hi(D_80A171B8)       ## $at = 80A10000
/* 00E6C 80A160EC C42871B8 */  lwc1    $f8, %lo(D_80A171B8)($at)  
/* 00E70 80A160F0 3C0180A1 */  lui     $at, %hi(D_80A171BC)       ## $at = 80A10000
/* 00E74 80A160F4 4608003C */  c.lt.s  $f0, $f8                   
/* 00E78 80A160F8 00000000 */  nop
/* 00E7C 80A160FC 4500000C */  bc1f    .L80A16130                 
/* 00E80 80A16100 00000000 */  nop
/* 00E84 80A16104 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00E88 80A16108 00000000 */  nop
/* 00E8C 80A1610C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00E90 80A16110 44815000 */  mtc1    $at, $f10                  ## $f10 = 3.00
/* 00E94 80A16114 3C014020 */  lui     $at, 0x4020                ## $at = 40200000
/* 00E98 80A16118 44819000 */  mtc1    $at, $f18                  ## $f18 = 2.50
/* 00E9C 80A1611C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00EA0 80A16120 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00EA4 80A16124 46128100 */  add.s   $f4, $f16, $f18            
/* 00EA8 80A16128 1000001D */  beq     $zero, $zero, .L80A161A0   
/* 00EAC 80A1612C E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
.L80A16130:
/* 00EB0 80A16130 C42671BC */  lwc1    $f6, %lo(D_80A171BC)($at)  
/* 00EB4 80A16134 4606003C */  c.lt.s  $f0, $f6                   
/* 00EB8 80A16138 00000000 */  nop
/* 00EBC 80A1613C 4502000D */  bc1fl   .L80A16174                 
/* 00EC0 80A16140 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00EC4 80A16144 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00EC8 80A16148 00000000 */  nop
/* 00ECC 80A1614C 3C0180A1 */  lui     $at, %hi(D_80A171C0)       ## $at = 80A10000
/* 00ED0 80A16150 C42871C0 */  lwc1    $f8, %lo(D_80A171C0)($at)  
/* 00ED4 80A16154 3C0180A1 */  lui     $at, %hi(D_80A171C4)       ## $at = 80A10000
/* 00ED8 80A16158 C43071C4 */  lwc1    $f16, %lo(D_80A171C4)($at) 
/* 00EDC 80A1615C 46080282 */  mul.s   $f10, $f0, $f8             
/* 00EE0 80A16160 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00EE4 80A16164 46105480 */  add.s   $f18, $f10, $f16           
/* 00EE8 80A16168 1000000D */  beq     $zero, $zero, .L80A161A0   
/* 00EEC 80A1616C E6120060 */  swc1    $f18, 0x0060($s0)          ## 00000060
/* 00EF0 80A16170 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
.L80A16174:
/* 00EF4 80A16174 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00EF8 80A16178 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 00EFC 80A1617C 3C0180A1 */  lui     $at, %hi(D_80A171C8)       ## $at = 80A10000
/* 00F00 80A16180 C42671C8 */  lwc1    $f6, %lo(D_80A171C8)($at)  
/* 00F04 80A16184 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00F08 80A16188 4606003C */  c.lt.s  $f0, $f6                   
/* 00F0C 80A1618C 00000000 */  nop
/* 00F10 80A16190 45000003 */  bc1f    .L80A161A0                 
/* 00F14 80A16194 00000000 */  nop
/* 00F18 80A16198 10000001 */  beq     $zero, $zero, .L80A161A0   
/* 00F1C 80A1619C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A161A0:
/* 00F20 80A161A0 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 00F24 80A161A4 44814000 */  mtc1    $at, $f8                   ## $f8 = 300.00
/* 00F28 80A161A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F2C 80A161AC E60800BC */  swc1    $f8, 0x00BC($s0)           ## 000000BC
/* 00F30 80A161B0 0C2854C4 */  jal     func_80A15310              
/* 00F34 80A161B4 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 00F38 80A161B8 8FA20024 */  lw      $v0, 0x0024($sp)           
/* 00F3C 80A161BC 3C0E80A1 */  lui     $t6, %hi(func_80A16200)    ## $t6 = 80A10000
/* 00F40 80A161C0 25CE6200 */  addiu   $t6, $t6, %lo(func_80A16200) ## $t6 = 80A16200
/* 00F44 80A161C4 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 00F48 80A161C8 AE0E0244 */  sw      $t6, 0x0244($s0)           ## 00000244
/* 00F4C 80A161CC 10400007 */  beq     $v0, $zero, .L80A161EC     
/* 00F50 80A161D0 AE0F0250 */  sw      $t7, 0x0250($s0)           ## 00000250
/* 00F54 80A161D4 8E180134 */  lw      $t8, 0x0134($s0)           ## 00000134
/* 00F58 80A161D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F5C 80A161DC 53000004 */  beql    $t8, $zero, .L80A161F0     
/* 00F60 80A161E0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00F64 80A161E4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00F68 80A161E8 24052869 */  addiu   $a1, $zero, 0x2869         ## $a1 = 00002869
.L80A161EC:
/* 00F6C 80A161EC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A161F0:
/* 00F70 80A161F0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00F74 80A161F4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00F78 80A161F8 03E00008 */  jr      $ra                        
/* 00F7C 80A161FC 00000000 */  nop
