glabel EnBlkobj_Init
/* 0000C 809C206C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00010 809C2070 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00014 809C2074 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00018 809C2078 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0001C 809C207C 3C05809C */  lui     $a1, %hi(D_809C2580)       ## $a1 = 809C0000
/* 00020 809C2080 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00024 809C2084 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00028 809C2088 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0002C 809C208C 24A52580 */  addiu   $a1, $a1, %lo(D_809C2580)  ## $a1 = 809C2580
/* 00030 809C2090 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00034 809C2094 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00038 809C2098 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0003C 809C209C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00040 809C20A0 0C00B337 */  jal     Flags_GetClear
              
/* 00044 809C20A4 82050003 */  lb      $a1, 0x0003($s0)           ## 00000003
/* 00048 809C20A8 10400009 */  beq     $v0, $zero, .L809C20D0     
/* 0004C 809C20AC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00050 809C20B0 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00054 809C20B4 3C05809C */  lui     $a1, %hi(func_809C22F4)    ## $a1 = 809C0000
/* 00058 809C20B8 A60E0164 */  sh      $t6, 0x0164($s0)           ## 00000164
/* 0005C 809C20BC 24A522F4 */  addiu   $a1, $a1, %lo(func_809C22F4) ## $a1 = 809C22F4
/* 00060 809C20C0 0C270818 */  jal     func_809C2060              
/* 00064 809C20C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00068 809C20C8 1000000F */  beq     $zero, $zero, .L809C2108   
/* 0006C 809C20CC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809C20D0:
/* 00070 809C20D0 24847564 */  addiu   $a0, $a0, 0x7564           ## $a0 = 00007564
/* 00074 809C20D4 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00078 809C20D8 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 0007C 809C20DC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00080 809C20E0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00084 809C20E4 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 00088 809C20E8 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 0008C 809C20EC 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00090 809C20F0 3C05809C */  lui     $a1, %hi(func_809C2148)    ## $a1 = 809C0000
/* 00094 809C20F4 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00098 809C20F8 24A52148 */  addiu   $a1, $a1, %lo(func_809C2148) ## $a1 = 809C2148
/* 0009C 809C20FC 0C270818 */  jal     func_809C2060              
/* 000A0 809C2100 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000A4 809C2104 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809C2108:
/* 000A8 809C2108 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 000AC 809C210C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 000B0 809C2110 03E00008 */  jr      $ra                        
/* 000B4 809C2114 00000000 */  nop
