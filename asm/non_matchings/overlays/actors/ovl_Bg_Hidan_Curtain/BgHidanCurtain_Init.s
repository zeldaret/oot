.rdata
glabel D_80885BF0
    .asciz "Curtain (arg_data 0x%04x)\n"
    .balign 4

glabel D_80885C0C
    .asciz "Error : object のタイプが設定されていない(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80885C50
    .asciz "../z_bg_hidan_curtain.c"
    .balign 4

glabel D_80885C68
    .asciz "Warning : object のセーブビットが設定されていない(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80885CB4
    .asciz "../z_bg_hidan_curtain.c"
    .balign 4

.text
glabel BgHidanCurtain_Init
/* 00000 808851A0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 808851A4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00008 808851A8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0000C 808851AC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00010 808851B0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00014 808851B4 3C048088 */  lui     $a0, %hi(D_80885BF0)       ## $a0 = 80880000
/* 00018 808851B8 24845BF0 */  addiu   $a0, $a0, %lo(D_80885BF0)  ## $a0 = 80885BF0
/* 0001C 808851BC 0C00084C */  jal     osSyncPrintf
              
/* 00020 808851C0 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00024 808851C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00028 808851C8 0C00B56E */  jal     Actor_SetHeight
              
/* 0002C 808851CC 3C0541A0 */  lui     $a1, 0x41A0                ## $a1 = 41A00000
/* 00030 808851D0 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00034 808851D4 000E7B03 */  sra     $t7, $t6, 12               
/* 00038 808851D8 31F8000F */  andi    $t8, $t7, 0x000F           ## $t8 = 00000000
/* 0003C 808851DC 330200FF */  andi    $v0, $t8, 0x00FF           ## $v0 = 00000000
/* 00040 808851E0 28410007 */  slti    $at, $v0, 0x0007           
/* 00044 808851E4 1420000C */  bne     $at, $zero, .L80885218     
/* 00048 808851E8 A2180150 */  sb      $t8, 0x0150($s0)           ## 00000150
/* 0004C 808851EC 3C048088 */  lui     $a0, %hi(D_80885C0C)       ## $a0 = 80880000
/* 00050 808851F0 3C058088 */  lui     $a1, %hi(D_80885C50)       ## $a1 = 80880000
/* 00054 808851F4 24A55C50 */  addiu   $a1, $a1, %lo(D_80885C50)  ## $a1 = 80885C50
/* 00058 808851F8 24845C0C */  addiu   $a0, $a0, %lo(D_80885C0C)  ## $a0 = 80885C0C
/* 0005C 808851FC 24060160 */  addiu   $a2, $zero, 0x0160         ## $a2 = 00000160
/* 00060 80885200 0C00084C */  jal     osSyncPrintf
              
/* 00064 80885204 8607001C */  lh      $a3, 0x001C($s0)           ## 0000001C
/* 00068 80885208 0C00B55C */  jal     Actor_Kill
              
/* 0006C 8088520C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00070 80885210 1000007A */  beq     $zero, $zero, .L808853FC   
/* 00074 80885214 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80885218:
/* 00078 80885218 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0007C 8088521C 10410002 */  beq     $v0, $at, .L80885228       
/* 00080 80885220 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00084 80885224 14410003 */  bne     $v0, $at, .L80885234       
.L80885228:
/* 00088 80885228 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 0008C 8088522C 10000002 */  beq     $zero, $zero, .L80885238   
/* 00090 80885230 A2190152 */  sb      $t9, 0x0152($s0)           ## 00000152
.L80885234:
/* 00094 80885234 A2000152 */  sb      $zero, 0x0152($s0)         ## 00000152
.L80885238:
/* 00098 80885238 92080152 */  lbu     $t0, 0x0152($s0)           ## 00000152
/* 0009C 8088523C 3C0A8088 */  lui     $t2, %hi(D_80885BA4)       ## $t2 = 80880000
/* 000A0 80885240 254A5BA4 */  addiu   $t2, $t2, %lo(D_80885BA4)  ## $t2 = 80885BA4
/* 000A4 80885244 00084900 */  sll     $t1, $t0,  4               
/* 000A8 80885248 012A5821 */  addu    $t3, $t1, $t2              
/* 000AC 8088524C AFAB0024 */  sw      $t3, 0x0024($sp)           
/* 000B0 80885250 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 000B4 80885254 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
/* 000B8 80885258 3C048088 */  lui     $a0, %hi(D_80885C68)       ## $a0 = 80880000
/* 000BC 8088525C 31F8003F */  andi    $t8, $t7, 0x003F           ## $t8 = 00000000
/* 000C0 80885260 A618001C */  sh      $t8, 0x001C($s0)           ## 0000001C
/* 000C4 80885264 8607001C */  lh      $a3, 0x001C($s0)           ## 0000001C
/* 000C8 80885268 000C6983 */  sra     $t5, $t4,  6               
/* 000CC 8088526C 31AE003F */  andi    $t6, $t5, 0x003F           ## $t6 = 00000000
/* 000D0 80885270 04E00003 */  bltz    $a3, .L80885280            
/* 000D4 80885274 A20E0151 */  sb      $t6, 0x0151($s0)           ## 00000151
/* 000D8 80885278 28E10040 */  slti    $at, $a3, 0x0040           
/* 000DC 8088527C 14200005 */  bne     $at, $zero, .L80885294     
.L80885280:
/* 000E0 80885280 3C058088 */  lui     $a1, %hi(D_80885CB4)       ## $a1 = 80880000
/* 000E4 80885284 24A55CB4 */  addiu   $a1, $a1, %lo(D_80885CB4)  ## $a1 = 80885CB4
/* 000E8 80885288 24845C68 */  addiu   $a0, $a0, %lo(D_80885C68)  ## $a0 = 80885C68
/* 000EC 8088528C 0C00084C */  jal     osSyncPrintf
              
/* 000F0 80885290 24060175 */  addiu   $a2, $zero, 0x0175         ## $a2 = 00000175
.L80885294:
/* 000F4 80885294 8FB90024 */  lw      $t9, 0x0024($sp)           
/* 000F8 80885298 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000FC 8088529C 0C00B58B */  jal     Actor_SetScale
              
/* 00100 808852A0 8F250004 */  lw      $a1, 0x0004($t9)           ## 00000004
/* 00104 808852A4 26050158 */  addiu   $a1, $s0, 0x0158           ## $a1 = 00000158
/* 00108 808852A8 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 0010C 808852AC 0C0170D9 */  jal     CollisionCheck_AllocCylinder
              
/* 00110 808852B0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00114 808852B4 3C078088 */  lui     $a3, %hi(D_80885B70)       ## $a3 = 80880000
/* 00118 808852B8 24E75B70 */  addiu   $a3, $a3, %lo(D_80885B70)  ## $a3 = 80885B70
/* 0011C 808852BC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00120 808852C0 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00124 808852C4 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00128 808852C8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0012C 808852CC C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00130 808852D0 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00134 808852D4 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00138 808852D8 4600218D */  trunc.w.s $f6, $f4                   
/* 0013C 808852DC 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 00140 808852E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00144 808852E4 4600428D */  trunc.w.s $f10, $f8                  
/* 00148 808852E8 44093000 */  mfc1    $t1, $f6                   
/* 0014C 808852EC 4600848D */  trunc.w.s $f18, $f16                 
/* 00150 808852F0 440B5000 */  mfc1    $t3, $f10                  
/* 00154 808852F4 A609019E */  sh      $t1, 0x019E($s0)           ## 0000019E
/* 00158 808852F8 440D9000 */  mfc1    $t5, $f18                  
/* 0015C 808852FC A60B01A0 */  sh      $t3, 0x01A0($s0)           ## 000001A0
/* 00160 80885300 A60D01A2 */  sh      $t5, 0x01A2($s0)           ## 000001A2
/* 00164 80885304 846E0000 */  lh      $t6, 0x0000($v1)           ## 00000000
/* 00168 80885308 A60E0198 */  sh      $t6, 0x0198($s0)           ## 00000198
/* 0016C 8088530C 846F0002 */  lh      $t7, 0x0002($v1)           ## 00000002
/* 00170 80885310 A60F019A */  sh      $t7, 0x019A($s0)           ## 0000019A
/* 00174 80885314 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00178 80885318 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 0017C 8088531C 3C068088 */  lui     $a2, %hi(D_80885B9C)       ## $a2 = 80880000
/* 00180 80885320 24C65B9C */  addiu   $a2, $a2, %lo(D_80885B9C)  ## $a2 = 80885B9C
/* 00184 80885324 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00188 80885328 0C0187B5 */  jal     func_80061ED4              
/* 0018C 8088532C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00190 80885330 92020150 */  lbu     $v0, 0x0150($s0)           ## 00000150
/* 00194 80885334 3C198088 */  lui     $t9, %hi(func_80885434)    ## $t9 = 80880000
/* 00198 80885338 27395434 */  addiu   $t9, $t9, %lo(func_80885434) ## $t9 = 80885434
/* 0019C 8088533C 14400006 */  bne     $v0, $zero, .L80885358     
/* 001A0 80885340 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 001A4 80885344 3C188088 */  lui     $t8, %hi(func_80885514)    ## $t8 = 80880000
/* 001A8 80885348 27185514 */  addiu   $t8, $t8, %lo(func_80885514) ## $t8 = 80885514
/* 001AC 8088534C AE18014C */  sw      $t8, 0x014C($s0)           ## 0000014C
/* 001B0 80885350 1000000C */  beq     $zero, $zero, .L80885384   
/* 001B4 80885354 92020150 */  lbu     $v0, 0x0150($s0)           ## 00000150
.L80885358:
/* 001B8 80885358 10410004 */  beq     $v0, $at, .L8088536C       
/* 001BC 8088535C AE19014C */  sw      $t9, 0x014C($s0)           ## 0000014C
/* 001C0 80885360 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 001C4 80885364 54410008 */  bnel    $v0, $at, .L80885388       
/* 001C8 80885368 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L8088536C:
/* 001CC 8088536C 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 001D0 80885370 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 001D4 80885374 92020150 */  lbu     $v0, 0x0150($s0)           ## 00000150
/* 001D8 80885378 C5060008 */  lwc1    $f6, 0x0008($t0)           ## 00000008
/* 001DC 8088537C 46062201 */  sub.s   $f8, $f4, $f6              
/* 001E0 80885380 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
.L80885384:
/* 001E4 80885384 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80885388:
/* 001E8 80885388 14410006 */  bne     $v0, $at, .L808853A4       
/* 001EC 8088538C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 001F0 80885390 0C00B32C */  jal     Flags_GetTreasure
              
/* 001F4 80885394 92050151 */  lbu     $a1, 0x0151($s0)           ## 00000151
/* 001F8 80885398 1440000B */  bne     $v0, $zero, .L808853C8     
/* 001FC 8088539C 00000000 */  nop
/* 00200 808853A0 92020150 */  lbu     $v0, 0x0150($s0)           ## 00000150
.L808853A4:
/* 00204 808853A4 10400003 */  beq     $v0, $zero, .L808853B4     
/* 00208 808853A8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 0020C 808853AC 14410008 */  bne     $v0, $at, .L808853D0       
/* 00210 808853B0 00000000 */  nop
.L808853B4:
/* 00214 808853B4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00218 808853B8 0C00B337 */  jal     Flags_GetClear
              
/* 0021C 808853BC 82050003 */  lb      $a1, 0x0003($s0)           ## 00000003
/* 00220 808853C0 10400003 */  beq     $v0, $zero, .L808853D0     
/* 00224 808853C4 00000000 */  nop
.L808853C8:
/* 00228 808853C8 0C00B55C */  jal     Actor_Kill
              
/* 0022C 808853CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L808853D0:
/* 00230 808853D0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00234 808853D4 00000000 */  nop
/* 00238 808853D8 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 0023C 808853DC 44815000 */  mtc1    $at, $f10                  ## $f10 = 15.00
/* 00240 808853E0 00000000 */  nop
/* 00244 808853E4 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00248 808853E8 4600848D */  trunc.w.s $f18, $f16                 
/* 0024C 808853EC 440A9000 */  mfc1    $t2, $f18                  
/* 00250 808853F0 00000000 */  nop
/* 00254 808853F4 A60A0156 */  sh      $t2, 0x0156($s0)           ## 00000156
/* 00258 808853F8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808853FC:
/* 0025C 808853FC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00260 80885400 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00264 80885404 03E00008 */  jr      $ra                        
/* 00268 80885408 00000000 */  nop
