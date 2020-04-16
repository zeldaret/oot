glabel BossMo_Init
/* 005B0 8091C0B0 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 005B4 8091C0B4 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 005B8 8091C0B8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 005BC 8091C0BC AFBF003C */  sw      $ra, 0x003C($sp)           
/* 005C0 8091C0C0 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 005C4 8091C0C4 3C058092 */  lui     $a1, %hi(D_80926188)       ## $a1 = 80920000
/* 005C8 8091C0C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005CC 8091C0CC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 005D0 8091C0D0 24A56188 */  addiu   $a1, $a1, %lo(D_80926188)  ## $a1 = 80926188
/* 005D4 8091C0D4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 005D8 8091C0D8 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 005DC 8091C0DC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 005E0 8091C0E0 44050000 */  mfc1    $a1, $f0                   
/* 005E4 8091C0E4 44070000 */  mfc1    $a3, $f0                   
/* 005E8 8091C0E8 0C00AC78 */  jal     ActorShape_Init
              
/* 005EC 8091C0EC 00000000 */  nop
/* 005F0 8091C0F0 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 005F4 8091C0F4 24010064 */  addiu   $at, $zero, 0x0064         ## $at = 00000064
/* 005F8 8091C0F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005FC 8091C0FC 11C100A8 */  beq     $t6, $at, .L8091C3A0       
/* 00600 8091C100 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00604 8091C104 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00608 8091C108 0C00B2DD */  jal     Flags_SetSwitch
              
/* 0060C 8091C10C 24050014 */  addiu   $a1, $zero, 0x0014         ## $a1 = 00000014
/* 00610 8091C110 3C018092 */  lui     $at, %hi(D_80925CD0)       ## $at = 80920000
/* 00614 8091C114 AC305CD0 */  sw      $s0, %lo(D_80925CD0)($at)  
/* 00618 8091C118 8E2F07C0 */  lw      $t7, 0x07C0($s1)           ## 000007C0
/* 0061C 8091C11C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00620 8091C120 02213021 */  addu    $a2, $s1, $at              
/* 00624 8091C124 8DF80028 */  lw      $t8, 0x0028($t7)           ## 00000028
/* 00628 8091C128 3C038092 */  lui     $v1, %hi(D_80927AC0)       ## $v1 = 80920000
/* 0062C 8091C12C 240C00A0 */  addiu   $t4, $zero, 0x00A0         ## $t4 = 000000A0
/* 00630 8091C130 87190002 */  lh      $t9, 0x0002($t8)           ## 00000002
/* 00634 8091C134 24637AC0 */  addiu   $v1, $v1, %lo(D_80927AC0)  ## $v1 = 80927AC0
/* 00638 8091C138 00310821 */  addu    $at, $at, $s1              
/* 0063C 8091C13C 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 00640 8091C140 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00644 8091C144 46802020 */  cvt.s.w $f0, $f4                   
/* 00648 8091C148 4600018D */  trunc.w.s $f6, $f0                   
/* 0064C 8091C14C E60001BC */  swc1    $f0, 0x01BC($s0)           ## 000001BC
/* 00650 8091C150 8E2A07C0 */  lw      $t2, 0x07C0($s1)           ## 000007C0
/* 00654 8091C154 44093000 */  mfc1    $t1, $f6                   
/* 00658 8091C158 8D4B0028 */  lw      $t3, 0x0028($t2)           ## 00000028
/* 0065C 8091C15C A5690002 */  sh      $t1, 0x0002($t3)           ## 00000002
/* 00660 8091C160 A4CC1D30 */  sh      $t4, 0x1D30($a2)           ## 00001D30
/* 00664 8091C164 AC231E10 */  sw      $v1, 0x1E10($at)           ## 00011E10
.L8091C168:
/* 00668 8091C168 00026980 */  sll     $t5, $v0,  6               
/* 0066C 8091C16C 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 00670 8091C170 3042FFFF */  andi    $v0, $v0, 0xFFFF           ## $v0 = 00000001
/* 00674 8091C174 2841012C */  slti    $at, $v0, 0x012C           
/* 00678 8091C178 006D7021 */  addu    $t6, $v1, $t5              
/* 0067C 8091C17C 1420FFFA */  bne     $at, $zero, .L8091C168     
/* 00680 8091C180 A1C00024 */  sb      $zero, 0x0024($t6)         ## 00000024
/* 00684 8091C184 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00688 8091C188 44814000 */  mtc1    $at, $f8                   ## $f8 = 200.00
/* 0068C 8091C18C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00690 8091C190 44819000 */  mtc1    $at, $f18                  ## $f18 = 50.00
/* 00694 8091C194 E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 00698 8091C198 8E2F07C0 */  lw      $t7, 0x07C0($s1)           ## 000007C0
/* 0069C 8091C19C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 006A0 8091C1A0 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 006A4 8091C1A4 8DF80028 */  lw      $t8, 0x0028($t7)           ## 00000028
/* 006A8 8091C1A8 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 006AC 8091C1AC 240A0014 */  addiu   $t2, $zero, 0x0014         ## $t2 = 00000014
/* 006B0 8091C1B0 87190002 */  lh      $t9, 0x0002($t8)           ## 00000002
/* 006B4 8091C1B4 A20801D1 */  sb      $t0, 0x01D1($s0)           ## 000001D1
/* 006B8 8091C1B8 A20A00AF */  sb      $t2, 0x00AF($s0)           ## 000000AF
/* 006BC 8091C1BC 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 006C0 8091C1C0 A20000AE */  sb      $zero, 0x00AE($s0)         ## 000000AE
/* 006C4 8091C1C4 A600001C */  sh      $zero, 0x001C($s0)         ## 0000001C
/* 006C8 8091C1C8 46805420 */  cvt.s.w $f16, $f10                 
/* 006CC 8091C1CC 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 006D0 8091C1D0 E606018C */  swc1    $f6, 0x018C($s0)           ## 0000018C
/* 006D4 8091C1D4 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 006D8 8091C1D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006DC 8091C1DC 46128100 */  add.s   $f4, $f16, $f18            
/* 006E0 8091C1E0 E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 006E4 8091C1E4 0C00B58B */  jal     Actor_SetScale
              
/* 006E8 8091C1E8 AFA60044 */  sw      $a2, 0x0044($sp)           
/* 006EC 8091C1EC 260514FC */  addiu   $a1, $s0, 0x14FC           ## $a1 = 000014FC
/* 006F0 8091C1F0 AFA50048 */  sw      $a1, 0x0048($sp)           
/* 006F4 8091C1F4 0C0170D9 */  jal     CollisionCheck_AllocCylinder
              
/* 006F8 8091C1F8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 006FC 8091C1FC 3C078092 */  lui     $a3, %hi(D_8092603C)       ## $a3 = 80920000
/* 00700 8091C200 8FA50048 */  lw      $a1, 0x0048($sp)           
/* 00704 8091C204 24E7603C */  addiu   $a3, $a3, %lo(D_8092603C)  ## $a3 = 8092603C
/* 00708 8091C208 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0070C 8091C20C 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00710 8091C210 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00714 8091C214 8FA90044 */  lw      $t1, 0x0044($sp)           
/* 00718 8091C218 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0071C 8091C21C 0C00B337 */  jal     Flags_GetClear
              
/* 00720 8091C220 81251CBC */  lb      $a1, 0x1CBC($t1)           ## 00001CBC
/* 00724 8091C224 1040002A */  beq     $v0, $zero, .L8091C2D0     
/* 00728 8091C228 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 0072C 8091C22C 0C00B55C */  jal     Actor_Kill
              
/* 00730 8091C230 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00734 8091C234 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00738 8091C238 3C01C38C */  lui     $at, 0xC38C                ## $at = C38C0000
/* 0073C 8091C23C 44814000 */  mtc1    $at, $f8                   ## $f8 = -280.00
/* 00740 8091C240 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 00744 8091C244 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 00748 8091C248 AFAB0028 */  sw      $t3, 0x0028($sp)           
/* 0074C 8091C24C AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00750 8091C250 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00754 8091C254 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 00758 8091C258 2407005D */  addiu   $a3, $zero, 0x005D         ## $a3 = 0000005D
/* 0075C 8091C25C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00760 8091C260 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00764 8091C264 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00768 8091C268 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 0076C 8091C26C E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00770 8091C270 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00774 8091C274 E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 00778 8091C278 3C01C38C */  lui     $at, 0xC38C                ## $at = C38C0000
/* 0077C 8091C27C 44815000 */  mtc1    $at, $f10                  ## $f10 = -280.00
/* 00780 8091C280 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00784 8091C284 8FA40048 */  lw      $a0, 0x0048($sp)           
/* 00788 8091C288 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0078C 8091C28C 2406005F */  addiu   $a2, $zero, 0x005F         ## $a2 = 0000005F
/* 00790 8091C290 3C07C348 */  lui     $a3, 0xC348                ## $a3 = C3480000
/* 00794 8091C294 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00798 8091C298 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 0079C 8091C29C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 007A0 8091C2A0 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 007A4 8091C2A4 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 007A8 8091C2A8 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 007AC 8091C2AC E7B00014 */  swc1    $f16, 0x0014($sp)          
/* 007B0 8091C2B0 8FAD0044 */  lw      $t5, 0x0044($sp)           
/* 007B4 8091C2B4 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 007B8 8091C2B8 240EFE0C */  addiu   $t6, $zero, 0xFE0C         ## $t6 = FFFFFE0C
/* 007BC 8091C2BC A5AC1D30 */  sh      $t4, 0x1D30($t5)           ## 00001D30
/* 007C0 8091C2C0 8E2F07C0 */  lw      $t7, 0x07C0($s1)           ## 000007C0
/* 007C4 8091C2C4 8DF80028 */  lw      $t8, 0x0028($t7)           ## 00000028
/* 007C8 8091C2C8 1000006D */  beq     $zero, $zero, .L8091C480   
/* 007CC 8091C2CC A70E0002 */  sh      $t6, 0x0002($t8)           ## 00000002
.L8091C2D0:
/* 007D0 8091C2D0 9739F542 */  lhu     $t9, -0x0ABE($t9)          ## FFFFF542
/* 007D4 8091C2D4 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 007D8 8091C2D8 240B0014 */  addiu   $t3, $zero, 0x0014         ## $t3 = 00000014
/* 007DC 8091C2DC 33280010 */  andi    $t0, $t9, 0x0010           ## $t0 = 00000000
/* 007E0 8091C2E0 11000009 */  beq     $t0, $zero, .L8091C308     
/* 007E4 8091C2E4 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 007E8 8091C2E8 0C03E803 */  jal     Audio_SetBGM
              
/* 007EC 8091C2EC 2404001B */  addiu   $a0, $zero, 0x001B         ## $a0 = 0000001B
/* 007F0 8091C2F0 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 007F4 8091C2F4 44819000 */  mtc1    $at, $f18                  ## $f18 = 5.00
/* 007F8 8091C2F8 240A0032 */  addiu   $t2, $zero, 0x0032         ## $t2 = 00000032
/* 007FC 8091C2FC A60A017E */  sh      $t2, 0x017E($s0)           ## 0000017E
/* 00800 8091C300 10000007 */  beq     $zero, $zero, .L8091C320   
/* 00804 8091C304 E6120D64 */  swc1    $f18, 0x0D64($s0)          ## 00000D64
.L8091C308:
/* 00808 8091C308 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 0080C 8091C30C 240C003C */  addiu   $t4, $zero, 0x003C         ## $t4 = 0000003C
/* 00810 8091C310 A6090F60 */  sh      $t1, 0x0F60($s0)           ## 00000F60
/* 00814 8091C314 A60B0158 */  sh      $t3, 0x0158($s0)           ## 00000158
/* 00818 8091C318 A60C017E */  sh      $t4, 0x017E($s0)           ## 0000017E
/* 0081C 8091C31C E6040024 */  swc1    $f4, 0x0024($s0)           ## 00000024
.L8091C320:
/* 00820 8091C320 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00824 8091C324 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 00828 8091C328 240D0064 */  addiu   $t5, $zero, 0x0064         ## $t5 = 00000064
/* 0082C 8091C32C E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00830 8091C330 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00834 8091C334 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00838 8091C338 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 0083C 8091C33C E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 00840 8091C340 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00844 8091C344 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00848 8091C348 AFAD0028 */  sw      $t5, 0x0028($sp)           
/* 0084C 8091C34C AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00850 8091C350 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00854 8091C354 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00858 8091C358 240700C4 */  addiu   $a3, $zero, 0x00C4         ## $a3 = 000000C4
/* 0085C 8091C35C 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00860 8091C360 E7AA0018 */  swc1    $f10, 0x0018($sp)          
/* 00864 8091C364 3C018092 */  lui     $at, %hi(D_80925CD4)       ## $at = 80920000
/* 00868 8091C368 AC225CD4 */  sw      $v0, %lo(D_80925CD4)($at)  
/* 0086C 8091C36C 3C0F8092 */  lui     $t7, %hi(func_80924228)    ## $t7 = 80920000
/* 00870 8091C370 3C0E8092 */  lui     $t6, %hi(func_80922D30)    ## $t6 = 80920000
/* 00874 8091C374 25EF4228 */  addiu   $t7, $t7, %lo(func_80924228) ## $t7 = 80924228
/* 00878 8091C378 25CE2D30 */  addiu   $t6, $t6, %lo(func_80922D30) ## $t6 = 80922D30
/* 0087C 8091C37C AE0F0134 */  sw      $t7, 0x0134($s0)           ## 00000134
/* 00880 8091C380 AE0E0130 */  sw      $t6, 0x0130($s0)           ## 00000130
/* 00884 8091C384 8FA50048 */  lw      $a1, 0x0048($sp)           
/* 00888 8091C388 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0088C 8091C38C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00890 8091C390 0C00CDD2 */  jal     Actor_ChangeType
              
/* 00894 8091C394 24070009 */  addiu   $a3, $zero, 0x0009         ## $a3 = 00000009
/* 00898 8091C398 1000003A */  beq     $zero, $zero, .L8091C484   
/* 0089C 8091C39C 8FBF003C */  lw      $ra, 0x003C($sp)           
.L8091C3A0:
/* 008A0 8091C3A0 0C00B58B */  jal     Actor_SetScale
              
/* 008A4 8091C3A4 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 0000D70A
/* 008A8 8091C3A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008AC 8091C3AC 0C247138 */  jal     func_8091C4E0              
/* 008B0 8091C3B0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 008B4 8091C3B4 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 008B8 8091C3B8 A21800AE */  sb      $t8, 0x00AE($s0)           ## 000000AE
/* 008BC 8091C3BC 8E2807C0 */  lw      $t0, 0x07C0($s1)           ## 000007C0
/* 008C0 8091C3C0 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 008C4 8091C3C4 44818000 */  mtc1    $at, $f16                  ## $f16 = 90.00
/* 008C8 8091C3C8 8D0A0028 */  lw      $t2, 0x0028($t0)           ## 00000028
/* 008CC 8091C3CC 2419FFCE */  addiu   $t9, $zero, 0xFFCE         ## $t9 = FFFFFFCE
/* 008D0 8091C3D0 27A2004C */  addiu   $v0, $sp, 0x004C           ## $v0 = FFFFFFE4
/* 008D4 8091C3D4 A5590002 */  sh      $t9, 0x0002($t2)           ## 00000002
/* 008D8 8091C3D8 E61001C4 */  swc1    $f16, 0x01C4($s0)          ## 000001C4
/* 008DC 8091C3DC 8E2907C0 */  lw      $t1, 0x07C0($s1)           ## 000007C0
/* 008E0 8091C3E0 8E0F0024 */  lw      $t7, 0x0024($s0)           ## 00000024
/* 008E4 8091C3E4 2605101C */  addiu   $a1, $s0, 0x101C           ## $a1 = 0000101C
/* 008E8 8091C3E8 8D2B0028 */  lw      $t3, 0x0028($t1)           ## 00000028
/* 008EC 8091C3EC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 008F0 8091C3F0 856C0002 */  lh      $t4, 0x0002($t3)           ## 00000002
/* 008F4 8091C3F4 448C9000 */  mtc1    $t4, $f18                  ## $f18 = 0.00
/* 008F8 8091C3F8 00000000 */  nop
/* 008FC 8091C3FC 46809120 */  cvt.s.w $f4, $f18                  
/* 00900 8091C400 E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 00904 8091C404 AC4F0000 */  sw      $t7, 0x0000($v0)           ## FFFFFFE4
/* 00908 8091C408 8E0D0028 */  lw      $t5, 0x0028($s0)           ## 00000028
/* 0090C 8091C40C 8C580000 */  lw      $t8, 0x0000($v0)           ## FFFFFFE4
/* 00910 8091C410 AC4D0004 */  sw      $t5, 0x0004($v0)           ## FFFFFFE8
/* 00914 8091C414 8E0F002C */  lw      $t7, 0x002C($s0)           ## 0000002C
/* 00918 8091C418 AC4F0008 */  sw      $t7, 0x0008($v0)           ## FFFFFFEC
/* 0091C 8091C41C AE1801D4 */  sw      $t8, 0x01D4($s0)           ## 000001D4
/* 00920 8091C420 8C4E0004 */  lw      $t6, 0x0004($v0)           ## FFFFFFE8
/* 00924 8091C424 AE0E01D8 */  sw      $t6, 0x01D8($s0)           ## 000001D8
/* 00928 8091C428 8C580008 */  lw      $t8, 0x0008($v0)           ## FFFFFFEC
/* 0092C 8091C42C AE1801DC */  sw      $t8, 0x01DC($s0)           ## 000001DC
/* 00930 8091C430 8C590000 */  lw      $t9, 0x0000($v0)           ## FFFFFFE4
/* 00934 8091C434 AE190100 */  sw      $t9, 0x0100($s0)           ## 00000100
/* 00938 8091C438 8C480004 */  lw      $t0, 0x0004($v0)           ## FFFFFFE8
/* 0093C 8091C43C AE080104 */  sw      $t0, 0x0104($s0)           ## 00000104
/* 00940 8091C440 8C590008 */  lw      $t9, 0x0008($v0)           ## FFFFFFEC
/* 00944 8091C444 AE190108 */  sw      $t9, 0x0108($s0)           ## 00000108
/* 00948 8091C448 0C016EFE */  jal     func_8005BBF8              
/* 0094C 8091C44C AFA50048 */  sw      $a1, 0x0048($sp)           
/* 00950 8091C450 3C078092 */  lui     $a3, %hi(D_8092602C)       ## $a3 = 80920000
/* 00954 8091C454 260A103C */  addiu   $t2, $s0, 0x103C           ## $t2 = 0000103C
/* 00958 8091C458 8FA50048 */  lw      $a1, 0x0048($sp)           
/* 0095C 8091C45C AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00960 8091C460 24E7602C */  addiu   $a3, $a3, %lo(D_8092602C)  ## $a3 = 8092602C
/* 00964 8091C464 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00968 8091C468 0C017014 */  jal     func_8005C050              
/* 0096C 8091C46C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00970 8091C470 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00974 8091C474 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 00978 8091C478 00000000 */  nop
/* 0097C 8091C47C E6060D64 */  swc1    $f6, 0x0D64($s0)           ## 00000D64
.L8091C480:
/* 00980 8091C480 8FBF003C */  lw      $ra, 0x003C($sp)           
.L8091C484:
/* 00984 8091C484 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 00988 8091C488 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 0098C 8091C48C 03E00008 */  jr      $ra                        
/* 00990 8091C490 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
