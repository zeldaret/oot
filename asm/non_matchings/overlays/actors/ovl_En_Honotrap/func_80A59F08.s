.late_rodata
glabel D_80A5B124
 .word 0x43FF8000

.text
glabel func_80A59F08
/* 002D8 80A59F08 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 002DC 80A59F0C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 002E0 80A59F10 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 002E4 80A59F14 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 002E8 80A59F18 3C0538D1 */  lui     $a1, 0x38D1                ## $a1 = 38D10000
/* 002EC 80A59F1C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002F0 80A59F20 0C00B58B */  jal     Actor_SetScale
              
/* 002F4 80A59F24 34A5B717 */  ori     $a1, $a1, 0xB717           ## $a1 = 38D1B717
/* 002F8 80A59F28 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 002FC 80A59F2C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00300 80A59F30 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00304 80A59F34 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00308 80A59F38 3C0780A6 */  lui     $a3, %hi(D_80A5B008)       ## $a3 = 80A60000
/* 0030C 80A59F3C 24E7B008 */  addiu   $a3, $a3, %lo(D_80A5B008)  ## $a3 = 80A5B008
/* 00310 80A59F40 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00314 80A59F44 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00318 80A59F48 0C01712B */  jal     Collider_SetCylinder
              
/* 0031C 80A59F4C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00320 80A59F50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00324 80A59F54 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 00328 80A59F58 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0032C 80A59F5C 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00330 80A59F60 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 00334 80A59F64 3C0680A6 */  lui     $a2, %hi(D_80A5B034)       ## $a2 = 80A60000
/* 00338 80A59F68 24C6B034 */  addiu   $a2, $a2, %lo(D_80A5B034)  ## $a2 = 80A5B034
/* 0033C 80A59F6C 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00340 80A59F70 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00344 80A59F74 0C0187B5 */  jal     func_80061ED4              
/* 00348 80A59F78 E6040070 */  swc1    $f4, 0x0070($s0)           ## 00000070
/* 0034C 80A59F7C 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00350 80A59F80 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00354 80A59F84 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00358 80A59F88 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0035C 80A59F8C 0C00AC78 */  jal     ActorShape_Init
              
/* 00360 80A59F90 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 00364 80A59F94 240E0080 */  addiu   $t6, $zero, 0x0080         ## $t6 = 00000080
/* 00368 80A59F98 A20E00C8 */  sb      $t6, 0x00C8($s0)           ## 000000C8
/* 0036C 80A59F9C 8FAF0034 */  lw      $t7, 0x0034($sp)           
/* 00370 80A59FA0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00374 80A59FA4 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 00378 80A59FA8 8DF81C44 */  lw      $t8, 0x1C44($t7)           ## 00001C44
/* 0037C 80A59FAC 8F080024 */  lw      $t0, 0x0024($t8)           ## 00000024
/* 00380 80A59FB0 AE08022C */  sw      $t0, 0x022C($s0)           ## 0000022C
/* 00384 80A59FB4 8F190028 */  lw      $t9, 0x0028($t8)           ## 00000028
/* 00388 80A59FB8 AE190230 */  sw      $t9, 0x0230($s0)           ## 00000230
/* 0038C 80A59FBC C6060230 */  lwc1    $f6, 0x0230($s0)           ## 00000230
/* 00390 80A59FC0 8F08002C */  lw      $t0, 0x002C($t8)           ## 0000002C
/* 00394 80A59FC4 46083280 */  add.s   $f10, $f6, $f8             
/* 00398 80A59FC8 AE080234 */  sw      $t0, 0x0234($s0)           ## 00000234
/* 0039C 80A59FCC 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 003A0 80A59FD0 E60A0230 */  swc1    $f10, 0x0230($s0)          ## 00000230
/* 003A4 80A59FD4 3C0180A6 */  lui     $at, %hi(D_80A5B124)       ## $at = 80A60000
/* 003A8 80A59FD8 C430B124 */  lwc1    $f16, %lo(D_80A5B124)($at) 
/* 003AC 80A59FDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003B0 80A59FE0 46100482 */  mul.s   $f18, $f0, $f16            
/* 003B4 80A59FE4 4600910D */  trunc.w.s $f4, $f18                  
/* 003B8 80A59FE8 440A2000 */  mfc1    $t2, $f4                   
/* 003BC 80A59FEC 0C2968DE */  jal     func_80A5A378              
/* 003C0 80A59FF0 A60A023E */  sh      $t2, 0x023E($s0)           ## 0000023E
/* 003C4 80A59FF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003C8 80A59FF8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 003CC 80A59FFC 24052822 */  addiu   $a1, $zero, 0x2822         ## $a1 = 00002822
/* 003D0 80A5A000 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 003D4 80A5A004 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 003D8 80A5A008 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 003DC 80A5A00C 15610008 */  bne     $t3, $at, .L80A5A030       
/* 003E0 80A5A010 240D000C */  addiu   $t5, $zero, 0x000C         ## $t5 = 0000000C
/* 003E4 80A5A014 3C01C47A */  lui     $at, 0xC47A                ## $at = C47A0000
/* 003E8 80A5A018 44813000 */  mtc1    $at, $f6                   ## $f6 = -1000.00
/* 003EC 80A5A01C 240E001E */  addiu   $t6, $zero, 0x001E         ## $t6 = 0000001E
/* 003F0 80A5A020 A20C0003 */  sb      $t4, 0x0003($s0)           ## 00000003
/* 003F4 80A5A024 A60D0190 */  sh      $t5, 0x0190($s0)           ## 00000190
/* 003F8 80A5A028 A60E0192 */  sh      $t6, 0x0192($s0)           ## 00000192
/* 003FC 80A5A02C E60600BC */  swc1    $f6, 0x00BC($s0)           ## 000000BC
.L80A5A030:
/* 00400 80A5A030 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00404 80A5A034 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00408 80A5A038 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0040C 80A5A03C 03E00008 */  jr      $ra                        
/* 00410 80A5A040 00000000 */  nop
