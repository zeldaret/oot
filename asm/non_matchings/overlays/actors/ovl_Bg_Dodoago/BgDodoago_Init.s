glabel BgDodoago_Init
/* 00128 80871B28 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0012C 80871B2C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00130 80871B30 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00134 80871B34 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00138 80871B38 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 0013C 80871B3C 3C058087 */  lui     $a1, %hi(D_808725BC)       ## $a1 = 80870000
/* 00140 80871B40 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00144 80871B44 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 00148 80871B48 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0014C 80871B4C 24A525BC */  addiu   $a1, $a1, %lo(D_808725BC)  ## $a1 = 808725BC
/* 00150 80871B50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00154 80871B54 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00158 80871B58 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0015C 80871B5C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00160 80871B60 24841DDC */  addiu   $a0, $a0, 0x1DDC           ## $a0 = 06001DDC
/* 00164 80871B64 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00168 80871B68 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 0016C 80871B6C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00170 80871B70 26250810 */  addiu   $a1, $s1, 0x0810           ## $a1 = 00000810
/* 00174 80871B74 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00178 80871B78 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 0017C 80871B7C 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 00180 80871B80 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00184 80871B84 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00188 80871B88 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0018C 80871B8C 44050000 */  mfc1    $a1, $f0                   
/* 00190 80871B90 44070000 */  mfc1    $a3, $f0                   
/* 00194 80871B94 0C00AC78 */  jal     ActorShape_Init
              
/* 00198 80871B98 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0019C 80871B9C 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 001A0 80871BA0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001A4 80871BA4 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 001A8 80871BA8 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 001AC 80871BAC 1040000E */  beq     $v0, $zero, .L80871BE8     
/* 001B0 80871BB0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001B4 80871BB4 3C058087 */  lui     $a1, %hi(func_8087227C)    ## $a1 = 80870000
/* 001B8 80871BB8 24A5227C */  addiu   $a1, $a1, %lo(func_8087227C) ## $a1 = 8087227C
/* 001BC 80871BBC 0C21C680 */  jal     BgDodoago_SetupAction              
/* 001C0 80871BC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001C4 80871BC4 240E1333 */  addiu   $t6, $zero, 0x1333         ## $t6 = 00001333
/* 001C8 80871BC8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 001CC 80871BCC A60E00B4 */  sh      $t6, 0x00B4($s0)           ## 000000B4
/* 001D0 80871BD0 02211021 */  addu    $v0, $s1, $at              
/* 001D4 80871BD4 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 001D8 80871BD8 A44F1D32 */  sh      $t7, 0x1D32($v0)           ## 00001D32
/* 001DC 80871BDC 84581D32 */  lh      $t8, 0x1D32($v0)           ## 00001D32
/* 001E0 80871BE0 10000024 */  beq     $zero, $zero, .L80871C74   
/* 001E4 80871BE4 A4581D30 */  sh      $t8, 0x1D30($v0)           ## 00001D30
.L80871BE8:
/* 001E8 80871BE8 26050168 */  addiu   $a1, $s0, 0x0168           ## $a1 = 00000168
/* 001EC 80871BEC 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 001F0 80871BF0 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 001F4 80871BF4 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 001F8 80871BF8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 001FC 80871BFC 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00200 80871C00 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00204 80871C04 26050200 */  addiu   $a1, $s0, 0x0200           ## $a1 = 00000200
/* 00208 80871C08 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 0020C 80871C0C 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00210 80871C10 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00214 80871C14 3C078087 */  lui     $a3, %hi(D_80872540)       ## $a3 = 80870000
/* 00218 80871C18 24E72540 */  addiu   $a3, $a3, %lo(D_80872540)  ## $a3 = 80872540
/* 0021C 80871C1C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00220 80871C20 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00224 80871C24 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00228 80871C28 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0022C 80871C2C 3C078087 */  lui     $a3, %hi(D_8087256C)       ## $a3 = 80870000
/* 00230 80871C30 24E7256C */  addiu   $a3, $a3, %lo(D_8087256C)  ## $a3 = 8087256C
/* 00234 80871C34 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00238 80871C38 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0023C 80871C3C 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00240 80871C40 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00244 80871C44 3C078087 */  lui     $a3, %hi(D_8087256C)       ## $a3 = 80870000
/* 00248 80871C48 24E7256C */  addiu   $a3, $a3, %lo(D_8087256C)  ## $a3 = 8087256C
/* 0024C 80871C4C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00250 80871C50 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00254 80871C54 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00258 80871C58 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0025C 80871C5C 3C058087 */  lui     $a1, %hi(func_80871CF4)    ## $a1 = 80870000
/* 00260 80871C60 24A51CF4 */  addiu   $a1, $a1, %lo(func_80871CF4) ## $a1 = 80871CF4
/* 00264 80871C64 0C21C680 */  jal     BgDodoago_SetupAction              
/* 00268 80871C68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0026C 80871C6C 3C018087 */  lui     $at, %hi(D_808727C0)       ## $at = 80870000
/* 00270 80871C70 A02027C0 */  sb      $zero, %lo(D_808727C0)($at) 
.L80871C74:
/* 00274 80871C74 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00278 80871C78 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 0027C 80871C7C 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00280 80871C80 03E00008 */  jr      $ra                        
/* 00284 80871C84 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
