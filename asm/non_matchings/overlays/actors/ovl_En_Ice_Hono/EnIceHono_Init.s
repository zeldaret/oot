.rdata
glabel D_80A740A0
    .asciz "(ice 炎)(arg_data 0x%04x)\n"
    .balign 4

.late_rodata
glabel D_80A7412C
 .word 0x477FFF80
glabel D_80A74130
 .word 0x477FFF80

.text
glabel EnIceHono_Init
/* 00238 80A73228 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0023C 80A7322C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00240 80A73230 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00244 80A73234 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00248 80A73238 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 0024C 80A7323C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00250 80A73240 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00254 80A73244 1041000B */  beq     $v0, $at, .L80A73274       
/* 00258 80A73248 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0025C 80A7324C 1040000D */  beq     $v0, $zero, .L80A73284     
/* 00260 80A73250 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00264 80A73254 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00268 80A73258 1041000E */  beq     $v0, $at, .L80A73294       
/* 0026C 80A7325C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00270 80A73260 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00274 80A73264 1041000B */  beq     $v0, $at, .L80A73294       
/* 00278 80A73268 00000000 */  nop
/* 0027C 80A7326C 1000000D */  beq     $zero, $zero, .L80A732A4   
/* 00280 80A73270 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
.L80A73274:
/* 00284 80A73274 0C29CC07 */  jal     func_80A7301C              
/* 00288 80A73278 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 0028C 80A7327C 10000008 */  beq     $zero, $zero, .L80A732A0   
/* 00290 80A73280 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L80A73284:
/* 00294 80A73284 0C29CC2F */  jal     func_80A730BC              
/* 00298 80A73288 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 0029C 80A7328C 10000004 */  beq     $zero, $zero, .L80A732A0   
/* 002A0 80A73290 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L80A73294:
/* 002A4 80A73294 0C29CC70 */  jal     func_80A731C0              
/* 002A8 80A73298 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 002AC 80A7329C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L80A732A0:
/* 002B0 80A732A0 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
.L80A732A4:
/* 002B4 80A732A4 10410003 */  beq     $v0, $at, .L80A732B4       
/* 002B8 80A732A8 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 002BC 80A732AC 54400034 */  bnel    $v0, $zero, .L80A73380     
/* 002C0 80A732B0 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A732B4:
/* 002C4 80A732B4 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 002C8 80A732B8 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 002CC 80A732BC C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 002D0 80A732C0 4600428D */  trunc.w.s $f10, $f8                  
/* 002D4 80A732C4 2419009B */  addiu   $t9, $zero, 0x009B         ## $t9 = 0000009B
/* 002D8 80A732C8 240800D2 */  addiu   $t0, $zero, 0x00D2         ## $t0 = 000000D2
/* 002DC 80A732CC 4600218D */  trunc.w.s $f6, $f4                   
/* 002E0 80A732D0 44065000 */  mfc1    $a2, $f10                  
/* 002E4 80A732D4 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 002E8 80A732D8 4600848D */  trunc.w.s $f18, $f16                 
/* 002EC 80A732DC 44053000 */  mfc1    $a1, $f6                   
/* 002F0 80A732E0 00063400 */  sll     $a2, $a2, 16               
/* 002F4 80A732E4 00063403 */  sra     $a2, $a2, 16               
/* 002F8 80A732E8 44079000 */  mfc1    $a3, $f18                  
/* 002FC 80A732EC 24C6000A */  addiu   $a2, $a2, 0x000A           ## $a2 = 0000000A
/* 00300 80A732F0 00063400 */  sll     $a2, $a2, 16               
/* 00304 80A732F4 00052C00 */  sll     $a1, $a1, 16               
/* 00308 80A732F8 00073C00 */  sll     $a3, $a3, 16               
/* 0030C 80A732FC 00073C03 */  sra     $a3, $a3, 16               
/* 00310 80A73300 00052C03 */  sra     $a1, $a1, 16               
/* 00314 80A73304 00063403 */  sra     $a2, $a2, 16               
/* 00318 80A73308 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 0031C 80A7330C AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00320 80A73310 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00324 80A73314 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00328 80A73318 0C01E763 */  jal     Lights_InitPointLightNoGlow
              
/* 0032C 80A7331C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00330 80A73320 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00334 80A73324 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 00338 80A73328 0C01E9D9 */  jal     Lights_Insert
              
/* 0033C 80A7332C 248507A8 */  addiu   $a1, $a0, 0x07A8           ## $a1 = 000007A8
/* 00340 80A73330 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00344 80A73334 AE0201A8 */  sw      $v0, 0x01A8($s0)           ## 000001A8
/* 00348 80A73338 3C0180A7 */  lui     $at, %hi(D_80A7412C)       ## $at = 80A70000
/* 0034C 80A7333C C424412C */  lwc1    $f4, %lo(D_80A7412C)($at)  
/* 00350 80A73340 46040182 */  mul.s   $f6, $f0, $f4              
/* 00354 80A73344 4600320D */  trunc.w.s $f8, $f6                   
/* 00358 80A73348 440C4000 */  mfc1    $t4, $f8                   
/* 0035C 80A7334C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00360 80A73350 A60C0154 */  sh      $t4, 0x0154($s0)           ## 00000154
/* 00364 80A73354 3C0180A7 */  lui     $at, %hi(D_80A74130)       ## $at = 80A70000
/* 00368 80A73358 C42A4130 */  lwc1    $f10, %lo(D_80A74130)($at) 
/* 0036C 80A7335C 3C0480A7 */  lui     $a0, %hi(D_80A740A0)       ## $a0 = 80A70000
/* 00370 80A73360 248440A0 */  addiu   $a0, $a0, %lo(D_80A740A0)  ## $a0 = 80A740A0
/* 00374 80A73364 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00378 80A73368 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 0037C 80A7336C 4600848D */  trunc.w.s $f18, $f16                 
/* 00380 80A73370 440E9000 */  mfc1    $t6, $f18                  
/* 00384 80A73374 0C00084C */  jal     osSyncPrintf
              
/* 00388 80A73378 A60E0156 */  sh      $t6, 0x0156($s0)           ## 00000156
/* 0038C 80A7337C 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A73380:
/* 00390 80A73380 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00394 80A73384 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00398 80A73388 03E00008 */  jr      $ra                        
/* 0039C 80A7338C 00000000 */  nop
