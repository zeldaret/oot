.late_rodata
glabel D_80AFE124
 .word 0x45EA6000

.text
glabel func_80AFD968
/* 00FC8 80AFD968 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 00FCC 80AFD96C AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00FD0 80AFD970 AFB30038 */  sw      $s3, 0x0038($sp)           
/* 00FD4 80AFD974 AFB20034 */  sw      $s2, 0x0034($sp)           
/* 00FD8 80AFD978 AFB10030 */  sw      $s1, 0x0030($sp)           
/* 00FDC 80AFD97C AFB0002C */  sw      $s0, 0x002C($sp)           
/* 00FE0 80AFD980 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 00FE4 80AFD984 90820280 */  lbu     $v0, 0x0280($a0)           ## 00000280
/* 00FE8 80AFD988 24110001 */  addiu   $s1, $zero, 0x0001         ## $s1 = 00000001
/* 00FEC 80AFD98C 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00FF0 80AFD990 12220012 */  beq     $s1, $v0, .L80AFD9DC       
/* 00FF4 80AFD994 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 00FF8 80AFD998 948E0088 */  lhu     $t6, 0x0088($a0)           ## 00000088
/* 00FFC 80AFD99C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 01000 80AFD9A0 31CF0060 */  andi    $t7, $t6, 0x0060           ## $t7 = 00000000
/* 01004 80AFD9A4 51E0000E */  beql    $t7, $zero, .L80AFD9E0     
/* 01008 80AFD9A8 28410003 */  slti    $at, $v0, 0x0003           
/* 0100C 80AFD9AC C4840084 */  lwc1    $f4, 0x0084($a0)           ## 00000084
/* 01010 80AFD9B0 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 01014 80AFD9B4 00000000 */  nop
/* 01018 80AFD9B8 4604303E */  c.le.s  $f6, $f4                   
/* 0101C 80AFD9BC 00000000 */  nop
/* 01020 80AFD9C0 45020007 */  bc1fl   .L80AFD9E0                 
/* 01024 80AFD9C4 28410003 */  slti    $at, $v0, 0x0003           
/* 01028 80AFD9C8 A08000AF */  sb      $zero, 0x00AF($a0)         ## 000000AF
/* 0102C 80AFD9CC 0C2BF5ED */  jal     func_80AFD7B4              
/* 01030 80AFD9D0 A0800281 */  sb      $zero, 0x0281($a0)         ## 00000281
/* 01034 80AFD9D4 10000087 */  beq     $zero, $zero, .L80AFDBF4   
/* 01038 80AFD9D8 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80AFD9DC:
/* 0103C 80AFD9DC 28410003 */  slti    $at, $v0, 0x0003           
.L80AFD9E0:
/* 01040 80AFD9E0 54200084 */  bnel    $at, $zero, .L80AFDBF4     
/* 01044 80AFD9E4 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 01048 80AFD9E8 924202B5 */  lbu     $v0, 0x02B5($s2)           ## 000002B5
/* 0104C 80AFD9EC 30580002 */  andi    $t8, $v0, 0x0002           ## $t8 = 00000000
/* 01050 80AFD9F0 53000080 */  beql    $t8, $zero, .L80AFDBF4     
/* 01054 80AFD9F4 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 01058 80AFD9F8 924300B1 */  lbu     $v1, 0x00B1($s2)           ## 000000B1
/* 0105C 80AFD9FC 24100006 */  addiu   $s0, $zero, 0x0006         ## $s0 = 00000006
/* 01060 80AFDA00 3059FFFD */  andi    $t9, $v0, 0xFFFD           ## $t9 = 00000000
/* 01064 80AFDA04 1203007A */  beq     $s0, $v1, .L80AFDBF0       
/* 01068 80AFDA08 A25902B5 */  sb      $t9, 0x02B5($s2)           ## 000002B5
/* 0106C 80AFDA0C 8E4502C0 */  lw      $a1, 0x02C0($s2)           ## 000002C0
/* 01070 80AFDA10 A2430282 */  sb      $v1, 0x0282($s2)           ## 00000282
/* 01074 80AFDA14 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01078 80AFDA18 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000001
/* 0107C 80AFDA1C 0C00D594 */  jal     func_80035650              
/* 01080 80AFDA20 24A50040 */  addiu   $a1, $a1, 0x0040           ## $a1 = 00000040
/* 01084 80AFDA24 924200B1 */  lbu     $v0, 0x00B1($s2)           ## 000000B1
/* 01088 80AFDA28 A2400281 */  sb      $zero, 0x0281($s2)         ## 00000281
/* 0108C 80AFDA2C 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 01090 80AFDA30 16220010 */  bne     $s1, $v0, .L80AFDA74       
/* 01094 80AFDA34 00000000 */  nop
/* 01098 80AFDA38 92480280 */  lbu     $t0, 0x0280($s2)           ## 00000280
/* 0109C 80AFDA3C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 010A0 80AFDA40 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 010A4 80AFDA44 1208006A */  beq     $s0, $t0, .L80AFDBF0       
/* 010A8 80AFDA48 24060078 */  addiu   $a2, $zero, 0x0078         ## $a2 = 00000078
/* 010AC 80AFDA4C 24090050 */  addiu   $t1, $zero, 0x0050         ## $t1 = 00000050
/* 010B0 80AFDA50 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 010B4 80AFDA54 0C00D09B */  jal     func_8003426C              
/* 010B8 80AFDA58 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 010BC 80AFDA5C 0C00D58A */  jal     Actor_ApplyDamage
              
/* 010C0 80AFDA60 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 010C4 80AFDA64 0C2BF550 */  jal     func_80AFD540              
/* 010C8 80AFDA68 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 010CC 80AFDA6C 10000061 */  beq     $zero, $zero, .L80AFDBF4   
/* 010D0 80AFDA70 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80AFDA74:
/* 010D4 80AFDA74 14410034 */  bne     $v0, $at, .L80AFDB48       
/* 010D8 80AFDA78 24030008 */  addiu   $v1, $zero, 0x0008         ## $v1 = 00000008
/* 010DC 80AFDA7C 3C0180B0 */  lui     $at, %hi(D_80AFE124)       ## $at = 80B00000
/* 010E0 80AFDA80 C42AE124 */  lwc1    $f10, %lo(D_80AFE124)($at) 
/* 010E4 80AFDA84 C6480054 */  lwc1    $f8, 0x0054($s2)           ## 00000054
/* 010E8 80AFDA88 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 010EC 80AFDA8C 26420024 */  addiu   $v0, $s2, 0x0024           ## $v0 = 00000024
/* 010F0 80AFDA90 460A4402 */  mul.s   $f16, $f8, $f10            
/* 010F4 80AFDA94 4481A000 */  mtc1    $at, $f20                  ## $f20 = 20.00
/* 010F8 80AFDA98 AFA20044 */  sw      $v0, 0x0044($sp)           
/* 010FC 80AFDA9C 24100004 */  addiu   $s0, $zero, 0x0004         ## $s0 = 00000004
/* 01100 80AFDAA0 27B10054 */  addiu   $s1, $sp, 0x0054           ## $s1 = FFFFFFEC
/* 01104 80AFDAA4 4600848D */  trunc.w.s $f18, $f16                 
/* 01108 80AFDAA8 440B9000 */  mfc1    $t3, $f18                  
/* 0110C 80AFDAAC 00000000 */  nop
/* 01110 80AFDAB0 A7AB0052 */  sh      $t3, 0x0052($sp)           
/* 01114 80AFDAB4 8FA20044 */  lw      $v0, 0x0044($sp)           
.L80AFDAB8:
/* 01118 80AFDAB8 4600A306 */  mov.s   $f12, $f20                 
/* 0111C 80AFDABC 8C4D0000 */  lw      $t5, 0x0000($v0)           ## 00000024
/* 01120 80AFDAC0 AE2D0000 */  sw      $t5, 0x0000($s1)           ## FFFFFFEC
/* 01124 80AFDAC4 8C4C0004 */  lw      $t4, 0x0004($v0)           ## 00000028
/* 01128 80AFDAC8 AE2C0004 */  sw      $t4, 0x0004($s1)           ## FFFFFFF0
/* 0112C 80AFDACC 8C4D0008 */  lw      $t5, 0x0008($v0)           ## 0000002C
/* 01130 80AFDAD0 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 01134 80AFDAD4 AE2D0008 */  sw      $t5, 0x0008($s1)           ## FFFFFFF4
/* 01138 80AFDAD8 C7A40054 */  lwc1    $f4, 0x0054($sp)           
/* 0113C 80AFDADC 4600A306 */  mov.s   $f12, $f20                 
/* 01140 80AFDAE0 46002180 */  add.s   $f6, $f4, $f0              
/* 01144 80AFDAE4 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 01148 80AFDAE8 E7A60054 */  swc1    $f6, 0x0054($sp)           
/* 0114C 80AFDAEC C7A8005C */  lwc1    $f8, 0x005C($sp)           
/* 01150 80AFDAF0 46004280 */  add.s   $f10, $f8, $f0             
/* 01154 80AFDAF4 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01158 80AFDAF8 E7AA005C */  swc1    $f10, 0x005C($sp)          
/* 0115C 80AFDAFC 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 01160 80AFDB00 44819000 */  mtc1    $at, $f18                  ## $f18 = 25.00
/* 01164 80AFDB04 C7B00058 */  lwc1    $f16, 0x0058($sp)          
/* 01168 80AFDB08 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 0116C 80AFDB0C 46120102 */  mul.s   $f4, $f0, $f18             
/* 01170 80AFDB10 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 01174 80AFDB14 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 01178 80AFDB18 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 0117C 80AFDB1C 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFEC
/* 01180 80AFDB20 87A70052 */  lh      $a3, 0x0052($sp)           
/* 01184 80AFDB24 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01188 80AFDB28 46048180 */  add.s   $f6, $f16, $f4             
/* 0118C 80AFDB2C AFA00014 */  sw      $zero, 0x0014($sp)         
/* 01190 80AFDB30 0C00A935 */  jal     EffectSsEnFire_SpawnVec3f              
/* 01194 80AFDB34 E7A60058 */  swc1    $f6, 0x0058($sp)           
/* 01198 80AFDB38 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = 00000003
/* 0119C 80AFDB3C 0603FFDE */  bgezl   $s0, .L80AFDAB8            
/* 011A0 80AFDB40 8FA20044 */  lw      $v0, 0x0044($sp)           
/* 011A4 80AFDB44 24030019 */  addiu   $v1, $zero, 0x0019         ## $v1 = 00000019
.L80AFDB48:
/* 011A8 80AFDB48 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 011AC 80AFDB4C 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 011B0 80AFDB50 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 011B4 80AFDB54 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 011B8 80AFDB58 0C00D09B */  jal     func_8003426C              
/* 011BC 80AFDB5C AFA30010 */  sw      $v1, 0x0010($sp)           
/* 011C0 80AFDB60 0C00D58A */  jal     Actor_ApplyDamage
              
/* 011C4 80AFDB64 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 011C8 80AFDB68 14400005 */  bne     $v0, $zero, .L80AFDB80     
/* 011CC 80AFDB6C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 011D0 80AFDB70 0C2BF5ED */  jal     func_80AFD7B4              
/* 011D4 80AFDB74 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 011D8 80AFDB78 1000001E */  beq     $zero, $zero, .L80AFDBF4   
/* 011DC 80AFDB7C 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80AFDB80:
/* 011E0 80AFDB80 924F0283 */  lbu     $t7, 0x0283($s2)           ## 00000283
/* 011E4 80AFDB84 8E631C44 */  lw      $v1, 0x1C44($s3)           ## 00001C44
/* 011E8 80AFDB88 15E00017 */  bne     $t7, $zero, .L80AFDBE8     
/* 011EC 80AFDB8C 00000000 */  nop
/* 011F0 80AFDB90 924200B1 */  lbu     $v0, 0x00B1($s2)           ## 000000B1
/* 011F4 80AFDB94 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 011F8 80AFDB98 2644028C */  addiu   $a0, $s2, 0x028C           ## $a0 = 0000028C
/* 011FC 80AFDB9C 1041000E */  beq     $v0, $at, .L80AFDBD8       
/* 01200 80AFDBA0 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 01204 80AFDBA4 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 01208 80AFDBA8 1441000F */  bne     $v0, $at, .L80AFDBE8       
/* 0120C 80AFDBAC 00000000 */  nop
/* 01210 80AFDBB0 80620842 */  lb      $v0, 0x0842($v1)           ## 00000842
/* 01214 80AFDBB4 28410004 */  slti    $at, $v0, 0x0004           
/* 01218 80AFDBB8 14200002 */  bne     $at, $zero, .L80AFDBC4     
/* 0121C 80AFDBBC 2841000C */  slti    $at, $v0, 0x000C           
/* 01220 80AFDBC0 14200005 */  bne     $at, $zero, .L80AFDBD8     
.L80AFDBC4:
/* 01224 80AFDBC4 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 01228 80AFDBC8 10410003 */  beq     $v0, $at, .L80AFDBD8       
/* 0122C 80AFDBCC 24010015 */  addiu   $at, $zero, 0x0015         ## $at = 00000015
/* 01230 80AFDBD0 14410005 */  bne     $v0, $at, .L80AFDBE8       
/* 01234 80AFDBD4 00000000 */  nop
.L80AFDBD8:
/* 01238 80AFDBD8 0C00CB89 */  jal     func_80032E24              
/* 0123C 80AFDBDC 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000000
/* 01240 80AFDBE0 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 01244 80AFDBE4 A2580283 */  sb      $t8, 0x0283($s2)           ## 00000283
.L80AFDBE8:
/* 01248 80AFDBE8 0C2BF591 */  jal     func_80AFD644              
/* 0124C 80AFDBEC 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
.L80AFDBF0:
/* 01250 80AFDBF0 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80AFDBF4:
/* 01254 80AFDBF4 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 01258 80AFDBF8 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 0125C 80AFDBFC 8FB10030 */  lw      $s1, 0x0030($sp)           
/* 01260 80AFDC00 8FB20034 */  lw      $s2, 0x0034($sp)           
/* 01264 80AFDC04 8FB30038 */  lw      $s3, 0x0038($sp)           
/* 01268 80AFDC08 03E00008 */  jr      $ra                        
/* 0126C 80AFDC0C 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
