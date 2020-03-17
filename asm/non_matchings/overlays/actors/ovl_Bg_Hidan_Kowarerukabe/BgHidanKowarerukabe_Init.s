glabel BgHidanKowarerukabe_Init
/* 00158 8088A178 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0015C 8088A17C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00160 8088A180 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00164 8088A184 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00168 8088A188 0C222808 */  jal     func_8088A020              
/* 0016C 8088A18C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00170 8088A190 8607001C */  lh      $a3, 0x001C($s0)           ## 0000001C
/* 00174 8088A194 3C048089 */  lui     $a0, %hi(D_8088AE90)       ## $a0 = 80890000
/* 00178 8088A198 2484AE90 */  addiu   $a0, $a0, %lo(D_8088AE90)  ## $a0 = 8088AE90
/* 0017C 8088A19C 30E200FF */  andi    $v0, $a3, 0x00FF           ## $v0 = 00000000
/* 00180 8088A1A0 04400003 */  bltz    $v0, .L8088A1B0            
/* 00184 8088A1A4 28410003 */  slti    $at, $v0, 0x0003           
/* 00188 8088A1A8 14200009 */  bne     $at, $zero, .L8088A1D0     
/* 0018C 8088A1AC 00072A03 */  sra     $a1, $a3,  8               
.L8088A1B0:
/* 00190 8088A1B0 3C058089 */  lui     $a1, %hi(D_8088AEE0)       ## $a1 = 80890000
/* 00194 8088A1B4 24A5AEE0 */  addiu   $a1, $a1, %lo(D_8088AEE0)  ## $a1 = 8088AEE0
/* 00198 8088A1B8 0C00084C */  jal     osSyncPrintf
              
/* 0019C 8088A1BC 240600FE */  addiu   $a2, $zero, 0x00FE         ## $a2 = 000000FE
/* 001A0 8088A1C0 0C00B55C */  jal     Actor_Kill
              
/* 001A4 8088A1C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001A8 8088A1C8 1000001B */  beq     $zero, $zero, .L8088A238   
/* 001AC 8088A1CC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8088A1D0:
/* 001B0 8088A1D0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 001B4 8088A1D4 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 001B8 8088A1D8 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 001BC 8088A1DC 10400005 */  beq     $v0, $zero, .L8088A1F4     
/* 001C0 8088A1E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001C4 8088A1E4 0C00B55C */  jal     Actor_Kill
              
/* 001C8 8088A1E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001CC 8088A1EC 10000012 */  beq     $zero, $zero, .L8088A238   
/* 001D0 8088A1F0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8088A1F4:
/* 001D4 8088A1F4 3C058089 */  lui     $a1, %hi(D_8088AE78)       ## $a1 = 80890000
/* 001D8 8088A1F8 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 001DC 8088A1FC 24A5AE78 */  addiu   $a1, $a1, %lo(D_8088AE78)  ## $a1 = 8088AE78
/* 001E0 8088A200 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 001E4 8088A204 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 001E8 8088A208 0C00B58B */  jal     Actor_SetScale
              
/* 001EC 8088A20C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001F0 8088A210 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001F4 8088A214 0C22282E */  jal     func_8088A0B8              
/* 001F8 8088A218 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 001FC 8088A21C 0C222854 */  jal     func_8088A150              
/* 00200 8088A220 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00204 8088A224 3C048089 */  lui     $a0, %hi(D_8088AF00)       ## $a0 = 80890000
/* 00208 8088A228 2484AF00 */  addiu   $a0, $a0, %lo(D_8088AF00)  ## $a0 = 8088AF00
/* 0020C 8088A22C 0C00084C */  jal     osSyncPrintf
              
/* 00210 8088A230 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00214 8088A234 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8088A238:
/* 00218 8088A238 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0021C 8088A23C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00220 8088A240 03E00008 */  jr      $ra                        
/* 00224 8088A244 00000000 */  nop


