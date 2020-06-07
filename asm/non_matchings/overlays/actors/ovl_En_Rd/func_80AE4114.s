glabel func_80AE4114
/* 01D14 80AE4114 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01D18 80AE4118 3C0F8016 */  lui     $t7, %hi(gSaveContext+0x1422)
/* 01D1C 80AE411C 85EFFA82 */  lh      $t7, %lo(gSaveContext+0x1422)($t7)
/* 01D20 80AE4120 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01D24 80AE4124 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01D28 80AE4128 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01D2C 80AE412C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01D30 80AE4130 11E00013 */  beq     $t7, $zero, .L80AE4180     
/* 01D34 80AE4134 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 01D38 80AE4138 849800B4 */  lh      $t8, 0x00B4($a0)           ## 000000B4
/* 01D3C 80AE413C 57000011 */  bnel    $t8, $zero, .L80AE4184     
/* 01D40 80AE4140 92020331 */  lbu     $v0, 0x0331($s0)           ## 00000331
/* 01D44 80AE4144 90990318 */  lbu     $t9, 0x0318($a0)           ## 00000318
/* 01D48 80AE4148 5720000E */  bnel    $t9, $zero, .L80AE4184     
/* 01D4C 80AE414C 92020331 */  lbu     $v0, 0x0331($s0)           ## 00000331
/* 01D50 80AE4150 9082031B */  lbu     $v0, 0x031B($a0)           ## 0000031B
/* 01D54 80AE4154 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 01D58 80AE4158 10410009 */  beq     $v0, $at, .L80AE4180       
/* 01D5C 80AE415C 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 01D60 80AE4160 10410007 */  beq     $v0, $at, .L80AE4180       
/* 01D64 80AE4164 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01D68 80AE4168 50410006 */  beql    $v0, $at, .L80AE4184       
/* 01D6C 80AE416C 92020331 */  lbu     $v0, 0x0331($s0)           ## 00000331
/* 01D70 80AE4170 0C2B8F79 */  jal     func_80AE3DE4              
/* 01D74 80AE4174 00000000 */  nop
/* 01D78 80AE4178 10000054 */  beq     $zero, $zero, .L80AE42CC   
/* 01D7C 80AE417C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE4180:
/* 01D80 80AE4180 92020331 */  lbu     $v0, 0x0331($s0)           ## 00000331
.L80AE4184:
/* 01D84 80AE4184 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 01D88 80AE4188 30480002 */  andi    $t0, $v0, 0x0002           ## $t0 = 00000000
/* 01D8C 80AE418C 1100004E */  beq     $t0, $zero, .L80AE42C8     
/* 01D90 80AE4190 3049FFFD */  andi    $t1, $v0, 0xFFFD           ## $t1 = 00000000
/* 01D94 80AE4194 920B031B */  lbu     $t3, 0x031B($s0)           ## 0000031B
/* 01D98 80AE4198 920A00B1 */  lbu     $t2, 0x00B1($s0)           ## 000000B1
/* 01D9C 80AE419C A2090331 */  sb      $t1, 0x0331($s0)           ## 00000331
/* 01DA0 80AE41A0 11610049 */  beq     $t3, $at, .L80AE42C8       
/* 01DA4 80AE41A4 A20A031C */  sb      $t2, 0x031C($s0)           ## 0000031C
/* 01DA8 80AE41A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DAC 80AE41AC 26050338 */  addiu   $a1, $s0, 0x0338           ## $a1 = 00000338
/* 01DB0 80AE41B0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01DB4 80AE41B4 0C00D594 */  jal     func_80035650              
/* 01DB8 80AE41B8 AFA30028 */  sw      $v1, 0x0028($sp)           
/* 01DBC 80AE41BC 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 01DC0 80AE41C0 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 01DC4 80AE41C4 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 01DC8 80AE41C8 806C0844 */  lb      $t4, 0x0844($v1)           ## 00000844
/* 01DCC 80AE41CC 51800004 */  beql    $t4, $zero, .L80AE41E0     
/* 01DD0 80AE41D0 9202031C */  lbu     $v0, 0x031C($s0)           ## 0000031C
/* 01DD4 80AE41D4 906D0845 */  lbu     $t5, 0x0845($v1)           ## 00000845
/* 01DD8 80AE41D8 A20D031D */  sb      $t5, 0x031D($s0)           ## 0000031D
/* 01DDC 80AE41DC 9202031C */  lbu     $v0, 0x031C($s0)           ## 0000031C
.L80AE41E0:
/* 01DE0 80AE41E0 5040003A */  beql    $v0, $zero, .L80AE42CC     
/* 01DE4 80AE41E4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01DE8 80AE41E8 50410038 */  beql    $v0, $at, .L80AE42CC       
/* 01DEC 80AE41EC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01DF0 80AE41F0 10820003 */  beq     $a0, $v0, .L80AE4200       
/* 01DF4 80AE41F4 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 01DF8 80AE41F8 5441000B */  bnel    $v0, $at, .L80AE4228       
/* 01DFC 80AE41FC 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
.L80AE4200:
/* 01E00 80AE4200 920E031B */  lbu     $t6, 0x031B($s0)           ## 0000031B
/* 01E04 80AE4204 508E0008 */  beql    $a0, $t6, .L80AE4228       
/* 01E08 80AE4208 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 01E0C 80AE420C 0C00D58A */  jal     Actor_ApplyDamage
              
/* 01E10 80AE4210 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E14 80AE4214 0C2B8F79 */  jal     func_80AE3DE4              
/* 01E18 80AE4218 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E1C 80AE421C 1000002B */  beq     $zero, $zero, .L80AE42CC   
/* 01E20 80AE4220 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01E24 80AE4224 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
.L80AE4228:
/* 01E28 80AE4228 A2000318 */  sb      $zero, 0x0318($s0)         ## 00000318
/* 01E2C 80AE422C 1441000B */  bne     $v0, $at, .L80AE425C       
/* 01E30 80AE4230 A6000316 */  sh      $zero, 0x0316($s0)         ## 00000316
/* 01E34 80AE4234 240F0050 */  addiu   $t7, $zero, 0x0050         ## $t7 = 00000050
/* 01E38 80AE4238 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 01E3C 80AE423C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E40 80AE4240 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 01E44 80AE4244 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 01E48 80AE4248 0C00D09B */  jal     func_8003426C              
/* 01E4C 80AE424C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01E50 80AE4250 24180028 */  addiu   $t8, $zero, 0x0028         ## $t8 = 00000028
/* 01E54 80AE4254 10000008 */  beq     $zero, $zero, .L80AE4278   
/* 01E58 80AE4258 A218031A */  sb      $t8, 0x031A($s0)           ## 0000031A
.L80AE425C:
/* 01E5C 80AE425C 24190008 */  addiu   $t9, $zero, 0x0008         ## $t9 = 00000008
/* 01E60 80AE4260 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 01E64 80AE4264 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E68 80AE4268 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 01E6C 80AE426C 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 01E70 80AE4270 0C00D09B */  jal     func_8003426C              
/* 01E74 80AE4274 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
.L80AE4278:
/* 01E78 80AE4278 0C00D58A */  jal     Actor_ApplyDamage
              
/* 01E7C 80AE427C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E80 80AE4280 920800AF */  lbu     $t0, 0x00AF($s0)           ## 000000AF
/* 01E84 80AE4284 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01E88 80AE4288 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01E8C 80AE428C 1500000C */  bne     $t0, $zero, .L80AE42C0     
/* 01E90 80AE4290 00000000 */  nop
/* 01E94 80AE4294 0C2B898C */  jal     func_80AE2630              
/* 01E98 80AE4298 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01E9C 80AE429C 0C2B8F08 */  jal     func_80AE3C20              
/* 01EA0 80AE42A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EA4 80AE42A4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01EA8 80AE42A8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01EAC 80AE42AC 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 01EB0 80AE42B0 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 01EB4 80AE42B4 24070090 */  addiu   $a3, $zero, 0x0090         ## $a3 = 00000090
/* 01EB8 80AE42B8 10000004 */  beq     $zero, $zero, .L80AE42CC   
/* 01EBC 80AE42BC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE42C0:
/* 01EC0 80AE42C0 0C2B8EA3 */  jal     func_80AE3A8C              
/* 01EC4 80AE42C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AE42C8:
/* 01EC8 80AE42C8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE42CC:
/* 01ECC 80AE42CC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01ED0 80AE42D0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01ED4 80AE42D4 03E00008 */  jr      $ra                        
/* 01ED8 80AE42D8 00000000 */  nop
