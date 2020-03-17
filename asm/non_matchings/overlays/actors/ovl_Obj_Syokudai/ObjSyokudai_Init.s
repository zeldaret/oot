glabel ObjSyokudai_Init
/* 00000 80B9F2B0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 80B9F2B4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00008 80B9F2B8 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 0000C 80B9F2BC AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00010 80B9F2C0 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00014 80B9F2C4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00018 80B9F2C8 3C0580BA */  lui     $a1, %hi(D_80B9FE68)       ## $a1 = 80BA0000
/* 0001C 80B9F2CC 31CFF000 */  andi    $t7, $t6, 0xF000           ## $t7 = 00000000
/* 00020 80B9F2D0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00024 80B9F2D4 AFAF0034 */  sw      $t7, 0x0034($sp)           
/* 00028 80B9F2D8 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0002C 80B9F2DC 24A5FE68 */  addiu   $a1, $a1, %lo(D_80B9FE68)  ## $a1 = 80B9FE68
/* 00030 80B9F2E0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00034 80B9F2E4 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00038 80B9F2E8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0003C 80B9F2EC 44050000 */  mfc1    $a1, $f0                   
/* 00040 80B9F2F0 44070000 */  mfc1    $a3, $f0                   
/* 00044 80B9F2F4 0C00AC78 */  jal     ActorShape_Init
              
/* 00048 80B9F2F8 00000000 */  nop
/* 0004C 80B9F2FC 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00050 80B9F300 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00054 80B9F304 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00058 80B9F308 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0005C 80B9F30C 3C0780BA */  lui     $a3, %hi(D_80B9FE10)       ## $a3 = 80BA0000
/* 00060 80B9F310 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00064 80B9F314 24E7FE10 */  addiu   $a3, $a3, %lo(D_80B9FE10)  ## $a3 = 80B9FE10
/* 00068 80B9F318 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0006C 80B9F31C 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00070 80B9F320 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00074 80B9F324 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 00078 80B9F328 3C0880BA */  lui     $t0, %hi(D_80B9FE78)       ## $t0 = 80BA0000
/* 0007C 80B9F32C 26050198 */  addiu   $a1, $s0, 0x0198           ## $a1 = 00000198
/* 00080 80B9F330 0018CB03 */  sra     $t9, $t8, 12               
/* 00084 80B9F334 01194021 */  addu    $t0, $t0, $t9              
/* 00088 80B9F338 9108FE78 */  lbu     $t0, %lo(D_80B9FE78)($t0)  
/* 0008C 80B9F33C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00090 80B9F340 A2080160 */  sb      $t0, 0x0160($s0)           ## 00000160
/* 00094 80B9F344 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00098 80B9F348 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 0009C 80B9F34C 3C0780BA */  lui     $a3, %hi(D_80B9FE3C)       ## $a3 = 80BA0000
/* 000A0 80B9F350 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 000A4 80B9F354 24E7FE3C */  addiu   $a3, $a3, %lo(D_80B9FE3C)  ## $a3 = 80B9FE3C
/* 000A8 80B9F358 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000AC 80B9F35C 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 000B0 80B9F360 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000B4 80B9F364 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 000B8 80B9F368 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 000BC 80B9F36C 44815000 */  mtc1    $at, $f10                  ## $f10 = 70.00
/* 000C0 80B9F370 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 000C4 80B9F374 4600218D */  trunc.w.s $f6, $f4                   
/* 000C8 80B9F378 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 000CC 80B9F37C 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 000D0 80B9F380 460A4400 */  add.s   $f16, $f8, $f10            
/* 000D4 80B9F384 44053000 */  mfc1    $a1, $f6                   
/* 000D8 80B9F388 A20900AE */  sb      $t1, 0x00AE($s0)           ## 000000AE
/* 000DC 80B9F38C 4600218D */  trunc.w.s $f6, $f4                   
/* 000E0 80B9F390 260401EC */  addiu   $a0, $s0, 0x01EC           ## $a0 = 000001EC
/* 000E4 80B9F394 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 000E8 80B9F398 4600848D */  trunc.w.s $f18, $f16                 
/* 000EC 80B9F39C 44073000 */  mfc1    $a3, $f6                   
/* 000F0 80B9F3A0 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 000F4 80B9F3A4 240F00B4 */  addiu   $t7, $zero, 0x00B4         ## $t7 = 000000B4
/* 000F8 80B9F3A8 44069000 */  mfc1    $a2, $f18                  
/* 000FC 80B9F3AC 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 00100 80B9F3B0 00052C00 */  sll     $a1, $a1, 16               
/* 00104 80B9F3B4 00073C00 */  sll     $a3, $a3, 16               
/* 00108 80B9F3B8 00063400 */  sll     $a2, $a2, 16               
/* 0010C 80B9F3BC 00063403 */  sra     $a2, $a2, 16               
/* 00110 80B9F3C0 00073C03 */  sra     $a3, $a3, 16               
/* 00114 80B9F3C4 00052C03 */  sra     $a1, $a1, 16               
/* 00118 80B9F3C8 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 0011C 80B9F3CC AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 00120 80B9F3D0 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00124 80B9F3D4 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00128 80B9F3D8 0C01E77C */  jal     Lights_InitType2PositionalLight
              
/* 0012C 80B9F3DC AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00130 80B9F3E0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00134 80B9F3E4 262507A8 */  addiu   $a1, $s1, 0x07A8           ## $a1 = 000007A8
/* 00138 80B9F3E8 0C01E9D9 */  jal     Lights_Insert
              
/* 0013C 80B9F3EC 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 00140 80B9F3F0 8603001C */  lh      $v1, 0x001C($s0)           ## 0000001C
/* 00144 80B9F3F4 AE0201E8 */  sw      $v0, 0x01E8($s0)           ## 000001E8
/* 00148 80B9F3F8 8FA80034 */  lw      $t0, 0x0034($sp)           
/* 0014C 80B9F3FC 30790400 */  andi    $t9, $v1, 0x0400           ## $t9 = 00000000
/* 00150 80B9F400 17200006 */  bne     $t9, $zero, .L80B9F41C     
/* 00154 80B9F404 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00158 80B9F408 11010006 */  beq     $t0, $at, .L80B9F424       
/* 0015C 80B9F40C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00160 80B9F410 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00164 80B9F414 3065003F */  andi    $a1, $v1, 0x003F           ## $a1 = 00000000
/* 00168 80B9F418 10400002 */  beq     $v0, $zero, .L80B9F424     
.L80B9F41C:
/* 0016C 80B9F41C 2409FFFF */  addiu   $t1, $zero, 0xFFFF         ## $t1 = FFFFFFFF
/* 00170 80B9F420 A60901E4 */  sh      $t1, 0x01E4($s0)           ## 000001E4
.L80B9F424:
/* 00174 80B9F424 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00178 80B9F428 00000000 */  nop
/* 0017C 80B9F42C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00180 80B9F430 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 00184 80B9F434 3C0180BA */  lui     $at, %hi(D_80B9FF90)       ## $at = 80BA0000
/* 00188 80B9F438 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0018C 80B9F43C 46080282 */  mul.s   $f10, $f0, $f8             
/* 00190 80B9F440 3C054270 */  lui     $a1, 0x4270                ## $a1 = 42700000
/* 00194 80B9F444 4600540D */  trunc.w.s $f16, $f10                 
/* 00198 80B9F448 440B8000 */  mfc1    $t3, $f16                  
/* 0019C 80B9F44C 00000000 */  nop
/* 001A0 80B9F450 A20B01E6 */  sb      $t3, 0x01E6($s0)           ## 000001E6
/* 001A4 80B9F454 0C00B56E */  jal     Actor_SetHeight
              
/* 001A8 80B9F458 AC20FF90 */  sw      $zero, %lo(D_80B9FF90)($at) 
/* 001AC 80B9F45C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 001B0 80B9F460 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 001B4 80B9F464 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 001B8 80B9F468 03E00008 */  jr      $ra                        
/* 001BC 80B9F46C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000


