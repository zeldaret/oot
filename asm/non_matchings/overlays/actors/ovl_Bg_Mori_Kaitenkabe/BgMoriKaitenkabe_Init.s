glabel BgMoriKaitenkabe_Init
/* 00070 808A4E30 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00074 808A4E34 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00078 808A4E38 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0007C 808A4E3C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00080 808A4E40 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00084 808A4E44 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00088 808A4E48 3C04808A */  lui     $a0, %hi(D_808A53E0)       ## $a0 = 808A0000
/* 0008C 808A4E4C 248453E0 */  addiu   $a0, $a0, %lo(D_808A53E0)  ## $a0 = 808A53E0
/* 00090 808A4E50 0C00084C */  jal     osSyncPrintf
              
/* 00094 808A4E54 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00098 808A4E58 3C05808A */  lui     $a1, %hi(D_808A53D0)       ## $a1 = 808A0000
/* 0009C 808A4E5C 24A553D0 */  addiu   $a1, $a1, %lo(D_808A53D0)  ## $a1 = 808A53D0
/* 000A0 808A4E60 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 000A4 808A4E64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000A8 808A4E68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000AC 808A4E6C 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 000B0 808A4E70 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 000B4 808A4E74 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 000B8 808A4E78 248463B8 */  addiu   $a0, $a0, 0x63B8           ## $a0 = 060063B8
/* 000BC 808A4E7C 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 000C0 808A4E80 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 000C4 808A4E84 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 000C8 808A4E88 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000CC 808A4E8C 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 000D0 808A4E90 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 000D4 808A4E94 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 000D8 808A4E98 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 000DC 808A4E9C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 000E0 808A4EA0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 000E4 808A4EA4 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 000E8 808A4EA8 24050073 */  addiu   $a1, $zero, 0x0073         ## $a1 = 00000073
/* 000EC 808A4EAC 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 000F0 808A4EB0 00812021 */  addu    $a0, $a0, $at              
/* 000F4 808A4EB4 A2020184 */  sb      $v0, 0x0184($s0)           ## 00000184
/* 000F8 808A4EB8 820E0184 */  lb      $t6, 0x0184($s0)           ## 00000184
/* 000FC 808A4EBC 3C0F808A */  lui     $t7, %hi(func_808A4F3C)    ## $t7 = 808A0000
/* 00100 808A4EC0 25EF4F3C */  addiu   $t7, $t7, %lo(func_808A4F3C) ## $t7 = 808A4F3C
/* 00104 808A4EC4 05C3000C */  bgezl   $t6, .L808A4EF8            
/* 00108 808A4EC8 AE0F0164 */  sw      $t7, 0x0164($s0)           ## 00000164
/* 0010C 808A4ECC 0C00B55C */  jal     Actor_Kill
              
/* 00110 808A4ED0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00114 808A4ED4 3C04808A */  lui     $a0, %hi(D_808A5420)       ## $a0 = 808A0000
/* 00118 808A4ED8 3C05808A */  lui     $a1, %hi(D_808A5440)       ## $a1 = 808A0000
/* 0011C 808A4EDC 24A55440 */  addiu   $a1, $a1, %lo(D_808A5440)  ## $a1 = 808A5440
/* 00120 808A4EE0 24845420 */  addiu   $a0, $a0, %lo(D_808A5420)  ## $a0 = 808A5420
/* 00124 808A4EE4 0C00084C */  jal     osSyncPrintf
              
/* 00128 808A4EE8 240600B0 */  addiu   $a2, $zero, 0x00B0         ## $a2 = 000000B0
/* 0012C 808A4EEC 10000003 */  beq     $zero, $zero, .L808A4EFC   
/* 00130 808A4EF0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00134 808A4EF4 AE0F0164 */  sw      $t7, 0x0164($s0)           ## 00000164
.L808A4EF8:
/* 00138 808A4EF8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808A4EFC:
/* 0013C 808A4EFC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00140 808A4F00 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00144 808A4F04 03E00008 */  jr      $ra                        
/* 00148 808A4F08 00000000 */  nop


