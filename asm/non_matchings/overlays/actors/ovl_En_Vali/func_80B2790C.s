glabel func_80B2790C
/* 0125C 80B2790C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01260 80B27910 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01264 80B27914 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01268 80B27918 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0126C 80B2791C 9082040D */  lbu     $v0, 0x040D($a0)           ## 0000040D
/* 01270 80B27920 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01274 80B27924 26050414 */  addiu   $a1, $s0, 0x0414           ## $a1 = 00000414
/* 01278 80B27928 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 0127C 80B2792C 11C0005F */  beq     $t6, $zero, .L80B27AAC     
/* 01280 80B27930 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 01284 80B27934 A08F040D */  sb      $t7, 0x040D($a0)           ## 0000040D
/* 01288 80B27938 0C00D594 */  jal     func_80035650              
/* 0128C 80B2793C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01290 80B27940 921800B1 */  lbu     $t8, 0x00B1($s0)           ## 000000B1
/* 01294 80B27944 17000004 */  bne     $t8, $zero, .L80B27958     
/* 01298 80B27948 00000000 */  nop
/* 0129C 80B2794C 921900B0 */  lbu     $t9, 0x00B0($s0)           ## 000000B0
/* 012A0 80B27950 53200057 */  beql    $t9, $zero, .L80B27AB0     
/* 012A4 80B27954 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B27958:
/* 012A8 80B27958 0C00D58A */  jal     Actor_ApplyDamage
              
/* 012AC 80B2795C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012B0 80B27960 1440000C */  bne     $v0, $zero, .L80B27994     
/* 012B4 80B27964 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012B8 80B27968 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 012BC 80B2796C 2405389F */  addiu   $a1, $zero, 0x389F         ## $a1 = 0000389F
/* 012C0 80B27970 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 012C4 80B27974 0C00CB1F */  jal     func_80032C7C              
/* 012C8 80B27978 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 012CC 80B2797C 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 012D0 80B27980 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 012D4 80B27984 920200B1 */  lbu     $v0, 0x00B1($s0)           ## 000000B1
/* 012D8 80B27988 01014824 */  and     $t1, $t0, $at              
/* 012DC 80B2798C 1000000A */  beq     $zero, $zero, .L80B279B8   
/* 012E0 80B27990 AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
.L80B27994:
/* 012E4 80B27994 920200B1 */  lbu     $v0, 0x00B1($s0)           ## 000000B1
/* 012E8 80B27998 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 012EC 80B2799C 10410006 */  beq     $v0, $at, .L80B279B8       
/* 012F0 80B279A0 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 012F4 80B279A4 10410004 */  beq     $v0, $at, .L80B279B8       
/* 012F8 80B279A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012FC 80B279AC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01300 80B279B0 240538DC */  addiu   $a1, $zero, 0x38DC         ## $a1 = 000038DC
/* 01304 80B279B4 920200B1 */  lbu     $v0, 0x00B1($s0)           ## 000000B1
.L80B279B8:
/* 01308 80B279B8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0130C 80B279BC 5441000B */  bnel    $v0, $at, .L80B279EC       
/* 01310 80B279C0 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 01314 80B279C4 8E0B0190 */  lw      $t3, 0x0190($s0)           ## 00000190
/* 01318 80B279C8 3C0A80B2 */  lui     $t2, %hi(func_80B27654)    ## $t2 = 80B20000
/* 0131C 80B279CC 254A7654 */  addiu   $t2, $t2, %lo(func_80B27654) ## $t2 = 80B27654
/* 01320 80B279D0 514B0037 */  beql    $t2, $t3, .L80B27AB0       
/* 01324 80B279D4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01328 80B279D8 0C2C9B55 */  jal     func_80B26D54              
/* 0132C 80B279DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01330 80B279E0 10000033 */  beq     $zero, $zero, .L80B27AB0   
/* 01334 80B279E4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01338 80B279E8 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
.L80B279EC:
/* 0133C 80B279EC 54410017 */  bnel    $v0, $at, .L80B27A4C       
/* 01340 80B279F0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01344 80B279F4 8E0D0190 */  lw      $t5, 0x0190($s0)           ## 00000190
/* 01348 80B279F8 3C0C80B2 */  lui     $t4, %hi(func_80B27654)    ## $t4 = 80B20000
/* 0134C 80B279FC 258C7654 */  addiu   $t4, $t4, %lo(func_80B27654) ## $t4 = 80B27654
/* 01350 80B27A00 118D000D */  beq     $t4, $t5, .L80B27A38       
/* 01354 80B27A04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01358 80B27A08 240E001E */  addiu   $t6, $zero, 0x001E         ## $t6 = 0000001E
/* 0135C 80B27A0C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01360 80B27A10 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 01364 80B27A14 24060096 */  addiu   $a2, $zero, 0x0096         ## $a2 = 00000096
/* 01368 80B27A18 0C00D09B */  jal     func_8003426C              
/* 0136C 80B27A1C 24072000 */  addiu   $a3, $zero, 0x2000         ## $a3 = 00002000
/* 01370 80B27A20 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01374 80B27A24 A60F001C */  sh      $t7, 0x001C($s0)           ## 0000001C
/* 01378 80B27A28 0C2C9AC6 */  jal     func_80B26B18              
/* 0137C 80B27A2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01380 80B27A30 1000001F */  beq     $zero, $zero, .L80B27AB0   
/* 01384 80B27A34 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B27A38:
/* 01388 80B27A38 0C2C9AD3 */  jal     func_80B26B4C              
/* 0138C 80B27A3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01390 80B27A40 1000001B */  beq     $zero, $zero, .L80B27AB0   
/* 01394 80B27A44 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01398 80B27A48 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L80B27A4C:
/* 0139C 80B27A4C 54410006 */  bnel    $v0, $at, .L80B27A68       
/* 013A0 80B27A50 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 013A4 80B27A54 0C2C9AFE */  jal     func_80B26BF8              
/* 013A8 80B27A58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013AC 80B27A5C 10000014 */  beq     $zero, $zero, .L80B27AB0   
/* 013B0 80B27A60 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 013B4 80B27A64 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L80B27A68:
/* 013B8 80B27A68 54410006 */  bnel    $v0, $at, .L80B27A84       
/* 013BC 80B27A6C 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 013C0 80B27A70 0C2C9B78 */  jal     func_80B26DE0              
/* 013C4 80B27A74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013C8 80B27A78 1000000D */  beq     $zero, $zero, .L80B27AB0   
/* 013CC 80B27A7C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 013D0 80B27A80 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
.L80B27A84:
/* 013D4 80B27A84 14410007 */  bne     $v0, $at, .L80B27AA4       
/* 013D8 80B27A88 00000000 */  nop
/* 013DC 80B27A8C 92180195 */  lbu     $t8, 0x0195($s0)           ## 00000195
/* 013E0 80B27A90 24190014 */  addiu   $t9, $zero, 0x0014         ## $t9 = 00000014
/* 013E4 80B27A94 57000006 */  bnel    $t8, $zero, .L80B27AB0     
/* 013E8 80B27A98 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 013EC 80B27A9C 10000003 */  beq     $zero, $zero, .L80B27AAC   
/* 013F0 80B27AA0 A2190195 */  sb      $t9, 0x0195($s0)           ## 00000195
.L80B27AA4:
/* 013F4 80B27AA4 0C2C9AD3 */  jal     func_80B26B4C              
/* 013F8 80B27AA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B27AAC:
/* 013FC 80B27AAC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B27AB0:
/* 01400 80B27AB0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01404 80B27AB4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01408 80B27AB8 03E00008 */  jr      $ra                        
/* 0140C 80B27ABC 00000000 */  nop
