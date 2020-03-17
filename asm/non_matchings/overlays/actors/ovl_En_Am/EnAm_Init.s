glabel EnAm_Init
/* 00130 809AE050 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00134 809AE054 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 00138 809AE058 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0013C 809AE05C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00140 809AE060 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00144 809AE064 3C05809B */  lui     $a1, %hi(D_809B0048)       ## $a1 = 809B0000
/* 00148 809AE068 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0014C 809AE06C AFA00044 */  sw      $zero, 0x0044($sp)         
/* 00150 809AE070 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00154 809AE074 24A50048 */  addiu   $a1, $a1, %lo(D_809B0048)  ## $a1 = 809B0048
/* 00158 809AE078 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 0015C 809AE07C 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00160 809AE080 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00164 809AE084 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00168 809AE088 0C00AC78 */  jal     ActorShape_Init
              
/* 0016C 809AE08C 3C074240 */  lui     $a3, 0x4240                ## $a3 = 42400000
/* 00170 809AE090 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00174 809AE094 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00178 809AE098 260E01AC */  addiu   $t6, $s0, 0x01AC           ## $t6 = 000001AC
/* 0017C 809AE09C 260F0200 */  addiu   $t7, $s0, 0x0200           ## $t7 = 00000200
/* 00180 809AE0A0 2418000E */  addiu   $t8, $zero, 0x000E         ## $t8 = 0000000E
/* 00184 809AE0A4 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00188 809AE0A8 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 0018C 809AE0AC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00190 809AE0B0 24E7033C */  addiu   $a3, $a3, 0x033C           ## $a3 = 0600033C
/* 00194 809AE0B4 24C65948 */  addiu   $a2, $a2, 0x5948           ## $a2 = 06005948
/* 00198 809AE0B8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0019C 809AE0BC 0C02915F */  jal     SkelAnime_Init
              
/* 001A0 809AE0C0 26050164 */  addiu   $a1, $s0, 0x0164           ## $a1 = 00000164
/* 001A4 809AE0C4 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 001A8 809AE0C8 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 001AC 809AE0CC 0C00B58B */  jal     Actor_SetScale
              
/* 001B0 809AE0D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001B4 809AE0D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001B8 809AE0D8 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 001BC 809AE0DC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 001C0 809AE0E0 26050274 */  addiu   $a1, $s0, 0x0274           ## $a1 = 00000274
/* 001C4 809AE0E4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 001C8 809AE0E8 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 001CC 809AE0EC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001D0 809AE0F0 260502C0 */  addiu   $a1, $s0, 0x02C0           ## $a1 = 000002C0
/* 001D4 809AE0F4 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 001D8 809AE0F8 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 001DC 809AE0FC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001E0 809AE100 3C07809B */  lui     $a3, %hi(D_809AFF80)       ## $a3 = 809B0000
/* 001E4 809AE104 24E7FF80 */  addiu   $a3, $a3, %lo(D_809AFF80)  ## $a3 = 809AFF80
/* 001E8 809AE108 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001EC 809AE10C 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 001F0 809AE110 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 001F4 809AE114 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 001F8 809AE118 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 001FC 809AE11C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00200 809AE120 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 00204 809AE124 17200020 */  bne     $t9, $zero, .L809AE1A8     
/* 00208 809AE128 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0020C 809AE12C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00210 809AE130 A20800AF */  sb      $t0, 0x00AF($s0)           ## 000000AF
/* 00214 809AE134 3C07809B */  lui     $a3, %hi(D_809AFF80)       ## $a3 = 809B0000
/* 00218 809AE138 24E7FF80 */  addiu   $a3, $a3, %lo(D_809AFF80)  ## $a3 = 809AFF80
/* 0021C 809AE13C 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 00220 809AE140 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00224 809AE144 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00228 809AE148 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0022C 809AE14C 24090035 */  addiu   $t1, $zero, 0x0035         ## $t1 = 00000035
/* 00230 809AE150 240A000D */  addiu   $t2, $zero, 0x000D         ## $t2 = 0000000D
/* 00234 809AE154 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00238 809AE158 A2090286 */  sb      $t1, 0x0286($s0)           ## 00000286
/* 0023C 809AE15C A20A02D2 */  sb      $t2, 0x02D2($s0)           ## 000002D2
/* 00240 809AE160 24840118 */  addiu   $a0, $a0, 0x0118           ## $a0 = 06000118
/* 00244 809AE164 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00248 809AE168 27A50044 */  addiu   $a1, $sp, 0x0044           ## $a1 = FFFFFFFC
/* 0024C 809AE16C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00250 809AE170 26250810 */  addiu   $a1, $s1, 0x0810           ## $a1 = 00000810
/* 00254 809AE174 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00258 809AE178 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 0025C 809AE17C 8FA70044 */  lw      $a3, 0x0044($sp)           
/* 00260 809AE180 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00264 809AE184 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00268 809AE188 26251C24 */  addiu   $a1, $s1, 0x1C24           ## $a1 = 00001C24
/* 0026C 809AE18C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00270 809AE190 0C00CDD2 */  jal     Actor_ChangeType
              
/* 00274 809AE194 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00278 809AE198 0C26B92A */  jal     func_809AE4A8              
/* 0027C 809AE19C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00280 809AE1A0 10000017 */  beq     $zero, $zero, .L809AE200   
/* 00284 809AE1A4 240D00FE */  addiu   $t5, $zero, 0x00FE         ## $t5 = 000000FE
.L809AE1A8:
/* 00288 809AE1A8 3C07809B */  lui     $a3, %hi(D_809AFFAC)       ## $a3 = 809B0000
/* 0028C 809AE1AC 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00290 809AE1B0 24E7FFAC */  addiu   $a3, $a3, %lo(D_809AFFAC)  ## $a3 = 809AFFAC
/* 00294 809AE1B4 2605030C */  addiu   $a1, $s0, 0x030C           ## $a1 = 0000030C
/* 00298 809AE1B8 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 0029C 809AE1BC 0C017406 */  jal     func_8005D018              
/* 002A0 809AE1C0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 002A4 809AE1C4 3C07809B */  lui     $a3, %hi(D_809AFFD8)       ## $a3 = 809B0000
/* 002A8 809AE1C8 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 002AC 809AE1CC 24E7FFD8 */  addiu   $a3, $a3, %lo(D_809AFFD8)  ## $a3 = 809AFFD8
/* 002B0 809AE1D0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 002B4 809AE1D4 0C017441 */  jal     func_8005D104              
/* 002B8 809AE1D8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 002BC 809AE1DC 3C0C809B */  lui     $t4, %hi(D_809B0028)       ## $t4 = 809B0000
/* 002C0 809AE1E0 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 002C4 809AE1E4 258C0028 */  addiu   $t4, $t4, %lo(D_809B0028)  ## $t4 = 809B0028
/* 002C8 809AE1E8 A20B00AF */  sb      $t3, 0x00AF($s0)           ## 000000AF
/* 002CC 809AE1EC AE0C0098 */  sw      $t4, 0x0098($s0)           ## 00000098
/* 002D0 809AE1F0 0C26B903 */  jal     func_809AE40C              
/* 002D4 809AE1F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002D8 809AE1F8 A6000258 */  sh      $zero, 0x0258($s0)         ## 00000258
/* 002DC 809AE1FC 240D00FE */  addiu   $t5, $zero, 0x00FE         ## $t5 = 000000FE
.L809AE200:
/* 002E0 809AE200 A20D00AE */  sb      $t5, 0x00AE($s0)           ## 000000AE
/* 002E4 809AE204 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 002E8 809AE208 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 002EC 809AE20C 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 002F0 809AE210 03E00008 */  jr      $ra                        
/* 002F4 809AE214 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000


