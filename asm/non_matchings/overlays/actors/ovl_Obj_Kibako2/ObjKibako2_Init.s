.rdata
glabel D_80B96010
    .asciz "木箱(据置)(arg %04xH)(item %04xH %d)\n"
    .balign 4

.text
glabel ObjKibako2_Init
/* 00324 80B95CF4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00328 80B95CF8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0032C 80B95CFC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00330 80B95D00 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00334 80B95D04 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00338 80B95D08 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 0033C 80B95D0C 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00340 80B95D10 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00344 80B95D14 3C0580B9 */  lui     $a1, %hi(D_80B95FFC)       ## $a1 = 80B90000
/* 00348 80B95D18 24A55FFC */  addiu   $a1, $a1, %lo(D_80B95FFC)  ## $a1 = 80B95FFC
/* 0034C 80B95D1C 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00350 80B95D20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00354 80B95D24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00358 80B95D28 0C2E5674 */  jal     func_80B959D0              
/* 0035C 80B95D2C 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00360 80B95D30 3C040600 */  lui     $a0, %hi(D_06000B70)                ## $a0 = 06000000
/* 00364 80B95D34 24840B70 */  addiu   $a0, $a0, %lo(D_06000B70)           ## $a0 = 06000B70
/* 00368 80B95D38 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 0036C 80B95D3C 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 00370 80B95D40 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00374 80B95D44 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00378 80B95D48 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 0037C 80B95D4C 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00380 80B95D50 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00384 80B95D54 A60000B4 */  sh      $zero, 0x00B4($s0)         ## 000000B4
/* 00388 80B95D58 860F0018 */  lh      $t7, 0x0018($s0)           ## 00000018
/* 0038C 80B95D5C 860300B4 */  lh      $v1, 0x00B4($s0)           ## 000000B4
/* 00390 80B95D60 3C1980B9 */  lui     $t9, %hi(func_80B95DFC)    ## $t9 = 80B90000
/* 00394 80B95D64 31F8003F */  andi    $t8, $t7, 0x003F           ## $t8 = 00000000
/* 00398 80B95D68 A61801B4 */  sh      $t8, 0x01B4($s0)           ## 000001B4
/* 0039C 80B95D6C 27395DFC */  addiu   $t9, $t9, %lo(func_80B95DFC) ## $t9 = 80B95DFC
/* 003A0 80B95D70 3C0480B9 */  lui     $a0, %hi(D_80B96010)       ## $a0 = 80B90000
/* 003A4 80B95D74 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 003A8 80B95D78 AE1901B0 */  sw      $t9, 0x01B0($s0)           ## 000001B0
/* 003AC 80B95D7C 24846010 */  addiu   $a0, $a0, %lo(D_80B96010)  ## $a0 = 80B96010
/* 003B0 80B95D80 860601B4 */  lh      $a2, 0x01B4($s0)           ## 000001B4
/* 003B4 80B95D84 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 003B8 80B95D88 86070014 */  lh      $a3, 0x0014($s0)           ## 00000014
/* 003BC 80B95D8C A6030030 */  sh      $v1, 0x0030($s0)           ## 00000030
/* 003C0 80B95D90 A60300B8 */  sh      $v1, 0x00B8($s0)           ## 000000B8
/* 003C4 80B95D94 A6030034 */  sh      $v1, 0x0034($s0)           ## 00000034
/* 003C8 80B95D98 0C00084C */  jal     osSyncPrintf
              
/* 003CC 80B95D9C A6030018 */  sh      $v1, 0x0018($s0)           ## 00000018
/* 003D0 80B95DA0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 003D4 80B95DA4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 003D8 80B95DA8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 003DC 80B95DAC 03E00008 */  jr      $ra                        
/* 003E0 80B95DB0 00000000 */  nop
