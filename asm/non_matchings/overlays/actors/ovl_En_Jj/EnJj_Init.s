glabel EnJj_Init
/* 00008 80A87808 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 0000C 80A8780C AFB10038 */  sw      $s1, 0x0038($sp)
/* 00010 80A87810 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00014 80A87814 AFBF003C */  sw      $ra, 0x003C($sp)
/* 00018 80A87818 AFB00034 */  sw      $s0, 0x0034($sp)
/* 0001C 80A8781C 3C0580A9 */  lui     $a1, %hi(D_80A88CE0)       ## $a1 = 80A90000
/* 00020 80A87820 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00024 80A87824 AFA0004C */  sw      $zero, 0x004C($sp)
/* 00028 80A87828 0C01E037 */  jal     Actor_ProcessInitChain

/* 0002C 80A8782C 24A58CE0 */  addiu   $a1, $a1, %lo(D_80A88CE0)  ## $a1 = 80A88CE0
/* 00030 80A87830 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00034 80A87834 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00038 80A87838 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0003C 80A8783C 44050000 */  mfc1    $a1, $f0
/* 00040 80A87840 44070000 */  mfc1    $a3, $f0
/* 00044 80A87844 0C00AC78 */  jal     ActorShape_Init

/* 00048 80A87848 00000000 */  nop
/* 0004C 80A8784C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00050 80A87850 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00054 80A87854 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00058 80A87858 10410008 */  beq     $v0, $at, .L80A8787C
/* 0005C 80A8785C 26050164 */  addiu   $a1, $s0, 0x0164           ## $a1 = 00000164
/* 00060 80A87860 10400058 */  beq     $v0, $zero, .L80A879C4
/* 00064 80A87864 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00068 80A87868 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0006C 80A8786C 10410070 */  beq     $v0, $at, .L80A87A30
/* 00070 80A87870 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00074 80A87874 10000083 */  beq     $zero, $zero, .L80A87A84
/* 00078 80A87878 8FBF003C */  lw      $ra, 0x003C($sp)
.L80A8787C:
/* 0007C 80A8787C 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00080 80A87880 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00084 80A87884 260E01A8 */  addiu   $t6, $s0, 0x01A8           ## $t6 = 000001A8
/* 00088 80A87888 260F022C */  addiu   $t7, $s0, 0x022C           ## $t7 = 0000022C
/* 0008C 80A8788C 24180016 */  addiu   $t8, $zero, 0x0016         ## $t8 = 00000016
/* 00090 80A87890 AFB80018 */  sw      $t8, 0x0018($sp)
/* 00094 80A87894 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 00098 80A87898 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 0009C 80A8789C 24E71F4C */  addiu   $a3, $a3, 0x1F4C           ## $a3 = 06001F4C
/* 000A0 80A878A0 24C6B9A8 */  addiu   $a2, $a2, 0xB9A8           ## $a2 = 0600B9A8
/* 000A4 80A878A4 0C0291BE */  jal     SkelAnime_InitSV
/* 000A8 80A878A8 AFA50044 */  sw      $a1, 0x0044($sp)
/* 000AC 80A878AC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 000B0 80A878B0 24A51F4C */  addiu   $a1, $a1, 0x1F4C           ## $a1 = 06001F4C
/* 000B4 80A878B4 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 000B8 80A878B8 8FA40044 */  lw      $a0, 0x0044($sp)
/* 000BC 80A878BC A600030A */  sh      $zero, 0x030A($s0)         ## 0000030A
/* 000C0 80A878C0 A200030E */  sb      $zero, 0x030E($s0)         ## 0000030E
/* 000C4 80A878C4 A200030F */  sb      $zero, 0x030F($s0)         ## 0000030F
/* 000C8 80A878C8 A2000310 */  sb      $zero, 0x0310($s0)         ## 00000310
/* 000CC 80A878CC A2000311 */  sb      $zero, 0x0311($s0)         ## 00000311
/* 000D0 80A878D0 3C198016 */  lui     $t9, %hi(gSaveContext+0xeda)
/* 000D4 80A878D4 9739F53A */  lhu     $t9, %lo(gSaveContext+0xeda)($t9)
/* 000D8 80A878D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000DC 80A878DC 3C0580A8 */  lui     $a1, %hi(func_80A87C30)    ## $a1 = 80A80000
/* 000E0 80A878E0 33280400 */  andi    $t0, $t9, 0x0400           ## $t0 = 00000000
/* 000E4 80A878E4 11000007 */  beq     $t0, $zero, .L80A87904
/* 000E8 80A878E8 00000000 */  nop
/* 000EC 80A878EC 3C0580A8 */  lui     $a1, %hi(func_80A87BEC)    ## $a1 = 80A80000
/* 000F0 80A878F0 24A57BEC */  addiu   $a1, $a1, %lo(func_80A87BEC) ## $a1 = 80A87BEC
/* 000F4 80A878F4 0C2A1E00 */  jal     func_80A87800
/* 000F8 80A878F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000FC 80A878FC 10000004 */  beq     $zero, $zero, .L80A87910
/* 00100 80A87900 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
.L80A87904:
/* 00104 80A87904 0C2A1E00 */  jal     func_80A87800
/* 00108 80A87908 24A57C30 */  addiu   $a1, $a1, %lo(func_80A87C30) ## $a1 = 00007C30
/* 0010C 80A8790C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
.L80A87910:
/* 00110 80A87910 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 00114 80A87914 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00118 80A87918 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 0011C 80A8791C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00120 80A87920 46062201 */  sub.s   $f8, $f4, $f6
/* 00124 80A87924 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 00128 80A87928 2407005A */  addiu   $a3, $zero, 0x005A         ## $a3 = 0000005A
/* 0012C 80A8792C E7A80010 */  swc1    $f8, 0x0010($sp)
/* 00130 80A87930 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 00134 80A87934 E7AA0014 */  swc1    $f10, 0x0014($sp)
/* 00138 80A87938 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 0013C 80A8793C AFA0001C */  sw      $zero, 0x001C($sp)
/* 00140 80A87940 E7B00018 */  swc1    $f16, 0x0018($sp)
/* 00144 80A87944 86090032 */  lh      $t1, 0x0032($s0)           ## 00000032
/* 00148 80A87948 AFA00028 */  sw      $zero, 0x0028($sp)
/* 0014C 80A8794C AFA00024 */  sw      $zero, 0x0024($sp)
/* 00150 80A87950 0C00C916 */  jal     Actor_SpawnAttached

/* 00154 80A87954 AFA90020 */  sw      $t1, 0x0020($sp)
/* 00158 80A87958 AE020300 */  sw      $v0, 0x0300($s0)           ## 00000300
/* 0015C 80A8795C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00160 80A87960 0C010D20 */  jal     DynaPolyInfo_SetActorMove

/* 00164 80A87964 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00168 80A87968 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0016C 80A8796C 24840A1C */  addiu   $a0, $a0, 0x0A1C           ## $a0 = 06000A1C
/* 00170 80A87970 0C010620 */  jal     DynaPolyInfo_Alloc

/* 00174 80A87974 27A5004C */  addiu   $a1, $sp, 0x004C           ## $a1 = FFFFFFF4
/* 00178 80A87978 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0017C 80A8797C 26250810 */  addiu   $a1, $s1, 0x0810           ## $a1 = 00000810
/* 00180 80A87980 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00184 80A87984 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00188 80A87988 8FA7004C */  lw      $a3, 0x004C($sp)
/* 0018C 80A8798C AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00190 80A87990 260502B0 */  addiu   $a1, $s0, 0x02B0           ## $a1 = 000002B0
/* 00194 80A87994 AFA50044 */  sw      $a1, 0x0044($sp)
/* 00198 80A87998 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 0019C 80A8799C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001A0 80A879A0 3C0780A9 */  lui     $a3, %hi(D_80A88CB4)       ## $a3 = 80A90000
/* 001A4 80A879A4 8FA50044 */  lw      $a1, 0x0044($sp)
/* 001A8 80A879A8 24E78CB4 */  addiu   $a3, $a3, %lo(D_80A88CB4)  ## $a3 = 80A88CB4
/* 001AC 80A879AC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001B0 80A879B0 0C01712B */  jal     ActorCollider_InitCylinder

/* 001B4 80A879B4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 001B8 80A879B8 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 001BC 80A879BC 10000030 */  beq     $zero, $zero, .L80A87A80
/* 001C0 80A879C0 A20A00AE */  sb      $t2, 0x00AE($s0)           ## 000000AE
.L80A879C4:
/* 001C4 80A879C4 0C010D20 */  jal     DynaPolyInfo_SetActorMove

/* 001C8 80A879C8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 001CC 80A879CC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 001D0 80A879D0 24841830 */  addiu   $a0, $a0, 0x1830           ## $a0 = 06001830
/* 001D4 80A879D4 0C010620 */  jal     DynaPolyInfo_Alloc

/* 001D8 80A879D8 27A5004C */  addiu   $a1, $sp, 0x004C           ## $a1 = FFFFFFF4
/* 001DC 80A879DC 26250810 */  addiu   $a1, $s1, 0x0810           ## $a1 = 00000810
/* 001E0 80A879E0 AFA50044 */  sw      $a1, 0x0044($sp)
/* 001E4 80A879E4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001E8 80A879E8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 001EC 80A879EC 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 001F0 80A879F0 8FA7004C */  lw      $a3, 0x004C($sp)
/* 001F4 80A879F4 8FA50044 */  lw      $a1, 0x0044($sp)
/* 001F8 80A879F8 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 001FC 80A879FC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00200 80A87A00 0C00FB2A */  jal     func_8003ECA8
/* 00204 80A87A04 00403025 */  or      $a2, $v0, $zero            ## $a2 = 00000000
/* 00208 80A87A08 3C0B80A8 */  lui     $t3, %hi(func_80A87F44)    ## $t3 = 80A80000
/* 0020C 80A87A0C 256B7F44 */  addiu   $t3, $t3, %lo(func_80A87F44) ## $t3 = 80A87F44
/* 00210 80A87A10 3C053DB2 */  lui     $a1, 0x3DB2                ## $a1 = 3DB20000
/* 00214 80A87A14 AE0B0130 */  sw      $t3, 0x0130($s0)           ## 00000130
/* 00218 80A87A18 AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 0021C 80A87A1C 34A52D0E */  ori     $a1, $a1, 0x2D0E           ## $a1 = 3DB22D0E
/* 00220 80A87A20 0C00B58B */  jal     Actor_SetScale

/* 00224 80A87A24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00228 80A87A28 10000016 */  beq     $zero, $zero, .L80A87A84
/* 0022C 80A87A2C 8FBF003C */  lw      $ra, 0x003C($sp)
.L80A87A30:
/* 00230 80A87A30 0C010D20 */  jal     DynaPolyInfo_SetActorMove

/* 00234 80A87A34 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00238 80A87A38 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 0023C 80A87A3C 2484BA8C */  addiu   $a0, $a0, 0xBA8C           ## $a0 = 0600BA8C
/* 00240 80A87A40 0C010620 */  jal     DynaPolyInfo_Alloc

/* 00244 80A87A44 27A5004C */  addiu   $a1, $sp, 0x004C           ## $a1 = FFFFFFF4
/* 00248 80A87A48 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0024C 80A87A4C 26250810 */  addiu   $a1, $s1, 0x0810           ## $a1 = 00000810
/* 00250 80A87A50 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00254 80A87A54 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00258 80A87A58 8FA7004C */  lw      $a3, 0x004C($sp)
/* 0025C 80A87A5C 3C0C80A8 */  lui     $t4, %hi(func_80A87F44)    ## $t4 = 80A80000
/* 00260 80A87A60 258C7F44 */  addiu   $t4, $t4, %lo(func_80A87F44) ## $t4 = 80A87F44
/* 00264 80A87A64 3C053DB2 */  lui     $a1, 0x3DB2                ## $a1 = 3DB20000
/* 00268 80A87A68 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 0026C 80A87A6C AE0C0130 */  sw      $t4, 0x0130($s0)           ## 00000130
/* 00270 80A87A70 AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 00274 80A87A74 34A52D0E */  ori     $a1, $a1, 0x2D0E           ## $a1 = 3DB22D0E
/* 00278 80A87A78 0C00B58B */  jal     Actor_SetScale

/* 0027C 80A87A7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A87A80:
/* 00280 80A87A80 8FBF003C */  lw      $ra, 0x003C($sp)
.L80A87A84:
/* 00284 80A87A84 8FB00034 */  lw      $s0, 0x0034($sp)
/* 00288 80A87A88 8FB10038 */  lw      $s1, 0x0038($sp)
/* 0028C 80A87A8C 03E00008 */  jr      $ra
/* 00290 80A87A90 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
