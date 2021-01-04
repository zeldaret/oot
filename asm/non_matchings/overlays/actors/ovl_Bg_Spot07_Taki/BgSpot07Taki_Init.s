glabel BgSpot07Taki_Init
/* 00000 808AFC30 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 808AFC34 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00008 808AFC38 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0000C 808AFC3C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00010 808AFC40 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00014 808AFC44 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00018 808AFC48 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 0001C 808AFC4C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00020 808AFC50 3C05808B */  lui     $a1, %hi(D_808B0200)       ## $a1 = 808B0000
/* 00024 808AFC54 24A50200 */  addiu   $a1, $a1, %lo(D_808B0200)  ## $a1 = 808B0200
/* 00028 808AFC58 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0002C 808AFC5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00030 808AFC60 3C0E8016 */  lui     $t6, %hi(gSaveContext+4)
/* 00034 808AFC64 8DCEE664 */  lw      $t6, %lo(gSaveContext+4)($t6)
/* 00038 808AFC68 15C00013 */  bne     $t6, $zero, .L808AFCB8     
/* 0003C 808AFC6C 00000000 */  nop
/* 00040 808AFC70 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 00044 808AFC74 3C040600 */  lui     $a0, %hi(D_060038FC)                ## $a0 = 06000000
/* 00048 808AFC78 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 0004C 808AFC7C 15E00006 */  bne     $t7, $zero, .L808AFC98     
/* 00050 808AFC80 248438FC */  addiu   $a0, $a0, %lo(D_060038FC)           ## $a0 = 060038FC
/* 00054 808AFC84 3C040600 */  lui     $a0, %hi(D_06002590)                ## $a0 = 06000000
/* 00058 808AFC88 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 0005C 808AFC8C 24842590 */  addiu   $a0, $a0, %lo(D_06002590)           ## $a0 = 06002590
/* 00060 808AFC90 10000004 */  beq     $zero, $zero, .L808AFCA4   
/* 00064 808AFC94 8FA40034 */  lw      $a0, 0x0034($sp)           
.L808AFC98:
/* 00068 808AFC98 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 0006C 808AFC9C 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00070 808AFCA0 8FA40034 */  lw      $a0, 0x0034($sp)           
.L808AFCA4:
/* 00074 808AFCA4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00078 808AFCA8 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 0007C 808AFCAC 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00080 808AFCB0 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00084 808AFCB4 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
.L808AFCB8:
/* 00088 808AFCB8 3C18808B */  lui     $t8, %hi(func_808AFD08)    ## $t8 = 808B0000
/* 0008C 808AFCBC 2718FD08 */  addiu   $t8, $t8, %lo(func_808AFD08) ## $t8 = 808AFD08
/* 00090 808AFCC0 AE180164 */  sw      $t8, 0x0164($s0)           ## 00000164
/* 00094 808AFCC4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00098 808AFCC8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0009C 808AFCCC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 000A0 808AFCD0 03E00008 */  jr      $ra                        
/* 000A4 808AFCD4 00000000 */  nop
