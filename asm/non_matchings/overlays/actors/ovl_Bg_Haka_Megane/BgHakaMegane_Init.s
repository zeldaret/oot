glabel BgHakaMegane_Init
/* 00000 8087DA40 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 8087DA44 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00008 8087DA48 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0000C 8087DA4C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00010 8087DA50 3C058088 */  lui     $a1, %hi(D_8087DD50)       ## $a1 = 80880000
/* 00014 8087DA54 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 8087DA58 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0001C 8087DA5C 24A5DD50 */  addiu   $a1, $a1, %lo(D_8087DD50)  ## $a1 = 8087DD50
/* 00020 8087DA60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00024 8087DA64 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00028 8087DA68 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0002C 8087DA6C 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00030 8087DA70 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00034 8087DA74 24050069 */  addiu   $a1, $zero, 0x0069         ## $a1 = 00000069
/* 00038 8087DA78 29C10003 */  slti    $at, $t6, 0x0003           
/* 0003C 8087DA7C 5020000A */  beql    $at, $zero, .L8087DAA8     
/* 00040 8087DA80 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00044 8087DA84 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00048 8087DA88 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0004C 8087DA8C 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00050 8087DA90 2405008D */  addiu   $a1, $zero, 0x008D         ## $a1 = 0000008D
/* 00054 8087DA94 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00058 8087DA98 00812021 */  addu    $a0, $a0, $at              
/* 0005C 8087DA9C 10000006 */  beq     $zero, $zero, .L8087DAB8   
/* 00060 8087DAA0 A2020169 */  sb      $v0, 0x0169($s0)           ## 00000169
/* 00064 8087DAA4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L8087DAA8:
/* 00068 8087DAA8 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 0006C 8087DAAC 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00070 8087DAB0 00812021 */  addu    $a0, $a0, $at              
/* 00074 8087DAB4 A2020169 */  sb      $v0, 0x0169($s0)           ## 00000169
.L8087DAB8:
/* 00078 8087DAB8 820F0169 */  lb      $t7, 0x0169($s0)           ## 00000169
/* 0007C 8087DABC 3C188088 */  lui     $t8, %hi(func_8087DB24)    ## $t8 = 80880000
/* 00080 8087DAC0 2718DB24 */  addiu   $t8, $t8, %lo(func_8087DB24) ## $t8 = 8087DB24
/* 00084 8087DAC4 05E30006 */  bgezl   $t7, .L8087DAE0            
/* 00088 8087DAC8 AE180164 */  sw      $t8, 0x0164($s0)           ## 00000164
/* 0008C 8087DACC 0C00B55C */  jal     Actor_Kill
              
/* 00090 8087DAD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00094 8087DAD4 10000003 */  beq     $zero, $zero, .L8087DAE4   
/* 00098 8087DAD8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0009C 8087DADC AE180164 */  sw      $t8, 0x0164($s0)           ## 00000164
.L8087DAE0:
/* 000A0 8087DAE0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8087DAE4:
/* 000A4 8087DAE4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 000A8 8087DAE8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 000AC 8087DAEC 03E00008 */  jr      $ra                        
/* 000B0 8087DAF0 00000000 */  nop


