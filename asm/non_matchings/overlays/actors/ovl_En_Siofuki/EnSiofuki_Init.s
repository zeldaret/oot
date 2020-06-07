.late_rodata
glabel D_80AFC85C
 .word 0xC5BD5000
glabel D_80AFC860
    .float 0.1

glabel D_80AFC864
 .word 0x3F13FA15

.text
glabel EnSiofuki_Init
/* 00000 80AFBB80 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 80AFBB84 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00008 80AFBB88 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0000C 80AFBB8C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00010 80AFBB90 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 00014 80AFBB94 808E0003 */  lb      $t6, 0x0003($a0)           ## 00000003
/* 00018 80AFBB98 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 80AFBB9C 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00020 80AFBBA0 15C10009 */  bne     $t6, $at, .L80AFBBC8       
/* 00024 80AFBBA4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00028 80AFBBA8 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 0002C 80AFBBAC 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 00030 80AFBBB0 10400005 */  beq     $v0, $zero, .L80AFBBC8     
/* 00034 80AFBBB4 00000000 */  nop
/* 00038 80AFBBB8 0C00B55C */  jal     Actor_Kill
              
/* 0003C 80AFBBBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00040 80AFBBC0 10000071 */  beq     $zero, $zero, .L80AFBD88   
/* 00044 80AFBBC4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AFBBC8:
/* 00048 80AFBBC8 3C0580B0 */  lui     $a1, %hi(D_80AFC810)       ## $a1 = 80B00000
/* 0004C 80AFBBCC 24A5C810 */  addiu   $a1, $a1, %lo(D_80AFC810)  ## $a1 = 80AFC810
/* 00050 80AFBBD0 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00054 80AFBBD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00058 80AFBBD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0005C 80AFBBDC 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00060 80AFBBE0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00064 80AFBBE4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00068 80AFBBE8 24840D78 */  addiu   $a0, $a0, 0x0D78           ## $a0 = 06000D78
/* 0006C 80AFBBEC 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00070 80AFBBF0 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 00074 80AFBBF4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00078 80AFBBF8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0007C 80AFBBFC 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 00080 80AFBC00 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00084 80AFBC04 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00088 80AFBC08 9603001C */  lhu     $v1, 0x001C($s0)           ## 0000001C
/* 0008C 80AFBC0C 920F019C */  lbu     $t7, 0x019C($s0)           ## 0000019C
/* 00090 80AFBC10 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00094 80AFBC14 00031B03 */  sra     $v1, $v1, 12               
/* 00098 80AFBC18 3063000F */  andi    $v1, $v1, 0x000F           ## $v1 = 00000000
/* 0009C 80AFBC1C 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 000A0 80AFBC20 10600008 */  beq     $v1, $zero, .L80AFBC44     
/* 000A4 80AFBC24 A218019C */  sb      $t8, 0x019C($s0)           ## 0000019C
/* 000A8 80AFBC28 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 000AC 80AFBC2C 50610006 */  beql    $v1, $at, .L80AFBC48       
/* 000B0 80AFBC30 3C01420C */  lui     $at, 0x420C                ## $at = 420C0000
/* 000B4 80AFBC34 0C00B55C */  jal     Actor_Kill
              
/* 000B8 80AFBC38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000BC 80AFBC3C 10000052 */  beq     $zero, $zero, .L80AFBD88   
/* 000C0 80AFBC40 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AFBC44:
/* 000C4 80AFBC44 3C01420C */  lui     $at, 0x420C                ## $at = 420C0000
.L80AFBC48:
/* 000C8 80AFBC48 44810000 */  mtc1    $at, $f0                   ## $f0 = 35.00
/* 000CC 80AFBC4C C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 000D0 80AFBC50 3C0180B0 */  lui     $at, %hi(D_80AFC85C)       ## $at = 80B00000
/* 000D4 80AFBC54 E6000174 */  swc1    $f0, 0x0174($s0)           ## 00000174
/* 000D8 80AFBC58 E604016C */  swc1    $f4, 0x016C($s0)           ## 0000016C
/* 000DC 80AFBC5C C426C85C */  lwc1    $f6, %lo(D_80AFC85C)($at)  
/* 000E0 80AFBC60 860200B4 */  lh      $v0, 0x00B4($s0)           ## 000000B4
/* 000E4 80AFBC64 3C1980B0 */  lui     $t9, %hi(func_80AFC34C)    ## $t9 = 80B00000
/* 000E8 80AFBC68 46060200 */  add.s   $f8, $f0, $f6              
/* 000EC 80AFBC6C 10400009 */  beq     $v0, $zero, .L80AFBC94     
/* 000F0 80AFBC70 E6080170 */  swc1    $f8, 0x0170($s0)           ## 00000170
/* 000F4 80AFBC74 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 000F8 80AFBC78 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 000FC 80AFBC7C 44819000 */  mtc1    $at, $f18                  ## $f18 = 40.00
/* 00100 80AFBC80 46805420 */  cvt.s.w $f16, $f10                 
/* 00104 80AFBC84 46128102 */  mul.s   $f4, $f16, $f18            
/* 00108 80AFBC88 E6040198 */  swc1    $f4, 0x0198($s0)           ## 00000198
/* 0010C 80AFBC8C C6060198 */  lwc1    $f6, 0x0198($s0)           ## 00000198
/* 00110 80AFBC90 E6060180 */  swc1    $f6, 0x0180($s0)           ## 00000180
.L80AFBC94:
/* 00114 80AFBC94 860200B6 */  lh      $v0, 0x00B6($s0)           ## 000000B6
/* 00118 80AFBC98 A6000196 */  sh      $zero, 0x0196($s0)         ## 00000196
/* 0011C 80AFBC9C 50400003 */  beql    $v0, $zero, .L80AFBCAC     
/* 00120 80AFBCA0 860200B8 */  lh      $v0, 0x00B8($s0)           ## 000000B8
/* 00124 80AFBCA4 A6020196 */  sh      $v0, 0x0196($s0)           ## 00000196
/* 00128 80AFBCA8 860200B8 */  lh      $v0, 0x00B8($s0)           ## 000000B8
.L80AFBCAC:
/* 0012C 80AFBCAC 50400012 */  beql    $v0, $zero, .L80AFBCF8     
/* 00130 80AFBCB0 9602001C */  lhu     $v0, 0x001C($s0)           ## 0000001C
/* 00134 80AFBCB4 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 00138 80AFBCB8 3C0180B0 */  lui     $at, %hi(D_80AFC860)       ## $at = 80B00000
/* 0013C 80AFBCBC C422C860 */  lwc1    $f2, %lo(D_80AFC860)($at)  
/* 00140 80AFBCC0 46804020 */  cvt.s.w $f0, $f8                   
/* 00144 80AFBCC4 3C0180B0 */  lui     $at, %hi(D_80AFC864)       ## $at = 80B00000
/* 00148 80AFBCC8 C42AC864 */  lwc1    $f10, %lo(D_80AFC864)($at) 
/* 0014C 80AFBCCC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00150 80AFBCD0 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00154 80AFBCD4 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00158 80AFBCD8 00000000 */  nop
/* 0015C 80AFBCDC 46028482 */  mul.s   $f18, $f16, $f2            
/* 00160 80AFBCE0 00000000 */  nop
/* 00164 80AFBCE4 46040182 */  mul.s   $f6, $f0, $f4              
/* 00168 80AFBCE8 E6120050 */  swc1    $f18, 0x0050($s0)          ## 00000050
/* 0016C 80AFBCEC 46023202 */  mul.s   $f8, $f6, $f2              
/* 00170 80AFBCF0 E6080058 */  swc1    $f8, 0x0058($s0)           ## 00000058
/* 00174 80AFBCF4 9602001C */  lhu     $v0, 0x001C($s0)           ## 0000001C
.L80AFBCF8:
/* 00178 80AFBCF8 A6000030 */  sh      $zero, 0x0030($s0)         ## 00000030
/* 0017C 80AFBCFC A6000032 */  sh      $zero, 0x0032($s0)         ## 00000032
/* 00180 80AFBD00 00021B03 */  sra     $v1, $v0, 12               
/* 00184 80AFBD04 3063000F */  andi    $v1, $v1, 0x000F           ## $v1 = 00000000
/* 00188 80AFBD08 A6000034 */  sh      $zero, 0x0034($s0)         ## 00000034
/* 0018C 80AFBD0C A60000B4 */  sh      $zero, 0x00B4($s0)         ## 000000B4
/* 00190 80AFBD10 A60000B6 */  sh      $zero, 0x00B6($s0)         ## 000000B6
/* 00194 80AFBD14 14600008 */  bne     $v1, $zero, .L80AFBD38     
/* 00198 80AFBD18 A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
/* 0019C 80AFBD1C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 001A0 80AFBD20 44810000 */  mtc1    $at, $f0                   ## $f0 = 10.00
/* 001A4 80AFBD24 2739C34C */  addiu   $t9, $t9, %lo(func_80AFC34C) ## $t9 = 80AFC34C
/* 001A8 80AFBD28 AE190164 */  sw      $t9, 0x0164($s0)           ## 00000164
/* 001AC 80AFBD2C E6000180 */  swc1    $f0, 0x0180($s0)           ## 00000180
/* 001B0 80AFBD30 10000014 */  beq     $zero, $zero, .L80AFBD84   
/* 001B4 80AFBD34 E600017C */  swc1    $f0, 0x017C($s0)           ## 0000017C
.L80AFBD38:
/* 001B8 80AFBD38 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 001BC 80AFBD3C 14610011 */  bne     $v1, $at, .L80AFBD84       
/* 001C0 80AFBD40 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 001C4 80AFBD44 0C00B32C */  jal     Flags_GetTreasure
              
/* 001C8 80AFBD48 3045003F */  andi    $a1, $v0, 0x003F           ## $a1 = 00000000
/* 001CC 80AFBD4C 10400009 */  beq     $v0, $zero, .L80AFBD74     
/* 001D0 80AFBD50 3C0980B0 */  lui     $t1, %hi(func_80AFC478)    ## $t1 = 80B00000
/* 001D4 80AFBD54 3C01C234 */  lui     $at, 0xC234                ## $at = C2340000
/* 001D8 80AFBD58 44810000 */  mtc1    $at, $f0                   ## $f0 = -45.00
/* 001DC 80AFBD5C 3C0880B0 */  lui     $t0, %hi(func_80AFC544)    ## $t0 = 80B00000
/* 001E0 80AFBD60 2508C544 */  addiu   $t0, $t0, %lo(func_80AFC544) ## $t0 = 80AFC544
/* 001E4 80AFBD64 AE080164 */  sw      $t0, 0x0164($s0)           ## 00000164
/* 001E8 80AFBD68 E6000180 */  swc1    $f0, 0x0180($s0)           ## 00000180
/* 001EC 80AFBD6C 10000005 */  beq     $zero, $zero, .L80AFBD84   
/* 001F0 80AFBD70 E600017C */  swc1    $f0, 0x017C($s0)           ## 0000017C
.L80AFBD74:
/* 001F4 80AFBD74 C60A0180 */  lwc1    $f10, 0x0180($s0)          ## 00000180
/* 001F8 80AFBD78 2529C478 */  addiu   $t1, $t1, %lo(func_80AFC478) ## $t1 = 80AFC478
/* 001FC 80AFBD7C AE090164 */  sw      $t1, 0x0164($s0)           ## 00000164
/* 00200 80AFBD80 E60A017C */  swc1    $f10, 0x017C($s0)          ## 0000017C
.L80AFBD84:
/* 00204 80AFBD84 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AFBD88:
/* 00208 80AFBD88 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0020C 80AFBD8C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00210 80AFBD90 03E00008 */  jr      $ra                        
/* 00214 80AFBD94 00000000 */  nop
