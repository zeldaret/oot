glabel func_808AC2BC
/* 0017C 808AC2BC 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00180 808AC2C0 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 00184 808AC2C4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00188 808AC2C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0018C 808AC2CC AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00190 808AC2D0 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00194 808AC2D4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00198 808AC2D8 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 0019C 808AC2DC AFA00054 */  sw      $zero, 0x0054($sp)         
/* 001A0 808AC2E0 00A12021 */  addu    $a0, $a1, $at              
/* 001A4 808AC2E4 0C026062 */  jal     Object_IsLoaded
              
/* 001A8 808AC2E8 8205017C */  lb      $a1, 0x017C($s0)           ## 0000017C
/* 001AC 808AC2EC 1040005C */  beq     $v0, $zero, .L808AC460     
/* 001B0 808AC2F0 3C04808B */  lui     $a0, %hi(D_808AC56C)       ## $a0 = 808B0000
/* 001B4 808AC2F4 0C00084C */  jal     osSyncPrintf
              
/* 001B8 808AC2F8 2484C56C */  addiu   $a0, $a0, %lo(D_808AC56C)  ## $a0 = 808AC56C
/* 001BC 808AC2FC 820E017C */  lb      $t6, 0x017C($s0)           ## 0000017C
/* 001C0 808AC300 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 001C4 808AC304 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 001C8 808AC308 000E7900 */  sll     $t7, $t6,  4               
/* 001CC 808AC30C 01EE7821 */  addu    $t7, $t7, $t6              
/* 001D0 808AC310 000F7880 */  sll     $t7, $t7,  2               
/* 001D4 808AC314 022FC021 */  addu    $t8, $s1, $t7              
/* 001D8 808AC318 0338C821 */  addu    $t9, $t9, $t8              
/* 001DC 808AC31C 8F3917B4 */  lw      $t9, 0x17B4($t9)           ## 000117B4
/* 001E0 808AC320 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001E4 808AC324 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 001E8 808AC328 03214021 */  addu    $t0, $t9, $at              
/* 001EC 808AC32C 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 001F0 808AC330 AC286FC0 */  sw      $t0, 0x6FC0($at)           ## 80166FC0
/* 001F4 808AC334 8209017C */  lb      $t1, 0x017C($s0)           ## 0000017C
/* 001F8 808AC338 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 001FC 808AC33C A209001E */  sb      $t1, 0x001E($s0)           ## 0000001E
/* 00200 808AC340 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 00204 808AC344 314B0007 */  andi    $t3, $t2, 0x0007           ## $t3 = 00000000
/* 00208 808AC348 2D610005 */  sltiu   $at, $t3, 0x0005           
/* 0020C 808AC34C 1020003E */  beq     $at, $zero, .L808AC448     
/* 00210 808AC350 000B5880 */  sll     $t3, $t3,  2               
/* 00214 808AC354 3C01808B */  lui     $at, %hi(jtbl_808AC5A0)       ## $at = 808B0000
/* 00218 808AC358 002B0821 */  addu    $at, $at, $t3              
/* 0021C 808AC35C 8C2BC5A0 */  lw      $t3, %lo(jtbl_808AC5A0)($at)  
/* 00220 808AC360 01600008 */  jr      $t3                        
/* 00224 808AC364 00000000 */  nop
glabel L808AC368
/* 00228 808AC368 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0022C 808AC36C 24841A38 */  addiu   $a0, $a0, 0x1A38           ## $a0 = 06001A38
/* 00230 808AC370 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00234 808AC374 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFFC
/* 00238 808AC378 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0023C 808AC37C 26250810 */  addiu   $a1, $s1, 0x0810           ## $a1 = 00000810
/* 00240 808AC380 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00244 808AC384 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00248 808AC388 8FA70054 */  lw      $a3, 0x0054($sp)           
/* 0024C 808AC38C 1000002E */  beq     $zero, $zero, .L808AC448   
/* 00250 808AC390 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
glabel L808AC394
/* 00254 808AC394 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00258 808AC398 24841C58 */  addiu   $a0, $a0, 0x1C58           ## $a0 = 06001C58
/* 0025C 808AC39C 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00260 808AC3A0 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFFC
/* 00264 808AC3A4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00268 808AC3A8 26250810 */  addiu   $a1, $s1, 0x0810           ## $a1 = 00000810
/* 0026C 808AC3AC 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00270 808AC3B0 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00274 808AC3B4 8FA70054 */  lw      $a3, 0x0054($sp)           
/* 00278 808AC3B8 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 0027C 808AC3BC 3C0C8016 */  lui     $t4, 0x8016                ## $t4 = 80160000
/* 00280 808AC3C0 8D8CE670 */  lw      $t4, -0x1990($t4)          ## 8015E670
/* 00284 808AC3C4 3C040001 */  lui     $a0, 0x0001                ## $a0 = 00010000
/* 00288 808AC3C8 00912021 */  addu    $a0, $a0, $s1              
/* 0028C 808AC3CC 1580001E */  bne     $t4, $zero, .L808AC448     
/* 00290 808AC3D0 27A50040 */  addiu   $a1, $sp, 0x0040           ## $a1 = FFFFFFE8
/* 00294 808AC3D4 8606001C */  lh      $a2, 0x001C($s0)           ## 0000001C
/* 00298 808AC3D8 8C841E08 */  lw      $a0, 0x1E08($a0)           ## 00011E08
/* 0029C 808AC3DC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 002A0 808AC3E0 00063203 */  sra     $a2, $a2,  8               
/* 002A4 808AC3E4 0C22B08B */  jal     func_808AC22C              
/* 002A8 808AC3E8 30C600FF */  andi    $a2, $a2, 0x00FF           ## $a2 = 00000000
/* 002AC 808AC3EC C7A40040 */  lwc1    $f4, 0x0040($sp)           
/* 002B0 808AC3F0 C7A60044 */  lwc1    $f6, 0x0044($sp)           
/* 002B4 808AC3F4 C7A80048 */  lwc1    $f8, 0x0048($sp)           
/* 002B8 808AC3F8 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 002BC 808AC3FC E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 002C0 808AC400 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 002C4 808AC404 860D0030 */  lh      $t5, 0x0030($s0)           ## 00000030
/* 002C8 808AC408 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 002CC 808AC40C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 002D0 808AC410 AFAD001C */  sw      $t5, 0x001C($sp)           
/* 002D4 808AC414 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 002D8 808AC418 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 002DC 808AC41C 240701BC */  addiu   $a3, $zero, 0x01BC         ## $a3 = 000001BC
/* 002E0 808AC420 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 002E4 808AC424 860F0034 */  lh      $t7, 0x0034($s0)           ## 00000034
/* 002E8 808AC428 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 002EC 808AC42C 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 002F0 808AC430 0018CA03 */  sra     $t9, $t8,  8               
/* 002F4 808AC434 332800FF */  andi    $t0, $t9, 0x00FF           ## $t0 = 00000000
/* 002F8 808AC438 00084A00 */  sll     $t1, $t0,  8               
/* 002FC 808AC43C 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 00300 808AC440 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00304 808AC444 AFAA0028 */  sw      $t2, 0x0028($sp)           
glabel L808AC448
.L808AC448:
/* 00308 808AC448 3C0B808B */  lui     $t3, %hi(func_808AC4A4)    ## $t3 = 808B0000
/* 0030C 808AC44C 3C0C808B */  lui     $t4, %hi(func_808AC474)    ## $t4 = 808B0000
/* 00310 808AC450 256BC4A4 */  addiu   $t3, $t3, %lo(func_808AC4A4) ## $t3 = 808AC4A4
/* 00314 808AC454 258CC474 */  addiu   $t4, $t4, %lo(func_808AC474) ## $t4 = 808AC474
/* 00318 808AC458 AE0B0134 */  sw      $t3, 0x0134($s0)           ## 00000134
/* 0031C 808AC45C AE0C0164 */  sw      $t4, 0x0164($s0)           ## 00000164
.L808AC460:
/* 00320 808AC460 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00324 808AC464 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 00328 808AC468 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 0032C 808AC46C 03E00008 */  jr      $ra                        
/* 00330 808AC470 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000


