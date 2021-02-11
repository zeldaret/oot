glabel BgGndFiremeiro_Init
/* 00000 808794C0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00004 808794C4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00008 808794C8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0000C 808794CC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00010 808794D0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00014 808794D4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00018 808794D8 44050000 */  mfc1    $a1, $f0                   
/* 0001C 808794DC 44070000 */  mfc1    $a3, $f0                   
/* 00020 808794E0 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00024 808794E4 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 00028 808794E8 0C00AC78 */  jal     ActorShape_Init
              
/* 0002C 808794EC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00030 808794F0 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 00034 808794F4 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 00038 808794F8 0C00B58B */  jal     Actor_SetScale
              
/* 0003C 808794FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00040 80879500 8E0F0024 */  lw      $t7, 0x0024($s0)           ## 00000024
/* 00044 80879504 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 00048 80879508 8E0E0028 */  lw      $t6, 0x0028($s0)           ## 00000028
/* 0004C 8087950C AE0F0164 */  sw      $t7, 0x0164($s0)           ## 00000164
/* 00050 80879510 8E0F002C */  lw      $t7, 0x002C($s0)           ## 0000002C
/* 00054 80879514 AE0E0168 */  sw      $t6, 0x0168($s0)           ## 00000168
/* 00058 80879518 17000011 */  bne     $t8, $zero, .L80879560     
/* 0005C 8087951C AE0F016C */  sw      $t7, 0x016C($s0)           ## 0000016C
/* 00060 80879520 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00064 80879524 0C010D20 */  jal     DynaPolyActor_Init
              
/* 00068 80879528 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0006C 8087952C 3C040601 */  lui     $a0, %hi(gFireTrialPlatformCol)                ## $a0 = 06010000
/* 00070 80879530 2484ECD8 */  addiu   $a0, $a0, %lo(gFireTrialPlatformCol)           ## $a0 = 0600ECD8
/* 00074 80879534 0C010620 */  jal     CollisionHeader_GetVirtual
              
/* 00078 80879538 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 0007C 8087953C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00080 80879540 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00084 80879544 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 00088 80879548 0C00FA9D */  jal     DynaPoly_SetBgActor
              ## DynaPoly_SetBgActor
/* 0008C 8087954C 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00090 80879550 3C198088 */  lui     $t9, %hi(func_80879808)    ## $t9 = 80880000
/* 00094 80879554 27399808 */  addiu   $t9, $t9, %lo(func_80879808) ## $t9 = 80879808
/* 00098 80879558 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 0009C 8087955C AE190174 */  sw      $t9, 0x0174($s0)           ## 00000174
.L80879560:
/* 000A0 80879560 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 000A4 80879564 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 000A8 80879568 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 000AC 8087956C 03E00008 */  jr      $ra                        
/* 000B0 80879570 00000000 */  nop
