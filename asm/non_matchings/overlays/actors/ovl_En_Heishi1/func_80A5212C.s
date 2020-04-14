glabel func_80A5212C
/* 00E5C 80A5212C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00E60 80A52130 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E64 80A52134 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00E68 80A52138 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00E6C 80A5213C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00E70 80A52140 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00E74 80A52144 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00E78 80A52148 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 00E7C 80A5214C 85CF0268 */  lh      $t7, 0x0268($t6)           ## 00000268
/* 00E80 80A52150 55E00026 */  bnel    $t7, $zero, .L80A521EC     
/* 00E84 80A52154 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00E88 80A52158 0C042F6F */  jal     func_8010BDBC              
/* 00E8C 80A5215C 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 00E90 80A52160 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00E94 80A52164 54410021 */  bnel    $v0, $at, .L80A521EC       
/* 00E98 80A52168 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00E9C 80A5216C 0C041AF2 */  jal     func_80106BC8              
/* 00EA0 80A52170 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EA4 80A52174 5040001D */  beql    $v0, $zero, .L80A521EC     
/* 00EA8 80A52178 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00EAC 80A5217C 0C041B33 */  jal     func_80106CCC              
/* 00EB0 80A52180 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EB4 80A52184 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00EB8 80A52188 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00EBC 80A5218C 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00EC0 80A52190 84980268 */  lh      $t8, 0x0268($a0)           ## 00000268
/* 00EC4 80A52194 2403002E */  addiu   $v1, $zero, 0x002E         ## $v1 = 0000002E
/* 00EC8 80A52198 240904FA */  addiu   $t1, $zero, 0x04FA         ## $t1 = 000004FA
/* 00ECC 80A5219C 17000012 */  bne     $t8, $zero, .L80A521E8     
/* 00ED0 80A521A0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00ED4 80A521A4 94590EDC */  lhu     $t9, 0x0EDC($v0)           ## 8015F53C
/* 00ED8 80A521A8 00300821 */  addu    $at, $at, $s0              
/* 00EDC 80A521AC 240A0014 */  addiu   $t2, $zero, 0x0014         ## $t2 = 00000014
/* 00EE0 80A521B0 37284000 */  ori     $t0, $t9, 0x4000           ## $t0 = 00004000
/* 00EE4 80A521B4 A4480EDC */  sh      $t0, 0x0EDC($v0)           ## 8015F53C
/* 00EE8 80A521B8 A4291E1A */  sh      $t1, 0x1E1A($at)           ## 00011E1A
/* 00EEC 80A521BC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00EF0 80A521C0 00300821 */  addu    $at, $at, $s0              
/* 00EF4 80A521C4 A02A1E15 */  sb      $t2, 0x1E15($at)           ## 00011E15
/* 00EF8 80A521C8 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00EFC 80A521CC A48B0268 */  sh      $t3, 0x0268($a0)           ## 00000268
/* 00F00 80A521D0 3C0180A5 */  lui     $at, %hi(D_80A527A0)       ## $at = 80A50000
/* 00F04 80A521D4 AC2027A0 */  sw      $zero, %lo(D_80A527A0)($at) 
/* 00F08 80A521D8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00F0C 80A521DC 00300821 */  addu    $at, $at, $s0              
/* 00F10 80A521E0 A0231E5E */  sb      $v1, 0x1E5E($at)           ## 00011E5E
/* 00F14 80A521E4 A043141D */  sb      $v1, 0x141D($v0)           ## 8015FA7D
.L80A521E8:
/* 00F18 80A521E8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A521EC:
/* 00F1C 80A521EC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00F20 80A521F0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00F24 80A521F4 03E00008 */  jr      $ra                        
/* 00F28 80A521F8 00000000 */  nop
