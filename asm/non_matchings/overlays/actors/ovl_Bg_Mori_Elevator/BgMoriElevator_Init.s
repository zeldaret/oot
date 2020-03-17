glabel BgMoriElevator_Init
/* 00184 808A1984 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00188 808A1988 3C0E808A */  lui     $t6, %hi(D_808A2210)       ## $t6 = 808A0000
/* 0018C 808A198C 85CE2210 */  lh      $t6, %lo(D_808A2210)($t6)  
/* 00190 808A1990 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00194 808A1994 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00198 808A1998 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0019C 808A199C AFA00024 */  sw      $zero, 0x0024($sp)         
/* 001A0 808A19A0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 001A4 808A19A4 A48E0172 */  sh      $t6, 0x0172($a0)           ## 00000172
/* 001A8 808A19A8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 001AC 808A19AC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 001B0 808A19B0 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 001B4 808A19B4 24050073 */  addiu   $a1, $zero, 0x0073         ## $a1 = 00000073
/* 001B8 808A19B8 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 001BC 808A19BC 00812021 */  addu    $a0, $a0, $at              
/* 001C0 808A19C0 A2020171 */  sb      $v0, 0x0171($s0)           ## 00000171
/* 001C4 808A19C4 820F0171 */  lb      $t7, 0x0171($s0)           ## 00000171
/* 001C8 808A19C8 3C02808A */  lui     $v0, %hi(D_808A2210)       ## $v0 = 808A0000
/* 001CC 808A19CC 05E1000B */  bgez    $t7, .L808A19FC            
/* 001D0 808A19D0 00000000 */  nop
/* 001D4 808A19D4 0C00B55C */  jal     Actor_Kill
              
/* 001D8 808A19D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001DC 808A19DC 3C04808A */  lui     $a0, %hi(D_808A2250)       ## $a0 = 808A0000
/* 001E0 808A19E0 3C05808A */  lui     $a1, %hi(D_808A2284)       ## $a1 = 808A0000
/* 001E4 808A19E4 24A52284 */  addiu   $a1, $a1, %lo(D_808A2284)  ## $a1 = 808A2284
/* 001E8 808A19E8 24842250 */  addiu   $a0, $a0, %lo(D_808A2250)  ## $a0 = 808A2250
/* 001EC 808A19EC 0C00084C */  jal     osSyncPrintf
              
/* 001F0 808A19F0 24060115 */  addiu   $a2, $zero, 0x0115         ## $a2 = 00000115
/* 001F4 808A19F4 10000029 */  beq     $zero, $zero, .L808A1A9C   
/* 001F8 808A19F8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808A19FC:
/* 001FC 808A19FC 84422210 */  lh      $v0, %lo(D_808A2210)($v0)  
/* 00200 808A1A00 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00204 808A1A04 3C04808A */  lui     $a0, %hi(D_808A229C)       ## $a0 = 808A0000
/* 00208 808A1A08 10400005 */  beq     $v0, $zero, .L808A1A20     
/* 0020C 808A1A0C 00000000 */  nop
/* 00210 808A1A10 1041001F */  beq     $v0, $at, .L808A1A90       
/* 00214 808A1A14 00000000 */  nop
/* 00218 808A1A18 10000020 */  beq     $zero, $zero, .L808A1A9C   
/* 0021C 808A1A1C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808A1A20:
/* 00220 808A1A20 0C00084C */  jal     osSyncPrintf
              
/* 00224 808A1A24 2484229C */  addiu   $a0, $a0, %lo(D_808A229C)  ## $a0 = 808A229C
/* 00228 808A1A28 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 0022C 808A1A2C 3C01808A */  lui     $at, %hi(D_808A2210)       ## $at = 808A0000
/* 00230 808A1A30 A4382210 */  sh      $t8, %lo(D_808A2210)($at)  
/* 00234 808A1A34 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 00238 808A1A38 3C05808A */  lui     $a1, %hi(D_808A2234)       ## $a1 = 808A0000
/* 0023C 808A1A3C A2190003 */  sb      $t9, 0x0003($s0)           ## 00000003
/* 00240 808A1A40 24A52234 */  addiu   $a1, $a1, %lo(D_808A2234)  ## $a1 = 808A2234
/* 00244 808A1A44 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00248 808A1A48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0024C 808A1A4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00250 808A1A50 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00254 808A1A54 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00258 808A1A58 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0025C 808A1A5C 248435F8 */  addiu   $a0, $a0, 0x35F8           ## $a0 = 060035F8
/* 00260 808A1A60 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00264 808A1A64 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00268 808A1A68 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0026C 808A1A6C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00270 808A1A70 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 00274 808A1A74 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00278 808A1A78 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 0027C 808A1A7C AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00280 808A1A80 0C2286D8 */  jal     func_808A1B60              
/* 00284 808A1A84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00288 808A1A88 10000004 */  beq     $zero, $zero, .L808A1A9C   
/* 0028C 808A1A8C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808A1A90:
/* 00290 808A1A90 0C00B55C */  jal     Actor_Kill
              
/* 00294 808A1A94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00298 808A1A98 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808A1A9C:
/* 0029C 808A1A9C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 002A0 808A1AA0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 002A4 808A1AA4 03E00008 */  jr      $ra                        
/* 002A8 808A1AA8 00000000 */  nop


