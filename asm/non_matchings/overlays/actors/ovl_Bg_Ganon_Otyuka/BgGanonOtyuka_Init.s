glabel BgGanonOtyuka_Init
/* 00000 80875920 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 80875924 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00008 80875928 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0000C 8087592C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00010 80875930 3C058087 */  lui     $a1, %hi(D_80876A60)       ## $a1 = 80870000
/* 00014 80875934 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80875938 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 0001C 8087593C 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 80875940 24A56A60 */  addiu   $a1, $a1, %lo(D_80876A60)  ## $a1 = 80876A60
/* 00024 80875944 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00028 80875948 0C010D20 */  jal     DynaPolyActor_Init
              
/* 0002C 8087594C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00030 80875950 3C048087 */  lui     $a0, %hi(D_80877E90)       ## $a0 = 80870000
/* 00034 80875954 24847E90 */  addiu   $a0, $a0, %lo(D_80877E90)  ## $a0 = 80877E90
/* 00038 80875958 0C010620 */  jal     CollisionHeader_GetVirtual
              
/* 0003C 8087595C 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00040 80875960 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00044 80875964 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00048 80875968 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 0004C 8087596C 0C00FA9D */  jal     DynaPoly_SetBgActor
              ## DynaPoly_SetBgActor
/* 00050 80875970 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00054 80875974 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00058 80875978 24010023 */  addiu   $at, $zero, 0x0023         ## $at = 00000023
/* 0005C 8087597C AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00060 80875980 11C10006 */  beq     $t6, $at, .L8087599C       
/* 00064 80875984 3C188087 */  lui     $t8, %hi(func_808760DC)    ## $t8 = 80870000
/* 00068 80875988 3C0F8087 */  lui     $t7, %hi(func_80875A0C)    ## $t7 = 80870000
/* 0006C 8087598C 25EF5A0C */  addiu   $t7, $t7, %lo(func_80875A0C) ## $t7 = 80875A0C
/* 00070 80875990 AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 00074 80875994 10000003 */  beq     $zero, $zero, .L808759A4   
/* 00078 80875998 AE0F0164 */  sw      $t7, 0x0164($s0)           ## 00000164
.L8087599C:
/* 0007C 8087599C 271860DC */  addiu   $t8, $t8, %lo(func_808760DC) ## $t8 = 808760DC
/* 00080 808759A0 AE180130 */  sw      $t8, 0x0130($s0)           ## 00000130
.L808759A4:
/* 00084 808759A4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00088 808759A8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0008C 808759AC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00090 808759B0 03E00008 */  jr      $ra                        
/* 00094 808759B4 00000000 */  nop
