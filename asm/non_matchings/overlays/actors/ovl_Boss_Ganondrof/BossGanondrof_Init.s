.late_rodata
glabel D_8091540C
    .float -3315.0

glabel D_80915410
    .float -3315.0

.text
glabel BossGanondrof_Init
/* 00430 80910A70 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00434 80910A74 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00438 80910A78 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0043C 80910A7C AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00440 80910A80 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 00444 80910A84 3C058091 */  lui     $a1, %hi(D_80915084)       ## $a1 = 80910000
/* 00448 80910A88 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0044C 80910A8C 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00450 80910A90 24A55084 */  addiu   $a1, $a1, %lo(D_80915084)  ## $a1 = 80915084
/* 00454 80910A94 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00458 80910A98 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0045C 80910A9C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00460 80910AA0 44050000 */  mfc1    $a1, $f0                   
/* 00464 80910AA4 44070000 */  mfc1    $a3, $f0                   
/* 00468 80910AA8 0C00AC78 */  jal     ActorShape_Init
              
/* 0046C 80910AAC 00000000 */  nop
/* 00470 80910AB0 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00474 80910AB4 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00478 80910AB8 0C00B58B */  jal     Actor_SetScale
              
/* 0047C 80910ABC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00480 80910AC0 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00484 80910AC4 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00488 80910AC8 24E73CA4 */  addiu   $a3, $a3, 0x3CA4           ## $a3 = 06003CA4
/* 0048C 80910ACC 24C6C710 */  addiu   $a2, $a2, 0xC710           ## $a2 = 0600C710
/* 00490 80910AD0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00494 80910AD4 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00498 80910AD8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0049C 80910ADC AFA00014 */  sw      $zero, 0x0014($sp)         
/* 004A0 80910AE0 0C02915F */  jal     Skeleton_Init
              
/* 004A4 80910AE4 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 004A8 80910AE8 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 004AC 80910AEC 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 004B0 80910AF0 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 004B4 80910AF4 29C1000A */  slti    $at, $t6, 0x000A           
/* 004B8 80910AF8 10200026 */  beq     $at, $zero, .L80910B94     
/* 004BC 80910AFC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 004C0 80910B00 A60F001C */  sh      $t7, 0x001C($s0)           ## 0000001C
/* 004C4 80910B04 A21800AF */  sb      $t8, 0x00AF($s0)           ## 000000AF
/* 004C8 80910B08 260604D0 */  addiu   $a2, $s0, 0x04D0           ## $a2 = 000004D0
/* 004CC 80910B0C AFA60044 */  sw      $a2, 0x0044($sp)           
/* 004D0 80910B10 0C01E9D9 */  jal     LightContext_InsertLight
              
/* 004D4 80910B14 262507A8 */  addiu   $a1, $s1, 0x07A8           ## $a1 = 000007A8
/* 004D8 80910B18 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 004DC 80910B1C C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 004E0 80910B20 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 004E4 80910B24 4600218D */  trunc.w.s $f6, $f4                   
/* 004E8 80910B28 AE0204CC */  sw      $v0, 0x04CC($s0)           ## 000004CC
/* 004EC 80910B2C 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 004F0 80910B30 4600428D */  trunc.w.s $f10, $f8                  
/* 004F4 80910B34 44053000 */  mfc1    $a1, $f6                   
/* 004F8 80910B38 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 004FC 80910B3C 4600848D */  trunc.w.s $f18, $f16                 
/* 00500 80910B40 44065000 */  mfc1    $a2, $f10                  
/* 00504 80910B44 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 00508 80910B48 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 0050C 80910B4C 44079000 */  mfc1    $a3, $f18                  
/* 00510 80910B50 00052C00 */  sll     $a1, $a1, 16               
/* 00514 80910B54 00063400 */  sll     $a2, $a2, 16               
/* 00518 80910B58 00073C00 */  sll     $a3, $a3, 16               
/* 0051C 80910B5C 00073C03 */  sra     $a3, $a3, 16               
/* 00520 80910B60 00063403 */  sra     $a2, $a2, 16               
/* 00524 80910B64 00052C03 */  sra     $a1, $a1, 16               
/* 00528 80910B68 AFAD001C */  sw      $t5, 0x001C($sp)           
/* 0052C 80910B6C AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 00530 80910B70 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00534 80910B74 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00538 80910B78 0C01E763 */  jal     Lights_PointNoGlowSetInfo
              
/* 0053C 80910B7C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00540 80910B80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00544 80910B84 0C244360 */  jal     func_80910D80              
/* 00548 80910B88 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0054C 80910B8C 10000004 */  beq     $zero, $zero, .L80910BA0   
/* 00550 80910B90 260504E0 */  addiu   $a1, $s0, 0x04E0           ## $a1 = 000004E0
.L80910B94:
/* 00554 80910B94 0C2444A5 */  jal     func_80911294              
/* 00558 80910B98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0055C 80910B9C 260504E0 */  addiu   $a1, $s0, 0x04E0           ## $a1 = 000004E0
.L80910BA0:
/* 00560 80910BA0 AFA50040 */  sw      $a1, 0x0040($sp)           
/* 00564 80910BA4 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00568 80910BA8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0056C 80910BAC 2605052C */  addiu   $a1, $s0, 0x052C           ## $a1 = 0000052C
/* 00570 80910BB0 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00574 80910BB4 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00578 80910BB8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0057C 80910BBC 3C078091 */  lui     $a3, %hi(D_80914CD0)       ## $a3 = 80910000
/* 00580 80910BC0 24E74CD0 */  addiu   $a3, $a3, %lo(D_80914CD0)  ## $a3 = 80914CD0
/* 00584 80910BC4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00588 80910BC8 8FA50040 */  lw      $a1, 0x0040($sp)           
/* 0058C 80910BCC 0C01712B */  jal     Collider_SetCylinder
              
/* 00590 80910BD0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00594 80910BD4 3C078091 */  lui     $a3, %hi(D_80914CFC)       ## $a3 = 80910000
/* 00598 80910BD8 24E74CFC */  addiu   $a3, $a3, %lo(D_80914CFC)  ## $a3 = 80914CFC
/* 0059C 80910BDC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 005A0 80910BE0 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 005A4 80910BE4 0C01712B */  jal     Collider_SetCylinder
              
/* 005A8 80910BE8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 005AC 80910BEC 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 005B0 80910BF0 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 005B4 80910BF4 3C050001 */  lui     $a1, 0x0001                ## $a1 = 00010000
/* 005B8 80910BF8 01C17824 */  and     $t7, $t6, $at              
/* 005BC 80910BFC AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 005C0 80910C00 00B12821 */  addu    $a1, $a1, $s1              
/* 005C4 80910C04 80A51CBC */  lb      $a1, 0x1CBC($a1)           ## 00011CBC
/* 005C8 80910C08 0C00B337 */  jal     Flags_GetClear
              
/* 005CC 80910C0C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 005D0 80910C10 50400026 */  beql    $v0, $zero, .L80910CAC     
/* 005D4 80910C14 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 005D8 80910C18 0C00B55C */  jal     Actor_Kill
              
/* 005DC 80910C1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005E0 80910C20 3C01C204 */  lui     $at, 0xC204                ## $at = C2040000
/* 005E4 80910C24 44812000 */  mtc1    $at, $f4                   ## $f4 = -33.00
/* 005E8 80910C28 3C018091 */  lui     $at, %hi(D_8091540C)       ## $at = 80910000
/* 005EC 80910C2C C426540C */  lwc1    $f6, %lo(D_8091540C)($at)  
/* 005F0 80910C30 26301C24 */  addiu   $s0, $s1, 0x1C24           ## $s0 = 00001C24
/* 005F4 80910C34 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 005F8 80910C38 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 005FC 80910C3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00001C24
/* 00600 80910C40 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00604 80910C44 2406005D */  addiu   $a2, $zero, 0x005D         ## $a2 = 0000005D
/* 00608 80910C48 3C074160 */  lui     $a3, 0x4160                ## $a3 = 41600000
/* 0060C 80910C4C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00610 80910C50 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00614 80910C54 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00618 80910C58 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 0061C 80910C5C 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00620 80910C60 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00624 80910C64 3C01C204 */  lui     $at, 0xC204                ## $at = C2040000
/* 00628 80910C68 44814000 */  mtc1    $at, $f8                   ## $f8 = -33.00
/* 0062C 80910C6C 3C018091 */  lui     $at, %hi(D_80915410)       ## $at = 80910000
/* 00630 80910C70 C42A5410 */  lwc1    $f10, %lo(D_80915410)($at) 
/* 00634 80910C74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00001C24
/* 00638 80910C78 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0063C 80910C7C 2406005F */  addiu   $a2, $zero, 0x005F         ## $a2 = 0000005F
/* 00640 80910C80 3C074356 */  lui     $a3, 0x4356                ## $a3 = 43560000
/* 00644 80910C84 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00648 80910C88 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 0064C 80910C8C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00650 80910C90 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00654 80910C94 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00658 80910C98 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 0065C 80910C9C E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 00660 80910CA0 10000012 */  beq     $zero, $zero, .L80910CEC   
/* 00664 80910CA4 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00668 80910CA8 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00001C48
.L80910CAC:
/* 0066C 80910CAC 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 00670 80910CB0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00001C24
/* 00674 80910CB4 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 00678 80910CB8 C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00001C4C
/* 0067C 80910CBC 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 00680 80910CC0 24070067 */  addiu   $a3, $zero, 0x0067         ## $a3 = 00000067
/* 00684 80910CC4 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 00688 80910CC8 C604002C */  lwc1    $f4, 0x002C($s0)           ## 00001C50
/* 0068C 80910CCC AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00690 80910CD0 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00694 80910CD4 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00698 80910CD8 E7A40018 */  swc1    $f4, 0x0018($sp)           
/* 0069C 80910CDC 8619001C */  lh      $t9, 0x001C($s0)           ## 00001C40
/* 006A0 80910CE0 0C00C916 */  jal     Actor_SpawnAsChild
              
/* 006A4 80910CE4 AFB90028 */  sw      $t9, 0x0028($sp)           
/* 006A8 80910CE8 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80910CEC:
/* 006AC 80910CEC 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 006B0 80910CF0 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 006B4 80910CF4 03E00008 */  jr      $ra                        
/* 006B8 80910CF8 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
