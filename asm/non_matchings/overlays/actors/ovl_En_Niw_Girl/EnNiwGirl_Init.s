glabel EnNiwGirl_Init
/* 00000 80AB8F80 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 00004 80AB8F84 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00008 80AB8F88 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0000C 80AB8F8C AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00010 80AB8F90 AFA5006C */  sw      $a1, 0x006C($sp)           
/* 00014 80AB8F94 260E0190 */  addiu   $t6, $s0, 0x0190           ## $t6 = 00000190
/* 00018 80AB8F98 260F01F6 */  addiu   $t7, $s0, 0x01F6           ## $t7 = 000001F6
/* 0001C 80AB8F9C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00020 80AB8FA0 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00024 80AB8FA4 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00028 80AB8FA8 24180011 */  addiu   $t8, $zero, 0x0011         ## $t8 = 00000011
/* 0002C 80AB8FAC AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00030 80AB8FB0 24E70378 */  addiu   $a3, $a3, 0x0378           ## $a3 = 06000378
/* 00034 80AB8FB4 24C69948 */  addiu   $a2, $a2, 0x9948           ## $a2 = 06009948
/* 00038 80AB8FB8 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 0003C 80AB8FBC AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00040 80AB8FC0 0C0291BE */  jal     func_800A46F8              
/* 00044 80AB8FC4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00048 80AB8FC8 26050288 */  addiu   $a1, $s0, 0x0288           ## $a1 = 00000288
/* 0004C 80AB8FCC AFA50040 */  sw      $a1, 0x0040($sp)           
/* 00050 80AB8FD0 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00054 80AB8FD4 8FA4006C */  lw      $a0, 0x006C($sp)           
/* 00058 80AB8FD8 3C0780AC */  lui     $a3, %hi(D_80AB99A0)       ## $a3 = 80AC0000
/* 0005C 80AB8FDC 8FA50040 */  lw      $a1, 0x0040($sp)           
/* 00060 80AB8FE0 24E799A0 */  addiu   $a3, $a3, %lo(D_80AB99A0)  ## $a3 = 80AB99A0
/* 00064 80AB8FE4 8FA4006C */  lw      $a0, 0x006C($sp)           
/* 00068 80AB8FE8 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 0006C 80AB8FEC 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00070 80AB8FF0 8603001C */  lh      $v1, 0x001C($s0)           ## 0000001C
/* 00074 80AB8FF4 24190006 */  addiu   $t9, $zero, 0x0006         ## $t9 = 00000006
/* 00078 80AB8FF8 A219001F */  sb      $t9, 0x001F($s0)           ## 0000001F
/* 0007C 80AB8FFC 04630004 */  bgezl   $v1, .L80AB9010            
/* 00080 80AB9000 860A00B6 */  lh      $t2, 0x00B6($s0)           ## 000000B6
/* 00084 80AB9004 A600001C */  sh      $zero, 0x001C($s0)         ## 0000001C
/* 00088 80AB9008 8603001C */  lh      $v1, 0x001C($s0)           ## 0000001C
/* 0008C 80AB900C 860A00B6 */  lh      $t2, 0x00B6($s0)           ## 000000B6
.L80AB9010:
/* 00090 80AB9010 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 00094 80AB9014 44812000 */  mtc1    $at, $f4                   ## $f4 = -3.00
/* 00098 80AB9018 448A3000 */  mtc1    $t2, $f6                   ## $f6 = 0.00
/* 0009C 80AB901C 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 000A0 80AB9020 44815000 */  mtc1    $at, $f10                  ## $f10 = 32768.00
/* 000A4 80AB9024 46803220 */  cvt.s.w $f8, $f6                   
/* 000A8 80AB9028 00034203 */  sra     $t0, $v1,  8               
/* 000AC 80AB902C 310900FF */  andi    $t1, $t0, 0x00FF           ## $t1 = 00000000
/* 000B0 80AB9030 A6090276 */  sh      $t1, 0x0276($s0)           ## 00000276
/* 000B4 80AB9034 3C0180AC */  lui     $at, %hi(D_80AB9B14)       ## $at = 80AC0000
/* 000B8 80AB9038 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 000BC 80AB903C 460A4403 */  div.s   $f16, $f8, $f10            
/* 000C0 80AB9040 C4329B14 */  lwc1    $f18, %lo(D_80AB9B14)($at) 
/* 000C4 80AB9044 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 000C8 80AB9048 46128302 */  mul.s   $f12, $f16, $f18           
/* 000CC 80AB904C 0C034348 */  jal     Matrix_RotateY              
/* 000D0 80AB9050 00000000 */  nop
/* 000D4 80AB9054 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 000D8 80AB9058 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 000DC 80AB905C 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 000E0 80AB9060 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFEC
/* 000E4 80AB9064 27A50048 */  addiu   $a1, $sp, 0x0048           ## $a1 = FFFFFFE0
/* 000E8 80AB9068 E7A00050 */  swc1    $f0, 0x0050($sp)           
/* 000EC 80AB906C E7A0004C */  swc1    $f0, 0x004C($sp)           
/* 000F0 80AB9070 E7A00048 */  swc1    $f0, 0x0048($sp)           
/* 000F4 80AB9074 E7A00058 */  swc1    $f0, 0x0058($sp)           
/* 000F8 80AB9078 E7A00054 */  swc1    $f0, 0x0054($sp)           
/* 000FC 80AB907C 0C0346BD */  jal     Matrix_MultVec3f              
/* 00100 80AB9080 E7A4005C */  swc1    $f4, 0x005C($sp)           
/* 00104 80AB9084 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00108 80AB9088 C7A80048 */  lwc1    $f8, 0x0048($sp)           
/* 0010C 80AB908C C7B2004C */  lwc1    $f18, 0x004C($sp)          
/* 00110 80AB9090 8FA6006C */  lw      $a2, 0x006C($sp)           
/* 00114 80AB9094 46083280 */  add.s   $f10, $f6, $f8             
/* 00118 80AB9098 C7A80050 */  lwc1    $f8, 0x0050($sp)           
/* 0011C 80AB909C 240C000A */  addiu   $t4, $zero, 0x000A         ## $t4 = 0000000A
/* 00120 80AB90A0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00124 80AB90A4 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 00128 80AB90A8 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 0012C 80AB90AC 24070019 */  addiu   $a3, $zero, 0x0019         ## $a3 = 00000019
/* 00130 80AB90B0 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00134 80AB90B4 46128100 */  add.s   $f4, $f16, $f18            
/* 00138 80AB90B8 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 0013C 80AB90BC C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 00140 80AB90C0 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00144 80AB90C4 46083280 */  add.s   $f10, $f6, $f8             
/* 00148 80AB90C8 E7AA0018 */  swc1    $f10, 0x0018($sp)          
/* 0014C 80AB90CC 860B0032 */  lh      $t3, 0x0032($s0)           ## 00000032
/* 00150 80AB90D0 AFAC0028 */  sw      $t4, 0x0028($sp)           
/* 00154 80AB90D4 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00158 80AB90D8 0C00C916 */  jal     Actor_SpawnAttached
              
/* 0015C 80AB90DC AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 00160 80AB90E0 10400012 */  beq     $v0, $zero, .L80AB912C     
/* 00164 80AB90E4 AE020284 */  sw      $v0, 0x0284($s0)           ## 00000284
/* 00168 80AB90E8 3C0480AC */  lui     $a0, %hi(D_80AB99F0)       ## $a0 = 80AC0000
/* 0016C 80AB90EC 248499F0 */  addiu   $a0, $a0, %lo(D_80AB99F0)  ## $a0 = 80AB99F0
/* 00170 80AB90F0 0C00084C */  jal     osSyncPrintf
              
/* 00174 80AB90F4 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00178 80AB90F8 3C0480AC */  lui     $a0, %hi(D_80AB9A34)       ## $a0 = 80AC0000
/* 0017C 80AB90FC 24849A34 */  addiu   $a0, $a0, %lo(D_80AB9A34)  ## $a0 = 80AB9A34
/* 00180 80AB9100 0C00084C */  jal     osSyncPrintf
              
/* 00184 80AB9104 86050276 */  lh      $a1, 0x0276($s0)           ## 00000276
/* 00188 80AB9108 3C0480AC */  lui     $a0, %hi(D_80AB9A70)       ## $a0 = 80AC0000
/* 0018C 80AB910C 0C00084C */  jal     osSyncPrintf
              
/* 00190 80AB9110 24849A70 */  addiu   $a0, $a0, %lo(D_80AB9A70)  ## $a0 = 80AB9A70
/* 00194 80AB9114 3C0E80AC */  lui     $t6, %hi(func_80AB93C0)    ## $t6 = 80AC0000
/* 00198 80AB9118 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 0019C 80AB911C 25CE93C0 */  addiu   $t6, $t6, %lo(func_80AB93C0) ## $t6 = 80AB93C0
/* 001A0 80AB9120 A20D00AE */  sb      $t5, 0x00AE($s0)           ## 000000AE
/* 001A4 80AB9124 10000011 */  beq     $zero, $zero, .L80AB916C   
/* 001A8 80AB9128 AE0E025C */  sw      $t6, 0x025C($s0)           ## 0000025C
.L80AB912C:
/* 001AC 80AB912C 3C0480AC */  lui     $a0, %hi(D_80AB9A74)       ## $a0 = 80AC0000
/* 001B0 80AB9130 0C00084C */  jal     osSyncPrintf
              
/* 001B4 80AB9134 24849A74 */  addiu   $a0, $a0, %lo(D_80AB9A74)  ## $a0 = 80AB9A74
/* 001B8 80AB9138 3C0480AC */  lui     $a0, %hi(D_80AB9A78)       ## $a0 = 80AC0000
/* 001BC 80AB913C 24849A78 */  addiu   $a0, $a0, %lo(D_80AB9A78)  ## $a0 = 80AB9A78
/* 001C0 80AB9140 0C00084C */  jal     osSyncPrintf
              
/* 001C4 80AB9144 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 001C8 80AB9148 3C0480AC */  lui     $a0, %hi(D_80AB9AB8)       ## $a0 = 80AC0000
/* 001CC 80AB914C 24849AB8 */  addiu   $a0, $a0, %lo(D_80AB9AB8)  ## $a0 = 80AB9AB8
/* 001D0 80AB9150 0C00084C */  jal     osSyncPrintf
              
/* 001D4 80AB9154 86050276 */  lh      $a1, 0x0276($s0)           ## 00000276
/* 001D8 80AB9158 3C0480AC */  lui     $a0, %hi(D_80AB9AE8)       ## $a0 = 80AC0000
/* 001DC 80AB915C 0C00084C */  jal     osSyncPrintf
              
/* 001E0 80AB9160 24849AE8 */  addiu   $a0, $a0, %lo(D_80AB9AE8)  ## $a0 = 80AB9AE8
/* 001E4 80AB9164 0C00B55C */  jal     Actor_Kill
              
/* 001E8 80AB9168 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AB916C:
/* 001EC 80AB916C 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 001F0 80AB9170 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 001F4 80AB9174 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 001F8 80AB9178 03E00008 */  jr      $ra                        
/* 001FC 80AB917C 00000000 */  nop


