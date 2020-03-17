glabel BgZg_Init
/* 001E4 808C0E04 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 001E8 808C0E08 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 001EC 808C0E0C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 001F0 808C0E10 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 001F4 808C0E14 3C05808C */  lui     $a1, %hi(D_808C1018)       ## $a1 = 808C0000
/* 001F8 808C0E18 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 001FC 808C0E1C 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00200 808C0E20 24A51018 */  addiu   $a1, $a1, %lo(D_808C1018)  ## $a1 = 808C1018
/* 00204 808C0E24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00208 808C0E28 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 0020C 808C0E2C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00210 808C0E30 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00214 808C0E34 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00218 808C0E38 248411D4 */  addiu   $a0, $a0, 0x11D4           ## $a0 = 060011D4
/* 0021C 808C0E3C 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00220 808C0E40 27A50020 */  addiu   $a1, $sp, 0x0020           ## $a1 = FFFFFFF0
/* 00224 808C0E44 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00228 808C0E48 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0022C 808C0E4C 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00230 808C0E50 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00234 808C0E54 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00238 808C0E58 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 0023C 808C0E5C 0C230332 */  jal     func_808C0CC8              
/* 00240 808C0E60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00244 808C0E64 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00248 808C0E68 10410005 */  beq     $v0, $at, .L808C0E80       
/* 0024C 808C0E6C 00000000 */  nop
/* 00250 808C0E70 0C230332 */  jal     func_808C0CC8              
/* 00254 808C0E74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00258 808C0E78 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 0025C 808C0E7C 1441000D */  bne     $v0, $at, .L808C0EB4       
.L808C0E80:
/* 00260 808C0E80 3C01808C */  lui     $at, %hi(D_808C10E8)       ## $at = 808C0000
/* 00264 808C0E84 C42010E8 */  lwc1    $f0, %lo(D_808C10E8)($at)  
/* 00268 808C0E88 C6040050 */  lwc1    $f4, 0x0050($s0)           ## 00000050
/* 0026C 808C0E8C C6080058 */  lwc1    $f8, 0x0058($s0)           ## 00000058
/* 00270 808C0E90 3C01808C */  lui     $at, %hi(D_808C10EC)       ## $at = 808C0000
/* 00274 808C0E94 46002182 */  mul.s   $f6, $f4, $f0              
/* 00278 808C0E98 C6100054 */  lwc1    $f16, 0x0054($s0)          ## 00000054
/* 0027C 808C0E9C 46004282 */  mul.s   $f10, $f8, $f0             
/* 00280 808C0EA0 E6060050 */  swc1    $f6, 0x0050($s0)           ## 00000050
/* 00284 808C0EA4 E60A0058 */  swc1    $f10, 0x0058($s0)          ## 00000058
/* 00288 808C0EA8 C43210EC */  lwc1    $f18, %lo(D_808C10EC)($at) 
/* 0028C 808C0EAC 46128102 */  mul.s   $f4, $f16, $f18            
/* 00290 808C0EB0 E6040054 */  swc1    $f4, 0x0054($s0)           ## 00000054
.L808C0EB4:
/* 00294 808C0EB4 AE000164 */  sw      $zero, 0x0164($s0)         ## 00000164
/* 00298 808C0EB8 AE000168 */  sw      $zero, 0x0168($s0)         ## 00000168
/* 0029C 808C0EBC 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 002A0 808C0EC0 0C230326 */  jal     func_808C0C98              
/* 002A4 808C0EC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002A8 808C0EC8 50400004 */  beql    $v0, $zero, .L808C0EDC     
/* 002AC 808C0ECC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 002B0 808C0ED0 0C00B55C */  jal     Actor_Kill
              
/* 002B4 808C0ED4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002B8 808C0ED8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808C0EDC:
/* 002BC 808C0EDC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 002C0 808C0EE0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 002C4 808C0EE4 03E00008 */  jr      $ra                        
/* 002C8 808C0EE8 00000000 */  nop


