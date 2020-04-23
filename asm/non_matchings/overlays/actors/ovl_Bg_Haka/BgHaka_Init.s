glabel BgHaka_Init
/* 00000 8087B6B0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 8087B6B4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00008 8087B6B8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0000C 8087B6BC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00010 8087B6C0 3C058088 */  lui     $a1, %hi(D_8087BCF0)       ## $a1 = 80880000
/* 00014 8087B6C4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 8087B6C8 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 0001C 8087B6CC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 8087B6D0 24A5BCF0 */  addiu   $a1, $a1, %lo(D_8087BCF0)  ## $a1 = 8087BCF0
/* 00024 8087B6D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00028 8087B6D8 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 0002C 8087B6DC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00030 8087B6E0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00034 8087B6E4 24840428 */  addiu   $a0, $a0, 0x0428           ## $a0 = 06000428
/* 00038 8087B6E8 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 0003C 8087B6EC 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00040 8087B6F0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00044 8087B6F4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00048 8087B6F8 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 0004C 8087B6FC 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00050 8087B700 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00054 8087B704 3C0E8088 */  lui     $t6, %hi(func_8087B7E8)    ## $t6 = 80880000
/* 00058 8087B708 25CEB7E8 */  addiu   $t6, $t6, %lo(func_8087B7E8) ## $t6 = 8087B7E8
/* 0005C 8087B70C AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00060 8087B710 AE0E0164 */  sw      $t6, 0x0164($s0)           ## 00000164
/* 00064 8087B714 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00068 8087B718 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0006C 8087B71C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00070 8087B720 03E00008 */  jr      $ra                        
/* 00074 8087B724 00000000 */  nop
