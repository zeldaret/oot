glabel func_80B5E108
/* 02958 80B5E108 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 0295C 80B5E10C 3C0F80B6 */  lui     $t7, %hi(D_80B5FB14)       ## $t7 = 80B60000
/* 02960 80B5E110 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02964 80B5E114 25EFFB14 */  addiu   $t7, $t7, %lo(D_80B5FB14)  ## $t7 = 80B5FB14
/* 02968 80B5E118 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0296C 80B5E11C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02970 80B5E120 AFA50074 */  sw      $a1, 0x0074($sp)           
/* 02974 80B5E124 25E80024 */  addiu   $t0, $t7, 0x0024           ## $t0 = 80B5FB38
/* 02978 80B5E128 27AE0048 */  addiu   $t6, $sp, 0x0048           ## $t6 = FFFFFFD8
.L80B5E12C:
/* 0297C 80B5E12C 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B5FB14
/* 02980 80B5E130 25EF000C */  addiu   $t7, $t7, 0x000C           ## $t7 = 80B5FB20
/* 02984 80B5E134 25CE000C */  addiu   $t6, $t6, 0x000C           ## $t6 = FFFFFFE4
/* 02988 80B5E138 ADD9FFF4 */  sw      $t9, -0x000C($t6)          ## FFFFFFD8
/* 0298C 80B5E13C 8DF8FFF8 */  lw      $t8, -0x0008($t7)          ## 80B5FB18
/* 02990 80B5E140 ADD8FFF8 */  sw      $t8, -0x0008($t6)          ## FFFFFFDC
/* 02994 80B5E144 8DF9FFFC */  lw      $t9, -0x0004($t7)          ## 80B5FB1C
/* 02998 80B5E148 15E8FFF8 */  bne     $t7, $t0, .L80B5E12C       
/* 0299C 80B5E14C ADD9FFFC */  sw      $t9, -0x0004($t6)          ## FFFFFFE0
/* 029A0 80B5E150 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B5FB20
/* 029A4 80B5E154 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 029A8 80B5E158 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFE4
/* 029AC 80B5E15C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 029B0 80B5E160 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 029B4 80B5E164 1040000A */  beq     $v0, $zero, .L80B5E190     
/* 029B8 80B5E168 00000000 */  nop
/* 029BC 80B5E16C 8E0A0154 */  lw      $t2, 0x0154($s0)           ## 00000154
/* 029C0 80B5E170 3C090601 */  lui     $t1, 0x0601                ## $t1 = 06010000
/* 029C4 80B5E174 25290DF8 */  addiu   $t1, $t1, 0x0DF8           ## $t1 = 06010DF8
/* 029C8 80B5E178 152A0005 */  bne     $t1, $t2, .L80B5E190       
/* 029CC 80B5E17C 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 029D0 80B5E180 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 029D4 80B5E184 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 029D8 80B5E188 0C00D3B0 */  jal     func_80034EC0              
/* 029DC 80B5E18C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L80B5E190:
/* 029E0 80B5E190 0C2D6F37 */  jal     func_80B5BCDC              
/* 029E4 80B5E194 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029E8 80B5E198 10400003 */  beq     $v0, $zero, .L80B5E1A8     
/* 029EC 80B5E19C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029F0 80B5E1A0 0C2D6ECE */  jal     func_80B5BB38              
/* 029F4 80B5E1A4 8FA50074 */  lw      $a1, 0x0074($sp)           
.L80B5E1A8:
/* 029F8 80B5E1A8 8FA30074 */  lw      $v1, 0x0074($sp)           
/* 029FC 80B5E1AC 24010064 */  addiu   $at, $zero, 0x0064         ## $at = 00000064
/* 02A00 80B5E1B0 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 02A04 80B5E1B4 94621D74 */  lhu     $v0, 0x1D74($v1)           ## 00001D74
/* 02A08 80B5E1B8 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 02A0C 80B5E1BC 240D0003 */  addiu   $t5, $zero, 0x0003         ## $t5 = 00000003
/* 02A10 80B5E1C0 14410003 */  bne     $v0, $at, .L80B5E1D0       
/* 02A14 80B5E1C4 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFC8
/* 02A18 80B5E1C8 A20B020D */  sb      $t3, 0x020D($s0)           ## 0000020D
/* 02A1C 80B5E1CC 94621D74 */  lhu     $v0, 0x1D74($v1)           ## 00001D74
.L80B5E1D0:
/* 02A20 80B5E1D0 240101C2 */  addiu   $at, $zero, 0x01C2         ## $at = 000001C2
/* 02A24 80B5E1D4 54410005 */  bnel    $v0, $at, .L80B5E1EC       
/* 02A28 80B5E1D8 8C671D8C */  lw      $a3, 0x1D8C($v1)           ## 00001D8C
/* 02A2C 80B5E1DC A60C0210 */  sh      $t4, 0x0210($s0)           ## 00000210
/* 02A30 80B5E1E0 A200020D */  sb      $zero, 0x020D($s0)         ## 0000020D
/* 02A34 80B5E1E4 A20D020E */  sb      $t5, 0x020E($s0)           ## 0000020E
/* 02A38 80B5E1E8 8C671D8C */  lw      $a3, 0x1D8C($v1)           ## 00001D8C
.L80B5E1EC:
/* 02A3C 80B5E1EC 10E0002D */  beq     $a3, $zero, .L80B5E2A4     
/* 02A40 80B5E1F0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 02A44 80B5E1F4 0C2D6EF0 */  jal     func_80B5BBC0              
/* 02A48 80B5E1F8 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 02A4C 80B5E1FC 86020216 */  lh      $v0, 0x0216($s0)           ## 00000216
/* 02A50 80B5E200 8FA70044 */  lw      $a3, 0x0044($sp)           
/* 02A54 80B5E204 27A80038 */  addiu   $t0, $sp, 0x0038           ## $t0 = FFFFFFC8
/* 02A58 80B5E208 14400015 */  bne     $v0, $zero, .L80B5E260     
/* 02A5C 80B5E20C 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 02A60 80B5E210 8D0E0000 */  lw      $t6, 0x0000($t0)           ## FFFFFFC8
/* 02A64 80B5E214 27A3002C */  addiu   $v1, $sp, 0x002C           ## $v1 = FFFFFFBC
/* 02A68 80B5E218 AC6E0000 */  sw      $t6, 0x0000($v1)           ## FFFFFFBC
/* 02A6C 80B5E21C 8D0F0004 */  lw      $t7, 0x0004($t0)           ## FFFFFFCC
/* 02A70 80B5E220 8C790000 */  lw      $t9, 0x0000($v1)           ## FFFFFFBC
/* 02A74 80B5E224 AC6F0004 */  sw      $t7, 0x0004($v1)           ## FFFFFFC0
/* 02A78 80B5E228 8D0E0008 */  lw      $t6, 0x0008($t0)           ## FFFFFFD0
/* 02A7C 80B5E22C AC6E0008 */  sw      $t6, 0x0008($v1)           ## FFFFFFC4
/* 02A80 80B5E230 AE190008 */  sw      $t9, 0x0008($s0)           ## 00000008
/* 02A84 80B5E234 8C780004 */  lw      $t8, 0x0004($v1)           ## FFFFFFC0
/* 02A88 80B5E238 86020216 */  lh      $v0, 0x0216($s0)           ## 00000216
/* 02A8C 80B5E23C AE18000C */  sw      $t8, 0x000C($s0)           ## 0000000C
/* 02A90 80B5E240 8C790008 */  lw      $t9, 0x0008($v1)           ## FFFFFFC4
/* 02A94 80B5E244 AE190010 */  sw      $t9, 0x0010($s0)           ## 00000010
/* 02A98 80B5E248 8C6A0000 */  lw      $t2, 0x0000($v1)           ## FFFFFFBC
/* 02A9C 80B5E24C AE0A0024 */  sw      $t2, 0x0024($s0)           ## 00000024
/* 02AA0 80B5E250 8C690004 */  lw      $t1, 0x0004($v1)           ## FFFFFFC0
/* 02AA4 80B5E254 AE090028 */  sw      $t1, 0x0028($s0)           ## 00000028
/* 02AA8 80B5E258 8C6A0008 */  lw      $t2, 0x0008($v1)           ## FFFFFFC4
/* 02AAC 80B5E25C AE0A002C */  sw      $t2, 0x002C($s0)           ## 0000002C
.L80B5E260:
/* 02AB0 80B5E260 94E30000 */  lhu     $v1, 0x0000($a3)           ## 00000000
/* 02AB4 80B5E264 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 02AB8 80B5E268 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 02ABC 80B5E26C 10620008 */  beq     $v1, $v0, .L80B5E290       
/* 02AC0 80B5E270 00035880 */  sll     $t3, $v1,  2               
/* 02AC4 80B5E274 03AB3021 */  addu    $a2, $sp, $t3              
/* 02AC8 80B5E278 8CC60048 */  lw      $a2, 0x0048($a2)           ## 00000048
/* 02ACC 80B5E27C 0C00D3B0 */  jal     func_80034EC0              
/* 02AD0 80B5E280 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 02AD4 80B5E284 8FA70044 */  lw      $a3, 0x0044($sp)           
/* 02AD8 80B5E288 94EC0000 */  lhu     $t4, 0x0000($a3)           ## 00000000
/* 02ADC 80B5E28C A60C0216 */  sh      $t4, 0x0216($s0)           ## 00000216
.L80B5E290:
/* 02AE0 80B5E290 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02AE4 80B5E294 00000000 */  nop
/* 02AE8 80B5E298 E600005C */  swc1    $f0, 0x005C($s0)           ## 0000005C
/* 02AEC 80B5E29C E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 02AF0 80B5E2A0 E6000064 */  swc1    $f0, 0x0064($s0)           ## 00000064
.L80B5E2A4:
/* 02AF4 80B5E2A4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02AF8 80B5E2A8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02AFC 80B5E2AC 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 02B00 80B5E2B0 03E00008 */  jr      $ra                        
/* 02B04 80B5E2B4 00000000 */  nop
