.late_rodata
glabel D_80A15048
    .float 0.02

.text
glabel func_80A142F4
/* 01284 80A142F4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01288 80A142F8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0128C 80A142FC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01290 80A14300 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01294 80A14304 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01298 80A14308 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0129C 80A1430C 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 012A0 80A14310 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 012A4 80A14314 24060100 */  addiu   $a2, $zero, 0x0100         ## $a2 = 00000100
/* 012A8 80A14318 860E01BA */  lh      $t6, 0x01BA($s0)           ## 000001BA
/* 012AC 80A1431C 26040170 */  addiu   $a0, $s0, 0x0170           ## $a0 = 00000170
/* 012B0 80A14320 11C0000C */  beq     $t6, $zero, .L80A14354     
/* 012B4 80A14324 00000000 */  nop
/* 012B8 80A14328 0C02927F */  jal     SkelAnime_Update
              
/* 012BC 80A1432C AFA40024 */  sw      $a0, 0x0024($sp)           
/* 012C0 80A14330 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 012C4 80A14334 0C0295B2 */  jal     SkelAnime_StopAtFrame              
/* 012C8 80A14338 3C0540C0 */  lui     $a1, 0x40C0                ## $a1 = 40C00000
/* 012CC 80A1433C 50400010 */  beql    $v0, $zero, .L80A14380     
/* 012D0 80A14340 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 012D4 80A14344 860F01BA */  lh      $t7, 0x01BA($s0)           ## 000001BA
/* 012D8 80A14348 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 012DC 80A1434C 1000000B */  beq     $zero, $zero, .L80A1437C   
/* 012E0 80A14350 A61801BA */  sh      $t8, 0x01BA($s0)           ## 000001BA
.L80A14354:
/* 012E4 80A14354 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 012E8 80A14358 00000000 */  nop
/* 012EC 80A1435C 3C0180A1 */  lui     $at, %hi(D_80A15048)       ## $at = 80A10000
/* 012F0 80A14360 C4245048 */  lwc1    $f4, %lo(D_80A15048)($at)  
/* 012F4 80A14364 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 012F8 80A14368 4604003C */  c.lt.s  $f0, $f4                   
/* 012FC 80A1436C 00000000 */  nop
/* 01300 80A14370 45020003 */  bc1fl   .L80A14380                 
/* 01304 80A14374 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 01308 80A14378 A61901BA */  sh      $t9, 0x01BA($s0)           ## 000001BA
.L80A1437C:
/* 0130C 80A1437C 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
.L80A14380:
/* 01310 80A14380 44814000 */  mtc1    $at, $f8                   ## $f8 = 120.00
/* 01314 80A14384 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 01318 80A14388 4608303C */  c.lt.s  $f6, $f8                   
/* 0131C 80A1438C 00000000 */  nop
/* 01320 80A14390 45020004 */  bc1fl   .L80A143A4                 
/* 01324 80A14394 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01328 80A14398 0C284DD9 */  jal     func_80A13764              
/* 0132C 80A1439C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01330 80A143A0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A143A4:
/* 01334 80A143A4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01338 80A143A8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0133C 80A143AC 03E00008 */  jr      $ra                        
/* 01340 80A143B0 00000000 */  nop
