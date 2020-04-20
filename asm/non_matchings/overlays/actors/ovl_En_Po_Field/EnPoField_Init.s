glabel EnPoField_Init
/* 00000 80AD3B00 3C0680AD */  lui     $a2, %hi(D_80AD7100)       ## $a2 = 80AD0000
/* 00004 80AD3B04 24C67100 */  addiu   $a2, $a2, %lo(D_80AD7100)  ## $a2 = 80AD7100
/* 00008 80AD3B08 8CC30000 */  lw      $v1, 0x0000($a2)           ## 80AD7100
/* 0000C 80AD3B0C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00010 80AD3B10 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 00014 80AD3B14 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00018 80AD3B18 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 0001C 80AD3B1C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00020 80AD3B20 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00024 80AD3B24 1061001C */  beq     $v1, $at, .L80AD3B98       
/* 00028 80AD3B28 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0002C 80AD3B2C C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 00030 80AD3B30 00037080 */  sll     $t6, $v1,  2               
/* 00034 80AD3B34 01C37023 */  subu    $t6, $t6, $v1              
/* 00038 80AD3B38 4600218D */  trunc.w.s $f6, $f4                   
/* 0003C 80AD3B3C 3C0F80AD */  lui     $t7, %hi(D_80AD76B0)       ## $t7 = 80AD0000
/* 00040 80AD3B40 25EF76B0 */  addiu   $t7, $t7, %lo(D_80AD76B0)  ## $t7 = 80AD76B0
/* 00044 80AD3B44 000E7040 */  sll     $t6, $t6,  1               
/* 00048 80AD3B48 44193000 */  mfc1    $t9, $f6                   
/* 0004C 80AD3B4C 01CF1021 */  addu    $v0, $t6, $t7              
/* 00050 80AD3B50 3C0180AD */  lui     $at, %hi(D_80AD76F0)       ## $at = 80AD0000
/* 00054 80AD3B54 A4590000 */  sh      $t9, 0x0000($v0)           ## 00000000
/* 00058 80AD3B58 C4880028 */  lwc1    $f8, 0x0028($a0)           ## 00000028
/* 0005C 80AD3B5C 00230821 */  addu    $at, $at, $v1              
/* 00060 80AD3B60 246E0001 */  addiu   $t6, $v1, 0x0001           ## $t6 = 00000001
/* 00064 80AD3B64 4600428D */  trunc.w.s $f10, $f8                  
/* 00068 80AD3B68 01C01825 */  or      $v1, $t6, $zero            ## $v1 = 00000001
/* 0006C 80AD3B6C 44095000 */  mfc1    $t1, $f10                  
/* 00070 80AD3B70 00000000 */  nop
/* 00074 80AD3B74 A4490002 */  sh      $t1, 0x0002($v0)           ## 00000002
/* 00078 80AD3B78 C490002C */  lwc1    $f16, 0x002C($a0)          ## 0000002C
/* 0007C 80AD3B7C 4600848D */  trunc.w.s $f18, $f16                 
/* 00080 80AD3B80 440B9000 */  mfc1    $t3, $f18                  
/* 00084 80AD3B84 00000000 */  nop
/* 00088 80AD3B88 A44B0004 */  sh      $t3, 0x0004($v0)           ## 00000004
/* 0008C 80AD3B8C 848D001C */  lh      $t5, 0x001C($a0)           ## 0000001C
/* 00090 80AD3B90 A02D76F0 */  sb      $t5, %lo(D_80AD76F0)($at)  
/* 00094 80AD3B94 ACCE0000 */  sw      $t6, 0x0000($a2)           ## 80AD7100
.L80AD3B98:
/* 00098 80AD3B98 28610002 */  slti    $at, $v1, 0x0002           
/* 0009C 80AD3B9C 14200007 */  bne     $at, $zero, .L80AD3BBC     
/* 000A0 80AD3BA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000A4 80AD3BA4 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 000A8 80AD3BA8 A60F001C */  sh      $t7, 0x001C($s0)           ## 0000001C
/* 000AC 80AD3BAC 0C00B55C */  jal     Actor_Kill
              
/* 000B0 80AD3BB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000B4 80AD3BB4 10000050 */  beq     $zero, $zero, .L80AD3CF8   
/* 000B8 80AD3BB8 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AD3BBC:
/* 000BC 80AD3BBC 3C0580AD */  lui     $a1, %hi(D_80AD7110)       ## $a1 = 80AD0000
/* 000C0 80AD3BC0 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 000C4 80AD3BC4 24A57110 */  addiu   $a1, $a1, %lo(D_80AD7110)  ## $a1 = 80AD7110
/* 000C8 80AD3BC8 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 000CC 80AD3BCC 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 000D0 80AD3BD0 2618019C */  addiu   $t8, $s0, 0x019C           ## $t8 = 0000019C
/* 000D4 80AD3BD4 261901D8 */  addiu   $t9, $s0, 0x01D8           ## $t9 = 000001D8
/* 000D8 80AD3BD8 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 000DC 80AD3BDC AFA80018 */  sw      $t0, 0x0018($sp)           
/* 000E0 80AD3BE0 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 000E4 80AD3BE4 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 000E8 80AD3BE8 24E70924 */  addiu   $a3, $a3, 0x0924           ## $a3 = 06000924
/* 000EC 80AD3BEC 24C66A30 */  addiu   $a2, $a2, 0x6A30           ## $a2 = 06006A30
/* 000F0 80AD3BF0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000F4 80AD3BF4 0C02915F */  jal     SkelAnime_Init
              
/* 000F8 80AD3BF8 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 000FC 80AD3BFC 26050244 */  addiu   $a1, $s0, 0x0244           ## $a1 = 00000244
/* 00100 80AD3C00 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00104 80AD3C04 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00108 80AD3C08 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0010C 80AD3C0C 3C0780AD */  lui     $a3, %hi(D_80AD7080)       ## $a3 = 80AD0000
/* 00110 80AD3C10 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00114 80AD3C14 24E77080 */  addiu   $a3, $a3, %lo(D_80AD7080)  ## $a3 = 80AD7080
/* 00118 80AD3C18 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0011C 80AD3C1C 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00120 80AD3C20 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00124 80AD3C24 26050290 */  addiu   $a1, $s0, 0x0290           ## $a1 = 00000290
/* 00128 80AD3C28 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0012C 80AD3C2C 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00130 80AD3C30 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00134 80AD3C34 3C0780AD */  lui     $a3, %hi(D_80AD70AC)       ## $a3 = 80AD0000
/* 00138 80AD3C38 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 0013C 80AD3C3C 24E770AC */  addiu   $a3, $a3, %lo(D_80AD70AC)  ## $a3 = 80AD70AC
/* 00140 80AD3C40 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00144 80AD3C44 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00148 80AD3C48 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0014C 80AD3C4C 3C0580AD */  lui     $a1, %hi(D_80AD70E0)       ## $a1 = 80AD0000
/* 00150 80AD3C50 3C0680AD */  lui     $a2, %hi(D_80AD70D8)       ## $a2 = 80AD0000
/* 00154 80AD3C54 24C670D8 */  addiu   $a2, $a2, %lo(D_80AD70D8)  ## $a2 = 80AD70D8
/* 00158 80AD3C58 24A570E0 */  addiu   $a1, $a1, %lo(D_80AD70E0)  ## $a1 = 80AD70E0
/* 0015C 80AD3C5C 0C0187B5 */  jal     func_80061ED4              
/* 00160 80AD3C60 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00164 80AD3C64 26060234 */  addiu   $a2, $s0, 0x0234           ## $a2 = 00000234
/* 00168 80AD3C68 AFA60034 */  sw      $a2, 0x0034($sp)           
/* 0016C 80AD3C6C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00170 80AD3C70 0C01E9D9 */  jal     Lights_Insert
              
/* 00174 80AD3C74 262507A8 */  addiu   $a1, $s1, 0x07A8           ## $a1 = 000007A8
/* 00178 80AD3C78 C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 0017C 80AD3C7C C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
/* 00180 80AD3C80 C6100010 */  lwc1    $f16, 0x0010($s0)          ## 00000010
/* 00184 80AD3C84 4600218D */  trunc.w.s $f6, $f4                   
/* 00188 80AD3C88 AE020230 */  sw      $v0, 0x0230($s0)           ## 00000230
/* 0018C 80AD3C8C 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 00190 80AD3C90 4600428D */  trunc.w.s $f10, $f8                  
/* 00194 80AD3C94 44053000 */  mfc1    $a1, $f6                   
/* 00198 80AD3C98 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 0019C 80AD3C9C 4600848D */  trunc.w.s $f18, $f16                 
/* 001A0 80AD3CA0 44065000 */  mfc1    $a2, $f10                  
/* 001A4 80AD3CA4 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 001A8 80AD3CA8 00052C00 */  sll     $a1, $a1, 16               
/* 001AC 80AD3CAC 44079000 */  mfc1    $a3, $f18                  
/* 001B0 80AD3CB0 00063400 */  sll     $a2, $a2, 16               
/* 001B4 80AD3CB4 00063403 */  sra     $a2, $a2, 16               
/* 001B8 80AD3CB8 00073C00 */  sll     $a3, $a3, 16               
/* 001BC 80AD3CBC 00073C03 */  sra     $a3, $a3, 16               
/* 001C0 80AD3CC0 00052C03 */  sra     $a1, $a1, 16               
/* 001C4 80AD3CC4 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 001C8 80AD3CC8 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 001CC 80AD3CCC AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 001D0 80AD3CD0 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 001D4 80AD3CD4 0C01E77C */  jal     Lights_InitType2PositionalLight
              
/* 001D8 80AD3CD8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 001DC 80AD3CDC 3C0F8003 */  lui     $t7, %hi(ActorShadow_DrawFunc_Circle)
/* 001E0 80AD3CE0 25EFB5EC */  addiu   $t7, %lo(ActorShadow_DrawFunc_Circle)
/* 001E4 80AD3CE4 AE0F00C0 */  sw      $t7, 0x00C0($s0)           ## 000000C0
/* 001E8 80AD3CE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001EC 80AD3CEC 0C2B4F5A */  jal     func_80AD3D68              
/* 001F0 80AD3CF0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 001F4 80AD3CF4 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AD3CF8:
/* 001F8 80AD3CF8 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 001FC 80AD3CFC 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 00200 80AD3D00 03E00008 */  jr      $ra                        
/* 00204 80AD3D04 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
