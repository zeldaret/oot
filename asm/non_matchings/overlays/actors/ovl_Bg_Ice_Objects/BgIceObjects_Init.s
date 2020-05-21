glabel BgIceObjects_Init
/* 00000 8088F810 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 8088F814 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00008 8088F818 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0000C 8088F81C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00010 8088F820 3C058089 */  lui     $a1, %hi(D_808904C4)       ## $a1 = 80890000
/* 00014 8088F824 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 8088F828 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 0001C 8088F82C 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 8088F830 24A504C4 */  addiu   $a1, $a1, %lo(D_808904C4)  ## $a1 = 808904C4
/* 00024 8088F834 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00028 8088F838 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 0002C 8088F83C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00030 8088F840 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00034 8088F844 248403F0 */  addiu   $a0, $a0, 0x03F0           ## $a0 = 060003F0
/* 00038 8088F848 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 0003C 8088F84C 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00040 8088F850 26040168 */  addiu   $a0, $s0, 0x0168           ## $a0 = 00000168
/* 00044 8088F854 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00048 8088F858 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 0004C 8088F85C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00050 8088F860 3C0E8089 */  lui     $t6, %hi(func_8088FED0)    ## $t6 = 80890000
/* 00054 8088F864 25CEFED0 */  addiu   $t6, $t6, %lo(func_8088FED0) ## $t6 = 8088FED0
/* 00058 8088F868 AE0E0164 */  sw      $t6, 0x0164($s0)           ## 00000164
/* 0005C 8088F86C 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 00060 8088F870 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00064 8088F874 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00068 8088F878 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 0006C 8088F87C AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00070 8088F880 A600001C */  sh      $zero, 0x001C($s0)         ## 0000001C
/* 00074 8088F884 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00078 8088F888 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0007C 8088F88C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00080 8088F890 03E00008 */  jr      $ra                        
/* 00084 8088F894 00000000 */  nop
