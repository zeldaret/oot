glabel EnExRuppy_Draw
/* 00DCC 80A0B1DC 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00DD0 80A0B1E0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00DD4 80A0B1E4 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00DD8 80A0B1E8 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00DDC 80A0B1EC AFA40050 */  sw      $a0, 0x0050($sp)           
/* 00DE0 80A0B1F0 848F0154 */  lh      $t7, 0x0154($a0)           ## 00000154
/* 00DE4 80A0B1F4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00DE8 80A0B1F8 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 00DEC 80A0B1FC 15E00041 */  bne     $t7, $zero, .L80A0B304     
/* 00DF0 80A0B200 3C0680A1 */  lui     $a2, %hi(D_80A0B4D0)       ## $a2 = 80A10000
/* 00DF4 80A0B204 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00DF8 80A0B208 24C6B4D0 */  addiu   $a2, $a2, %lo(D_80A0B4D0)  ## $a2 = 80A0B4D0
/* 00DFC 80A0B20C 24070306 */  addiu   $a3, $zero, 0x0306         ## $a3 = 00000306
/* 00E00 80A0B210 0C031AB1 */  jal     func_800C6AC4              
/* 00E04 80A0B214 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00E08 80A0B218 0C024F46 */  jal     func_80093D18              
/* 00E0C 80A0B21C 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00E10 80A0B220 8FA40050 */  lw      $a0, 0x0050($sp)           
/* 00E14 80A0B224 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00E18 80A0B228 0C00BAF3 */  jal     func_8002EBCC              
/* 00E1C 80A0B22C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00E20 80A0B230 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00E24 80A0B234 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 00E28 80A0B238 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 00E2C 80A0B23C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00E30 80A0B240 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 00E34 80A0B244 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00E38 80A0B248 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00E3C 80A0B24C 3C0580A1 */  lui     $a1, %hi(D_80A0B4E4)       ## $a1 = 80A10000
/* 00E40 80A0B250 24A5B4E4 */  addiu   $a1, $a1, %lo(D_80A0B4E4)  ## $a1 = 80A0B4E4
/* 00E44 80A0B254 2406030C */  addiu   $a2, $zero, 0x030C         ## $a2 = 0000030C
/* 00E48 80A0B258 0C0346A2 */  jal     Matrix_NewMtx              
/* 00E4C 80A0B25C AFA20030 */  sw      $v0, 0x0030($sp)           
/* 00E50 80A0B260 8FA30030 */  lw      $v1, 0x0030($sp)           
/* 00E54 80A0B264 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 00E58 80A0B268 35290020 */  ori     $t1, $t1, 0x0020           ## $t1 = DB060020
/* 00E5C 80A0B26C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00E60 80A0B270 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00E64 80A0B274 3C0480A1 */  lui     $a0, %hi(D_80A0B3B8)       ## $a0 = 80A10000
/* 00E68 80A0B278 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 00E6C 80A0B27C 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 00E70 80A0B280 AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 00E74 80A0B284 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00E78 80A0B288 8FAA0050 */  lw      $t2, 0x0050($sp)           
/* 00E7C 80A0B28C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00E80 80A0B290 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00E84 80A0B294 854B0150 */  lh      $t3, 0x0150($t2)           ## 00000150
/* 00E88 80A0B298 3C0680A1 */  lui     $a2, %hi(D_80A0B4F8)       ## $a2 = 80A10000
/* 00E8C 80A0B29C 24C6B4F8 */  addiu   $a2, $a2, %lo(D_80A0B4F8)  ## $a2 = 80A0B4F8
/* 00E90 80A0B2A0 000B6080 */  sll     $t4, $t3,  2               
/* 00E94 80A0B2A4 008C2021 */  addu    $a0, $a0, $t4              
/* 00E98 80A0B2A8 8C84B3B8 */  lw      $a0, %lo(D_80A0B3B8)($a0)  
/* 00E9C 80A0B2AC 3C0C0404 */  lui     $t4, 0x0404                ## $t4 = 04040000
/* 00EA0 80A0B2B0 258C2440 */  addiu   $t4, $t4, 0x2440           ## $t4 = 04042440
/* 00EA4 80A0B2B4 00047100 */  sll     $t6, $a0,  4               
/* 00EA8 80A0B2B8 000E7F02 */  srl     $t7, $t6, 28               
/* 00EAC 80A0B2BC 000FC080 */  sll     $t8, $t7,  2               
/* 00EB0 80A0B2C0 0338C821 */  addu    $t9, $t9, $t8              
/* 00EB4 80A0B2C4 8F396FA8 */  lw      $t9, 0x6FA8($t9)           ## 80166FA8
/* 00EB8 80A0B2C8 00816824 */  and     $t5, $a0, $at              
/* 00EBC 80A0B2CC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00EC0 80A0B2D0 01B94021 */  addu    $t0, $t5, $t9              
/* 00EC4 80A0B2D4 01014821 */  addu    $t1, $t0, $at              
/* 00EC8 80A0B2D8 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 00ECC 80A0B2DC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00ED0 80A0B2E0 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 00ED4 80A0B2E4 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 00ED8 80A0B2E8 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00EDC 80A0B2EC AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 00EE0 80A0B2F0 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 00EE4 80A0B2F4 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00EE8 80A0B2F8 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 00EEC 80A0B2FC 0C031AD5 */  jal     func_800C6B54              
/* 00EF0 80A0B300 24070310 */  addiu   $a3, $zero, 0x0310         ## $a3 = 00000310
.L80A0B304:
/* 00EF4 80A0B304 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00EF8 80A0B308 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00EFC 80A0B30C 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00F00 80A0B310 03E00008 */  jr      $ra                        
/* 00F04 80A0B314 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00F08 80A0B318 00000000 */  nop
/* 00F0C 80A0B31C 00000000 */  nop

