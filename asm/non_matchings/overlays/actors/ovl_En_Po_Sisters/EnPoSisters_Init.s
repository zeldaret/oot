glabel EnPoSisters_Init
/* 00000 80AD8F90 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 80AD8F94 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 00008 80AD8F98 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0000C 80AD8F9C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00010 80AD8FA0 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00014 80AD8FA4 3C0580AE */  lui     $a1, %hi(D_80ADD788)       ## $a1 = 80AE0000
/* 00018 80AD8FA8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 80AD8FAC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 80AD8FB0 24A5D788 */  addiu   $a1, $a1, %lo(D_80ADD788)  ## $a1 = 80ADD788
/* 00024 80AD8FB4 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00028 80AD8FB8 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 0002C 80AD8FBC 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00030 80AD8FC0 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00034 80AD8FC4 0C00AC78 */  jal     ActorShape_Init
              
/* 00038 80AD8FC8 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 0003C 80AD8FCC 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00040 80AD8FD0 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00044 80AD8FD4 260E019E */  addiu   $t6, $s0, 0x019E           ## $t6 = 0000019E
/* 00048 80AD8FD8 260F01E6 */  addiu   $t7, $s0, 0x01E6           ## $t7 = 000001E6
/* 0004C 80AD8FDC 2418000C */  addiu   $t8, $zero, 0x000C         ## $t8 = 0000000C
/* 00050 80AD8FE0 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00054 80AD8FE4 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00058 80AD8FE8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0005C 80AD8FEC 24E714CC */  addiu   $a3, $a3, 0x14CC           ## $a3 = 060014CC
/* 00060 80AD8FF0 24C665C8 */  addiu   $a2, $a2, 0x65C8           ## $a2 = 060065C8
/* 00064 80AD8FF4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00068 80AD8FF8 0C02915F */  jal     SkelAnime_Init
              
/* 0006C 80AD8FFC 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00070 80AD9000 240300FF */  addiu   $v1, $zero, 0x00FF         ## $v1 = 000000FF
/* 00074 80AD9004 241900D2 */  addiu   $t9, $zero, 0x00D2         ## $t9 = 000000D2
/* 00078 80AD9008 A203022E */  sb      $v1, 0x022E($s0)           ## 0000022E
/* 0007C 80AD900C A203022F */  sb      $v1, 0x022F($s0)           ## 0000022F
/* 00080 80AD9010 A2190230 */  sb      $t9, 0x0230($s0)           ## 00000230
/* 00084 80AD9014 A2030231 */  sb      $v1, 0x0231($s0)           ## 00000231
/* 00088 80AD9018 2606029C */  addiu   $a2, $s0, 0x029C           ## $a2 = 0000029C
/* 0008C 80AD901C AFA60034 */  sw      $a2, 0x0034($sp)           
/* 00090 80AD9020 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00094 80AD9024 0C01E9D9 */  jal     Lights_Insert
              
/* 00098 80AD9028 262507A8 */  addiu   $a1, $s1, 0x07A8           ## $a1 = 000007A8
/* 0009C 80AD902C C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 000A0 80AD9030 C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
/* 000A4 80AD9034 C6100010 */  lwc1    $f16, 0x0010($s0)          ## 00000010
/* 000A8 80AD9038 4600218D */  trunc.w.s $f6, $f4                   
/* 000AC 80AD903C AE020298 */  sw      $v0, 0x0298($s0)           ## 00000298
/* 000B0 80AD9040 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 000B4 80AD9044 4600428D */  trunc.w.s $f10, $f8                  
/* 000B8 80AD9048 44053000 */  mfc1    $a1, $f6                   
/* 000BC 80AD904C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 000C0 80AD9050 4600848D */  trunc.w.s $f18, $f16                 
/* 000C4 80AD9054 44065000 */  mfc1    $a2, $f10                  
/* 000C8 80AD9058 00052C00 */  sll     $a1, $a1, 16               
/* 000CC 80AD905C 00052C03 */  sra     $a1, $a1, 16               
/* 000D0 80AD9060 44079000 */  mfc1    $a3, $f18                  
/* 000D4 80AD9064 00063400 */  sll     $a2, $a2, 16               
/* 000D8 80AD9068 00063403 */  sra     $a2, $a2, 16               
/* 000DC 80AD906C 00073C00 */  sll     $a3, $a3, 16               
/* 000E0 80AD9070 00073C03 */  sra     $a3, $a3, 16               
/* 000E4 80AD9074 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 000E8 80AD9078 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 000EC 80AD907C 0C01E77C */  jal     Lights_InitPointLightGlow
              
/* 000F0 80AD9080 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 000F4 80AD9084 260502AC */  addiu   $a1, $s0, 0x02AC           ## $a1 = 000002AC
/* 000F8 80AD9088 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 000FC 80AD908C 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00100 80AD9090 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00104 80AD9094 3C0780AE */  lui     $a3, %hi(D_80ADD730)       ## $a3 = 80AE0000
/* 00108 80AD9098 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 0010C 80AD909C 24E7D730 */  addiu   $a3, $a3, %lo(D_80ADD730)  ## $a3 = 80ADD730
/* 00110 80AD90A0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00114 80AD90A4 0C01712B */  jal     Collider_SetCylinder
              
/* 00118 80AD90A8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0011C 80AD90AC 3C0580AE */  lui     $a1, %hi(D_80ADD764)       ## $a1 = 80AE0000
/* 00120 80AD90B0 3C0680AE */  lui     $a2, %hi(D_80ADD75C)       ## $a2 = 80AE0000
/* 00124 80AD90B4 24C6D75C */  addiu   $a2, $a2, %lo(D_80ADD75C)  ## $a2 = 80ADD75C
/* 00128 80AD90B8 24A5D764 */  addiu   $a1, $a1, %lo(D_80ADD764)  ## $a1 = 80ADD764
/* 0012C 80AD90BC 0C0187B5 */  jal     func_80061ED4              
/* 00130 80AD90C0 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00134 80AD90C4 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 00138 80AD90C8 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 0013C 80AD90CC 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 00140 80AD90D0 000B6203 */  sra     $t4, $t3,  8               
/* 00144 80AD90D4 318E0003 */  andi    $t6, $t4, 0x0003           ## $t6 = 00000000
/* 00148 80AD90D8 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
/* 0014C 80AD90DC 3C0142DC */  lui     $at, 0x42DC                ## $at = 42DC0000
/* 00150 80AD90E0 44812000 */  mtc1    $at, $f4                   ## $f4 = 110.00
/* 00154 80AD90E4 A20E0194 */  sb      $t6, 0x0194($s0)           ## 00000194
/* 00158 80AD90E8 25CF0050 */  addiu   $t7, $t6, 0x0050           ## $t7 = 00000050
/* 0015C 80AD90EC 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00160 80AD90F0 0018CA83 */  sra     $t9, $t8, 10               
/* 00164 80AD90F4 24020020 */  addiu   $v0, $zero, 0x0020         ## $v0 = 00000020
/* 00168 80AD90F8 33280003 */  andi    $t0, $t9, 0x0003           ## $t0 = 00000000
/* 0016C 80AD90FC 24090014 */  addiu   $t1, $zero, 0x0014         ## $t1 = 00000014
/* 00170 80AD9100 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00174 80AD9104 31AE1000 */  andi    $t6, $t5, 0x1000           ## $t6 = 00000000
/* 00178 80AD9108 01616024 */  and     $t4, $t3, $at              
/* 0017C 80AD910C A20F0117 */  sb      $t7, 0x0117($s0)           ## 00000117
/* 00180 80AD9110 A2080195 */  sb      $t0, 0x0195($s0)           ## 00000195
/* 00184 80AD9114 A2020196 */  sb      $v0, 0x0196($s0)           ## 00000196
/* 00188 80AD9118 A2090197 */  sb      $t1, 0x0197($s0)           ## 00000197
/* 0018C 80AD911C A20A0198 */  sb      $t2, 0x0198($s0)           ## 00000198
/* 00190 80AD9120 A2020199 */  sb      $v0, 0x0199($s0)           ## 00000199
/* 00194 80AD9124 AE0C0004 */  sw      $t4, 0x0004($s0)           ## 00000004
/* 00198 80AD9128 11C00006 */  beq     $t6, $zero, .L80AD9144     
/* 0019C 80AD912C E6040294 */  swc1    $f4, 0x0294($s0)           ## 00000294
/* 001A0 80AD9130 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001A4 80AD9134 0C2B6825 */  jal     func_80ADA094              
/* 001A8 80AD9138 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 001AC 80AD913C 1000001F */  beq     $zero, $zero, .L80AD91BC   
/* 001B0 80AD9140 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
.L80AD9144:
/* 001B4 80AD9144 920F0194 */  lbu     $t7, 0x0194($s0)           ## 00000194
/* 001B8 80AD9148 15E00019 */  bne     $t7, $zero, .L80AD91B0     
/* 001BC 80AD914C 00000000 */  nop
/* 001C0 80AD9150 92180195 */  lbu     $t8, 0x0195($s0)           ## 00000195
/* 001C4 80AD9154 2401BDFF */  addiu   $at, $zero, 0xBDFF         ## $at = FFFFBDFF
/* 001C8 80AD9158 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 001CC 80AD915C 17000008 */  bne     $t8, $zero, .L80AD9180     
/* 001D0 80AD9160 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001D4 80AD9164 24190009 */  addiu   $t9, $zero, 0x0009         ## $t9 = 00000009
/* 001D8 80AD9168 A21902BE */  sb      $t9, 0x02BE($s0)           ## 000002BE
/* 001DC 80AD916C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001E0 80AD9170 0C2B66AA */  jal     func_80AD9AA8              
/* 001E4 80AD9174 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 001E8 80AD9178 10000010 */  beq     $zero, $zero, .L80AD91BC   
/* 001EC 80AD917C 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
.L80AD9180:
/* 001F0 80AD9180 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 001F4 80AD9184 8E0B02CC */  lw      $t3, 0x02CC($s0)           ## 000002CC
/* 001F8 80AD9188 A20A02D8 */  sb      $t2, 0x02D8($s0)           ## 000002D8
/* 001FC 80AD918C 01014824 */  and     $t1, $t0, $at              
/* 00200 80AD9190 356C0001 */  ori     $t4, $t3, 0x0001           ## $t4 = 00000001
/* 00204 80AD9194 AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
/* 00208 80AD9198 AE0C02CC */  sw      $t4, 0x02CC($s0)           ## 000002CC
/* 0020C 80AD919C A20002BE */  sb      $zero, 0x02BE($s0)         ## 000002BE
/* 00210 80AD91A0 0C2B6709 */  jal     func_80AD9C24              
/* 00214 80AD91A4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00218 80AD91A8 10000004 */  beq     $zero, $zero, .L80AD91BC   
/* 0021C 80AD91AC 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
.L80AD91B0:
/* 00220 80AD91B0 0C2B6751 */  jal     func_80AD9D44              
/* 00224 80AD91B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00228 80AD91B8 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
.L80AD91BC:
/* 0022C 80AD91BC 31AE003F */  andi    $t6, $t5, 0x003F           ## $t6 = 00000000
/* 00230 80AD91C0 A60E001C */  sh      $t6, 0x001C($s0)           ## 0000001C
/* 00234 80AD91C4 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00238 80AD91C8 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 0023C 80AD91CC 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 00240 80AD91D0 03E00008 */  jr      $ra                        
/* 00244 80AD91D4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
