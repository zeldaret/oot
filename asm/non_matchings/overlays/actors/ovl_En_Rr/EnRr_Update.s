.rdata
glabel D_80AEA824
    .asciz "0"
    .balign 4

glabel D_80AEA828
    .asciz "../z_en_rr.c"
    .balign 4

.late_rodata
glabel D_80AEA934
    .float 0.2

.text
glabel EnRr_Update
/* 01944 80AE9D84 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 01948 80AE9D88 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 0194C 80AE9D8C AFB60048 */  sw      $s6, 0x0048($sp)           
/* 01950 80AE9D90 AFB50044 */  sw      $s5, 0x0044($sp)           
/* 01954 80AE9D94 AFB40040 */  sw      $s4, 0x0040($sp)           
/* 01958 80AE9D98 AFB3003C */  sw      $s3, 0x003C($sp)           
/* 0195C 80AE9D9C AFB20038 */  sw      $s2, 0x0038($sp)           
/* 01960 80AE9DA0 AFB10034 */  sw      $s1, 0x0034($sp)           
/* 01964 80AE9DA4 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 01968 80AE9DA8 F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 0196C 80AE9DAC F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 01970 80AE9DB0 848E01E8 */  lh      $t6, 0x01E8($a0)           ## 000001E8
/* 01974 80AE9DB4 90980376 */  lbu     $t8, 0x0376($a0)           ## 00000376
/* 01978 80AE9DB8 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 0197C 80AE9DBC 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 01980 80AE9DC0 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 01984 80AE9DC4 17000004 */  bne     $t8, $zero, .L80AE9DD8     
/* 01988 80AE9DC8 A48F01E8 */  sh      $t7, 0x01E8($a0)           ## 000001E8
/* 0198C 80AE9DCC 849901EC */  lh      $t9, 0x01EC($a0)           ## 000001EC
/* 01990 80AE9DD0 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 01994 80AE9DD4 A48801EC */  sh      $t0, 0x01EC($a0)           ## 000001EC
.L80AE9DD8:
/* 01998 80AE9DD8 862201EA */  lh      $v0, 0x01EA($s1)           ## 000001EA
/* 0199C 80AE9DDC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 019A0 80AE9DE0 4481B000 */  mtc1    $at, $f22                  ## $f22 = 30.00
/* 019A4 80AE9DE4 10400002 */  beq     $v0, $zero, .L80AE9DF0     
/* 019A8 80AE9DE8 2449FFFF */  addiu   $t1, $v0, 0xFFFF           ## $t1 = FFFFFFFF
/* 019AC 80AE9DEC A62901EA */  sh      $t1, 0x01EA($s1)           ## 000001EA
.L80AE9DF0:
/* 019B0 80AE9DF0 862201EE */  lh      $v0, 0x01EE($s1)           ## 000001EE
/* 019B4 80AE9DF4 4405B000 */  mfc1    $a1, $f22                  
/* 019B8 80AE9DF8 10400002 */  beq     $v0, $zero, .L80AE9E04     
/* 019BC 80AE9DFC 244AFFFF */  addiu   $t2, $v0, 0xFFFF           ## $t2 = FFFFFFFF
/* 019C0 80AE9E00 A62A01EE */  sh      $t2, 0x01EE($s1)           ## 000001EE
.L80AE9E04:
/* 019C4 80AE9E04 862201F4 */  lh      $v0, 0x01F4($s1)           ## 000001F4
/* 019C8 80AE9E08 10400002 */  beq     $v0, $zero, .L80AE9E14     
/* 019CC 80AE9E0C 244BFFFF */  addiu   $t3, $v0, 0xFFFF           ## $t3 = FFFFFFFF
/* 019D0 80AE9E10 A62B01F4 */  sh      $t3, 0x01F4($s1)           ## 000001F4
.L80AE9E14:
/* 019D4 80AE9E14 862201F0 */  lh      $v0, 0x01F0($s1)           ## 000001F0
/* 019D8 80AE9E18 10400002 */  beq     $v0, $zero, .L80AE9E24     
/* 019DC 80AE9E1C 244CFFFF */  addiu   $t4, $v0, 0xFFFF           ## $t4 = FFFFFFFF
/* 019E0 80AE9E20 A62C01F0 */  sh      $t4, 0x01F0($s1)           ## 000001F0
.L80AE9E24:
/* 019E4 80AE9E24 862201F2 */  lh      $v0, 0x01F2($s1)           ## 000001F2
/* 019E8 80AE9E28 10400002 */  beq     $v0, $zero, .L80AE9E34     
/* 019EC 80AE9E2C 244DFFFF */  addiu   $t5, $v0, 0xFFFF           ## $t5 = FFFFFFFF
/* 019F0 80AE9E30 A62D01F2 */  sh      $t5, 0x01F2($s1)           ## 000001F2
.L80AE9E34:
/* 019F4 80AE9E34 0C00B56E */  jal     Actor_SetHeight
              
/* 019F8 80AE9E38 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 019FC 80AE9E3C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01A00 80AE9E40 0C2BA50B */  jal     func_80AE942C              
/* 01A04 80AE9E44 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 01A08 80AE9E48 922E0371 */  lbu     $t6, 0x0371($s1)           ## 00000371
/* 01A0C 80AE9E4C 55C0000C */  bnel    $t6, $zero, .L80AE9E80     
/* 01A10 80AE9E50 8E39014C */  lw      $t9, 0x014C($s1)           ## 0000014C
/* 01A14 80AE9E54 922F0114 */  lbu     $t7, 0x0114($s1)           ## 00000114
/* 01A18 80AE9E58 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01A1C 80AE9E5C 11E00005 */  beq     $t7, $zero, .L80AE9E74     
/* 01A20 80AE9E60 00000000 */  nop
/* 01A24 80AE9E64 96380112 */  lhu     $t8, 0x0112($s1)           ## 00000112
/* 01A28 80AE9E68 33194000 */  andi    $t9, $t8, 0x4000           ## $t9 = 00000000
/* 01A2C 80AE9E6C 57200004 */  bnel    $t9, $zero, .L80AE9E80     
/* 01A30 80AE9E70 8E39014C */  lw      $t9, 0x014C($s1)           ## 0000014C
.L80AE9E74:
/* 01A34 80AE9E74 0C2BA3A9 */  jal     func_80AE8EA4              
/* 01A38 80AE9E78 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 01A3C 80AE9E7C 8E39014C */  lw      $t9, 0x014C($s1)           ## 0000014C
.L80AE9E80:
/* 01A40 80AE9E80 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01A44 80AE9E84 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 01A48 80AE9E88 0320F809 */  jalr    $ra, $t9                   
/* 01A4C 80AE9E8C 00000000 */  nop
/* 01A50 80AE9E90 86280378 */  lh      $t0, 0x0378($s1)           ## 00000378
/* 01A54 80AE9E94 24013F80 */  addiu   $at, $zero, 0x3F80         ## $at = 00003F80
/* 01A58 80AE9E98 3C0480AF */  lui     $a0, %hi(D_80AEA824)       ## $a0 = 80AF0000
/* 01A5C 80AE9E9C 15010005 */  bne     $t0, $at, .L80AE9EB4       
/* 01A60 80AE9EA0 2484A824 */  addiu   $a0, $a0, %lo(D_80AEA824)  ## $a0 = 80AEA824
/* 01A64 80AE9EA4 3C0580AF */  lui     $a1, %hi(D_80AEA828)       ## $a1 = 80AF0000
/* 01A68 80AE9EA8 24A5A828 */  addiu   $a1, $a1, %lo(D_80AEA828)  ## $a1 = 80AEA828
/* 01A6C 80AE9EAC 0C0007FC */  jal     __assert
              
/* 01A70 80AE9EB0 2406054B */  addiu   $a2, $zero, 0x054B         ## $a2 = 0000054B
.L80AE9EB4:
/* 01A74 80AE9EB4 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01A78 80AE9EB8 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01A7C 80AE9EBC 26240068 */  addiu   $a0, $s1, 0x0068           ## $a0 = 00000068
/* 01A80 80AE9EC0 0C01DE80 */  jal     Math_ApproxF
              
/* 01A84 80AE9EC4 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01A88 80AE9EC8 0C00B638 */  jal     Actor_MoveForward
              
/* 01A8C 80AE9ECC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01A90 80AE9ED0 26330150 */  addiu   $s3, $s1, 0x0150           ## $s3 = 00000150
/* 01A94 80AE9ED4 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000150
/* 01A98 80AE9ED8 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 01A9C 80AE9EDC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01AA0 80AE9EE0 C624037C */  lwc1    $f4, 0x037C($s1)           ## 0000037C
/* 01AA4 80AE9EE4 C6280380 */  lwc1    $f8, 0x0380($s1)           ## 00000380
/* 01AA8 80AE9EE8 C6300384 */  lwc1    $f16, 0x0384($s1)          ## 00000384
/* 01AAC 80AE9EEC 4600218D */  trunc.w.s $f6, $f4                   
/* 01AB0 80AE9EF0 922F0371 */  lbu     $t7, 0x0371($s1)           ## 00000371
/* 01AB4 80AE9EF4 4600428D */  trunc.w.s $f10, $f8                  
/* 01AB8 80AE9EF8 440A3000 */  mfc1    $t2, $f6                   
/* 01ABC 80AE9EFC 4600848D */  trunc.w.s $f18, $f16                 
/* 01AC0 80AE9F00 440C5000 */  mfc1    $t4, $f10                  
/* 01AC4 80AE9F04 A62A01E2 */  sh      $t2, 0x01E2($s1)           ## 000001E2
/* 01AC8 80AE9F08 440E9000 */  mfc1    $t6, $f18                  
/* 01ACC 80AE9F0C A62C01E4 */  sh      $t4, 0x01E4($s1)           ## 000001E4
/* 01AD0 80AE9F10 15E0001C */  bne     $t7, $zero, .L80AE9F84     
/* 01AD4 80AE9F14 A62E01E6 */  sh      $t6, 0x01E6($s1)           ## 000001E6
/* 01AD8 80AE9F18 863801F0 */  lh      $t8, 0x01F0($s1)           ## 000001F0
/* 01ADC 80AE9F1C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01AE0 80AE9F20 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01AE4 80AE9F24 17000017 */  bne     $t8, $zero, .L80AE9F84     
/* 01AE8 80AE9F28 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01AEC 80AE9F2C 02818021 */  addu    $s0, $s4, $at              
/* 01AF0 80AE9F30 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01AF4 80AE9F34 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01AF8 80AE9F38 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000150
/* 01AFC 80AE9F3C 2632019C */  addiu   $s2, $s1, 0x019C           ## $s2 = 0000019C
/* 01B00 80AE9F40 02403025 */  or      $a2, $s2, $zero            ## $a2 = 0000019C
/* 01B04 80AE9F44 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01B08 80AE9F48 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01B0C 80AE9F4C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01B10 80AE9F50 863901F4 */  lh      $t9, 0x01F4($s1)           ## 000001F4
/* 01B14 80AE9F54 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01B18 80AE9F58 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01B1C 80AE9F5C 57200004 */  bnel    $t9, $zero, .L80AE9F70     
/* 01B20 80AE9F60 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01B24 80AE9F64 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 01B28 80AE9F68 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000150
/* 01B2C 80AE9F6C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
.L80AE9F70:
/* 01B30 80AE9F70 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01B34 80AE9F74 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 01B38 80AE9F78 02403025 */  or      $a2, $s2, $zero            ## $a2 = 0000019C
/* 01B3C 80AE9F7C 1000000E */  beq     $zero, $zero, .L80AE9FB8   
/* 01B40 80AE9F80 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
.L80AE9F84:
/* 01B44 80AE9F84 922801AE */  lbu     $t0, 0x01AE($s1)           ## 000001AE
/* 01B48 80AE9F88 922A01AD */  lbu     $t2, 0x01AD($s1)           ## 000001AD
/* 01B4C 80AE9F8C 922C0162 */  lbu     $t4, 0x0162($s1)           ## 00000162
/* 01B50 80AE9F90 922E0161 */  lbu     $t6, 0x0161($s1)           ## 00000161
/* 01B54 80AE9F94 3109FFFD */  andi    $t1, $t0, 0xFFFD           ## $t1 = 00000000
/* 01B58 80AE9F98 314BFFFD */  andi    $t3, $t2, 0xFFFD           ## $t3 = 00000000
/* 01B5C 80AE9F9C 318DFFFD */  andi    $t5, $t4, 0xFFFD           ## $t5 = 00000000
/* 01B60 80AE9FA0 31CFFFFD */  andi    $t7, $t6, 0xFFFD           ## $t7 = 00000000
/* 01B64 80AE9FA4 A22901AE */  sb      $t1, 0x01AE($s1)           ## 000001AE
/* 01B68 80AE9FA8 A22B01AD */  sb      $t3, 0x01AD($s1)           ## 000001AD
/* 01B6C 80AE9FAC A22D0162 */  sb      $t5, 0x0162($s1)           ## 00000162
/* 01B70 80AE9FB0 A22F0161 */  sb      $t7, 0x0161($s1)           ## 00000161
/* 01B74 80AE9FB4 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
.L80AE9FB8:
/* 01B78 80AE9FB8 4481A000 */  mtc1    $at, $f20                  ## $f20 = 20.00
/* 01B7C 80AE9FBC 4407B000 */  mfc1    $a3, $f22                  
/* 01B80 80AE9FC0 24180007 */  addiu   $t8, $zero, 0x0007         ## $t8 = 00000007
/* 01B84 80AE9FC4 4406A000 */  mfc1    $a2, $f20                  
/* 01B88 80AE9FC8 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 01B8C 80AE9FCC 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01B90 80AE9FD0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01B94 80AE9FD4 0C00B92D */  jal     func_8002E4B4              
/* 01B98 80AE9FD8 E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 01B9C 80AE9FDC 92390376 */  lbu     $t9, 0x0376($s1)           ## 00000376
/* 01BA0 80AE9FE0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01BA4 80AE9FE4 57200070 */  bnel    $t9, $zero, .L80AEA1A8     
/* 01BA8 80AE9FE8 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 01BAC 80AE9FEC 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 01BB0 80AE9FF0 262401F8 */  addiu   $a0, $s1, 0x01F8           ## $a0 = 000001F8
/* 01BB4 80AE9FF4 8E2501FC */  lw      $a1, 0x01FC($s1)           ## 000001FC
/* 01BB8 80AE9FF8 4406B000 */  mfc1    $a2, $f22                  
/* 01BBC 80AE9FFC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01BC0 80AEA000 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 01BC4 80AEA004 4406B000 */  mfc1    $a2, $f22                  
/* 01BC8 80AEA008 26240200 */  addiu   $a0, $s1, 0x0200           ## $a0 = 00000200
/* 01BCC 80AEA00C 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 01BD0 80AEA010 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01BD4 80AEA014 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 01BD8 80AEA018 4406B000 */  mfc1    $a2, $f22                  
/* 01BDC 80AEA01C 3C073D23 */  lui     $a3, 0x3D23                ## $a3 = 3D230000
/* 01BE0 80AEA020 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3D23D70A
/* 01BE4 80AEA024 26240204 */  addiu   $a0, $s1, 0x0204           ## $a0 = 00000204
/* 01BE8 80AEA028 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01BEC 80AEA02C 8E250208 */  lw      $a1, 0x0208($s1)           ## 00000208
/* 01BF0 80AEA030 4406B000 */  mfc1    $a2, $f22                  
/* 01BF4 80AEA034 3C073C23 */  lui     $a3, 0x3C23                ## $a3 = 3C230000
/* 01BF8 80AEA038 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3C23D70A
/* 01BFC 80AEA03C 2624020C */  addiu   $a0, $s1, 0x020C           ## $a0 = 0000020C
/* 01C00 80AEA040 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01C04 80AEA044 8E250210 */  lw      $a1, 0x0210($s1)           ## 00000210
/* 01C08 80AEA048 4406B000 */  mfc1    $a2, $f22                  
/* 01C0C 80AEA04C 3C073AC4 */  lui     $a3, 0x3AC4                ## $a3 = 3AC40000
/* 01C10 80AEA050 34E79BA6 */  ori     $a3, $a3, 0x9BA6           ## $a3 = 3AC49BA6
/* 01C14 80AEA054 26240214 */  addiu   $a0, $s1, 0x0214           ## $a0 = 00000214
/* 01C18 80AEA058 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01C1C 80AEA05C 8E250218 */  lw      $a1, 0x0218($s1)           ## 00000218
/* 01C20 80AEA060 4406B000 */  mfc1    $a2, $f22                  
/* 01C24 80AEA064 4407A000 */  mfc1    $a3, $f20                  
/* 01C28 80AEA068 2624021C */  addiu   $a0, $s1, 0x021C           ## $a0 = 0000021C
/* 01C2C 80AEA06C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01C30 80AEA070 8E250220 */  lw      $a1, 0x0220($s1)           ## 00000220
/* 01C34 80AEA074 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 01C38 80AEA078 4481A000 */  mtc1    $at, $f20                  ## $f20 = 1000.00
/* 01C3C 80AEA07C 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 01C40 80AEA080 02208025 */  or      $s0, $s1, $zero            ## $s0 = 00000000
/* 01C44 80AEA084 26330224 */  addiu   $s3, $s1, 0x0224           ## $s3 = 00000224
/* 01C48 80AEA088 2634022C */  addiu   $s4, $s1, 0x022C           ## $s4 = 0000022C
/* 01C4C 80AEA08C 26350260 */  addiu   $s5, $s1, 0x0260           ## $s5 = 00000260
/* 01C50 80AEA090 2636025C */  addiu   $s6, $s1, 0x025C           ## $s6 = 0000025C
.L80AEA094:
/* 01C54 80AEA094 C6280364 */  lwc1    $f8, 0x0364($s1)           ## 00000364
/* 01C58 80AEA098 C6040250 */  lwc1    $f4, 0x0250($s0)           ## 00000250
/* 01C5C 80AEA09C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01C60 80AEA0A0 46144282 */  mul.s   $f10, $f8, $f20            
/* 01C64 80AEA0A4 4600218D */  trunc.w.s $f6, $f4                   
/* 01C68 80AEA0A8 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 0000025C
/* 01C6C 80AEA0AC 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 01C70 80AEA0B0 44053000 */  mfc1    $a1, $f6                   
/* 01C74 80AEA0B4 4600540D */  trunc.w.s $f16, $f10                 
/* 01C78 80AEA0B8 00052C00 */  sll     $a1, $a1, 16               
/* 01C7C 80AEA0BC 00052C03 */  sra     $a1, $a1, 16               
/* 01C80 80AEA0C0 44078000 */  mfc1    $a3, $f16                  
/* 01C84 80AEA0C4 00000000 */  nop
/* 01C88 80AEA0C8 00073C00 */  sll     $a3, $a3, 16               
/* 01C8C 80AEA0CC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01C90 80AEA0D0 00073C03 */  sra     $a3, $a3, 16               
/* 01C94 80AEA0D4 C6260364 */  lwc1    $f6, 0x0364($s1)           ## 00000364
/* 01C98 80AEA0D8 C6120258 */  lwc1    $f18, 0x0258($s0)          ## 00000258
/* 01C9C 80AEA0DC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01CA0 80AEA0E0 46143202 */  mul.s   $f8, $f6, $f20             
/* 01CA4 80AEA0E4 4600910D */  trunc.w.s $f4, $f18                  
/* 01CA8 80AEA0E8 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000260
/* 01CAC 80AEA0EC 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 01CB0 80AEA0F0 44052000 */  mfc1    $a1, $f4                   
/* 01CB4 80AEA0F4 4600428D */  trunc.w.s $f10, $f8                  
/* 01CB8 80AEA0F8 00052C00 */  sll     $a1, $a1, 16               
/* 01CBC 80AEA0FC 00052C03 */  sra     $a1, $a1, 16               
/* 01CC0 80AEA100 44075000 */  mfc1    $a3, $f10                  
/* 01CC4 80AEA104 00000000 */  nop
/* 01CC8 80AEA108 00073C00 */  sll     $a3, $a3, 16               
/* 01CCC 80AEA10C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01CD0 80AEA110 00073C03 */  sra     $a3, $a3, 16               
/* 01CD4 80AEA114 3C0180AF */  lui     $at, %hi(D_80AEA934)       ## $at = 80AF0000
/* 01CD8 80AEA118 C432A934 */  lwc1    $f18, %lo(D_80AEA934)($at) 
/* 01CDC 80AEA11C C6300364 */  lwc1    $f16, 0x0364($s1)          ## 00000364
/* 01CE0 80AEA120 4406B000 */  mfc1    $a2, $f22                  
/* 01CE4 80AEA124 02802025 */  or      $a0, $s4, $zero            ## $a0 = 0000022C
/* 01CE8 80AEA128 46128102 */  mul.s   $f4, $f16, $f18            
/* 01CEC 80AEA12C 8E050238 */  lw      $a1, 0x0238($s0)           ## 00000238
/* 01CF0 80AEA130 44072000 */  mfc1    $a3, $f4                   
/* 01CF4 80AEA134 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01CF8 80AEA138 00000000 */  nop
/* 01CFC 80AEA13C C606022C */  lwc1    $f6, 0x022C($s0)           ## 0000022C
/* 01D00 80AEA140 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 01D04 80AEA144 44815000 */  mtc1    $at, $f10                  ## $f10 = 300.00
/* 01D08 80AEA148 E6060234 */  swc1    $f6, 0x0234($s0)           ## 00000234
/* 01D0C 80AEA14C C6280364 */  lwc1    $f8, 0x0364($s1)           ## 00000364
/* 01D10 80AEA150 4406B000 */  mfc1    $a2, $f22                  
/* 01D14 80AEA154 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000224
/* 01D18 80AEA158 460A4402 */  mul.s   $f16, $f8, $f10            
/* 01D1C 80AEA15C 8E050228 */  lw      $a1, 0x0228($s0)           ## 00000228
/* 01D20 80AEA160 44078000 */  mfc1    $a3, $f16                  
/* 01D24 80AEA164 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01D28 80AEA168 00000000 */  nop
/* 01D2C 80AEA16C 26520040 */  addiu   $s2, $s2, 0x0040           ## $s2 = 00000040
/* 01D30 80AEA170 24010140 */  addiu   $at, $zero, 0x0140         ## $at = 00000140
/* 01D34 80AEA174 26100040 */  addiu   $s0, $s0, 0x0040           ## $s0 = 00000040
/* 01D38 80AEA178 26730040 */  addiu   $s3, $s3, 0x0040           ## $s3 = 00000264
/* 01D3C 80AEA17C 26940040 */  addiu   $s4, $s4, 0x0040           ## $s4 = 0000026C
/* 01D40 80AEA180 26B50040 */  addiu   $s5, $s5, 0x0040           ## $s5 = 000002A0
/* 01D44 80AEA184 1641FFC3 */  bne     $s2, $at, .L80AEA094       
/* 01D48 80AEA188 26D60040 */  addiu   $s6, $s6, 0x0040           ## $s6 = 0000029C
/* 01D4C 80AEA18C 4405B000 */  mfc1    $a1, $f22                  
/* 01D50 80AEA190 4406B000 */  mfc1    $a2, $f22                  
/* 01D54 80AEA194 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 01D58 80AEA198 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3E4CCCCD
/* 01D5C 80AEA19C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01D60 80AEA1A0 26240364 */  addiu   $a0, $s1, 0x0364           ## $a0 = 00000364
/* 01D64 80AEA1A4 8FBF004C */  lw      $ra, 0x004C($sp)           
.L80AEA1A8:
/* 01D68 80AEA1A8 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 01D6C 80AEA1AC D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 01D70 80AEA1B0 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 01D74 80AEA1B4 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 01D78 80AEA1B8 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 01D7C 80AEA1BC 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 01D80 80AEA1C0 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 01D84 80AEA1C4 8FB50044 */  lw      $s5, 0x0044($sp)           
/* 01D88 80AEA1C8 8FB60048 */  lw      $s6, 0x0048($sp)           
/* 01D8C 80AEA1CC 03E00008 */  jr      $ra                        
/* 01D90 80AEA1D0 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
