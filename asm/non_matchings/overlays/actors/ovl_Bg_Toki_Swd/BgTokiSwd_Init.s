glabel BgTokiSwd_Init
/* 00008 808BAE48 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0000C 808BAE4C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00010 808BAE50 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00014 808BAE54 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00018 808BAE58 3C05808C */  lui     $a1, %hi(D_808BC414)       ## $a1 = 808C0000
/* 0001C 808BAE5C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00020 808BAE60 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00024 808BAE64 24A5C414 */  addiu   $a1, $a1, %lo(D_808BC414)  ## $a1 = 808BC414
/* 00028 808BAE68 3C014448 */  lui     $at, 0x4448                ## $at = 44480000
/* 0002C 808BAE6C 44812000 */  mtc1    $at, $f4                   ## $f4 = 800.00
/* 00030 808BAE70 3C05808C */  lui     $a1, %hi(func_808BAF40)    ## $a1 = 808C0000
/* 00034 808BAE74 24A5AF40 */  addiu   $a1, $a1, %lo(func_808BAF40) ## $a1 = 808BAF40
/* 00038 808BAE78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0003C 808BAE7C 0C22EB90 */  jal     BgTokiSwd_SetupAction              
/* 00040 808BAE80 E60400BC */  swc1    $f4, 0x00BC($s0)           ## 000000BC
/* 00044 808BAE84 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00048 808BAE88 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 0004C 808BAE8C 8C4E0004 */  lw      $t6, 0x0004($v0)           ## 8015E664
/* 00050 808BAE90 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 00054 808BAE94 55C00003 */  bnel    $t6, $zero, .L808BAEA4     
/* 00058 808BAE98 8C4F1360 */  lw      $t7, 0x1360($v0)           ## 8015F9C0
/* 0005C 808BAE9C AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 00060 808BAEA0 8C4F1360 */  lw      $t7, 0x1360($v0)           ## 8015F9C0
.L808BAEA4:
/* 00064 808BAEA4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00068 808BAEA8 8FB90034 */  lw      $t9, 0x0034($sp)           
/* 0006C 808BAEAC 15E10004 */  bne     $t7, $at, .L808BAEC0       
/* 00070 808BAEB0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00074 808BAEB4 00390821 */  addu    $at, $at, $t9              
/* 00078 808BAEB8 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 0007C 808BAEBC A4381D30 */  sh      $t8, 0x1D30($at)           ## 00011D30
.L808BAEC0:
/* 00080 808BAEC0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00084 808BAEC4 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00088 808BAEC8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0008C 808BAECC 3C07808C */  lui     $a3, %hi(D_808BC3E0)       ## $a3 = 808C0000
/* 00090 808BAED0 24E7C3E0 */  addiu   $a3, $a3, %lo(D_808BC3E0)  ## $a3 = 808BC3E0
/* 00094 808BAED4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00098 808BAED8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0009C 808BAEDC 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 000A0 808BAEE0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000A4 808BAEE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000A8 808BAEE8 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 000AC 808BAEEC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 000B0 808BAEF0 3C06808C */  lui     $a2, %hi(D_808BC40C)       ## $a2 = 808C0000
/* 000B4 808BAEF4 24C6C40C */  addiu   $a2, $a2, %lo(D_808BC40C)  ## $a2 = 808BC40C
/* 000B8 808BAEF8 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 000BC 808BAEFC 0C0187B5 */  jal     func_80061ED4              
/* 000C0 808BAF00 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 000C4 808BAF04 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 000C8 808BAF08 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 000CC 808BAF0C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 000D0 808BAF10 03E00008 */  jr      $ra                        
/* 000D4 808BAF14 00000000 */  nop


